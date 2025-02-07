<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Formulir Kunjungan Tamu</title>
    <link rel="icon" href="<?= base_url('assets') ?>/img/logo/favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="<?= base_url('assets') ?>/modules/bootstrap/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;700;800&display=swap" rel="stylesheet">
    <script src="<?= base_url('assets') ?>/modules/jquery.min.js"></script>
    <script src="<?= base_url('assets') ?>/modules/bootstrap/js/bootstrap.min.js"></script>

    <style type="text/css" media="print">
        @media print {
            body {
                print-color-adjust: exact;
            }

            #footer-wrapper {
                display: block !important;
            }
        }

        @page {
            size: A4 potrait;
            margin-left: 3rem;
            margin-right: 3rem;
            margin-top: 3rem;
            margin-bottom: 3rem;
            margin: 3rem;
            -webkit-print-color-adjust: exact;
        }
    </style>
</head>

<body style="font-size: 16px;font-weight: 500;font-family: 'Open Sans', sans-serif;color: #000000" class="text-dark w-100">
    <?php setlocale(LC_ALL, 'id-ID', 'id_ID'); ?>
    <div class="containter m-4 px-4">
        <table class="w-100">
            <tbody>
                <tr>
                    <td width="15%">
                        <img src="<?= base_url('assets/img/logo-bp-batam.png') ?>" class="img-fluid" width="130px" alt="log-bp-batam">
                    </td>
                    <td style="text-align: center;vertical-align:bottom !important;" width="85%">
                        <p style="font-weight: 800;line-height: 25px;font-size: 20px;margin-bottom:15px;text-transform:uppercase;color:#000;padding-top: 0">
                            BADAN PENGUSAHAAN KAWASAN PERDAGANGAN BEBAS <br>
                            DAN PELABUHAN BEBAS BATAM
                        </p>
                        <p style="font-weight: 400;line-height: 18px;font-size: 16px;margin-bottom: 10px">
                            JALAN IBNU SUTOWO NO. 1, BATAM CENTRE, PULAU BATAM 29411 <br>
                            KOTAK POS 151; TELEPON (0778) 462047, 462048 <br>
                            FAKSIMILE (0778) 462240, 462456; SITUS bpbatam.go.id
                        </p>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <hr>
    <div class="container-xl m-4 px-4">
        <h5 style="font-size: 20px;font-weight: 800;text-align: center;margin-top: 3rem;margin-bottom: 3rem">
            Formulir Kunjungan Tamu
        </h5>
        <div class="mt-3">
            <table class="table w-100 table-borderless">
                <tbody>
                    <tr>
                        <td width="20%">Unit</td>
                        <td width="1%">:</td>
                        <td width="79%">Direktorat Pengeloaan Pertanahan</td>
                    </tr>
                    <tr>
                        <td width="20%">NIK / Nama</td>
                        <td width="1%">:</td>
                        <td width="79%"><?= $data->nik . " / " . $data->nama_tamu ?></td>
                    </tr>
                    <tr>
                        <td width="20%">NOHP</td>
                        <td width="1%">:</td>
                        <td width="79%"><?= $data->nohp ?></td>
                    </tr>
                    <tr>
                        <td width="20%">Waktu</td>
                        <td width="1%">:</td>
                        <td width="79%"><?= $data->tanggal . " " . $data->jam ?></td>
                    </tr>
                    <tr>
                        <td width="20%">Perihal</td>
                        <td width="1%">:</td>
                        <td width="79%"><?= $data->perihal ?></td>
                    </tr>
            </table>
            <h6 style="font-weight: 800" class="mb-3">Tunjuan Kunjungan</h6>
            <table class="table w-100 table-borderless">
                <tbody>
                    <tr>
                        <td width="20%">Pejabat</td>
                        <td width="1%">:</td>
                        <td width="79%"><?= $data->nama_pejabat ?></td>
                    </tr>
                    <tr>
                    <tr>
                        <td width="20%">Nomor Handphone</td>
                        <td width="1%">:</td>
                        <td width="79%"><?= $data->nohp ?></td>
                    </tr>
                </tbody>
            </table>
            <h6 style="font-weight: 800" class="mb-3">Petugas</h6>
            <table class="table w-100 table-borderless">
                <tbody>
                    <tr>
                        <td width="20%">Nama</td>
                        <td width="1%">:</td>
                        <td width="79%"><?= $data->created_by  ?></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <hr>
    <div class="container-xl m-4 px-4">
        <h5 style="font-size: 18px;font-weight: 800;margin-top: 2rem;margin-bottom: 1.5rem">
            Layanan Informasi
        </h5>

        <ol>
            <li>Layanan Konsultasi 1 (<a href="https://wa.me/628117047000" class="text-dark font-weight-bold" target="_blank">+628117047000</a>)</li>
            <li>Layanan Konsultasi 2 (<a href="https://wa.me/628117048000" class="text-dark font-weight-bold" target="_blank">+628117048000</a>)</li>
            <li>Layanan Penataan (<a href="https://wa.me/628117704770" class="text-dark font-weight-bold" target="_blank">+628117704770</a>)</li>
            <li>Layanan KSB (<a href="https://wa.me/628117704771" class="text-dark font-weight-bold" target="_blank">+628117704771</a>)</li>
        </ol>
        <!-- <div class="d-flex justify-content-end">
            <div class="d-flex flex-column align-items-center">
                <div style="max-width: 200px">
                    <img src="<?= base_url('assets/img/sign/esign-qrcode/') . $data->APLY_NO ?>.png" alt="qr_code_<?= $data->APLY_NO ?>" class="img-fluid" width="200px">
                </div>
                <p class="text-muted mt-2" style="font-size: 13px;font-style: italic">*scan untuk validasi dokumen ini</p>
            </div>
        </div> -->
    </div>
    <div id="footer-wrapper" style="display: none">
        <div class="position-absolute" style="left: 1.5rem;right: 1.5rem;bottom: 3rem">
            <div class="p-4" style="border: 1px solid #000;border-radius: 10px">
                Dokumen ini dikeluarkan dari setelah Tamu mendaftarkan ke Resepsionis
            </div>
            <div class="d-flex justify-content-end mt-3 font-italic text-small">
                Dicetak pada hari <?= date('Y-m-d') ?>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            window.print()
        })
    </script>
</body>

</html>