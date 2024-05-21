<?php
require '../../global.php';
require '../../dao/hang-hoa.php';
require '../../dao/khach-hang.php';
require '../../dao/don-hang.php' ;
check_login();

extract($_REQUEST);
if(exist_param('add_dh')){
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['btn_thanh_toan'])) {
        // Retrieve form data
        $tenkh = $_POST['ho_ten'];
        $ma_kh = $_POST['ma_kh'];
        $email = $_POST['email'];
        $sdt = $_POST['sdt'];
        $dia_chi = $_POST['dia_chi'];
        $phuong_thuc_tt = $_POST['phuong_thuc_tt'];
        $ghi_chu = $_POST['ghi_chu'];
    
        $ngay_dat_hang = date('Y-m-d H:i:s');
    
        $tong_tien = $_POST['tong_thanh_tien'];
    
        $thanh_toan = $_POST['phuong_thuc_tt']; 
        $trang_thai = $_POST['trang_thai']; 
        
        $iddh = don_hang_insert($tenkh, $sdt, $dia_chi, $ngay_dat_hang, $tong_tien, $thanh_toan, $ghi_chu, $trang_thai , $ma_kh);
        
        if(isset($_SESSION['cart'])&&(count($_SESSION['cart'])>0)){
            foreach($_SESSION['cart'] as $index => $item){
                $don_gia = $item['don_gia'] - $item['giam_gia'] ;
                chi_tiet_dh_insert ($iddh, $index, $item['ten_hh'], $item['hinh'], $item['sl'], $don_gia );  
            }
            unset($_SESSION['cart']);
        }
    }

    $ma_kh = $_SESSION['user']['ma_kh'];
    $donhangs = don_hang_select_by_kh($ma_kh) ;
    extract($donhangs); 
    $VIEW_NAME = "list-dh.php" ;
}else if(exist_param('chitiet_dh')){

    $ma_don_hang = $_GET['ma_don_hang'] ;
    $chitiet_dh = chi_tiet_don_hang_by_dh($ma_don_hang);
    extract($chitiet_dh); 
    $VIEW_NAME = 'detail_dh.php' ;
    
}else {
    $ma_kh = $_SESSION['user']['ma_kh'];
    $donhangs = don_hang_select_by_kh($ma_kh) ;
    extract($donhangs); 
    $VIEW_NAME = "list-dh.php" ;
}

require "../layout.php" ;



