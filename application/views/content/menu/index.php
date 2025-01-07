<div class="card my-3">
    <div class="card-header d-flex justify-content-between bg-card-primary">
        <h4>Daftar Menu</h4>
        <div class="card-header-action">
            <button data-toggle="modal" data-target="#modal-menu" onclick="resetForm()" class="btn btn-outline-primary rounded-pill px-4 py-2"><i class="fas fa-plus-circle"></i>&nbsp; Tambah</button>

            <!-- <button data-toggle="modal" data-target="#modal-menu" onclick="resetForm()" type="button" class="btn btn-dark"> Tambah Menu</button> -->
        </div>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table id="table-menu" class="table table-hover table-stripped" width="100%" style="font-size:small;color:black;">
                <thead>
                    <tr class="text-center">
                        <th>Level</th>
                        <th>Parent Menu</th>
                        <th>Menu</th>
                        <th>Url</th>
                        <th>Icon</th>
                        <th>Role</th>
                        <th>Order</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
        </div>
    </div>
</div>


<div class="modal fade" role="dialog" id="modal-menu" aria-modal="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Form Input</h5> <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
            </div>
            <div class="modal-body">
                <form method="POST" class="needs-validation" novalidate="" id="form-menu">
                    <div class="row">
                        <input type="text" id="id" name="id" hidden>
                        <div class="form-group col-md-6">
                            <label>Level</label>
                            <select name="level" id="level" class="form-control selectpicker" data-live-search="true" style="width: 100%" required="">
                                <option value="0">Level 0</option>
                                <option value="1">Level 1</option>
                                <option value="2">Level 2</option>
                            </select>
                            <div class="invalid-feedback">
                                Level is required
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Parent Menu</label>
                            <select name="parent" id="parent" class="form-control selectpicker" data-live-search="true" style="width: 100%" required="">
                                <option value="0" selected>Master Parent</option>
                            </select>
                            <div class="invalid-feedback">
                                Parent menu is required
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Name</label>
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Name" name="name" id="name">
                            </div>
                            <div class="invalid-feedback">
                                Name is required
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Url</label>
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Url" name="url" id="url">
                            </div>
                            <div class="invalid-feedback">
                                Url is required
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Icon</label>
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Icon" name="icon" id="icon">
                            </div>
                            <div class="invalid-feedback">
                                Icon is required
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Order</label>
                            <div class="input-group">
                                <input type="number" class="form-control" placeholder="Order" name="order" id="order">
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <label>Role</label>
                            <select name="role[]" id="role" class="form-control selectpicker" data-live-search="true" multiple="" style="width: 100%;">
                                <option value="read">read</option>
                            </select>
                            <div class="invalid-feedback">
                                Role is required
                            </div>
                            <button type="button" class="btn btn-info btn-sm mt-3" data-toggle="modal" data-target="#modal-addRole">Add Role</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer bg-whitesmoke">
                <button type="button" class="btn btn-danger btn-shadow" data-dismiss="modal">Tutup</button>
                <button type="button" class="btn btn-primary btn-shadow" onclick="save_menu()">Simpan</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" role="dialog" id="modal-addRole" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-md modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Form Role</h5> <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label>Role Name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Add role" name="addRole" id="addRole" required="">
                    </div>
                </div>
            </div>
            <div class="modal-footer bg-whitesmoke">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" onclick="addRole()" class="btn btn-primary btn-shadow">Add Role</button>
            </div>
        </div>
    </div>
</div>



