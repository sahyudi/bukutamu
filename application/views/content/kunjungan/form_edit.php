<section class="section">

    <div class="section-body">

        <form id="form-data" method="POST" class="needs-validation" novalidate="">
            <div class="card card-page">
                <div class="card-header">
                    <h4 class="text-dark mb-0">
                        Form Edit
                    </h4>
                </div>
                <div class="card-body">
                    <h5 class="text-dark mb-0">Kunjungan</h5>
                    <p class="text-muted text-small">Informasi Kunjungan</p>
                    <div class="dropdown-divider"></div>
                    <div class="row">
                        <input type="text" id="id" name="id" value="<?= $kunjungan->id ?>" hidden>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="required">NIK</label>
                                <input type="text" name="nik" id="nik" class="form-control" value="<?= $kunjungan->nik ?>" placeholder="input nik" required>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="required">Nama Tamu</label>
                                <input type="text" name="nama" id="nama" class="form-control" placeholder="input nama tamu" value="<?= $kunjungan->nama_tamu ?>" required>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="required">HP</label>
                                <input type="text" name="nohp" id="nohp" value="<?= $kunjungan->nohp ?>" class="form-control" placeholder="input nohp" required>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="required">Tanggal</label>
                                <input type="date" class="form-control" id="tanggal" name="tanggal" value="<?= date('Y-m-d') ?>" value="<?= $kunjungan->tanggal ?>" required="">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="required">Jam</label>
                                <input type="time" class="form-control" id="jam" name="jam" value="<?= $kunjungan->jam ?>" value="" required="">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="required">Pejabat</label>
                                <select class="form-control selectpicker" style="width: 100%" id="pejabat" name="pejabat" data-live-search="true" required>
                                    <option value="" selected disabled>:: Pilih Pejabat ::</option>
                                    <?php foreach ($pejabat as $key => $value) { ?>
                                        <option value="<?= $value->id ?>" <?= $kunjungan->pejabat_id == $value->id ? 'selected' : '' ?>><?= $value->nama ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="required">Perihal</label>
                                <textarea class="form-control" id="perihal" name="perihal" required><?= $kunjungan->perihal ?></textarea>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="card-footer">
                    <div class="float-left">
                        <a href="<?= base_url('invoice') ?>" class="btn btn-outline-danger py-2 px-4 rounded-pill">
                            <i class="fas fa-arrow-left"></i>&nbsp; Kembali
                        </a>
                    </div>
                    <div class="float-right">
                        <button type="button" onclick="save_data()" class="btn btn-primary py-2 px-4 rounded-pill" id="submit">
                            <i class="fas fa-save mr-2"></i> Perbarui
                        </button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>



<script>
    $(document).ready(() => {
        get_products();
        $('.selectpicker').selectpicker('refresh');
    });



    $('#form-data').on('keypress', function(e) {
        var key = (e.keyCode || e.which);
        if (key == 13 || key == 3) {
            save_data();
        }
    });


    const save_data = (status) => {
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
                        executeData(status);
                    } else {
                        cancle('Data tidak jadi disimpan!', 'info', false, 1500)
                    }
                })

        }
    }

    const executeData = () => {
        const form = $('#form-data');
        $.ajax({
            url: "<?= base_url('kunjungan/update') ?>",
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
                    // $('#id').val(data.id)
                    // $('#uuid').val(data.uuid)
                    success('Data Berhasil Disimpan', message, 'success', false, 1500)
                    setTimeout(() => {
                        location.href = "<?= base_url('kunjungan') ?>";
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