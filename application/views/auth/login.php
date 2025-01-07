<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>Login &mdash; <?= APP_LONG_NAME ?></title>
    <!-- <link rel="icon" type="image/png" href="<?= base_url('assets') ?>/img/logo/logo.png" /> -->
    <!-- General CSS Files -->
    <link rel="stylesheet" href="<?= base_url('assets') ?>/modules/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= base_url('assets') ?>/modules/fontawesome/css/all.css">


    <!-- Template CSS -->
    <link rel="stylesheet" href="<?= base_url('assets') ?>/css/style.css">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/css/custom.css">
    <link rel="stylesheet" href="<?= base_url('assets') ?>/css/components.css">
</head>

<body>
    <div id="app">
        <section class="section d-flex align-items-center justify-content-center" style="min-height: 100vh">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
                        <div class="login-brand mb-0">
                            <h5><?= APP_LONG_NAME ?></h5>
                            <!-- <img src="<?= LOGO ?>" alt="logo-kepri" class="img-logo mb-4" style="height: auto; width:180px; margin:10px"> -->

                        </div>
                        <div class="card card-primary">
                            <div class="card-header">
                                <h4>Login</h4>
                            </div>
                            <div class="card-body">
                                <?= $this->session->flashdata('message'); ?>
                                <form method="POST" action="<?= base_url('login') ?>" class="needs-validation" novalidate="">
                                    <div class="form-group">
                                        <label for="username">Username</label>
                                        <input id="username" type="text" class="form-control" name="username" tabindex="1" placeholder="Masukkan username" required="" autofocus autocomplete="off">
                                        <div class="invalid-feedback">
                                            Please fill in your username
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="password" class="control-label">Password</label>
                                        <input id="password" type="password" class="form-control" name="password" tabindex="2" placeholder="Masukkan password" required="">
                                        <div class="invalid-feedback">
                                            please fill in your password
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary btn-lg btn-block shadow-none" tabindex="4">
                                            Login
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="simple-footer text-small">
                            © <?= date('Y') . " - " . APP_LONG_NAME ?>
                        </div>
                    </div>
                </div>
            </div>
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