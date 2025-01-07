<?php
$create = true;
$update = true;
$delete = true;
?>

<section class="section">

    <div class="section-body">

        <div class="card my-3">
            <div class="card-header d-flex justify-content-between">
                <h4><?= $title ?></h4>
                <div class="float-right">
                    <?php if ($create) { ?>
                        <button type="button" onclick="resetForm()" data-target="#modal-employee" data-toggle="modal" class="btn btn-outline-primary rounded-pill px-4 py-2"><i class="fas fa-plus-circle"></i>&nbsp; Tambah</button>
                    <?php } ?>
                </div>
            </div>

            <div class="card-body">
                <div class="table-responsive">
                    <table id="table-employee" class="table table-bordered table-hover table-stripped" width="100%">
                        <!-- id "dataTables" untuk generate datatable otomatis -->
                        <thead class="bg-primary">
                            <tr class="text-center">
                                <th class="text-white">#</th>
                                <th class="text-white">Username</th>
                                <th class="text-white">Nama</th>
                                <th class="text-white">Nohp</th>
                                <th class="text-white">Jabatan</th>
                                <th class="text-white">Status</th>
                                <th class="text-white">Act</th>
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

<div class="modal fade" role="dialog" id="modal-employee" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Form User</h5> <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
            </div>
            <form id="form-employee" method="POST" novalidate="" enctype="multipart/form-data" class="needs-validation">
                <div class="modal-body">
                    <div class="row">
                        <input type="text" id="id" name="id" hidden>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="required">Username</label>
                                <input type="text" class="form-control" id="username" name="username" placeholder="username" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="required">Nama</label>
                                <input type="text" class="form-control" id="name" name="name" placeholder="nama lengkap" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="required">Password</label>
                                <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="required">Konfirmasi Password</label>
                                <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Konfirmasi password" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="required">NO HP</label>
                                <input type="text" class="form-control" id="nohp" name="nohp" placeholder="nomor hp" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="required">Jabatan</label>
                                <select class="form-control selectpicker" name="jabatan" id="jabatan" required>
                                    <option value="Admin">Admin</option>
                                    <option value="Eselon 2">Eselon 2</option>
                                    <option value="Eselon 3">Eselon 3</option>
                                    <option value="Eselon 4">Eselon 4</option>
                                    <option value="Staf">Staf</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="required">Status</label>
                                <select class="form-control selectpicker" name="is_active" id="is_active">
                                    <option value="1">AKTIF</option>
                                    <option value="0">NON AKTIF</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer bg-whitesmoke">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                    <button type="button" onclick="save_employee()" class="btn btn-primary btn-shadow">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" role="dialog" id="modal-update-employee" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-md modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Edit Employee</h5> <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
            </div>
            <form id="form-update-user" method="POST" novalidate="" enctype="multipart/form-data" class="needs-validation">
                <div class="modal-body">
                    <div class="row">
                        <input type="text" id="edit_id" name="id" hidden>
                        <input type="text" id="edit_uuid" name="uuid" hidden>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="required">Nama</label>
                                <input type="text" class="form-control" id="edit_name" name="name" placeholder="nama lengkap" required>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="required">NO HP</label>
                                <input type="text" class="form-control" id="edit_nohp" name="nohp" placeholder="nomor hp" required>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="required">Jabatan</label>
                                <select class="form-control selectpicker" name="jabatan" id="edit_jabatan" required>
                                    <option value="Admin">Admin</option>
                                    <option value="Eselon 2">Eselon 2</option>
                                    <option value="Eselon 3">Eselon 3</option>
                                    <option value="Eselon 4">Eselon 4</option>
                                    <option value="Staf">Staf</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="required">Status</label>
                                <select class="form-control selectpicker" name="is_active" id="edit_is_active">
                                    <option value="1">AKTIF</option>
                                    <option value="0">NON AKTIF</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer bg-whitesmoke">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                    <button type="button" onclick="update_user()" class="btn btn-primary btn-shadow">Perbarui</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" role="dialog" id="modal-reset" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-md modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Reset Password</h5> <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
            </div>
            <form id="form-reset" method="POST" novalidate="" enctype="multipart/form-data" class="needs-validation">
                <div class="modal-body">
                    <div class="row">
                        <input type="text" id="reset_id" name="id" hidden>
                        <input type="text" id="reset_uuid" name="uuid" hidden>

                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="required">Username</label>
                                <input type="text" class="form-control" id="reset_username" name="username" disabled>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="required">Password</label>
                                <input type="password" class="form-control" id="reset_password" name="password" placeholder="Password" required>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="required">Konfirmasi Password</label>
                                <input type="password" class="form-control" id="reset_confirm_password" name="confirm_password" placeholder="Konfirmasi password" required>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer bg-whitesmoke">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                    <button type="button" onclick="save_reset()" class="btn btn-primary btn-shadow">Reset Password</button>
                </div>
            </form>
        </div>
    </div>
