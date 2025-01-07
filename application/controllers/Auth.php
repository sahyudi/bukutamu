<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
  }

  public function index()
  {
    if ($this->session->userdata('_LOGGED')) {
      redirect('dashboard');
    }

    $this->form_validation->set_rules('username', 'Username', 'required|trim');
    $this->form_validation->set_rules('password', 'Password', 'required|trim');

    if ($this->form_validation->run() == false) {
      $this->load->view('auth/login');
    } else {
      $this->_verify();
    }
  }

  private function _verify()
  {
    $username = htmlspecialchars(trim($this->input->post('username', true)));
    $password = $this->input->post('password');
    $user = $this->db->get_where('users', ['username' => $username])->row();
    if ($user) {
      if (password_verify($password, $user->password)) {
        if ($user->is_active == 1) {
          $data = [
            'id' => $user->id,
            'name' => $user->nama,
            'username' => $user->username,
            'jabatan' => $user->jabatan,
            '_LOGGED' => true
          ];

          $this->session->set_userdata($data);
          redirect('dashboard');
        } else {
          $this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible show fade">
          <div class="alert-body">
            <button class="close" data-dismiss="alert">
              <span>×</span>
            </button>
             User is not active.
          </div>
        </div>');

          redirect('login');
        }
      } else {
        $this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible show fade">
                      <div class="alert-body">
                        <button class="close" data-dismiss="alert">
                          <span>×</span>
                        </button>
                         Password has wrong.
                      </div>
                    </div>');

        redirect('login');
      }
    } else {
      $this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible show fade">
                      <div class="alert-body">
                        <button class="close" data-dismiss="alert">
                          <span>×</span>
                        </button>
                         Username has not valid.
                      </div>
                    </div>');
      redirect('login');
    }
  }

  public function logout()
  {
    $this->session->unset_userdata('id');
    $this->session->unset_userdata('name');
    $this->session->unset_userdata('username');
    $this->session->unset_userdata('_LOGGED');
    // $this->session->sess_destroy();

    $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible show fade">
                      <div class="alert-body">
                        <button class="close" data-dismiss="alert">
                          <span>×</span>
                        </button>
                         You have been logout.
                      </div>
                    </div>');
    redirect('login');
  }
}
