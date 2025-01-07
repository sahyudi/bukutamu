<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Print SPK <?= ($invoice->sale_no) ? $invoice->sale_no : '-' ?></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="<?= base_url('assets') ?>/img/logo/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="<?= base_url('assets') ?>/modules/bootstrap/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;700;800&display=swap" rel="stylesheet">
    <script src="<?= base_url('assets') ?>/modules/jquery.min.js"></script>
    <script src="<?= base_url('assets') ?>/modules/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>

    <style>
        .table-striped>tbody>tr:nth-of-type(2n+1) {
            background-color: #9c0d1f !important;
        }

        /* Style for the content */
        #content {
            padding-bottom: 3rem;
        }

        header {
            top: 0;
            left: 0;
            right: 0;
            text-align: center;
            line-height: 100px;
        }

        footer {
            position: fixed;
            bottom: 0;
            left: 0;
            right: 0;
            height: 50px;
            text-align: center;
            line-height: 50px;
        }

        p {
            font-size: 16px;
            line-height: 1.5;
            margin-bottom: 20px;
        }

        table {
            page-break-inside: avoid;
        }

        /* Add the print styles here */
        @media print {
            @page {
                /* size: 210mm 165mm;
                margin: 0; */
                /* Ukuran F4 dibagi 2 */
                /* Hapus semua margin */
            }

            body {
                -webkit-print-color-adjust: exact;
            }

            .print-button {
                display: none;
            }

            header:after {
                display: block;
                text-align: center;
            }

            footer:after {
                display: block;
                text-align: center;
            }

            #content:after {
                padding-bottom: 3rem;
                margin-top: 230px;
            }
        }
    </style>
</head>

<body style="font-size: 16px;font-weight: 500;font-family: 'Open Sans', sans-serif;color: #000000;margin: 0px; -webkit-print-color-adjust: exact;" class="text-dark w-100">
    <?php setlocale(LC_ALL, 'id-ID', 'id_ID'); ?>

    <!-- <header>
        <div id="header" class="containter px-4">
            <table class="w-100">
                <tbody>
                    <tr>
                        <td width="10%" style="margin-left:10px;">
                            <?php
                            $logo = base_url('assets') . '/img/logo/logo.png';
                            ?>
                            <img src="<?= $logo ?>" class="img-fluid" width="60px" alt="logo-item">
                        </td>
                        <td style="text-align: left;vertical-align:bottom !important;" width="90%">
                            <p class="mb-1" style="font-weight: 600;line-height: 25px;font-size: 24px;margin-bottom:15px;text-transform:uppercase;color:#000;padding-top: 0">
                                PUTRA GAMES GLODOK
                            </p>
                            <p class="mb-0" style="font-weight: 400;line-height: 25px;font-size: 20px;margin-bottom:15px;text-transform:uppercase;color:#000;padding-top: 0">
                                GLODOK CITY LANTAI 5 BLOK AKS NO 46-47 (11120)
                            </p>
                            <p class="mb-0" style="font-weight: 300;line-height: 18px;font-size: 16px;margin-bottom: 10px">
                                JAKARTA BARAT-INDONESIA
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <hr>
        </div>
    </header> -->
    <div id="content">
        <div class="container-xl px-4">
            <h4 style="font-size: 18px;font-weight: 800;text-align: center;">
                SURAT PERINTAH KERJA
            </h4>
            <div class="mt-1">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-lg-6 col-6">
                        <dl class="row">
                            <dt class="col-sm-6 mb-0">Nama</dt>
                            <dd class="col-sm-6 mb-0"><?= ($invoice->customer_name) ? $invoice->customer_name : '-' ?></dd>
                            <dt class="col-sm-6 mb-0">Phone</dt>
                            <dd class="col-sm-6 mb-0"><?= ($invoice->customer_phone) ? $invoice->customer_phone : '-' ?></dd>
                        </dl>
                    </div>
                    <div class="col-md-6 col-sm-6 col-lg-6 col-6">
                        <dl class="row">
                            <dt class="col-sm-6 mb-0">Tgl. Pesan</dt>
                            <dd class="col-sm-9 mb-0"><?= ($invoice->order_date) ? $invoice->order_date : '-' ?></dd>
                            <dt class="col-sm-6 mb-0">Tgl. Pengambilan</dt>
                            <dd class="col-sm-6 mb-0"><?= ($invoice->pickup_date) ? $invoice->pickup_date : '-' ?></dd>
                        </dl>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-lg-12 col-12">
                        <table class="table w-100 table-borderless">
                            <thead>
                                <tr>
                                    <th style="background-color:#9c0d1f !important;color:white;" class="text-center" width="10%">No</th>
                                    <th style="background-color:#9c0d1f !important;color:white;" class="text-center" width="40%">Product</th>
                                    <th style="background-color:#9c0d1f !important;color:white;" class="text-center" width="10%">Qty</th>
                                    <th style="background-color:#9c0d1f !important;color:white;" class="text-center" width="20%">Price</th>
                                    <th style="background-color:#9c0d1f !important;color:white;" class="text-center" width="25%">Amount</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $total = 0;
                                foreach ($products as $key => $value) {
                                    $total += $value->amount;
                                ?>
                                    <tr>
                                        <td class="align-middle text-center"><?= $key + 1 ?></td>
                                        <td class="align-middle"><?= $value->product_name ?>
                                            <small><?= $value->product_description ?></small>
                                        </td>
                                        <td class="align-middle text-center"><?= numberFormat($value->qty, 0)  ?></td>
                                        <td class="align-middle text-right"><?= numberFormat($value->price, 0) ?></td>
                                        <td class="align-middle text-right"><?= numberFormat($value->amount, 0) ?></td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                            <tfoot>
                                <tr class="font-weight-bold">
                                    <td colspan="4" class="font-weight-bold text-right">Total</td>
                                    <td class="text-right">Rp. <?= numberFormat($invoice->total, 0); ?></td>
                                </tr>
                                <tr class="font-weight-bold">
                                    <td colspan="4" class="font-weight-bold text-right">DP</td>
                                    <td class="text-right">Rp. <?= numberFormat($invoice->down_payment, 0); ?></td>
                                </tr>
                                <tr class="font-weight-bold">
                                    <td colspan="4" class="font-weight-bold text-right">Kurang Bayar</td>
                                    <td class="text-right">Rp. <?= numberFormat($invoice->outstanding_balance, 0); ?></td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <hr>
    </div>
    <footer class="text-center">
        <div class="print-button">
            <button onclick="window.print()">Cetak SPK</button>
            <button onclick="afterPrint()">Tutup</button>
            <!-- <button id="download-pdf">Download PDF</button> -->
        </div>
    </footer>
    <script type="text/javascript">
        window.addEventListener("load", window.print());

        function closePrintView() {
            window.close()
        }

        function afterPrint() {
            window.close();
        }
    </script>
</body>

</html>