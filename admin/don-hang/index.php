<?php
require '../../global.php';
require '../../dao/hang-hoa.php';
require '../../dao/don-hang.php' ;
check_login();

if(exist_param('chitiet_dh')){

    $ma_don_hang = $_GET['ma_don_hang'] ;
    $chitiet_dh = chi_tiet_don_hang_by_dh($ma_don_hang);
    extract($chitiet_dh); 
    $VIEW_NAME = 'detail.php' ;
    
}else {
    $donhangs = don_hang_select_all() ;
    extract($donhangs); 
    $VIEW_NAME = "list.php" ;
}


require "../layout.php" ;