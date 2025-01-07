<?php

use Ramsey\Uuid\Uuid;

/**
 * CodeIgniter
 *
 * An open source application development framework for PHP
 *
 * This content is released under the MIT License (MIT)
 *
 * Copyright (c) 2014 - 2019, British Columbia Institute of Technology
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 * @package	CodeIgniter
 * @author	EllisLab Dev Team
 * @copyright	Copyright (c) 2008 - 2014, EllisLab, Inc. (https://ellislab.com/)
 * @copyright	Copyright (c) 2014 - 2019, British Columbia Institute of Technology (https://bcit.ca/)
 * @license	https://opensource.org/licenses/MIT	MIT License
 * @link	https://codeigniter.com
 * @since	Version 1.0.0
 * @filesource
 */
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Application Controller Class
 *
 * This class object is the super class that every library in
 * CodeIgniter will be assigned to.
 *
 * @package		CodeIgniter
 * @subpackage	Libraries
 * @category	Libraries
 * @author		EllisLab Dev Team
 * @link		https://codeigniter.com/user_guide/general/controllers.html
 */
class CI_Controller
{

	/**
	 * Reference to the CI singleton
	 *
	 * @var	object
	 */
	private static $instance;

	/**
	 * CI_Loader
	 *
	 * @var	CI_Loader
	 */
	public $load;

	/**
	 * Class constructor
	 *
	 * @return	void
	 */
	public function __construct()
	{
		self::$instance = &$this;

		// Assign all the class objects that were instantiated by the
		// bootstrap file (CodeIgniter.php) to local class variables
		// so that CI can run as one big super object.
		foreach (is_loaded() as $var => $class) {
			$this->$var = &load_class($class);
		}

		$this->load = &load_class('Loader', 'core');
		$this->load->initialize();
		log_message('info', 'Controller Class Initialized');
	}

	// --------------------------------------------------------------------

	/**
	 * Get the CI singleton
	 *
	 * @static
	 * @return	object
	 */
	public static function &get_instance()
	{
		return self::$instance;
	}

	function getUuid()
	{
		return Uuid::uuid4()->toString();
	}

	function _uploadFile($fileCategory, $uploadName, $nameFile = null)
	{
		//query untuk enkripsi nama file

		//start make folder month-year for upload file
		$directory = date('m-Y');
		$path = "./uploads/$fileCategory/$directory/";
		if (!is_dir($path)) {
			mkdir($path, 0777, true);
		}
		//end make folder month-year  for upload file


		$config['upload_path']      = $path;
		$config['allowed_types']  	= '*';
		$config['max_size']         = 1024 * 100; // max file upload 100MB
		if ($nameFile) {
			$config['file_name']     	= date('Y-m-d') . '-' . $nameFile;
		} else {
			$config['encrypt_name'] = TRUE;
		}

		$this->load->library('upload', $config);
		if ($this->upload->do_upload($uploadName)) {
			$data = $this->upload->data();
			$result = [
				'status' => true,
				'file_name' => $data['file_name'],
				'path' => $path,
				'error' => []
			];
		} else {
			$result = [
				'status' => false,
				'file_name' => [],
				'path' => [],
				'error' => $this->upload->display_errors()
			];
		}
		return $result;
	}


	function _uploadPhoto($uploadName, $nameFile = null)
	{
		//query untuk enkripsi nama file

		//start make folder month-year for upload file
		$directory = date('m-Y');
		$path = "./uploads/foto/$directory/";
		if (!is_dir($path)) {
			mkdir($path, 0755, true);
		}
		//end make folder month-year  for upload file


		$config['upload_path']      = $path;
		$config['allowed_types']  	= 'jpeg|jpg|png';
		$config['max_size']         = 1024 * 5; // max file upload 5MB
		$config['encrypt_name'] = TRUE;

		$this->load->library('upload', $config);
		if ($this->upload->do_upload($uploadName)) {
			$data = $this->upload->data();
			$result = [
				'status' => true,
				'file_name' => $data['file_name'],
				'path' => $path,
				'error' => []
			];
		} else {
			$result = [
				'status' => false,
				'file_name' => [],
				'path' => [],
				'error' => $this->upload->display_errors()
			];
		}
		return $result;
	}

	function _uploadLogo($uploadName, $nameFile = null)
	{
		//query untuk enkripsi nama file

		//start make folder month-year for upload file
		$directory = date('m-Y');
		$path = "./uploads/logo/$directory/";
		if (!is_dir($path)) {
			mkdir($path, 0777, true);
		}
		//end make folder month-year  for upload file


		$config['upload_path']      = $path;
		$config['allowed_types']  	= 'png|jpg|jpeg';
		$config['max_size']         = 1024 * 5; // max file upload 5MB
		$config['encrypt_name'] = TRUE;

		$this->load->library('upload', $config);
		if ($this->upload->do_upload($uploadName)) {
			$data = $this->upload->data();
			$result = [
				'status' => true,
				'file_name' => $data['file_name'],
				'path' => $path,
				'error' => []
			];
		} else {
			$result = [
				'status' => false,
				'file_name' => [],
				'path' => [],
				'error' => $this->upload->display_errors()
			];
		}
		return $result;
	}

	function _sendEmail($mail, $cotent, $type = 'notifikasi', $invoice_no = null)
	{
		$config = [
			'protocol'  => 'smtp',
			'smtp_host' => 'mail.nullspace.online',
			'smtp_user' => 'noreply@nullspace.online',
			'smtp_pass' => '$%vk5MM$R&jU',
			'smtp_port' => 465,
			'smtp_crypto' => 'ssl',
			'mailtype'  => 'html',
			'charset'   => 'utf-8',
			'newline'   => "\r\n",
			'bcc_batch_mode' => TRUE
		];

		$this->email->initialize($config);

		$this->email->from('noreply@nullspace.online', 'No-reply');
		$this->email->to($mail);
		$this->email->subject('Notifikasi Invoice ' . $invoice_no);
		$this->email->bcc('sahyudi.dev@gmail.com');
		$this->email->message($cotent);

		if ($this->email->send()) {
			return true;
		} else {
			// return false;
			showme($this->email->print_debugger());
			die;
		}
	}
}
