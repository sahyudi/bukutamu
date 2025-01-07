<?php
//defined('BASEPATH') or exit('No direct script access allowed');

/**
 *
 * Controller QR_code
 *
 * @package   		CodeIgniter
 * @author    		Setiawan Joddy
 * @date 	  		02 Maret 2022
 * @lastmodified 	06 Juni 2022
 * @modified		Dicky Khusnaedy
 *
 */

class Qr
{
	public function __construct()
	{
		include APPPATH . 'third_party/phpqrcode/qrlib.php';
	}

	public function generate_qr($url, $size, $name)
	{
		$tempdir = realpath(FCPATH . '/assets/img/qrcode');
		//direktori dan nama logo
		$logopath = realpath(FCPATH . '/assets/img/sign/logo-bp-qr.png');
		//filename setelah jadi qrcode
		$filename = $name . ".png";
		//kualitas dan size qrcode
		$quality = 'H';
		$padding = 0.1;
		QRCode::png($url, $tempdir . '/' . $filename, QR_ECLEVEL_H, $size, $padding);
		$filepath = $tempdir . '/' . $filename;
		$QR = imagecreatefrompng($filepath);
		$logo = imagecreatefromstring(file_get_contents($logopath));
		$QR_width = imagesx($QR);
		$QR_height = imagesy($QR);

		$logo_width = imagesx($logo);
		$logo_height = imagesy($logo);

		//besar logo
		$logo_qr_width = $QR_width / 3;
		$scale = $logo_width / $logo_qr_width;
		$logo_qr_height = $logo_height / $scale;

		//posisi logo
		imagecopyresampled($QR, $logo, $QR_width / 3, $QR_height / 3, 0, 0, $logo_qr_width, $logo_qr_height, $logo_width, $logo_height);

		imagepng($QR, $filepath);
		return $tempdir . '/' . $filename;
	}

	public function generate_qr_without_logo($url, $size, $name)
	{
		$tempdir = realpath(FCPATH . '/assets/img/qrcode');
		//filename setelah jadi qrcode
		$filename = $name . ".png";
		//kualitas dan size qrcode
		$quality = 'H';
		$padding = 0.1;
		QRCode::png($url, $tempdir . '/' . $filename, QR_ECLEVEL_H, $size, $padding);

		return $tempdir . '/' . $filename;
	}
}
