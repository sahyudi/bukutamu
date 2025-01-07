<?php
$create = check_view('invoice', $this->session->userdata('id'), $this->session->userdata('role_id'), 'create');
$update = check_view('invoice', $this->session->userdata('id'), $this->session->userdata('role_id'), 'update');
$delete = check_view('invoice', $this->session->userdata('id'), $this->session->userdata('role_id'), 'delete');
$export = check_view('invoice', $this->session->userdata('id'), $this->session->userdata('role_id'), 'export');
$cetak = check_view('invoice', $this->session->userdata('id'), $this->session->userdata('role_id'), 'cetak');
?>
<section class="section">

    <div class="section-body">

        <div class="card my-3">
            <div class="card-header d-flex justify-content-between">
                <h4><?= $title ?></h4>
                <div class="float-right">
                    <?php if ($create) { ?>
                        <a href="<?= base_url('invoice/add') ?>" class="btn btn-outline-primary rounded-pill px-4 py-2"><i class="fas fa-plus-circle"></i>&nbsp; Tambah</a>

                    <?php } ?>
                    <?php if ($export) { ?>
                        <!-- <a href="<?= base_url('sale/delivery/export') ?>" target="_blank" class="btn btn-outline-danger rounded-pill px-4 py-2"><i class="fas fa-file-export"></i>&nbsp; Export Xls</a> -->
                    <?php } ?>
                </div>
            </div>
            <div class="card-body">
                <form id="form-purchase-produk" method="POST" class="needs-validation" novalidate="">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="">Tanggal Pemesanan</label>
                                <input type="date" class="form-control" name="order_date" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="">Tanggal Pengambilan</label>
                                <input type="date" class="form-control" name="pickup_date" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Status</label>
                                <select class="form-control selectpicker" style="width: 100%" id="status" name="status" required>
                                    <option value="">Semua Status</option>
                                    <option value="ANTRIAN">ANTRIAN</option>
                                    <option value="SELESAI">SELESAI</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
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
                    <table id="table-invoice" class="table table-bordered table-hover table-stripped" width="100%">
                        <thead class="bg-primary">
                            <tr class="text-center text-white">
                                <th class="align-middle text-white text-center" width="5%">#</th>
                                <th class="align-middle text-white text-center">CS</th>
                                <!-- <th class="align-middle text-white text-center">No. Pemesanan</th> -->
                                <th class="align-middle text-white text-center">Tgl Pesan</th>
                                <th class="align-middle text-white text-center">Tgl Pengambilan</th>
                                <th class="align-middle text-white text-center">Pelanggan</th>
                                <th class="align-middle text-white text-center" width="20%">Pesanan</th>
                                <th class="align-middle text-white text-center">Catatan</th>
                                <th class="align-middle text-white text-center">Total</th>
                                <th class="align-middle text-white text-center">Kurang Bayar</th>
                                <th class="align-middle text-white text-center">Status</th>
                                <th class="align-middle text-white text-center">Act</th>
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


