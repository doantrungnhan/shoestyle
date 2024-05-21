<?php

$img_path = $UPLOAD_URL . '/banners/' . $img;
if (is_file($img_path)) {
    $img2 = "<img src='$img_path' height='80' with='100'> ";
} else {
    $img2 = "no photo";
}
?>

<div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header text-center bg-dark text-white text-uppercase">Thêm banner</div>
                <div class="card-body">
                    <form action="index.php?btn_update" id="add_banner" method="POST" enctype="multipart/form-data">
                        <div class="row">
                            <div class="form-group col-sm-6">
                                <label for="id" class="form-label">Mã banner</label>
                                <input type="text" name="id" id="id" class="form-control" value="<?= $id ?>" disabled>
                            </div>
                            <div class="form-group col-sm-6">
                                <label for="name" class="form-label">Tên banner</label>
                                <input type="text" name="name" id="name" class="form-control" value="<?= $name ?>" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-sm-6">
                                <div class="row align-items-center">
                                    <div class="col-sm-8">
                                        <label for="img" class="form-label">Ảnh</label>
                                        <input type="hidden" name="img" id="img" class="form-control" value="<?= $img ?>">
                                        <input type="file" name="up_img" id="img" class="form-control">
                                    </div>
                                    <div class="col-sm-4">
                                        <?= $img2 ?>
                                    </div>
                                </div>

                            </div>
                            <div class="form-group col-sm-6">
                                <label>Trạng thái</label>
                                <div class="form-control">
                                    <label class="radio-inline mr-3">
                                        <input type="radio" value="0" name="type" <?= !$type ? 'checked' : '' ?>>Bật
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" value="1" name="type" <?= $type ? 'checked' : '' ?>>Tắt
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="mb-3 text-center">
                            <input type="hidden" name="id" value="<?= $id ?>">
                            <input type="reset" value="Nhập lại" class="btn btn-danger mr-3">
                            <input type="submit" name="btn_update" value="Cập nhật" class="btn btn-primary mr-3">
                            <a href="index.php?btn_list"><input type="button" class="btn btn-success" value="Danh sách"></a>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>