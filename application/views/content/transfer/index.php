<?php
$create = check_view('transfer', $this->session->userdata('id'), $this->session->userdata('role_id'), 'create');
$update = check_view('transfer', $this->session->userdata('id'), $this->session->userdata('role_id'), 'update');
$delete = check_view('transfer', $this->session->userdata('id'), $this->session->userdata('role_id'), 'delete');
$export = check_view('transfer', $this->session->userdata('id'), $this->session->userdata('role_id'), 'export');
$cetak = check_view('transfer', $this->session->userdata('id'), $this->session->userdata('role_id'), 'cetak');
?>
<section class="section">

    <div class="section-body">

        <div class="card my-3">
            <div class="card-header d-flex justify-content-between">
                <h4><?= $title ?></h4>
                <div class="float-right">
                    <?php if ($create) { ?>
                        <!-- <a href="<?= base_url('transfer/add') ?>" class="btn btn-outline-primary rounded-pill px-4 py-2"><i class="fas fa-plus-circle"></i>&nbsp; Tambah</a> -->
                        <button type="button" onclick="resetForm()" data-toggle="modal" data-target="#modal-payment" class="btn btn-outline-primary rounded-pill px-4 py-2"><i class="fas fa-plus-circle"></i>&nbsp; Tambah</button>
                    <?php } ?>
                </div>
            </div>
            <div class="card-body">
                <form id="form-purchase-produk" method="POST" class="needs-validation" novalidate="">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="">Tanggal</label>
                                <input type="date" class="form-control" name="date" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Pembayaran</label>
                                <select class="form-control selectpicker" style="width:100%" id="transfer_type" name="transfer_type">
                                    <option value="">Semua Status</option>
                                    <?php foreach ($transfer_type as $key => $value) { ?>
                                        <option value="<?= $value->transfer_name ?>"><?= $value->transfer_name ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="">&nbsp;</label>
                                <div class="form-group align-middle d-flex justify-content-start">
                                    <button type="reset" onclick="get_data('reset')" class="btn btn-md btn-danger mr-2">Reset</button>
                                    <button type="button" onclick="get_data()" class="btn btn-md btn-primary">Cari</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <hr class="font-weight-bold">
                <div class="table-responsive">
                    <table id="table-transfer" class="table table-bordered table-hover table-stripped" width="100%">
                        <thead class="bg-primary">
                            <tr class="text-center text-white">
                                <th class="text-white text-center" width="7%">#</th>
                                <th class="text-white text-center">CS</th>
                                <th class="text-white text-center">Tanggal</th>
                                <th class="text-white text-center">Pelanggan</th>
                                <th class="text-white text-center">Pesanan</th>
                                <th class="text-white text-center">Nominal</th>
                                <th class="text-white text-center">Metode</th>
                                <th class="text-white text-center">Act</th>
                            </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="modal fade" role="dialog" id="modal-payment" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Form Pembayaran</h5> <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
            </div>
            <form id="form-data" method="POST" novalidate="" enctype="multipart/form-data" class="needs-validation">
                <div class="modal-body">
                    <div class="row">
                        <input type="text" id="id" name="id" hidden>
                        <input type="text" id="uuid" name="uuid" hidden>
                        <input type="text" id="sale_id" name="sale_id" hidden>
                        <input type="text" id="sale_uuid" name="sale_uuid" hidden>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="required">Pelanggan </label>
                                <select class="form-control selectpicker" data-live-search="true" style="width: 100%" id="sale" name="sale">
                                    <option value="">Pilih Pelanggan</option>
                                    <?php foreach ($sales as $key => $value) { ?>
                                        <option value="<?= $value->uuid ?>"><?= $value->customer_name . " / " . $value->customer_phone ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="required">Nama Pelanggan</label>
                                <input type="text" name="customer_name" id="customer_name" class="form-control" readonly>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="required">HP Pelanggan</label>
                                <input type="text" name="customer_phone" id="customer_phone" class="form-control" readonly>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="required">Tanggal</label>
                                <input type="datetime-local" class="form-control" id="date" name="date" value="" required="">
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="required">Pembayaran </label>
                                <select class="form-control selectpicker" style="width: 100%" id="add_transfer_type" name="transfer_type">
                                    <?php foreach ($transfer_type as $key => $value) { ?>
                                        <option value="<?= $value->transfer_name ?>"><?= $value->transfer_name ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="required">Nominal (Rp)</label>
                                <input type="text" class="form-control currency" id="amount" name="amount" value="" required="">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Catatan</label>
                                <textarea class="form-control" id="description" name="description"></textarea>
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
    $(document).ready(() => {
        get_data();
    });

    $('#sale').change(function() {

        $.ajax({
            url: '<?= base_url('invoice/get_invoice') ?>',
            data: {
                uuid: $(this).val()
            },
            dataType: "json",
            type: "POST",
            success: (Result) => {
                if (Result) {
                    $('#sale_id').val(Result.id);
                    $('#sale_uuid').val(Result.uuid);
                    $('#customer_name').val(Result.customer_name);
                    $('#customer_phone').val(Result.customer_phone);
                }

            },
            error: (xhr, status, error) => {

                failed('Gagal', errorResponse(xhr, status, error), 'error', false, 1500)

            }
        })
    })

    const edit_data = (uuid) => {
        $.ajax({
            url: '<?= base_url('transfer/get_transfer') ?>',
            data: {
                uuid: uuid
            },
            dataType: "json",
            type: "POST",
            success: (Result) => {
                if (Result) {
                    $('#id').val(Result.id);
                    $('#uuid').val(Result.uuid);
                    $('#sale_id').val(Result.sale_id);
                    $('#sale').val(Result.sale_uuid).trigger('change');
                    $('#sale_uuid').val(Result.sale_uuid);
                    $('#customer_name').val(Result.customer_name);
                    $('#customer_phone').val(Result.customer_phone);
                    $('#date').val(Result.date);
                    $('#amount').val(Result.amount);
                    $('#description').val(Result.description);
                    $('#add_transfer_type').val(Result.transfer_type).trigger('change');
                    getCurrency();
                }

            },
            error: (xhr, status, error) => {

                failed('Gagal', errorResponse(xhr, status, error), 'error', false, 1500)

            }
        })
    }

    const get_data = (reset = null) => {
        let form = $('#form-purchase-produk');
        if (reset == 'reset') {
            $('#transfer_type').val(null).trigger('change');
            form[0].reset()
        }
        $('#table-transfer tbody').empty();
        const loading = `<td colspan="9" class="py-4 text-center">
                                <i class="fas fa-spinner fa-spin mr-1"></i> Loading...
                            </td>`;
        $('#table-transfer tbody').append(loading);
        $.ajax({
            url: '<?= base_url('transfer/get_tranfer_items') ?>',
            data: form.serialize()
        }).done(function(data) {
            let result = JSON.parse(data);
            $('#table-transfer').dataTable({
                destroy: true,
                bSort: false,
                data: result,
                "searching": true,
                "sorting": false,
                "autoWidth": false,
                "orderable": false,
                "sorting": false,
                "lengthMenu": [
                    [10, 25, 100, 250, 500, 1000],
                    [10, 25, 100, 250, 500, 1000]
                ],
                "dom": 'fBlrtip',
                "buttons": [
                    'excel'
                ],
                "language": {
                    "processing": "Loading. Please wait...",
                    "emptyTable": "<em>Tidak ada data yang dapat ditampilkan</em>"
                },
                "columns": [{
                        "data": "id",
                        className: "align-middle text-center",
                        render: function(data, type, row, meta) {
                            return meta.row + meta.settings._iDisplayStart + 1;
                        }
                    },
                    {
                        "data": "cs_name",
                        className: "align-middle text-left",
                    },
                    {
                        "data": "date",
                        className: "align-middle text-left",
                    },
                    {
                        "data": "customer_name",
                        className: "align-middle text-left",
                        render: (data, type, row) => {
                            return `<strong>Nama: </strong> ${row.customer_name} <br> <strong>Phone: </strong>${row.customer_phone} <br> <strong>Catatan: </strong>${row.description}`;
                        }
                    },
                    {
                        "data": "customer_name",
                        className: "align-middle text-left align-middle",
                        render: (data, type, row) => {
                            let products = "<ol>"
                            // Iterasi melalui setiap produk yang berhubungan dengan penjualan ini
                            row.sale_products.forEach(function(product) {
                                products += `<li>${product.product_name} <br> Qty: ${product.qty}</li>`
                            });
                            products += "</ol>"
                            products += `<medium><strong>Catatan: </strong>${row.description}</medium>`;

                            return products;
                        }
                    },
                    {
                        "data": "amount",
                        className: "align-middle text-right text-nowrap",
                        render: (data, type, row) => {
                            return makeCurrency(row.amount);
                        }
                    },
                    {
                        "data": "transfer_type",
                        className: "align-middle text-left text-nowrap",
                    },
                    {
                        "data": "id",
                        className: "align-middle text-center text-nowrap",
                        render: (data, type, row) => {
                            let btnDelete = '';
                            let btnEdit = '';
                            let btnPrint = '';
                            let baseUrl = "<?= base_url() ?>";
                            let btnPay = '';
                            <?php if ($delete) { ?>
                                btnDelete = `<div class="dropdown-divider"></div>
                                    <a class="dropdown-item has-icon text-danger" href="javascript:;" onclick="delete_data(${row.id})">
                                        <i class="fas fa-trash" style="margin-top: 1px"></i> Hapus
                                    </a>`
                            <?php } ?>
                            <?php if ($update) { ?>
                                btnEdit = `<a class="dropdown-item has-icon" href="javascript:;" onclick="edit_data('${row.uuid}')" data-toggle="modal" data-target="#modal-payment">
                                            <i class="fas fa-edit" style="margin-top: 1px"></i> Edit
                                        </a>`
                                // btnEdit = `<a class="dropdown-item has-icon" href="${baseUrl}transfer/edit/${row.uuid}" onclick="edit_data('${row.uuid}')">
                                //             <i class="fas fa-edit" style="margin-top: 1px"></i> Edit
                                //         </a>`
                            <?php } ?>
                            <?php if ($cetak) { ?>
                                // btnPrint = `<a class="dropdown-item has-icon" href="${baseUrl}transfer/cetak/${row.uuid}" target="_blank">
                                // <i class="fas fa-print" style="margin-top: 1px"></i> Print Invoice
                                // </a>`
                            <?php } ?>
                            const btnDetail = `<a class="dropdown-item has-icon" href="${baseUrl}transfer/detail/${row.uuid}">
                                            <i class="fas fa-eye" style="margin-top: 1px"></i> Detail
                                        </a>`

                            const btnAttachment = ` <a class="dropdown-item has-icon" href="javascript:;" data-toggle="modal" data-target="#modal-attachment" onclick="get_attacment(${row.id}, 5)">
                                <i class="fas fa-file" style="margin-top: 1px"></i> Attachment
                                </a>`

                            const btn = `<div class="dropdown d-inline">
                                            <button class="btn btn-outline-primary dropdown-toggle rounded-pill" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-boundary="window">Select
                                            </button>
                                            <div class="dropdown-menu">
                                                ${btnPrint}
                                                ${btnEdit}
                                                ${btnDelete}
                                            </div>
                                        </div>`
                            // ${btnDelete}
                            //    ${btnDetail}

                            return `${btn}`;
                        }
                    }
                ]
            });
        })
    }


    const delete_data = (id) => {
        swal({
                title: 'Apakah Anda yakin?',
                text: 'Anda akan menghapus data ini!',
                icon: 'warning',
                closeOnClickOutside: false,
                closeOnEsc: false,
                allowOutsideClick: false,
                buttons: true,
                dangerMode: true,
            })
            .then((willDelete) => {
                if (willDelete) {
                    $.ajax({
                        url: "<?= base_url('transfer/delete_payment') ?>",
                        data: {
                            uuid: id
                        },
                        dataType: "json",
                        type: "POST",
                        success: (Result) => {

                            const {
                                status,
                                message,
                            } = Result;

                            if (status) {
                                success('Data Berhasil Dihapus', message, 'success', false, 1500);
                                setTimeout(() => {
                                    get_data();
                                }, 1500);
                            } else {
                                let errorMsgString = (message) ? errorMsg.replace(/(<([^>]+)>)/gi, "") : 'Data gagal dihapus';
                                failed('Data Gagal dihapus', errorMsgString, 'error', false, 3000)
                            }

                        },
                        error: (xhr, status, error) => {
                            // selectError()
                            failed('Gagal', errorResponse(xhr, status, error), 'error', false, 1500)

                        }
                    });
                } else {
                    cancle('Data tidak jadi dihapus!', 'info', false, 1500)
                }
            });
    }

    const save_data = () => {
        const form = $('#form-data');
        if (form[0].checkValidity() === false) {
            form.addClass('was-validated');
        } else {

            swal({
                    title: 'Apakah Anda yakin?',
                    text: 'Anda akan mengubah status invoice menjadi draft?',
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
                        executeData();
                    } else {
                        cancle('Data tidak jadi disimpan!', 'info', false, 1500)
                    }
                })

        }
    }

    const resetForm = () => {
        const form = $('#form-data');
        $('#add_transfer_type').val(null).trigger('change');
        $('#sale').val(null).trigger('change');
        $('#customer_name').val('');
        $('#customer_phone').val('');
        $('#date').val('');
        form[0].reset()
    }


    const executeData = () => {
        const form = $('#form-data');
        $.ajax({
            url: "<?= base_url('transfer/save_payment') ?>",
            method: 'POST',
            dataType: 'JSON',
            data: new FormData(form[0]),
            processData: false,
            contentType: false,
            cache: false,
            async: true,
            success: (Result) => {
                const {
                    status,
                    data,
                    message,
                } = Result;
                if (status) {
                    success('Data Berhasil Disimpan', message, 'success', false, 1500)
                    $(".modal").modal('hide');
                    setTimeout(() => {
                        resetForm();
                        get_data();
                    }, 1500)

                } else {
                    let errorMsgString = (message) ? message.replace(/(<([^>]+)>)/gi, "") : 'Periksa kembali data anda'
                    failed('Gagal', errorMsgString, 'error', false, 4000)
                }
            },
            error: (xhr, status, error) => {
                failed('Gagal', errorResponse(xhr, status, error), 'error', false, 1500)

            }
        });
    }
</script>