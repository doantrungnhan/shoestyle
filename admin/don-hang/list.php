<h5 class="alert-info mb-3 pt-3 pb-3 pl-sm-4 shadow-sm text-center" style="margin-top: 5rem; margin-bottom: 0rem">danh sách đơn hàng</h5>

<div class="container">
    <?php if (empty($donhangs)) : ?>
        <div class="row m-1 pb-5">
            <h6 class="col-12">Không tồn tại đơn hàng nào.</h6>
            <a class="btn btn-outline-dark col-12" href="<?= $ROOT_URL ?>"> Về trang chủ</a>
            <a class="btn btn-outline-dark col-12" href="<?= $SITE_URL . "/hang-hoa/liet-ke.php" ?>" style="margin-top: 10px;"> Mua hàng</a>
        </div>
    <?php else : ?>
        <div class="row m-1 pb-5">
        <table class="table table-responsive-md">
            <thead class="thead text-center">
                <tr>
                    <th>Mã đơn hàng</th>
                    <th>Tên người nhận</th>
                    <th>Số điện thoại</th>
                    <th>Địa chỉ</th>
                    <th>Tổng tiền</th>
                    <th>Thanh toán </th>
                    <th>Ghi chú</th>
                    <th>Trạng thái</th>
                    <th>Chi tiết đơn hàng</th>
                </tr>
            </thead>
            <?php foreach($donhangs as $donhang ) {
                    
            ?>
            <tbody class="text-center" id="donhang">
                <tr>
                    
                    <td><?= $donhang['ma_don_hang'] ?></td>
                    <td><?= $donhang['tenkh'] ?></td>
                    <td><?= $donhang['sdt'] ?></td>
                    <td><?= $donhang['dia_chi'] ?></td>
                    <td><?= number_format($donhang['tong_tien'], 0, ".").'đ'  ?></td>
                    <td>
                        <?php 
                            if($donhang['thanh_toan']== 0 ) {
                                echo 'Tiền mặt' ;
                            }else if ($donhang['thanh_toan'] == 1) {
                                echo 'CK ngân hàng' ;
                            }else {
                                echo 'Ví điện tử';
                            }
                        ?>
                    </td>
                    <td><?= $donhang['ghi_chu'] ?></td>
                    <td>
                        <?php
                            switch($donhang['trang_thai']){
                                case 0:
                                    echo "<a class='btn btn-primary'>Mới</a>" ;
                                    break;
                                case 1:
                                    echo "<a class='btn btn-warning'>Chờ xử lí</a>" ;
                                    break;
                                case 2:
                                    echo "<a class='btn btn-info'>Đã xác nhận</a>" ;
                                    break;
                                case 3:
                                    echo "<a class='btn btn-warning'>Đang đóng gói</a>" ;
                                    break;
                                case 4:
                                    echo "<a class='btn btn-warning'>Đang vận chuyển</a>" ;
                                    break;
                                case 5:
                                    echo "<a class='btn btn-success'>Thành công</a>" ;
                                    break;
                            };
                        ?>
                    </td>
                    <td class="text-end">
                            <a href="./index.php?chitiet_dh&ma_don_hang=<?=$donhang['ma_don_hang']?>"
                                class="btn btn-outline-info btn-rounded">Chi tiết 
                                <i class="fas fa-info-circle"></i>
                            </a>
                    </td>
                </tr>
            <?php } ?>
            </tbody>
        </table>
    </div>
    <?php endif; ?>
</div> 