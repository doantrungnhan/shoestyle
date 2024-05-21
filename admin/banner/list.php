<div class="container">
    <div class="page-title">
        <h4 class="mt-5 font-weight-bold text-center">Danh sách banner</h4>
    </div>
    <div class="box box-primary">
        <div class="box-body">
            <form action="?btn_delete_all" method="post" class="table-responsive">
                <button type="submit" class="btn btn-danger mb-1" id="deleteAll" onclick="return checkDelete()">
                    Xóa mục đã chọn</button>
                <table width="100%" class="table table-hover table-bordered text-center">
                    <thead class="thead-dark">
                        <tr>
                            <th><input type="checkbox" id="select-all"></th>
                            <th>Mã banner</th>
                            <th>Tên banner</th>
                            <th>Ảnh banner</th>
                            <th>Trạng thái</th>
                            <th><a href="index.php" class="btn btn-success text-white">Thêm mới
                                    <i class="fas fa-plus-circle"></i></a></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php

                        foreach ($items as $item) {
                            extract($item);
                            $suadm = "index.php?btn_edit&id=" . $id;
                            $xoadm = "index.php?btn_delete&id=" . $id;
                            $img_path = $UPLOAD_URL . '/banners/' . $img;
                            if (is_file($img_path)) {
                                $img = "<img src='$img_path' height='50' width='100' class='rounded object-fit-cover'>";
                            } else {
                                $img = "no photo";
                            }
                        ?>
                        <tr>
                            <td><input type="checkbox" name="id[]" value="<?= $id ?>"></td>
                            <td><?= $id ?></td>
                            <td><?= $name ?></td>
                            <td><?= $img ?></td>
                            <td><?= ($type == 1) ? "Tắt" : "Bật"; ?></td>
                            <td class="text-end">
                                <a href="<?= $suadm ?>" class="btn btn-outline-info btn-rounded"><i
                                        class="fas fa-pen"></i></a>
                                <a href="<?= $xoadm ?>" class="btn btn-outline-danger btn-rounded"
                                    onclick="return checkDelete()"><i class="fas fa-trash"></i></a>
                            </td>
                        </tr>
                        <?php
                        }

                        ?>
                    </tbody>

                </table>
            </form>
        </div>
    </div>
</div>