<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <div class="d-flex align-items-center">
                    <h4 class="card-title">Data Role Access Group <?= $role->name ?></h4>
                </div>
            </div>
            <div class="card-body">
                <form id="form-role" enctype="multipart/form-data">
                    <input type="text" name="role" value="<?= $role->id ?>" hidden>
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
                                $this->db->select('id,parent_id,name,url,icon,role');
                                $this->db->where_in('level', 0);
                                $this->db->order_by('order', 'ASC');
                                $menus = $this->db->get('menus')->result();

                                // showme($menus);
                                $number = 0;
                                foreach ($menus as $key1 => $menu) {
                                    $number += 1;
                                    $roleAccess = check_menu_group($menu->id, $role->id);
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
                                                    <input type="checkbox" onchange="selectRole(this, 'parent_role_<?= $menu->id ?>')" class="custom-control-input <?= ($menuRole[$i] != 'read') ? 'parent_role_' . $menu->id : '' ?>" value="<?= $menuRole[$i] ?>" name="role_<?= $menu->id ?>[]" <?= (in_array($menuRole[$i], $roleAccess)) ? 'checked' : '' ?> id="role-<?= $menuRole[$i] . '-' .  $menu->id ?>">
                                                    <label class="custom-control-label" for="role-<?= $menuRole[$i] . '-' .  $menu->id ?>"><?= $menuRole[$i] ?></label>
                                                </div>
                                            <?php } ?>

                                        </td>
                                    </tr>
                                    <?php
                                    if ($menu->url == '#') {
                                        $this->db->select('id,parent_id,name,url,icon,role');
                                        // $this->db->where_in('level', [1]);
                                        $this->db->where('parent_id', $menu->id);
                                        $this->db->order_by('order', 'ASC');
                                        $subMenus = $this->db->get('menus')->result();
                                        // $number = 0;
                                        // showme($subMenus);
                                        foreach ($subMenus as $key1 => $subMenu) {
                                            $SubRoleAccess = check_menu_group($subMenu->id, $role->id);
                                            $SubMenuRole = json_decode($subMenu->role);
                                    ?>
                                            <tr>
                                                <td>&nbsp; </td>
                                                <td>
                                                    <input type="text" name="menu_id[]" value="<?= $subMenu->id ?>" hidden>
                                                    <?= $subMenu->name ?>
                                                </td>
                                                <td>&nbsp; </td>
                                                <td>
                                                    <?php for ($i = 0; $i < count($SubMenuRole); $i++) { ?>
                                                        <div class="custom-control custom-checkbox custom-control-inline">
                                                            <input type="checkbox" onchange="selectRole(this, 'parent_role_<?= $subMenu->id ?>')" class="custom-control-input <?= ($SubMenuRole[$i] != 'read') ? 'parent_role_' . $subMenu->id : '' ?> <?= 'parent_role_' . $menu->id ?>" value="<?= $SubMenuRole[$i] ?>" name="role_<?= $subMenu->id ?>[]" <?= (in_array($SubMenuRole[$i], $SubRoleAccess)) ? 'checked' : '' ?> id="role-<?= $SubMenuRole[$i] . '-' .  $subMenu->id ?>">
                                                            <label class="custom-control-label" for="role-<?= $SubMenuRole[$i] . '-' .  $subMenu->id ?>"><?= $SubMenuRole[$i] ?></label>
                                                        </div>
                                                    <?php } ?>

                                                </td>
                                            </tr>
                                            <?php if ($subMenu->url == '#') {
                                                $this->db->select('id,parent_id,name,url,icon,role');
                                                // $this->db->where_in('level', [1]);
                                                $this->db->where('parent_id', $subMenu->id);
                                                $this->db->order_by('order', 'ASC');
                                                $SuperSubMenus = $this->db->get('menus')->result();
                                                // $number = 0;
                                                // showme($SuperSubMenus);
                                                foreach ($SuperSubMenus as $key => $superSubMenu) {
                                                    $superSubRoleAccess = check_menu_group($superSubMenu->id, $role->id);
                                                    $superSubMenuRole = json_decode($superSubMenu->role);
                                            ?>
                                                    <tr>
                                                        <td>&nbsp; </td>
                                                        <td>&nbsp; </td>
                                                        <td>
                                                            <input type="text" name="menu_id[]" value="<?= $superSubMenu->id ?>" hidden>
                                                            <?= $superSubMenu->name ?>
                                                        </td>
                                                        <td>
                                                            <?php for ($i = 0; $i < count($superSubMenuRole); $i++) { ?>
                                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                                    <input type="checkbox" onchange="selectRole(this, 'parent_role_<?= $superSubMenu->id ?>')" class="custom-control-input <?= ($superSubMenuRole[$i] != 'read') ? 'parent_role_' . $superSubMenu->id : '' ?> <?= 'parent_role_' . $menu->id . ' parent_role_' . $subMenu->id ?>" value="<?= $superSubMenuRole[$i] ?>" name="role_<?= $superSubMenu->id ?>[]" <?= (in_array($superSubMenuRole[$i], $superSubRoleAccess)) ? 'checked' : '' ?> id="role-<?= $superSubMenuRole[$i] . '-' .  $superSubMenu->id ?>">
                                                                    <label class="custom-control-label" for="role-<?= $superSubMenuRole[$i] . '-' .  $superSubMenu->id ?>"><?= $superSubMenuRole[$i] ?></label>
                                                                </div>
                                                            <?php } ?>

                                                        </td>
                                                    </tr>
                                <?php
                                                }
                                            }
                                        }
                                    }
                                } ?>
                            </tbody>
                        </table>
                    </div>
                </form>
            </div>
            <div class="card-footer">
                <div class="text-center">
                    <a href="<?= base_url('role') ?>" class="btn btn-danger">Back</a>
                    <button type="button" onclick="save_role_access()" class="btn btn-primary">Simpan</button>
                </div>
            </div>
        </div>
    </div>

</div>

<script>
    const selectRole = (value, className) => {
        // alert(value.value);
        if (value.value == 'read') {
            if (value.checked) {
                $(`.${className}`).prop('checked', true);
            } else {
                $(`.${className}`).prop('checked', false);
            }
        }
    }

    const save_role_access = () => {
        // showloading();
        $.ajax({
            url: "<?= base_url('app/save_role_access') ?>",
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
                    success('Data Berhasil Dihapus', message, 'success', false, 1500);
                    setTimeout(() => {
                        location.reload();
                    }, 1500);
                } else {
                    let errorMsgString = (message) ? errorMsg.replace(/(<([^>]+)>)/gi, "") : 'Data gagal dihapus';
                    failed('Data Gagal dihapus', errorMsgString, 'error', false, 3000)
                }

            },
            error: (xhr, status, error) => {
                // notif_error_default()
                failed('Gagal', errorResponse(xhr, status, error), 'error', false, 1500)
            }
        });
    }
</script>