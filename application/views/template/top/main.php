<?php

use phpDocumentor\Reflection\Types\This;

$this->load->view('template/top/header');
?>
<!-- Breadcrump -->
<div class="main-content">
    <?= $this->session->flashdata('message'); ?>

    <?php $this->load->view($content); ?>
</div>
<?php
$this->load->view('template/top/footer');
