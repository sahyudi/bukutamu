<div class="card my-3">
    <div class="card-header bg-card-primary">
        <h4>Cahange Password</h4>
    </div>
    <div class="card-body">
        <form id="form-change_password" method="POST" novalidate="" enctype="multipart/form-data" class="needs-validation">
            <div class="row">
                <div class="col-md-6">
                    <input type="text" id="id" name="id" hidden>
                    <div class="form-group">
                        <label>Old Password</label>
                        <input type="password" class="form-control" id="old_password" name="old_password" required="">
                    </div>
                    <div class="form-group">
                        <label>New Password</label>
                        <input type="password" class="form-control" id="new_password" name="new_password" required="">
                    </div>
                    <div class="form-group">
                        <label>Confirm Password</label>
                        <input type="password" class="form-control" id="confirm_password" name="confirm_password" required="">
                    </div>
                    <div class="form-group text-right">
                        <button onclick="window.history.back(-2);" class="btn btn-danger" data-dismiss="modal">Kembali</button>
                        <button type="button" onclick="changePassword()" class="btn btn-primary btn-shadow">Change Password</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    const changePassword = () => {
        Swal.fire({
            title: 'Apakah anda yakin?',
            text: "Anda Akan merubah password!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ya, Ganti!',
            cancelButtonText: 'Tidak',
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: "<?= base_url('profile/newPassword') ?>",
                    data: $('#form-change_password').serialize(),
                    dataType: "json",
                    type: "POST",
                    success: (Result) => {
                        const {
                            status,
                            info,
                            message,
                        } = Result;
                        if (status) {
                            Swal.fire({
                                position: 'top-end',
                                icon: 'success',
                                title: info,
                                showConfirmButton: false,
                                timer: 1500
                            });
                            $('#form-change_password')[0].reset();
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Oops...',
                                text: info
                            });
                            $('#form-change_password')[0].reset();
                        }
                    },
                    error: (Error) => {
                        selectError()
                    }
                });
            }

        })
    }
</script>