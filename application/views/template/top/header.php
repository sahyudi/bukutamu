<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title><?= $title; ?> | <?= APP_LONG_NAME ?></title>
    <!-- <link rel="icon" type="image/png" href="<?= base_url('assets') ?>/img/logo/logo.png" /> -->
    <!-- General CSS Files -->
    <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="<?= base_url('assets') ?>/modules/bootstrap-select/dist/css/bootstrap-select.min.css">


    <!-- CSS Libraries -->
    <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/datatables-new/DataTables-1.10.24/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/datatables/Select-1.2.4/css/select.bootstrap4.min.css">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/bootstrap-daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/bootstrap-timepicker/css/bootstrap-timepicker.min.css">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/bootstrap-tagsinput/dist/bootstrap-tagsinput.css">

    <!-- Template CSS -->
    <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/jquery-ui/jquery-ui.css">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/datatables-new/buttons.dataTables.min.css">
    <!-- <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/datatables-new/Responsive-2.2.7/css/responsive.jqueryui.min.css"> -->


    <!-- Template CSS -->
    <link rel="stylesheet" href="<?= base_url('assets') ?>/css/style.css?v=20230910">
    <link rel="stylesheet" href="<?= base_url('assets') ?>/css/custom.css?v=20240914">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/css/components.css">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/css/nullspace.css">

    <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
    <link rel="stylesheet/scss" href="<?= base_url(); ?>sources/scss/components/_select2.scss">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/modules/select2/dist/css/select2.min.css">
    <style>
        label>span {
            font-size: 10px;
        }

        .form-control:disabled,
        .form-control[readonly] {
            background-color: #fff !important;
            opacity: 1;
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
    </style>

    <!-- General JS Scripts -->
    <script src="<?= base_url(); ?>assets/modules/jquery.min.js"></script>
    <script src="<?= base_url(); ?>assets/modules/popper.js"></script>
    <script src="<?= base_url(); ?>assets/modules/tooltip.js"></script>
    <script src="<?= base_url(); ?>assets/modules/bootstrap/js/bootstrap.min.js"></script>
    <script src="<?= base_url(); ?>assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
    <script src="<?= base_url(); ?>assets/modules/moment.min.js"></script>
    <script src="<?= base_url(); ?>assets/js/stisla.js"></script>

    <script src="<?= base_url(); ?>assets/modules/datatables-new/jquery.dataTables.js"></script>
    <script src="<?= base_url(); ?>assets/modules/datatables-new/dataTables.buttons.min.js"></script>
    <!-- <script src="<?= base_url(); ?>assets/modules/datatables-new/Responsive-2.2.7/js/responsive.jqueryui.min.js"></script> -->

    <script src="<?= base_url(); ?>assets/modules/cleave-js/dist/cleave.min.js"></script>
    <script src="<?= base_url(); ?>assets/modules/cleave-js/dist/addons/cleave-phone.us.js"></script>
    <script src="<?= base_url(); ?>assets/modules/bootstrap-daterangepicker/daterangepicker.js"></script>
    <script src="<?= base_url(); ?>assets/modules/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
    <script src="<?= base_url(); ?>assets/modules/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
    <script src="<?= base_url(); ?>assets/modules/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>

    <!-- chart -->
    <script src="<?= base_url(); ?>assets/modules/sweetalert/sweetalert.min.js"></script>
    <script src="<?= base_url('assets') ?>/modules/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="<?= base_url('assets') ?>/js/custom-status.js"></script>

    <script src="<?= base_url(); ?>assets/modules/chart.js/dist/Chart.min.js"></script>
    <!-- Template JS File -->
    <script src="<?= base_url(); ?>assets/js/scripts.js"></script>
    <script src="<?= base_url(); ?>assets/js/custom.js"></script>


    <script src="<?= base_url(); ?>assets/modules/datatables/datatables.min.js"></script>
    <script src="<?= base_url(); ?>assets/modules/datatables/DataTables-1.10.16/js/dataTables.bootstrap4.min.js"></script>
    <script src="<?= base_url(); ?>assets/modules/datatables/Select-1.2.4/js/dataTables.select.min.js"></script>
    <script src="<?= base_url(); ?>assets/modules/select2/dist/js/select2.full.min.js"></script>
    <script src="<?= base_url(); ?>assets/modules/jquery-selectric/jquery.selectric.min.js"></script>
    <!-- <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script> -->

    <style>
        body {
            /* font-family: Montserrat, Helvetica, Arial, serif; */
            font-size: 1rem;
            /* font-weight: 600; */
            line-height: 1.45;
            color: #000;
        }
    </style>

<body class="layout-3">
    <!-- <body class="layout-3" style="background-color: #F4F7F5"> -->
    <div id="app">
        <div class="main-wrapper container">
            <div class="navbar-bg"></div>
            <nav class="navbar navbar-expand-lg main-navbar container">
                <a href="<?= base_url('/'); ?>" class="navbar-brand sidebar-gone-hide">
                    <h5><?= APP_LONG_NAME ?></h5>
                </a>
                <a href="#" class="nav-link sidebar-gone-show" data-toggle="sidebar"><i class="fas fa-bars"></i></a>

                <ul class="navbar-nav navbar-right ml-auto">
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
            <nav class="navbar navbar-secondary navbar-expand-lg">
                <div class="container">
                    <ul class="navbar-nav">
                        <ul class="navbar-nav">
                            <li class="nav-item ">
                                <a href="<?= base_url('/') ?>" class="nav-link"><i class="fas fa-tachometer-alt"></i><span>Home</span></a>
                            </li>
                            <li class="nav-item ">
                                <a href="<?= base_url('kunjungan') ?>" class="nav-link">
                                    <i class="fas fa-user"></i><span>Kunjungan</span>
                                </a>
                            </li>
                            <?php if ($this->session->userdata('jabatan') == 'Admin') { ?>
                                <li class="nav-item ">
                                    <a href="<?= base_url('users') ?>" class="nav-link"><i class="fas fa-users"></i><span>User</span></a>
                                </li>
                            <?php } ?>

                        </ul>
                    </ul>
                </div>
            </nav>