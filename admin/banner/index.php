<?php 

require_once "../../dao/pdo.php" ;
require_once "../../dao/banner.php" ;
require "../../global.php";
// check_login();

extract($_REQUEST);
if (exist_param("btn_list")) {

    // show banner
    $items = banner_select_all();
    $VIEW_NAME = "list.php" ;
} else if (exist_param("btn_insert")) {

    $name = $_POST["name"] ;
    $type = $_POST["type"] ;

    $img = save_file("img", "$UPLOAD_URL/banners/");
    // insert a new banner
    banner_insert($name, $img, $type);

    // show banner
    $items = banner_select_all();
    $VIEW_NAME = "list.php" ;
} else if (exist_param("btn_delete")) {
    // insert a new banner
    $id = $_REQUEST['id'];
    banner_delete($id);

    // show banner
    $items = banner_select_all();
    $VIEW_NAME = "list.php" ;
}  else if (exist_param("btn_delete_all")) {

    try {
        $arr_id = $_POST['id'];
        banner_delete($arr_id);
        $MESSAGE = "Xóa thành công!";
    } catch (Exception $exc) {
        $MESSAGE = "Xóa thất bại!";
    }
    $items = banner_select_all();
    $VIEW_NAME = "list.php";
} else if (exist_param("btn_edit")) {

    $id = $_REQUEST['id'];
    $banner_info = banner_select_by_id($id);
    extract($banner_info);

    // show banner
    $items = banner_select_all();
    $VIEW_NAME = "edit.php" ;
}else if (exist_param("btn_update")) {
    
    $id = $_POST["id"];
    $name = $_POST["name"];
    $type = $_POST["type"];

    $up_img = save_file("up_img", "$UPLOAD_URL/banners/");
    $img = strlen($up_img) > 0 ? $up_img : $img;

    banner_update($name, $img, $type,$id);

    // show banner
    $items = banner_select_all();
    $VIEW_NAME = "list.php" ;
} else {

    $VIEW_NAME = "add.php" ;
}

require "../layout.php";