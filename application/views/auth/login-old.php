<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>Login &mdash; <?= APP_LONG_NAME ?></title>
  <link rel="icon" type="image/png" href="<?= base_url('assets') ?>/img/logo/favicon.png" />
  <!-- General CSS Files -->
  <link rel="stylesheet" href="<?= base_url('assets') ?>/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?= base_url('assets') ?>/modules/fontawesome/css/all.css">


  <!-- Template CSS -->
  <link rel="stylesheet" href="<?= base_url('assets') ?>/css/style.css">
  <link rel="stylesheet" href="<?= base_url(); ?>assets/css/custom.css">
  <link rel="stylesheet" href="<?= base_url('assets') ?>/css/components.css">
</head>

<body class="login-page">
  <div id="app">
    <section class="login-section text-center">
      <!-- <h3><?= APP_LONG_NAME ?></h3> -->
      <img src="<?= base_url('assets/img/logo/logo.png') ?>" alt="logo-kepri" class="img-logo mb-4" style="height: 80px; width:auto; margin:10px">

      <?= $this->session->flashdata('message'); ?>
      <form method="POST" action="<?= base_url('login') ?>" enctype="multipart/form-data" class="needs-validation" novalidate="">
        <div class="form-group">
          <div class="input-group">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fas fa-user"></i></div>
            </div>
            <input id="username" type="text" class="form-control" name="username" tabindex="1" required autofocus placeholder="Type your username">
          </div>
        </div>
        <div class="form-group" style="margin-top: -1rem;">
          <div class="input-group">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fas fa-lock"></i></div>
            </div>
            <input id="password" type="password" class="form-control" name="password" tabindex="2" required placeholder="Type your password">
          </div>
        </div>
        <div style="margin-top: -1rem;">
          <a href="#">Forgot password</a>
          <button type="submit" class="btn btn-block btn-gradient mt-4">Login</button>
          <p class="mb-0 mt-4"></p>
          <div class="row d-flex align-items-center justify-content-center mt-2">
            <div class="rounded-circle circle-1 mr-2"></div>
            <div class="rounded-circle circle-2 mr-2"></div>
            <div class="rounded-circle circle-3 mr-2"></div>
            <div class="rounded-circle circle-4"></div>
          </div>
        </div>
      </form>
    </section>
  </div>

  <!-- General JS Scripts -->
  <script src="<?= base_url('assets') ?>/modules/jquery.min.js"></script>
  <script src="<?= base_url('assets') ?>/modules/popper.min.js"></script>
  <script src="<?= base_url('assets') ?>/modules/bootstrap/js/bootstrap.min.js"></script>
  <script src="<?= base_url('assets') ?>/modules/nicescroll/jquery.nicescroll.min.js"></script>
  <script src="<?= base_url('assets') ?>/modules/moment.min.js"></script>
  <script src="<?= base_url('assets') ?>/js/stisla.js"></script>

  <!-- JS Libraies -->

  <!-- Template JS File -->
  <script src="<?= base_url('assets') ?>/js/scripts.js"></script>
  <script src="<?= base_url('assets') ?>/js/custom.js"></script>

  <!-- Page Specific JS File -->
</body>

</html>