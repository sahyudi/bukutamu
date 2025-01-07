<?php
$create = check_view('product/data', $this->session->userdata('id'), $this->session->userdata('role_id'), 'create');
$update = check_view('product/data', $this->session->userdata('id'), $this->session->userdata('role_id'), 'update');
$delete = check_view('product/data', $this->session->userdata('id'), $this->session->userdata('role_id'), 'delete');
$export = check_view('product/data', $this->session->userdata('id'), $this->session->userdata('role_id'), 'export');
?>
<section class="section">

    <div class="section-body">

        <div class="card my-3">
            <div class="card-header d-flex justify-content-between">
                <h4><?= $title ?></h4>
                <div class="float-right">
                    <?php if ($create) { ?>
                        <button data-toggle="modal" data-target="#modal-product" onclick="resetForm()" class="btn btn-outline-primary rounded-pill px-4 py-2"><i class="fas fa-plus-circle"></i>&nbsp; Tambah</button>
                    <?php } ?>
                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table id="table-product" class="table table-bordered table-hover table-stripped" width="100%">
                        <thead class="bg-primary">
                            <tr class="text-center text-white">
                                <th class="text-white text-center" width="7%">#</th>
                                <th class="text-white text-center">Produk</th>
                                <th class="text-white text-center">Deskripsi</th>
                                <th class="text-white text-center">Harga</th>
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

<div class="modal fade" role="dialog" id="modal-product" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Form Produk</h5> <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
            </div>
            <form id="form-data" method="POST" novalidate="" enctype="multipart/form-data" class="needs-validation">
                <input type="text" name="id" id="id" hidden>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="required">Nama</label>
                                <input type="text" class="form-control" id="name" name="name" placeholder="Nama item" required="">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Deskripsi</label>
                                <textarea name="desc" id="desc" class="form-control" cols="30" rows="5" placeholder="Deskripsi ..."></textarea>
                            </div>
                        </div>
                        <div class="col-md-12 d-none">
                            <div class="form-group">
                                <label class="required">Harga</label>
                                <input type="text" class="form-control currency" id="sell_price" name="sell_price" placeholder="Harga Jual" required="" value="0">
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



    $('.modal').on('shown.bs.modal', function() {
        // $(this).find('[autofocus]').focus();
        $('#nama').focus();
    });

    const get_data = () => {
        $('#table-product tbody').empty();
        const loading = `<td colspan="9" class="py-4 text-center">
                                <i class="fas fa-spinner fa-spin mr-1"></i> Loading...
                            </td>`;
        $('#table-product tbody').append(loading);
        $.ajax({
            url: '<?= base_url('product/get_data') ?>',
        }).done(function(data) {
            let result = JSON.parse(data);
            $('#table-product').dataTable({
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
                "dom": 'flrtip',
                "language": {
                    "processing": "Loading. Please wait...",
                    "emptyTable": "<em>Tidak ada data yang dapat ditampilkan</em>"
                },
                "columns": [{
                        "data": "id",
                        className: "text-center",
                        render: function(data, type, row, meta) {
                            return meta.row + meta.settings._iDisplayStart + 1;
                        }
                    },
                    {
                        "data": "product_name",
                    },
                    {
                        "data": "description",
                    },
                    {
                        "data": "sell_price",
                        visible: false,
                        className: "text-right text-nowrap",
                        render: (data, type, row) => {
                            return makeCurrency(row.sell_price)
                        }
                    },
                    {
                        "data": "id",
                        className: "text-center text-nowrap",
                        render: (data, type, row) => {
                            let btnDelete = '';
                            let btnEdit = '';
                            let btnStock = '';
                            <?php if ($delete) { ?>
                                btnDelete = `<button onclick="delete_data(${row.id})" class="btn btn-sm btn-danger"> <i class="fas fa-trash"></i></button>`
                            <?php } ?>
                            <?php if ($update) { ?>
                                btnEdit = `<button data-toggle="modal" data-target="#modal-product" type="button" onclick="edit_data(${row.id})" class="btn btn-sm btn-primary"> <i class="fas fa-edit"></i></button>`
                            <?php } ?>

                            return `${btnEdit} ${btnDelete}`;
                        }
                    }
                ]
            });
        })
    }

    const resetForm = () => {
        $('#form-data')[0].reset();
        $('#form-data').removeClass('was-validated');
    };

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
                        url: "<?= base_url('product/delete') ?>",
                        data: {
                            id: id
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

    const edit_data = (id) => {
        $.ajax({
            url: "<?= base_url('product/edit') ?>",
            data: {
                id: id
            },
            dataType: "json",
            type: "POST",
            success: function(Result) {
                $('#id').val(Result.id);
                $('#name').val(Result.product_name);
                $('#desc').val(Result.description);
                $('#sell_price').val(Result.sell_price);
                getCurrency();
            },
            error: (xhr, status, error) => {
                failed('Data Gagal Disimpan', errorResponse(xhr, status, error), 'error', false, 1500)
            }
        });
    }

    $('#form-data').on('keypress', function(e) {
        var key = (e.keyCode || e.which);
        if (key == 13 || key == 3) {
            save_data();
        }
    });


    const save_data = () => {
        const form = $('#form-data');
        let logo = document.getElementById("photo");
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
            url: "<?= base_url('product/save') ?>",
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
                    $('.modal').modal('hide');
                    resetForm();

                    success('Data Berhasil Disimpan', message, 'success', false, 1500)
                    setTimeout(() => {
                        get_data();
                    }, 1500)

                } else {
                    let errorMsgString = (message) ? message.replace(/(<([^>]+)>)/gi, "") : 'Periksa kembali data anda'
                    failed('Data Gagal Disimpan', errorMsgString, 'error', false, 4000)
                }
            },
            error: (xhr, status, error) => {
                failed('Data Gagal Disimpan', errorResponse(xhr, status, error), 'error', false, 1500)

            }
        });
    }
</script>