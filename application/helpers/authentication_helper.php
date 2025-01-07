<?php


function isLogin($url = null)
{
    $CI = &get_instance();
    $result = $CI->session->userdata('_LOGGED');

    if (!$result) {

        $CI->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible show fade">
                      <div class="alert-body">
                        <button class="close" data-dismiss="alert">
                          <span>×</span>
                        </button>
                         Access denaid, <b>Please login</b>.
                      </div>
                    </div>');
        redirect('login');
    } else {
        return true;
    }
}

function check_menu($menu_id, $userId, $GroupId, $role = 'read')
{
    $CI = &get_instance();

    $query = "SELECT 
                (
                    SELECT 
                       DISTINCT(UM.role_access)
                    FROM user_menu UM
                    JOIN menus M ON UM.menu_id = M.id
                    WHERE UM.user_id = $userId AND UM.menu_id = '$menu_id'
                ) AS role_user,
                (
                    SELECT 
                         DISTINCT(GM.role_access)
                    FROM role_menu GM
                    JOIN menus M2 ON GM.menu_id = M2.id
                    WHERE GM.group_id = $GroupId AND GM.menu_id = '$menu_id'
                ) AS role_group";

    $result = $CI->db->query($query)->row();

    if ($result) {
        $chekUser = ($result->role_user) ? in_array($role, json_decode($result->role_user)) : false;
        $chekGroup = ($result->role_group) ? in_array($role, json_decode($result->role_group)) : false;
        if ($chekUser === true || $chekGroup === true) {
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}

function check_view($url, $userId, $GroupId, $role = 'read')
{
    $CI = &get_instance();

    $query = "SELECT 
                (
                    SELECT 
                        DISTINCT(UM.role_access)
                    FROM user_menu UM
                    JOIN menus M ON UM.menu_id = M.id
                    WHERE UM.user_id = $userId AND M.url = '$url'
                ) AS role_user,
                (
                    SELECT 
                        DISTINCT(GM.role_access)
                    FROM role_menu GM
                    JOIN menus M2 ON GM.menu_id = M2.id
                    WHERE GM.group_id = $GroupId AND M2.url = '$url'
                ) AS role_group";

    $result = $CI->db->query($query)->row();

    if ($result) {
        $chekUser = ($result->role_user) ? in_array($role, json_decode($result->role_user)) : false;
        $chekGroup = ($result->role_group) ? in_array($role, json_decode($result->role_group)) : false;
        if ($chekUser === true || $chekGroup === true) {
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}

function check_page($url, $userId, $GroupId, $role = 'read')
{
    $CI = &get_instance();

    $query = "SELECT 
                (
                    SELECT 
                       DISTINCT(UM.role_access)
                    FROM user_menu UM
                    JOIN menus M ON UM.menu_id = M.id
                    WHERE UM.user_id = $userId AND M.url = '$url'
                ) AS role_user,
                (
                    SELECT 
                        DISTINCT(GM.role_access)
                    FROM role_menu GM
                    JOIN menus M2 ON GM.menu_id = M2.id
                    WHERE GM.group_id = $GroupId AND M2.url = '$url'
                ) AS role_group";

    $result = $CI->db->query($query)->row();
    if ($result) {
        $chekUser = ($result->role_user) ? in_array($role, json_decode($result->role_user)) : false;
        $chekGroup = ($result->role_group) ? in_array($role, json_decode($result->role_group)) : false;
        if ($chekUser === true || $chekGroup === true) {
            return true;
        } else {
            $CI->session->set_flashdata('message', '<div class="alert mt-2 alert-danger alert-dismissible show fade">
                      <div class="alert-body">
                        <button class="close" data-dismiss="alert">
                          <span>×</span>
                        </button>
                         Access denaid, <b>you dont have access to that page</b>.
                      </div>
                    </div>');
            redirect('app/dashboard');
        }
    } else {
        $CI->session->set_flashdata('message', '<div class="alert mt-2 alert-danger alert-dismissible show fade">
                      <div class="alert-body">
                         Access denaid, <b>you dont have access to that page</b>.
                      </div>
                    </div>');
        redirect('app/dashboard');
    }
}

function check_menu_group($menu_id, $GroupId, $role = 'read')
{
    $CI = &get_instance();

    $query = "SELECT 
                    DISTINCT(GM.role_access) AS role_group
            FROM role_menu GM
            JOIN menus M2 ON GM.menu_id = M2.id
            WHERE GM.group_id = $GroupId AND GM.menu_id = '$menu_id'";

    $result = $CI->db->query($query)->row();
    if ($result) {
        if ($result->role_group) {
            return json_decode($result->role_group);
        }
    }
    return [];
}

function check_menu_user($menu_id, $userId, $role = 'read')
{
    $CI = &get_instance();

    $query = " SELECT 
                DISTINCT(UM.role_access) AS role_access
            FROM user_menu UM
            JOIN menus M ON UM.menu_id = M.id
            WHERE UM.user_id = $userId AND UM.menu_id = '$menu_id'";

    $result = $CI->db->query($query)->row();
    if ($result) {
        if ($result->role_access) {
            return json_decode($result->role_access);
        }
    }
    return [];
}
