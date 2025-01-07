<?php
defined('BASEPATH') or exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'auth/index';
$route['404_override'] = 'dashboard/error_404';
$route['translate_uri_dashes'] = FALSE;



// Controller auth

$route['login']         = 'auth/index';
$route['logout']        = 'auth/logout';


$route['app/dashboard']        = 'dashboard';




// Menu Employee
$route['users']        = 'user/index';
$route['user/get']    = 'user/get_user';
$route['user/save']   = 'user/save_user';
$route['user/update'] = 'user/update_user';
$route['user/delete'] = 'user/delete_user';
$route['user/edit']   = 'user/edit_user';
$route['user/reset']  = 'user/reset_password';

// Menu Employee
$route['kunjungan']        = 'kunjungan/index';
$route['kunjungan/add']    = 'kunjungan/add_data';
$route['kunjungan/get']    = 'kunjungan/get_data';
$route['kunjungan/save']   = 'kunjungan/save_data';
$route['kunjungan/update'] = 'kunjungan/update_data';
$route['kunjungan/delete'] = 'kunjungan/delete_data';
$route['kunjungan/edit']   = 'kunjungan/edit_data';
$route['kunjungan/konfirmasi']   = 'kunjungan/save_konfirmasi';



// Menu Controller
$route['app/menu']                 = 'menu/list_data';
$route['app/save_menu']             = 'menu/save_menu';
$route['app/get_menus']             = 'menu/get_json_menus';
$route['app/get_menu']              = 'menu/get_menu';
$route['app/get_parent_menu']       = 'menu/get_json_parent';
$route['menu/delete']       = 'menu/delete_menu';



// Role controller
$route['app/role']                  = 'role/list_data';
$route['app/get_roles']             = 'role/get_json_role';
$route['app/get_role']              = 'role/get_role';
$route['app/save_role']             = 'role/save_role';
$route['app/delete_role']           = 'role/delete_role';
$route['app/get_user_roles']        = 'role/get_user_roles';
$route['app/role_access/(:any)']    = 'role/role_access/$1';
$route['app/save_role_access']      = 'role/save_role_access';


// Menu Employee
$route['employee']                  = 'employee/index';
$route['employee/get']              = 'employee/get_employee';
$route['employee/save']             = 'employee/save_employee';
$route['employee/update']             = 'employee/update_employee';
$route['employee/delete']           = 'employee/delete_employee';
$route['employee/edit']             = 'employee/edit_employee';
$route['employee/reset']             = 'employee/reset_password';



// customer
$route['customer/data']               = 'customer/index';
$route['customer/save']               = 'customer/save_data';
$route['customer/get_data']           = 'customer/get_data';
$route['customer/edit']               = 'customer/editCustomer';
$route['customer/delete']             = 'customer/deleteCustomer';
$route['customer/export']           = 'customer/export';


// branch
$route['branch']               = 'branch/index';
$route['branch/save']               = 'branch/save_data';
$route['branch/get_data']           = 'branch/get_data';
$route['branch/edit']               = 'branch/edit';
$route['branch/delete']             = 'branch/delete';
$route['branch/export']           = 'branch/export';



// product
$route['product/data']               = 'product/index';
$route['product/save']               = 'product/save_data';
$route['product/update']             = 'product/update_data';
$route['product/get_data']           = 'product/get_product';
$route['product/delete']             = 'product/delete_data';
$route['product/edit']               = 'product/edit';
$route['product/add']                = 'product/addStock';
$route['product/add/form']           = 'product/form_stock';
$route['product/get_sale']           = 'product/get_sale';
$route['product/get_sale_product']           = 'product/get_sale_product';
$route['product/save_stock']           = 'product/save_stock';
$route['product/get_stock_products']           = 'product/get_stock_products';

$route['product/edit_product_stock']           = 'product/edit_product_stock';
$route['product/delete_product_stock']           = 'product/delete_product_stock';
$route['product/update_stock_products']           = 'product/update_stock_products';



$route['product/stock']                     = 'product/view_stock';
$route['product/get_view_stock']            = 'product/get_view_stock';

$route['product/transfer']                  = 'product/transfer_stock';
$route['product/get_transfer_stock']        = 'product/get_transfer_stock';
$route['product/transfer/form']             = 'product/form_transfer';
$route['product/get_stock_branch']          = 'product/get_stock_branch';
$route['product/get_transfer_product']      = 'product/get_transfer_product';
$route['product/delete_transfer_stock']     = 'product/delete_transfer_stock';
$route['product/edit_transfer_stock']       = 'product/edit_transfer_stock';
$route['product/update_transfer_stock']       = 'product/update_transfer_stock';



// expedition
$route['expedition']               = 'expedition/index';
$route['expedition/save']          = 'expedition/save_data';
$route['expedition/get_data']      = 'expedition/get_data';
$route['expedition/edit']          = 'expedition/editEkspedition';
$route['expedition/delete']        = 'expedition/deleteExpedition';
$route['expedition/export']        = 'expedition/export';


$route['invoice']               = 'invoice/index';
$route['invoice/get_invoices']      = 'invoice/get_invoices';
$route['invoice/delete']      = 'invoice/delete_data';
$route['invoice/save/(:any)']          = 'invoice/save_data/$1';
$route['invoice/cetak/(:any)']          = 'invoice/cetak_inv/$1';
$route['invoice/edit/(:any)']          = 'invoice/edit/$1';
$route['invoice/detail/(:any)']          = 'invoice/detail/$1';
$route['invoice/final/(:any)']          = 'invoice/final/$1';

$route['invoice/history']               = 'invoice/history';
$route['invoice/history_products']      = 'invoice/history_products';