<script>
    $(document).ready(function() {
        get_menus();
    });

    $('#addRole').keydown(function() {

        if (event.key === 'Enter') {
            addRole()
        }

    })
    const addRole = (enter = false) => {
        const role = $('#addRole').val().toLowerCase();

        $('#role').append(`<option value="${role}">${role}</option>`);
        $('#addRole').val('');
    }

    $('#level').change(function() {
        let role = '';
        $('#role').empty();

        role = `<option value="read">read</option>
                <option value="create">create</option>
                <option value="update">update</option>
                <option value="delete">delete</option>
                `;
        $('#role').append(role).selectpicker('refresh');
        getOptionParent($(this).val());
    });


    const getOptionParent = (level = 0, value = null) => {

        if (parseInt(level) == 0) {
            $('#parent').empty();
            $('#parent').append('<option value="0" selected>Master Parent</option>').selectpicker('refresh');;
        } else {
            $.ajax({
                url: "<?= base_url('app/get_parent_menu') ?>",
                data: {
                    level: level
                },
                dataType: "json",
                type: "POST",
                success: (Result) => {
                    $('#parent').empty();
                    let option = '';
                    let selected = '';
                    Result.forEach(element => {
                        if (value) {
                            selected = (element.parent_id === value) ? 'selected' : '';
                        }
                        option += `<option value="${element.parent_id}" ${selected}>${element.parent_name}</option>`;
                    });
                    $('#parent').append(option).selectpicker('refresh');
                },
                error: (Error) => {
                    notif_error_default();
                }
            });
        }
    }


    const get_menus = () => {
        if (oTable) {
            oTable.fnDestroy();
        }
        $('#table-menu').dataTable().fnDestroy();
        var oTable = $('#table-menu').dataTable({
            "sAjaxSource": "<?= base_url('app/get_menus') ?>",
            'fnServerData': function(sSource, aoData, fnCallback) {
                aoData.push({
                    "name": "KEY-LIS",
                    "value": "KEY-LIS-123"
                });
                $.ajax({
                    'dataType': 'json',
                    'type': 'POST',
                    'url': sSource,
                    'data': aoData,
                    'success': fnCallback,
                    "error": handleAjaxError,
                    'headers': {
                        'X-Robots-Tag': 'noindex'
                    }
                });
            },

            'fnDrawCallback': function(oSettings) {
                $('#modal-loading').modal('hide');
            },
            "order": [
                [0, "asc"]
            ],
            "serverSide": false,
            "processing": true,
            "searching": true,
            "lengthChange": false,
            "search": true,
            "columnDefs": [{
                "orderable": false,
            }, ],
            "dom": 'flrtip',
            "columns": [{
                    "data": "level",
                    className: "text-center"
                },
                {
                    "data": "parent_name",
                },
                {
                    "data": "name",
                },
                {
                    "data": "url",
                },
                {
                    "data": "icon",
                },
                {
                    "data": "role",
                    render: (data, type, objct) => {
                        const Role = JSON.parse(objct.role);
                        let option = '';
                        if (Role) {
                            Role.forEach(value => {
                                option += `<li>${value}</li>`;
                            });
                        }

                        return `<ul>${option}</ul>`;
                    }
                },
                {
                    "data": "order",
                    "className": "text-center"
                },
                {
                    "data": "id",
                    "className": 'text-center text-nowrap',
                    render: (data, type, objct) => {
                        let btnDelete = '';
                        let btnEdit = '';
                        btnDelete = `<button onclick="delete_menu(${objct.id})" class="btn btn-sm btn-danger"> <i class="fas fa-trash"></i></button>`
                        btnEdit = `<button data-toggle="modal" data-target="#modal-menu" onclick="edit_menu(${objct.id})" class="btn btn-sm btn-info"> <i class="fas fa-pencil-alt"></i></button>`
                        return `${btnDelete} ${btnEdit}`;
                    }
                }
            ]
        });

    }

    const save_menu = () => {
        // showloading();
        const form = $('#form-menu');

        if (form[0].checkValidity() === false) {
            form.addClass('was-validated');
        } else {
            const url = "<?= base_url('app/save_menu') ?>";
            const method = 'post';
            $.ajax({
                url: url,
                type: method,
                data: form.serialize(),
                dataType: "json",
                success: (Result) => {
                    const {
                        status,
                        message,
                        data
                    } = Result;

                    if (status) {
                        $('.modal').modal('hide');
                        resetForm();
                        success('Data Berhasil Disimpan', message, 'success', false, 1500)
                        setTimeout(() => {
                            get_menus();
                        }, 1500)

                    } else {
                        let errorMsgString = (message) ? message.replace(/(<([^>]+)>)/gi, "") : 'Periksa kembali data anda'
                        failed('Data Gagal Disimpan', errorMsgString, 'error', false, 4000)
                    }
                },
                error: (Error) => {
                    failed('Data Gagal Disimpan', errorResponse(xhr, status, error), 'error', false, 1500)
                }
            });
        }
    }

    const edit_menu = (id) => {
        $.ajax({
            url: "<?= base_url('app/get_menu') ?>",
            data: {
                id: id
            },
            // dataType: "json",
            type: "POST",
            success: (Result) => {
                const {
                    status,
                    message,
                    data
                } = JSON.parse(Result);
                if (status) {
                    const dataRole = JSON.parse(data.role);
                    $('#id').val(data.id);
                    $('#name').val(data.name);
                    $('#url').val(data.url);
                    $('#icon').val(data.icon);
                    $('#order').val(data.order);
                    $('#level').val(data.level).selectpicker('refresh');;
                    $('#parent').val(data.parent_id).selectpicker('refresh');;

                    $('#role').empty();
                    let option = '<option></option>';
                    dataRole.forEach(value => {
                        option += `<option value="${value}">${value}</option>`;
                    });
                    $('#role').append(option).selectpicker('refresh');
                    $('#role').val(dataRole).trigger('change');
                    getOptionParent(data.level, data.parent_id);
                } else {
                    // notif_error(message);
                    let errorMsgString = (message) ? errorMsg.replace(/(<([^>]+)>)/gi, "") : 'Data gagal dihapus';
                    failed('Gagal', errorMsgString, 'error', false, 3000)
                }
            },
            error: (Error) => {
                failed('Gagal', errorResponse(xhr, status, error), 'error', false, 1500)
            }
        });
    }

    const delete_menu = (id) => {
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
                        url: "<?= base_url('menu/delete') ?>",
                        data: {
                            id: id
                        },
                        dataType: "json",
                        type: "POST",
                        success: (Result) => {
                            const {
                                status,
                                message
                            } = Result;


                            if (status) {
                                success('Data Berhasil Dihapus', message, 'success', false, 1500);
                                setTimeout(() => {
                                    get_menus();
                                }, 1500);
                            } else {
                                let errorMsgString = (message) ? errorMsg.replace(/(<([^>]+)>)/gi, "") : 'Data gagal dihapus';
                                failed('Data Gagal dihapus', errorMsgString, 'error', false, 3000)
                            }
                        },
                        error: (xhr, status, error) => {
                            failed('Gagal', errorResponse(xhr, status, error), 'error', false, 1500)
                        }
                    });
                } else {
                    cancle('Data tidak jadi dihapus!', 'info', false, 1500)
                }
            });

    }
    const resetForm = (form) => {
        $('#form-menu')[0].reset();
        $('#parent').val(null).trigger('change');
        $('#level').val(null).trigger('change');
        $('#role').val(null).trigger('change');
    }
</script>