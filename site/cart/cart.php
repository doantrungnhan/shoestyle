<?php
$totalAll = 0;

?>
<h5 class="alert-info mb-3 pt-3 pb-3 pl-sm-4 shadow-sm text-center" style="margin-top: 5rem; margin-bottom: 0rem">Giỏ
    hàng</h5>

<div class="container">

    <?php
    if (isset($_SESSION['cart'])) {
    ?>
    <div class="row m-1 pb-5">
        <table class="table table-responsive-md">
            <thead class="thead text-center">
                <tr>
                    <th>STT</th>
                    <th>Mã SP</th>
                    <th>Tên SP</th>
                    <th>Ảnh</th>
                    <th>Giá </th>
                    <th style="width:6rem">Số lượng</th>
                    <th>Tổng tiền</th>
                    <th>Thao tác</th>
                </tr>
            </thead>
            <tbody class="text-center" id="giohang">

                <?php   $i = 1 ; 
                        foreach ($_SESSION['cart'] as $index => $item)  :
                        $gia_sp = ($item['don_gia'] - $item['giam_gia']) ;
                        $thanh_tien = $item['sl'] * $gia_sp ;
                ?>
                <tr>
                    <td><?= $i ?></td>
                    <td><?= $index ?></td>
                    <td><?= $item['ten_hh'] ?></td>
                    <td>
                        <img src="<?=$UPLOAD_URL.'/products/'.$item['hinh'] ?>" alt="Hình " width="100px" height="100px">
                    </td>
                    <td>
                        <span>
                            <?= number_format(($item['don_gia'] - $item['giam_gia']), 0, ".") ?>
                            <input name="gia_hh" class="gia_hh" type="hidden" value="<?= number_format($gia_sp, 0, ".") ?>"> đ
                        </span>
                    </td>
                    <td class="pt-1 m-auto">
                        <form action="delete_cart.php?act=update_sl" method="post">
                            <input type="number" class="form-control sl" name="update_sl"  onchange="this.form.submit()"
                                value="<?= $item['sl'] ?>" min="1" max="10">
                            <input type="hidden" class="form-control" name="ma_hh" value="<?= $index ?>">
                        </form>
                    </td>
                    <td> 
                        <span class="thanh_tien_sp"></span>
                        <?= number_format($thanh_tien, 0, ".") ?>đ
                    </td>
                    <td class="pt-1 m-auto">
                        <a onclick="return confirm('Bạn chắc chắn muốn xóa k??');"
                            href="<?= $SITE_URL . "/cart/delete-cart.php?act=delete&id=" . $index ?>"
                            class="btn btn-outline-danger"> <i class="fas fa-trash-alt "></i></a>
                    </td>
                </tr>
                <?php $i++ ; endforeach ?>
            </tbody>
            <tfoot id="tongdonhang">
                <tr class="text-center">
                    <th colspan="7">Tổng thành tiền: </th>
                    <td class="  text-danger font-weight-bold">
                        <span id="tong_thanh_tien"></span> 
                        <?php
                            foreach ($_SESSION['cart'] as $item) {
                                $gia_sp = ($item['don_gia'] - $item['giam_gia']);
                                $thanh_tien = $item['sl'] * $gia_sp;
                                $totalAll += $thanh_tien;
                            }
                            echo number_format($totalAll, 0, ".") . " đ";
                        ?>
                    </td>
                    <td></td>
                </tr>
                <tr class="text-right">
                    <th colspan="9">
                        <a href="<?= $SITE_URL . "/hang-hoa/liet-ke.php" ?>" class="btn btn-success">Tiếp tục mua hàng</a>
                        <a href="<?= $SITE_URL . "/cart/list-cart.php?form_invoice" ?>" class="btn btn-success">Thanh
                            toán</a>
                        <a onclick="return confirm('Bạn chắc chắn muốn xóa tất cả k??');"
                            href="<?= $SITE_URL . "/cart/delete-cart.php?act=deleteAll" ?>" class="btn btn-danger">Xóa
                            tất
                            cả</a>
                    </th>
                </tr>
            </tfoot>
        </table>
    </div>
    <?php } else { ?>
    <div class="row  m-1 pb-5">
        <h6 class="col-12">Không tồn tại sản phẩm nào trong giỏ hàng </h6>
        <a class="btn btn-outline-dark col-12" href="<?= $ROOT_URL ?>"> Về trang chủ</a>
        <a class="btn btn-outline-dark col-12" href="<?= $SITE_URL . "/hang-hoa/liet-ke.php" ?> " style="margin-top: 10px;"> Mua hàng</a>
    </div>
    <?php } ?>
</div>