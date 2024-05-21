<h5 class="alert-info mb-3 pt-3 pb-3 pl-sm-4 shadow-sm text-center" style="margin-top: 5rem; margin-bottom: 0rem">Chi tiết đơn hàng số <?=$ma_don_hang?></h5>

<div class="container">
        <div class="row m-1 pb-5">
        <table class="table table-responsive-md">
            <thead class="thead text-center">
                <tr>
                    <th>Stt</th>
                    <th>Mã giày</th>
                    <th>Tên giày</th>
                    <th>ảnh</th>
                    <th>số lượng</th>
                    <th>Đơn giá</th>
                </tr>
            </thead>
            <?php $i=1;foreach($chitiet_dh as $chitiet ) { ?>
            <tbody class="text-center" id="chitietdonhang">
                <tr>
                    <td> <?=$i?> </td>
                    <td><?= $chitiet['ma_hh']?></td>
                    <td><?= $chitiet['ten_hh']?></td>
                    <td><img src="<?=$UPLOAD_URL.'/products/'.$chitiet['img']?>" alt="" width="50px"></td>
                    <td><?= $chitiet['so_luong']?></td>
                    <td><?= number_format($chitiet['don_gia'], 0, ".").'đ'?></td>
                </tr>    
            <?php $i++; } ?>
            </tbody>
        </table>
    </div>
</div> 