</div>


<script>
    $(document).ready(function() {
        get_data();
        $('.selectpicker').selectpicker('refresh');
    });

    const get_data = () => {
        $('#table-employee tbody').empty();
        const loading = `<td colspan="6" class="py-4 text-center">
                                <i class="fas fa-spinner fa-spin mr-1"></i> Loading...
                            </td>`;
        $('#table-employee tbody').append(loading);
        $.ajax({
            url: '<?= base_url('user/get') ?>',
        }).done(function(data) {
            let result = JSON.parse(data);
            $('#table-employee').dataTable({
                destroy: true,
                bSort: false,
                data: result,
                'fnDrawCallback': function(oSettings) {
                    $('#modal-loading').modal('hide');
                },
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
                        "data": "username",
                    },
                    {
                        "data": "nama",
                    },
                    {
                        "data": "nohp",
                    },
                    {
                        "data": "jabatan",
                    },

                    {
                        "data": "is_active",
                        className: "text-center",
                        render: (data, type, row) => {
                            return getSatusActive(row.is_active)
                        }
                    },
                    {
                        "data": "id",
                        className: "text-center",
                        render: (data, type, row) => {

                            let btnDelete = '';
                            let btnEdit = '';

                            <?php if ($delete) { ?>
                                btnDelete = `<button onclick="delete_employee(${row.id})" class="btn btn-sm btn-danger"> <i class="fas fa-trash"></i></button>`
                            <?php } ?>

                            <?php if ($update) { ?>
                                btnEdit = `<button data-toggle="modal" data-target="#modal-update-employee" onclick="edit_user('${row.uuid}')" class="btn btn-sm btn-primary"> <i class="fas fa-edit"></i></button>`
                            <?php } ?>
                            const btnReset = `<button data-toggle="modal" data-target="#modal-reset" onclick="edit_user('${row.uuid}', true)" class="btn btn-sm btn-warning"> <i class="fas fa-key"></i> Reset</button>`

                            return `${btnReset} ${btnEdit} ${btnDelete} `;
                        }
                    }
                ]
            });
        })
    }

    const edit_user = (id, reset = false) => {
        $.ajax({
            url: "<?= base_url('user/edit') ?>",
            dataType: "json",
            type: "POST",
            data: {
                id: id
            },
            success: (Result) => {
                if (reset) {
                    $('#reset_id').val(Result.id);
                    $('#reset_uuid').val(Result.uuid);
                    $('#reset_username').val(Result.username);
                } else {
                    $('#edit_id').val(Result.id);
                    $('#edit_uuid').val(Result.uuid);
                    $('#edit_name').val(Result.nama);
                    $('#edit_nohp').val(Result.nohp);
                    $('#edit_jabatan').val(Result.jabatan).trigger('change');
                    $('#edit_is_active').val(Result.is_active).trigger('change');;
                }
            },
            error: (xhr, status, error) => {
                failed('Load data is failed', errorResponse(xhr, status, error), 'error', false, 1500)
            }
        });
    }

    const resetForm = () => {
        $('#form-employee')[0].reset();
        $('.selectpicker').selectpicker('refresh');
    }



    const save_employee = () => {
        const form = $('#form-employee');
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
        const form = $('#form-employee');
        $.ajax({
            url: "<?= base_url('user/save') ?>",
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

    const update_user = () => {
        const form = $('#form-update-user');
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
                        updateExecuteData();
                    } else {
                        cancle('Data tidak jadi disimpan!', 'info', false, 1500)
                    }
                })

        }
    }

    const updateExecuteData = () => {
        const form = $('#form-update-user');
        $.ajax({
            url: "<?= base_url('user/update') ?>",
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

    const save_reset = () => {
        const form = $('#form-reset');
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
                        resetPasswordExecute();
                    } else {
                        cancle('Data tidak jadi disimpan!', 'info', false, 1500)
                    }
                })

        }
    }

    const resetPasswordExecute = () => {
        const form = $('#form-reset');
        $.ajax({
            url: "<?= base_url('user/reset') ?>",
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
                    success('Password baru disimpan', message, 'success', false, 1500)
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

    const delete_employee = (id) => {
        swal({
                title: 'Apakah Anda yakin?',
                text: 'Anda akan menghapus data!',
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
                        url: "<?= base_url('user/delete') ?>",
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
                        error: (Error) => {
                            failed('error', errorResponse(xhr, status, error), 'error', false, 1500)

                        }
                    });
                } else {
                    cancle('Data tidak jadi dihapus!', 'info', false, 1500)
                }
            });
    }
</script>