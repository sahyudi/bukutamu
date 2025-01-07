<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title><?= $title; ?> | <?= APP_LONG_NAME ?></title>
  <link rel="icon" type="image/png" href="<?= base_url('assets') ?>/img/logo/favicon.png" />
  <!-- General CSS Files -->
  <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/fontawesome/css/all.min.css">

  <!-- CSS Libraries -->
  <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/datatables-new/DataTables-1.10.24/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/datatables/Select-1.2.4/css/select.bootstrap4.min.css">
  <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/bootstrap-daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
  <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/bootstrap-timepicker/css/bootstrap-timepicker.min.css">
  <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/bootstrap-tagsinput/dist/bootstrap-tagsinput.css">

  <!-- Template CSS -->
  <link rel="stylesheet" href="<?= base_url('assets') ?>/css/style.css?v=20230910">
  <link rel="stylesheet" href="<?= base_url('assets') ?>/css/custom.css?v=20230910">
  <link rel="stylesheet" href="<?= base_url(); ?>assets/css/components.css">
  <link rel="stylesheet" href="<?= base_url(); ?>assets/css/nullspace.css">

  <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
  <link rel="stylesheet/scss" href="<?= base_url(); ?>sources/scss/components/_select2.scss">
  <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/select2/dist/css/select2.min.css">
  <!-- <style>
    .dataTables_empty {
      text-align: center;
    }

    .active {
      background: white;
    }

    .pointer {
      cursor: pointer
    }

    @media (min-width: 992px) {

      .modal-lg,
      .modal-x {
        max-width: 800px;
      }
    }

    @media (min-width: 1200px) {
      .modal-xl {
        max-width: 1140px;
      }
    }
  </style> -->

  <!-- General JS Scripts -->
  <script src="<?= base_url(); ?>assets/modules/jquery.min.js"></script>
  <script src="<?= base_url(); ?>assets/modules/popper.js"></script>
  <script src="<?= base_url(); ?>assets/modules/tooltip.js"></script>
  <script src="<?= base_url(); ?>assets/modules/bootstrap/js/bootstrap.min.js"></script>
  <script src="<?= base_url(); ?>assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
  <script src="<?= base_url(); ?>assets/modules/moment.min.js"></script>
  <script src="<?= base_url(); ?>assets/js/stisla.js"></script>

  <script src="<?= base_url(); ?>assets/modules/cleave-js/dist/cleave.min.js"></script>
  <script src="<?= base_url(); ?>assets/modules/cleave-js/dist/addons/cleave-phone.us.js"></script>
  <script src="<?= base_url(); ?>assets/modules/bootstrap-daterangepicker/daterangepicker.js"></script>
  <script src="<?= base_url(); ?>assets/modules/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
  <script src="<?= base_url(); ?>assets/modules/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
  <script src="<?= base_url(); ?>assets/modules/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>

  <!-- chart -->
  <script src="<?= base_url(); ?>assets/modules/chart.js/dist/Chart.min.js"></script>
  <!-- Template JS File -->
  <script src="<?= base_url(); ?>assets/js/scripts.js"></script>
  <script src="<?= base_url(); ?>assets/js/custom.js"></script>


  <script src="<?= base_url(); ?>assets/modules/datatables/datatables.min.js"></script>
  <script src="<?= base_url(); ?>assets/modules/datatables/DataTables-1.10.16/js/dataTables.bootstrap4.min.js"></script>
  <script src="<?= base_url(); ?>assets/modules/datatables/Select-1.2.4/js/dataTables.select.min.js"></script>
  <script src="<?= base_url(); ?>assets/modules/select2/dist/js/select2.full.min.js"></script>
  <script src="<?= base_url(); ?>assets/modules/jquery-selectric/jquery.selectric.min.js"></script>
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  <!-- 
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400&display=swap" rel="stylesheet"> -->
  <!-- <style>
    .bg-sky {
      box-shadow: 0 2px 6px #acb5f6;
      background-color: #0c9beb;
      border-color: #0c9beb;
    }

    .bg-blue {
      box-shadow: 0 2px 6px #acb5f6;
      background-color: #6777ef;
      border-color: #6777ef;
    }

    .bg-red {
      box-shadow: 0 2px 6px #acb5f6;
      background-color: #eb0e42;
      border-color: #eb0e42;
    }

    .bg-green {
      box-shadow: 0 2px 6px #acb5f6;
      background-color: #038f05;
      border-color: #038f05;
    }

    .bg-orange {
      box-shadow: 0 2px 6px #acb5f6;
      background-color: #eb590e;
      border-color: #eb590e;
    }

    .bg-copper {
      box-shadow: 0 2px 6px #acb5f6;
      background-color: #94716B;
      border-color: #94716B;
    }

    .bg-red-primary {
      box-shadow: 0 2px 6px #acb5f6;
      background-color: #e11212;
      border-color: #e11212;
    }

    .bg-blue-2 {
      box-shadow: 0 2px 6px #acb5f6;
      background-color: #1b46a5;
      border-color: #1b46a5;
    }

    .bg-blue-black {
      box-shadow: 0 2px 6px #acb5f6;
      background-color: #055567;
      border-color: #055567;
    }

    .bg-black-blue {
      box-shadow: 0 2px 6px #acb5f6;
      background-color: #17212c;
      border-color: #17212c;
    }

    .bg-red-slow {
      box-shadow: 0 2px 6px #acb5f6;
      background-color: #ff2b2b;
      border-color: #ff2b2b;
    }

    .bg-card-primary {
      background-color: teal !important;
      color: white !important;
    }

    #loader {
      border: 16px solid #f3f3f3;
      border-radius: 50%;
      border-top: 16px solid #3498db;
      width: 120px;
      height: 120px;
      -webkit-animation: spin 2s linear infinite;
      animation: spin 2s linear infinite;
      margin-left: 250px;
      margin-top: 250px;
    }


    @-webkit-keyframes spin {
      0% {
        -webkit-transform: rotate(0deg);
      }

      100% {
        -webkit-transform: rotate(360deg);
      }
    }

    @keyframes spin {
      0% {
        transform: rotate(0deg);
      }

      100% {
        transform: rotate(360deg);
      }
    }

    body {
      font-family: 'Roboto', sans-serif;

    }
  </style> -->


<body style="background-color: #F4F7F5">
  <div id="app">
    <div class="main-wrapper main-wrapper-1">
      <div class="navbar-bg"></div>
      <nav class="navbar navbar-expand-lg main-navbar">
        <form class="form-inline mr-auto">
          <ul class="navbar-nav mr-3">
            <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li>
            <!-- <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="fas fa-search"></i></a></li> -->
          </ul>
        </form>

        <ul class="navbar-nav navbar-right">
          <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
              <img alt="image" src="<?= base_url(); ?>assets/img/avatar/avatar-1.png" class="rounded-circle mr-1">
              <div class="d-sm-none d-lg-inline-block">Hi, <?= $this->session->userdata('name') ?> </div>
            </a>
            <div class="dropdown-menu dropdown-menu-right">
              <div class="dropdown-title">Administrator</div>
              <a href="<?= base_url('profile') ?>" class="dropdown-item has-icon">
                <i class="far fa-user"></i> Profile
              </a>
              <a href="<?= base_url('profile/changePassword') ?>" class="dropdown-item has-icon">
                <i class="fas fa-key"></i> Change Password
              </a>
              <div class="dropdown-divider"></div>
              <a href="<?= base_url('logout') ?>" class="dropdown-item has-icon text-danger">
                <i class="fas fa-sign-out-alt"></i> Logout
              </a>
            </div>
          </li>
        </ul>
      </nav>