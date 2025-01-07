<div class="card my-3">
    <div class="card-header bg-card-primary">
        <h4>Profile</h4>
    </div>
    <div class="card-body">
        <form id="form-change_password" method="POST" novalidate="" enctype="multipart/form-data" class="needs-validation">
            <div class="row">
                <div class="col-md-6">
                    <input type="text" id="id" name="id" hidden>
                    <div class="form-group">
                        <label>Username</label>
                        <div class="card-title"> <?= $user->username ?></div>
                    </div>
                    <div class="form-group">
                        <label>Nama</label>
                        <div class="card-title"> <?= $user->fullname ?></div>
                    </div>
                    <!-- <div class="form-group">
                        <label>Group</label>
                        <div class="card-title"> <?= $user->fullname ?></div>
                    </div> -->

                    <div class="form-group text-right">
                        <button onclick="window.history.back(-1);" class="btn btn-danger">Kembali</button>
                        <button type="button" onclick="editProfile()" data-toggle="modal" data-target="#modal-profile" class="btn btn-primary btn-shadow">Update Profile</button>
                        <a href="<?= base_url('profile/changePassword') ?>" class="btn btn-info">Change Password</a>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="modal fade" role="dialog" id="modal-profile" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-md modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Form Profile</h5> <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
            </div>
            <form id="form-profile" method="POST" novalidate="" enctype="multipart/form-data" class="needs-validation">
                <div class="modal-body">
                    <div class="row">
                        <input type="text" id="id" name="id" hidden>
                        <div class="form-group col-md-12">
                            <label>Name</label>
                            <input type="text" class="form-control" id="nama" name="nama" required="">
                        </div>
                    </div>
                </div>
                <div class="modal-footer bg-whitesmoke">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" onclick="saveProfile()" class="btn btn-primary btn-shadow">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    const changePassword = () => {
        swal({
                title: 'Apakah Anda yakin?',
                text: 'Anda akan mengganti password!',
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
                        url: "<?= base_url('profile/newPassword') ?>",
                        data: $('#form-change_password').serialize(),
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
                                    // get_data();
                                    location.reload()
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
                    cancle('Anda tidak jadi mengganti password!', 'info', false, 1500)
                }
            });
    }

    const editProfile = (id) => {
        $.ajax({
            url: "<?= base_url('profile/editProfile') ?>",
            data: {
                id: id
            },
            dataType: "json",
            type: "POST",
            success: function(Result) {
                $('#id').val(Result.id);
                $('#nama').val(Result.fullname);
            },
            error: (xhr, status, error) => {
                // selectError()
                failed('Gagal', errorResponse(xhr, status, error), 'error', false, 1500)

            }
        });
    }

    const saveProfile = () => {
        $.ajax({
            url: "<?= base_url('profile/saveProfile') ?>",
            data: $('#form-profile').serialize(),
            dataType: "json",
            type: "POST",
            success: (Result) => {
                const {
                    status,
                    data,
                    message,
                } = Result;
                if (status) {
                    success('Data Berhasil Dihapus', message, 'success', false, 1500);
                    setTimeout(() => {
                        location.reload()
                        // get_data();
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
    }
</script>