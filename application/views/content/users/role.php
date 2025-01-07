<?php
$create = check_view('group', $this->session->userdata('id'), $this->session->userdata('role_id'), 'create');
$update = check_view('group', $this->session->userdata('id'), $this->session->userdata('role_id'), 'update');
$delete = check_view('group', $this->session->userdata('id'), $this->session->userdata('role_id'), 'delete');
?>
<div class="row mt-3">
    <div class="col-12">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?= base_url('setting') ?>">Setting</a></li>
                <li class="breadcrumb-item"><a href="<?= base_url('user') ?>">Data User</a></li>
                <li class="breadcrumb-item active" aria-current="page">Role User</li>
            </ol>
        </nav>
    </div>
</div>
<style>
    .list-group>.list-group {
        display: block;
        margin-bottom: 0;
    }

    /* .list-group-item:focus-within+.list-group {
        display: block;
    } */

    .list-group>.list-group-item {
        border-radius: 0;
        border-width: 1px 1px 0 0;
    }

    .list-group>.list-group-item:first-child {
        border-top-width: 0;
    }

    .list-group>.list-group>.list-group-item {
        padding-left: 2.5rem;
    }
</style>
<div class="card">
    <div class="card-header">
        <h4>Name : <?= $user->name ?></h4>
    </div>
    <div class="card-body">
        <form id="form-role" enctype="multipart/form-data">
            <input type="text" name="user" value="<?= $user->id ?>" hidden>
            <div class="table-responsive">
                <table class="table table-stripped table-bordered table-sm" style="color: black;">
                    <thead>
                        <tr class="text-center">
                            <th width="15%">Menu Level 0</th>
                            <th width="15%">Menu Level 1</th>
                            <th width="15%">Menu Level 2</th>
                            <th>Role</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $this->db->select('id,name,url,icon,role');
                        $this->db->order_by('order', 'ASC');
                        $menus = $this->db->get_where('menus', ['level' => 0])->result();
                        $number = 0;
                        foreach ($menus as $key1 => $menu) {
                            $number += 1;
                            $role = check_menu_user($menu->id, $user->id);
                            $menuRole = json_decode($menu->role);
                        ?>
                            <tr>
                                <td>
                                    <input type="text" name="menu_id[]" value="<?= $menu->id ?>" hidden>
                                    <?= $menu->name ?>
                                </td>
                                <td>&nbsp; </td>
                                <td>&nbsp; </td>
                                <td>
                                    <?php for ($i = 0; $i < count($menuRole); $i++) { ?>
                                        <div class="custom-control custom-checkbox custom-control-inline">
                                            <input type="checkbox" onchange="selectRole(this, 'parent_role_<?= $menu->id ?>')" class="custom-control-input" value="<?= $menuRole[$i] ?>" name="role_<?= $menu->id ?>[]" <?= (in_array($menuRole[$i], $role)) ? 'checked' : '' ?> id="role-<?= $menuRole[$i] . '-' .  $menu->id ?>">
                                            <label class="custom-control-label" for="role-<?= $menuRole[$i] . '-' .  $menu->id ?>"><?= $menuRole[$i] ?></label>
                                        </div>
                                    <?php } ?>

                                </td>
                            </tr>
                            <!-- sub menu -->
                            <?php
                            $this->db->select('id,name,url,icon,role');
                            $this->db->order_by('order', 'ASC');
                            $level1 = $this->db->get_where('menus', ['parent_id' => $menu->id])->result();
                            foreach ($level1 as $key2 => $subMenu) {
                                $subRoleAccess = check_menu_user($subMenu->id, $user->id);
                                $subRoleMenu = json_decode($subMenu->role);
                            ?>
                                <tr>
                                    <td>
                                        <input type="text" name="menu_id[]" value="<?= $subMenu->id ?>" hidden>

                                    </td>
                                    <td><?= $subMenu->name ?></td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <?php for ($i = 0; $i < count($subRoleMenu); $i++) { ?>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" onchange="selectRole(this, 'parent_role_<?= $subMenu->id ?>')" class="parent_role_<?= $menu->id ?> custom-control-input" value="<?= $subRoleMenu[$i] ?>" name="role_<?= $subMenu->id ?>[]" id="role-<?= $subRoleMenu[$i] . '-' . $subMenu->id ?>" <?= (in_array($subRoleMenu[$i], $subRoleAccess)) ? 'checked' : '' ?> id="role-<?= $subMenu->id ?>">
                                                <label class="custom-control-label" for="role-<?= $subRoleMenu[$i] . '-' . $subMenu->id ?>"><?= $subRoleMenu[$i] ?></label>
                                            </div>
                                        <?php } ?>

                                    </td>
                                </tr>

                                <?php
                                $this->db->select('id,name,url,icon,role');
                                $this->db->order_by('order', 'ASC');
                                $level2 = $this->db->get_where('menus', ['parent_id' => $subMenu->id])->result();
                                foreach ($level2 as $key3 => $subMenu2) {
                                    $subRoleAccess2 = check_menu_user($subMenu2->id, $user->id);
                                    $subRoleMenu2 = json_decode($subMenu2->role);
                                ?>

                                    <tr>
                                        <td>
                                            <input type="text" name="menu_id[]" value="<?= $subMenu2->id ?>" hidden>

                                        </td>
                                        <td>&nbsp;</td>
                                        <td><?= $subMenu2->name ?></td>
                                        <td>
                                            <?php for ($i = 0; $i < count($subRoleMenu2); $i++) { ?>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" onchange="selectRole(this, 'parent_role_<?= $subMenu2->id ?>')" class="parent_role_<?= $menu->id ?> parent_role_<?= $subMenu->id ?> custom-control-input" value="<?= $subRoleMenu2[$i] ?>" name="role_<?= $subMenu2->id ?>[]" id="role-<?= $subRoleMenu2[$i] . '-' . $subMenu2->id ?>" <?= (in_array($subRoleMenu2[$i], $subRoleAccess2)) ? 'checked' : '' ?> id="role-<?= $subMenu2->id ?>">
                                                    <label class="custom-control-label" for="role-<?= $subRoleMenu2[$i] . '-' . $subMenu2->id ?>"><?= $subRoleMenu2[$i] ?></label>
                                                </div>
                                            <?php } ?>

                                        </td>
                                    </tr>
                                <?php } ?>
                            <?php } ?>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
        </form>
    </div>
    <div class="card-footer">
        <div class="text-center">
            <a href="<?= base_url('group') ?>" class="btn btn-danger btn-icon icon-left"><i class="fas fa-times"></i> Back</a>
            <button type="button" onclick="saveRoleUser()" class="btn btn-primary">Simpan</button>
        </div>
    </div>
</div>


<script>
    const selectRole = (value, className) => {
        // alert(value.checked);
        if (value.checked) {
            $(`.${className}`).attr('checked', 'true');
        } else {
            $(`.${className}`).removeAttr('checked');
        }
    }
    const saveRoleUser = () => {
        showloading();
        $.ajax({
            url: "<?= base_url('user/saveRoleUserJson') ?>",
            data: $('#form-role').serialize(),
            dataType: "json",
            type: "POST",
            success: (Result) => {

                const {
                    status,
                    message,
                    info
                } = Result;

                if (status) {
                    Swal.fire({
                        position: 'top-end',
                        icon: 'success',
                        title: info,
                        showConfirmButton: false,
                        timer: 1500
                    });
                    location.reload();
                } else {
                    swal.close();
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: info
                    });
                }


            },
            error: (Error) => {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Error, periksa kembali koneksi anda'
                });
            }
        });
    }
</script>