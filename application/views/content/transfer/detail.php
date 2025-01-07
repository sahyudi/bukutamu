<?php
$create = check_view('transfer', $this->session->userdata('id'), $this->session->userdata('role_id'), 'create');
$update = check_view('transfer', $this->session->userdata('id'), $this->session->userdata('role_id'), 'update');
$delete = check_view('transfer', $this->session->userdata('id'), $this->session->userdata('role_id'), 'delete');
$export = check_view('transfer', $this->session->userdata('id'), $this->session->userdata('role_id'), 'export');
$cetak = check_view('transfer', $this->session->userdata('id'), $this->session->userdata('role_id'), 'cetak');
?>
<section class="section">

    <div class="section-body">

        <div class="card card-page">
            <div class="card-header">
                <h4 class="text-dark mb-0">
                    <?= $title ?>
                </h4>
            </div>
            <div class="card-body">
                <h5 class="text-dark mb-0">Detail Invoice</h5>
                <p class="text-muted text-small">Informasi Invoice</p>
                <div class="dropdown-divider"></div>
                <div class="row">

                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="d-flex flex-row align-items-end">Pelanggan</label>
                            <p class="mb-0 text-dark font-weight-bold"><?= $transfer->customer_name == null ? '-' : $transfer->customer_name ?> / <?= $transfer->customer_phone == null ? '-' : $transfer->customer_phone ?></p>

                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="d-flex flex-row align-items-end">Tanggal</label>
                            <p class="mb-0 text-dark font-weight-bold"><?= $transfer->date == null ? '-' : $transfer->date ?></p>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="d-flex flex-row align-items-end">Jenis Pembayaran</label>
                            <p class="mb-0 text-dark font-weight-bold"><?= $transfer->transfer_type == null ? '-' : $transfer->transfer_type ?></p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="d-flex flex-row align-items-end">Nominal (Rp) </label>
                            <p class="mb-0 text-dark font-weight-bold"><?= $transfer->amount == null ? '-' : numberFormat_old($transfer->amount, 0)  ?></p>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="form-group">
                            <label class="d-flex flex-row align-items-end">Catatan </label>
                            <p class="mb-0 text-dark font-weight-bold"><?= $transfer->description == null ? '-' : $transfer->description ?></p>
                        </div>
                    </div>
                </div>
                <h5 class="text-dark mb-0">Product</h5>
                <p class="text-muted text-small">Product information</p>
                <div class="dropdown-divider"></div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-sm w-100 table-stripped" id="table-item-quotation">
                                <thead>
                                    <tr class="bg-primary">
                                        <th class="text-white text-center">No</th>
                                        <th class="text-white text-center">Product</th>
                                        <th class="text-white text-center">Description</th>
                                        <!-- <th class="text-white text-center">Quantity</th>
                                        <th class="text-white text-center">Price</th>
                                        <th class="text-white text-center">Amount</th> -->
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php $_total = 0;
                                    foreach ($products as $key => $value) { ?>
                                        <tr>
                                            <td class="text-center"><?= $key + 1 ?></td>
                                            <td><?= $value->product_name ?></td>
                                            <td><?= $value->product_description ?></td>
                                            <!-- <td class="text-right">
                                                <?= numberFormat_old($value->qty, 0) ?>
                                            </td>
                                            <td class="text-right">
                                                <?= numberFormat_old($value->price, 0) ?>
                                            </td>
                                            <td class="text-right">
                                                <?= numberFormat_old($value->amount, 0) ?>
                                            </td> -->
                                        </tr>
                                    <?php } ?>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>


            </div>
            <div class="card-footer">
                <div class="float-left">
                    <a href="<?= base_url('transfer') ?>" class="btn btn-outline-danger py-2 px-4 rounded-pill">
                        <i class="fas fa-arrow-left"></i>&nbsp; Kembali
                    </a>
                </div>
                <div class="float-right">
                    <?php if ($update) { ?>
                        <a href="<?= base_url('transfer/edit/') . $transfer->uuid ?>" class="btn btn-outline-primary py-2 px-4 rounded-pill">
                            <i class="fas fa-edit"></i>&nbsp; Edit
                        </a>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="modal fade" role="dialog" id="modal-confirm" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Konfirmasi Selesai</h5> <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
            </div>
            <form id="form-data" method="POST" novalidate="" enctype="multipart/form-data" class="needs-validation">
                <div class="modal-body">
                    <div class="row">
                        <input type="text" id="done_id" name="invoice_id" value="<?= $transfer->id ?>" hidden>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Tanggal Selesai</label>
                                <input type="date" class="form-control" id="done_date" name="done_date" value="<?= date('Y-m-d') ?>" required>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer bg-whitesmoke">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Kembali</button>
                    <button type="button" onclick="save_data()" class="btn btn-primary btn-shadow"><i class="fas fa-save"></i> Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    const save_data = () => {
        const form = $('#form-data');
        if (form[0].checkValidity() === false) {
            form.addClass('was-validated');
        } else {

            swal({
                    title: 'Apakah Anda yakin?',
                    text: 'Data yang dimasukkan sudah benar?',
                    icon: 'warning',
                    closeOnClickOutside: false,
                    closeOnEsc: false,
                    allowOutsideClick: false,
                    buttons: {
                        cancel: "Tidak",
                        confirm: {
                            text: "Yakin",
                            value: true,
                            visible: true,
                            className: "",
                            closeModal: false
                        }
                    }
                })
                .then(saveData => {
                    if (saveData) {
                        $.ajax({
                            url: '<?= base_url('invoice/final') ?>',
                            method: 'POST',
                            dataType: 'JSON',
                            data: new FormData(form[0]),
                            processData: false,
                            contentType: false,
                            cache: false,
                            async: true,
                            success: function(Result) {
                                const {
                                    status,
                                    data,
                                    message,
                                } = Result;
                                if (status) {
                                    success('Data Berhasil Disimpan', message, 'success', false, 1500)
                                    // window.open("<?= base_url('invoice/cetak/') ?>" + data.uuid, '_blank');
                                    setTimeout(() => {
                                        location.reload();
                                    }, 1500)

                                } else {
                                    let errorMsgString = (message) ? message.replace(/(<([^>]+)>)/gi, "") : 'Periksa kembali data anda'
                                    failed('Data Gagal Disimpan', errorMsgString, 'error', false, 4000)
                                }
                            },
                            error: function(xhr, status, error) {
                                failed('Error', errorResponse(xhr, status, error), 'error', false, 1500)
                            }
                        })
                    } else {
                        cancle('Data tidak jadi disimpan!', 'info', false, 1500)
                    }
                })
        }



    }
</script>