<section class="section">

    <div class="section-body">

        <div class="card col-md-6 my-3">
            <div class="card-header d-flex justify-content-between">
                <h4><?= $title ?></h4>
                <div class="float-right">
                    <button data-toggle="modal" data-target="#modal-role" onclick="resetForm()" type="button" class="btn btn-outline-primary rounded-pill px-4 py-2"> Tambah Role</button>
                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table id="table-role" class="table table-hover table-stripped" width="100%" style="font-size:small;color:black;">
                        <thead>
                            <tr class="text-center">
                                <th width="5%">#</th>
                                <th>Role</th>
                                <th width="10%">Aksi</th>
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


<div class="modal fade" tabindex="-1" role="dialog" id="modal-role" aria-modal="true">
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Form Input</h5> <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
            </div>
            <div class="modal-body">
                <form method="POST" class="needs-validation" novalidate="" id="form-role">
                    <input type="text" id="id" name="id" hidden>
                    <div class="form-group">
                        <label for="nama">Role</label>
                        <input id="nama" type="text" class="form-control" name="nama" required>
                        <div class="invalid-feedback">
                            Please fill in your role
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer bg-whitesmoke">
                <button type="button" class="btn btn-danger btn-shadow" data-dismiss="modal">Tutup</button>
                <button type="button" class="btn btn-primary btn-shadow" onclick="save_role()">Simpan!</button>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        get_roles();
    })
    const get_roles = () => {
        if (oTable) {
            oTable.fnDestroy();
        }
        $('#table-role').dataTable().fnDestroy();
        var oTable = $('#table-role').dataTable({
            "sAjaxSource": "<?= base_url('app/get_roles') ?>",
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
                    // 'headers': {
                    //     'X-Robots-Tag': 'noindex'
                    // }
                });
            },

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
                    "data": "nama",
                    className: "text-left",
                },
                {
                    "data": "id",
                    "className": "text-center text-nowrap",
                    render: (data, type, objct) => {
                        const url = "<?= base_url() ?>";
                        let btnDelete = '';
                        let btnEdit = '';
                        let btnRole = '';

                        btnRole = `<a href="${url}app/role_access/${objct.id}" class="btn btn-sm btn-info"><i class="fas fa-user-tag"></i> Add Role </a>`
                        btnDelete = `<button onclick="delete_role(${objct.id})" class="btn btn-sm btn-danger" data-toggle="tooltip" data-placement="top" title="Delete" data-original-title="Delete"> <i class="fas fa-trash"></i></button>`
                        btnEdit = `<button type="button" onclick="edit_role(${objct.id})" data-target="#modal-role" data-toggle="modal" class="btn btn-sm btn-primary" data-placement="top" data-original-title="Edit"> <i class="fas fa-edit"></i></button>`;

                        return `${btnRole} ${btnEdit} ${btnDelete} `;
                    }
                }
            ]
        });
        // get_user_roles();
    }

    const save_role = () => {
        // showLoading()
        const form = $('#form-role');

        if (form[0].checkValidity() === false) {
            // hideLoading();
            form.addClass('was-validated');
        } else {
            const url = "<?= base_url('app/save_role') ?>";
            const method = 'post';

            $.ajax({
                url: url,
                type: method,
                data: form.serialize(),
                dataType: "json",
                success: (Result) => {
                    console.log(Result);
                    const {
                        status,
                        message,
                        data
                    } = Result;

                    if (status) {
                        success('Data Berhasil Disimpan', message, 'success', false, 1500)

                        $('.modal').modal('hide');
                        resetForm();
                        get_roles();
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
    }

    const edit_role = (id) => {
        $.ajax({
            url: "<?= base_url('app/get_role') ?>",
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
                // console.log(data);
                if (status) {
                    $('#id').val(data.id)
                    $('#nama').val(data.name);
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

    const delete_role = (id) => {
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
                        url: "<?= base_url('app/delete_role') ?>",
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
                                    get_roles();
                                }, 1500);
                            } else {
                                let errorMsgString = (message) ? errorMsg.replace(/(<([^>]+)>)/gi, "") : 'Data gagal dihapus';
                                failed('Data Gagal dihapus', errorMsgString, 'error', false, 3000)
                            }

                        },
                        error: (Error) => {
                            selectError()
                        }
                    });
                } else {
                    cancle('Data tidak jadi dihapus!', 'info', false, 1500)
                }
            });
    }
    const resetForm = (form) => {
        $('#form-role')[0].reset()
    }
</script>