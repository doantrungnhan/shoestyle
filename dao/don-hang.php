<?php
    require_once 'pdo.php';

    function don_hang_insert($tenkh, $sdt, $dia_chi, $ngay_dat_hang, $tong_tien, $thanh_toan, $ghi_chu, $trang_thai , $ma_kh){
        $sql = "INSERT INTO don_hang ( tenkh, sdt, dia_chi, ngay_dat_hang, tong_tien, thanh_toan, ghi_chu,trang_thai, ma_kh)
                VALUES (?,?,?,?,?,?,?,?,?)" ;
        $iddh = pdo_execute_dh($sql, $tenkh, $sdt, $dia_chi, $ngay_dat_hang, $tong_tien, $thanh_toan, $ghi_chu,$trang_thai, $ma_kh);
        return $iddh ;
    }

    function chi_tiet_dh_insert ($ma_don_hang, $ma_hh, $ten_hh, $img, $so_luong, $don_gia){
        $sql = "INSERT INTO chi_tiet_don_hang (ma_don_hang, ma_hh, ten_hh, img, so_luong, don_gia)
                VALUES (?,?,?,?,?,?)";
        pdo_execute($sql, $ma_don_hang, $ma_hh,$ten_hh, $img, $so_luong, $don_gia ) ;
    }

    function don_hang_select_all(){
        $sql = "SELECT * FROM don_hang ";
        return pdo_query($sql);
    }

    function don_hang_select_by_kh($ma_kh){
        $sql = "SELECT * FROM don_hang Where ma_kh=? ";
        return pdo_query($sql,$ma_kh);
    }

    function chi_tiet_don_hang_by_dh($ma_don_hang){
        $sql = "SELECT * FROM chi_tiet_don_hang Where ma_don_hang=? ";
        return pdo_query($sql,$ma_don_hang);
    }

