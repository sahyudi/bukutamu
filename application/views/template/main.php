<?php

use phpDocumentor\Reflection\Types\This;

$this->load->view('template/header');
$this->load->view('template/sidebar');
?>
<!-- Breadcrump -->
<div class="main-content">
    <!-- <div class="col-md-12"> -->
    <!-- <?= $this->session->flashdata('message'); ?> -->
    <!-- </div> -->
    <?php $this->load->view($content); ?>
</div>


<?php
$this->load->view('template/footer');