<div class="modal fade" role="dialog" id="modal-invoice" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Edit Form</h5> <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
            </div>
            <form id="form-data" method="POST" novalidate="" enctype="multipart/form-data" class="needs-validation">
                <div class="modal-body">
                    <div class="row">
                        <input type="text" id="id" name="id" hidden>
                        <input type="text" id="uuid" name="uuid" hidden>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Order No</label>
                                <input type="text" class="form-control" id="sale_no" name="sale_no" readonly>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Tanggal Pemesanan</label>
                                <input type="text" class="form-control" id="order_date" name="order_date" readonly>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Tanggal Pengambilan</label>
                                <input type="text" class="form-control" id="pickup_date" name="pickup_date" readonly>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Nama</label>
                                <input type="text" class="form-control" id="customer_name" name="customer_name" readonly>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Phone</label>
                                <input type="text" class="form-control" id="customer_phone" name="customer_phone" readonly>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Status</label>
                                <select class="form-control selectpicker" style="width: 100%" id="edit_status" name="status" required>
                                    <option value="ANTRIAN">ANTRIAN</option>
                                    <option value="SELESAI">SELESAI</option>
                                </select>
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


    const get_data = (reset = null) => {
        let form = $('#form-purchase-produk');
        if (reset == 'reset') {
            $('#status').val(null).trigger('change');
            form[0].reset()
        }
        $('#table-invoice tbody').empty();
        const loading = `<td colspan="9" class="py-4 text-center">
                                <i class="fas fa-spinner fa-spin mr-1"></i> Loading...
                            </td>`;
        $('#table-invoice tbody').append(loading);
        $.ajax({
            url: '<?= base_url('invoice/get_invoice_items') ?>',
            data: form.serialize()
        }).done(function(data) {
            let result = JSON.parse(data);
            $('#table-invoice').dataTable({
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
                        className: "text-center align-middle",
                        render: function(data, type, row, meta) {
                            return meta.row + meta.settings._iDisplayStart + 1;
                        }
                    },
                    {
                        "data": "cs_name",
                        className: "text-left align-middle",
                    },
                    {
                        "data": "order_date",
                        className: "text-left align-middle",
                    },
                    {
                        "data": "pickup_date",
                        className: "text-left align-middle",
                    },
                    {
                        "data": "customer_name",
                        className: "text-left align-middle",
                        render: (data, type, row) => {
                            return `<strong>Nama: </strong> ${row.customer_name} <br> <strong>Phone: </strong>${row.customer_phone}`;
                        }
                    },
                    {
                        "data": "customer_name",
                        className: "text-left align-middle",
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
                        "data": "description",
                        className: "text-left align-middle",
                        visible: false,
                    },
                    {
                        "data": "total",
                        className: "text-right text-nowrap align-middle",
                        render: (data, type, row) => {
                            return makeCurrency(row.total);
                        }
                    },
                    {
                        "data": "outstanding_balance",
                        className: "text-right text-nowrap align-middle",
                        render: (data, type, row) => {
                            return makeCurrency(row.outstanding_balance);
                        }
                    },
                    {
                        "data": "status",
                        className: "text-center text-nowrap align-middle",
                        render: (data, type, row) => {
                            return `<strong>${row.status}</strong>` + (row.status == 'SELESAI' ? '<br>' + row.done_date : '')
                        }
                    },
                    {
                        "data": "id",
                        className: "text-center text-nowrap align-middle",
                        render: (data, type, row) => {
                            let btnDelete = '';
                            let btnEditStatus = '';
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
                                btnEditStatus = `<a class="dropdown-item has-icon" href="javascript:;" data-toggle="modal" data-target="#modal-invoice" onclick="get_invoice('${row.uuid}')">
                                            <i class="fas fa-edit" style="margin-top: 1px"></i> Edit Status
                                        </a>`
                                btnEdit = `<a class="dropdown-item has-icon" href="${baseUrl}invoice/edit/${row.uuid}">
                                <i class="fas fa-edit" style="margin-top: 1px"></i> Edit Order
                                </a>`
                            <?php } ?>
                            <?php if ($cetak) { ?>
                                btnPrint = `<a class="dropdown-item has-icon" href="${baseUrl}invoice/cetak/${row.uuid}" target="_blank">
                                <i class="fas fa-print" style="margin-top: 1px"></i> Print SPK
                                </a>`
                            <?php } ?>
                            const btnDetail = `<a class="dropdown-item has-icon" href="${baseUrl}invoice/detail/${row.uuid}">
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
                                                ${btnEditStatus}
                                                ${btnEdit}
                                                ${btnDetail}
                                                ${btnDelete}
                                            </div>
                                        </div>`
                            // ${btnDelete}

                            return `${btn}`;
                        }
                    }
                ]
            });
        })
    }

    const get_invoice = (uuid) => {

        $.ajax({
            url: '<?= base_url('invoice/get_invoice') ?>',
            data: {
                uuid: uuid
            },
            dataType: "json",
            type: "POST",
            success: (Result) => {
                if (Result) {
                    $('#id').val(Result.id);
                    $('#uuid').val(Result.uuid);
                    $('#sale_no').val(Result.sale_no);
                    $('#customer_name').val(Result.customer_name);
                    $('#customer_phone').val(Result.customer_phone);
                    $('#order_date').val(Result.order_date);
                    $('#pickup_date').val(Result.pickup_date);
                    $('#description').val(Result.description);
                    $('#edit_status').val(Result.status).trigger('change');
                    $('#sale_no').val(Result.sale_no);
                }

            },
            error: (xhr, status, error) => {
                // selectError()
                failed('Gagal', errorResponse(xhr, status, error), 'error', false, 1500)

            }
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
                        url: "<?= base_url('invoice/delete') ?>",
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

    const executeData = () => {
        const form = $('#form-data');
        $.ajax({
            url: "<?= base_url('invoice/update') ?>",
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