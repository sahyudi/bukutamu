<?php
$create = in_array($this->session->userdata('jabatan'), ['Admin', 'Staf']) ? true : false;
$update = in_array($this->session->userdata('jabatan'), ['Admin', 'Staf']) ? true : false;
$delete = in_array($this->session->userdata('jabatan'), ['Admin']) ? true : false;
$konfirmasi = (!in_array($this->session->userdata('jabatan'), ['Staf'])) ? true : false;
?>

<section class="section">

    <div class="section-body">

        <div class="card my-3">
            <div class="card-header d-flex justify-content-between">
                <h4><?= $title ?></h4>
                <div class="float-right">
                    <?php if ($create) { ?>
                        <a href="<?= base_url('kunjungan/add') ?>" class="btn btn-outline-primary rounded-pill px-4 py-2"><i class="fas fa-plus-circle"></i>&nbsp; Tambah</a>
                    <?php } ?>
                </div>
            </div>

            <div class="card-body">
                <form id="form-filter" method="POST" class="needs-validation" novalidate="">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="">Tanggal Awal</label>
                                <input type="date" class="form-control" name="start_date" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="">Tanggal Akhir</label>
                                <input type="date" class="form-control" name="end_date" placeholder="">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Status</label>
                                <select class="form-control selectpicker" style="width: 100%" id="status_filter" name="status_filter">
                                    <option value="" selected>SEMUA</option>
                                    <option value="Permintaan">Permintaan</option>
                                    <option value="Diterima">Diterima</option>
                                    <option value="Ditolak">Ditolak</option>
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
                                <th class="align-middle text-white text-center">Foto</th>
                                <th class="align-middle text-white text-center">Tamu</th>
                                <th class="align-middle text-white text-center">No HP</th>
                                <th class="align-middle text-white text-center">Tanggal / Pukul</th>
                                <th class="align-middle text-white text-center">Pejabat</th>
                                <th class="align-middle text-white text-center">Perihal</th>
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


<div class="modal fade" role="dialog" id="modal-konfirmasi" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-md modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Formulir Konfirmasi</h5> <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
            </div>
            <form id="form-data" method="POST" novalidate="" enctype="multipart/form-data" class="needs-validation">
                <div class="modal-body">
                    <div class="row">
                        <input type="text" id="id" name="id" hidden>
                        <input type="text" id="uuid" name="uuid" hidden>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Foto</label>
                                <img src="" src="" id="fotodata" class="img-fluid" width="90" alt="foto">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>NIK / Nama Tamu</label>
                                <input type="text" class="form-control" id="nama_tamu" name="nama_tamu" readonly>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Waktu Kunjungan</label>
                                <input type="text" class="form-control" id="tanggal" name="tanggal" readonly>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Perihal</label>
                                <textarea name="perihal" id="perihal" class="form-control" readonly></textarea>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Status</label>
                                <select class="form-control selectpicker" style="width: 100%" id="edit_status" name="status" required>
                                    <option value="Diterima">Diterima</option>
                                    <option value="Ditolak">Ditolak</option>
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
    $(document).ready(function() {
        get_data();
        $('.selectpicker').selectpicker('refresh');
    });

    const get_data = (reset = null) => {
        let form = $('#form-filter');
        if (reset == 'reset') {
            $('#status_filter').val(null).trigger('change');
            form[0].reset()
        }
        $('#table-invoice tbody').empty();
        const loading = `<td colspan="9" class="py-4 text-center">
                                <i class="fas fa-spinner fa-spin mr-1"></i> Loading...
                            </td>`;
        $('#table-invoice tbody').append(loading);
        $.ajax({
            url: '<?= base_url('kunjungan/get') ?>',
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
                        "data": "foto",
                        className: "text-left align-middle",
                        render: (data, type, row) => {
                            return `<img src="${row.foto}" class="img-fluid" width="60" alt="foto">`;
                        }
                    },
                    {
                        "data": "nama_tamu",
                        className: "text-left align-middle",
                        render: (data, type, row) => {
                            return `<strong>${row.nama_tamu}</strong> <br> ${row.nik}`;
                        }
                    },
                    {
                        "data": "nohp",
                        className: "text-left align-middle",
                    },
                    {
                        "data": "tanggal",
                        className: "text-left align-middle",
                        render: (data, type, row) => {
                            return `<strong>${row.tanggal}</strong> <br> ${row.jam}`;;
                        }
                    },
                    {
                        "data": "nama_pejabat",
                        className: "text-left align-middle",
                    },
                    {
                        "data": "perihal",
                        className: "text-left align-middle",
                    },
                    {
                        "data": "status",
                        className: "text-left align-middle",
                    },

                    {
                        "data": "id",
                        className: "text-center text-nowrap align-middle",
                        render: (data, type, row) => {
                            let btnDelete = '';
                            let btnKonfirmasi = '';
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
                                if (row.status == 'Permintaan') {
                                    btnEdit = `<a class="dropdown-item has-icon" href="${baseUrl}kunjungan/edit/${row.uuid}">
                                        <i class="fas fa-edit" style="margin-top: 1px"></i> Edit Order
                                    </a>`
                                }

                            <?php } ?>
                            <?php if ($konfirmasi) { ?>
                                if (row.status == 'Permintaan') {
                                    btnKonfirmasi = `<a class="dropdown-item has-icon" href="javascript:;" data-toggle="modal" data-target="#modal-konfirmasi" onclick="edit_data(${row.id})"> <i class="fas fa-edit" style="margin-top: 1px"></i> Konfirmasi
                                    </a>`
                                }

                            <?php } ?>

                            const btn = `<div class="dropdown d-inline">
                                            <button class="btn btn-outline-primary dropdown-toggle rounded-pill" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-boundary="window">Select
                                            </button>
                                            <div class="dropdown-menu">
                                                ${btnKonfirmasi}
                                                ${btnEdit}
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
    const edit_data = (id, reset = false) => {
        $.ajax({
            url: "<?= base_url('kunjungan/edit') ?>",
            dataType: "json",
            type: "POST",
            data: {
                id: id
            },
            success: (Result) => {
                $('#id').val(Result.id);
                $('#nama_tamu').val(Result.nama_tamu + ' / ' + Result.nik);
                $('#nohp').val(Result.nohp);
                $('#tanggal').val(Result.tanggal + ' / ' + Result.jam);
                $('#perihal').val(Result.perihal);
                $('#fotodata').attr("src", Result.foto);
            },
            error: (xhr, status, error) => {
                failed('Load data is failed', errorResponse(xhr, status, error), 'error', false, 1500)
            }
        });
    }

    const resetForm = () => {
        $('#form-data')[0].reset();
        $('.selectpicker').selectpicker('refresh');
    }



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
            url: "<?= base_url('kunjungan/konfirmasi') ?>",
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
                        url: "<?= base_url('kunjungan/delete') ?>",
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
</script>