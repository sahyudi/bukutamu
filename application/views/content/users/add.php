<section class="section">

    <div class="section-body">

        <div class="card my-3">
            <div class="card-header d-flex justify-content-between">
                <h4><?= $title ?></h4>
            </div>
            <form class="needs-validation" novalidate="" method="post" action="<?= base_url('user/add') ?>">

                <div class="card-body">
                    <div class="row">

                        <div class="form-group col-md-12">
                            <label>Role</label>
                            <select name="group" id="group" class="form-control" required="">
                                <option value=""></option>
                                <?php foreach ($groups as $key => $group) { ?>
                                    <option value="<?= $group->id ?>"><?= $group->name ?></option>
                                <?php } ?>
                            </select>
                            <?= form_error('group', '<small class="text-danger mb-3">', '</small>'); ?>
                            <div class="invalid-feedback">
                                is required
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <label>Name</label>
                            <input type="text" class="form-control" name="name" required="">
                            <?= form_error('name', '<small class="text-danger mb-3">', '</small>'); ?>
                            <div class="invalid-feedback">
                                is required
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <label>Username</label>
                            <input type="text" class="form-control" name="username" required="">
                            <?= form_error('username', '<small class="text-danger mb-3">', '</small>'); ?>
                            <div class="invalid-feedback">
                                is required
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <label>Password</label>
                            <input type="password" id="password" class="form-control pwstrength" data-indicator="pwindicator" name="password" required="">
                            <?= form_error('password', '<small class="text-danger mb-3">', '</small>'); ?>
                            <div class="invalid-feedback">
                                is required
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer text-right">
                    <a href="<?= base_url('user') ?>" class="btn btn-danger">Kembali</a>
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</section>