<?php
defined('BASEPATH') or exit('No direct script access allowed');

// $active = $this->uri->segment(1);
?>

<div class="main-sidebar sidebar-style-2">
  <aside id="sidebar-wrapper">
    <div class="sidebar-brand">
      <a href="<?= base_url('dashboard'); ?>">
        <img src="<?= base_url() ?>assets/img/logo/logo-mini.png" alt="icon" class="logo img-logo" style="width:90px;height:auto;">
      </a>
      <!-- <a href="<?= base_url('dashboard'); ?>"> <?= APP_LONG_NAME ?></a> -->
    </div>
    <!-- <hr class="mt-0"> -->
    <div class="sidebar-brand sidebar-brand-sm mt-0">
      <a href="<?= base_url('dashboard'); ?>">
        <img src="<?= base_url() ?>assets/img/logo/icon.png" alt="icon" class="logo img-logo" style="width:40px;height:auto;">
      </a>
      <!-- <a href="<?= base_url('dashboard'); ?>"><?= APP_SHORT_NAME ?></a> -->
    </div>
    <ul class="sidebar-menu">
      <?php
      $this->db->select('id,name,url,icon');
      $this->db->order_by('order', 'ASC');
      $menus = $this->db->get_where('menus', ['level' => 0])->result();
      foreach ($menus as $key => $menu) {
        $read = check_menu($menu->id, $this->session->userdata('id'), $this->session->userdata('role_id'), 'read');
        if ($read) {
          $classActive = '';
          if (strtolower(trim($menu->url)) == strtolower($active)) {
            $classActive = 'active';
          }
          $url = base_url($menu->url);
          if ($menu->url != '#') {
            echo "<li class='dropdown $classActive'>
                   <a href='$url' class='nav-link'><i class='$menu->icon'></i><span>$menu->name</span></a>
                 </li>";
          } else {
            $html = '';
            $html .= "<li class='nav-item dropdown'>
                    <a href='#' class='nav-link has-dropdown'><i class='fas fa-dollar-sign'></i><span>$menu->name</span></a>";
            $this->db->select('id,name,url,icon');
            $this->db->order_by('order', 'ASC');
            $subMenus = $this->db->get_where('menus', ['level' => 1, 'parent_id' => $menu->id])->result();
            $subHtml = '';
            foreach ($subMenus as $key => $value) {
              $subActive = '';
              if (strtolower(trim($value->name)) == strtolower($active)) {
                $subActive = 'active';
              }
              $subRead = check_menu($value->id, $this->session->userdata('id'), $this->session->userdata('role_id'), 'read');
              if ($subRead) {
                $subUrl = base_url($value->url);
                $subHtml .= "<li class='dropdown $subActive'><a class='nav-link' href='$subUrl'>$value->name</a></li>";
              }
            }

            $html .= "<ul class='dropdown-menu'>$subHtml</ul>
            </li>";

            echo $html;
          }
        }
      }
      ?>
    </ul>
  </aside>
</div>