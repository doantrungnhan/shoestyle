<div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header text-center bg-dark text-white text-uppercase">Thêm banner</div>
                <div class="card-body">
                    <form action="index.php" id="add_banner" method="POST" enctype="multipart/form-data">
                        <div class="row">
                            <div class="form-group col-sm-6">
                                <label for="id" class="form-label">Mã banner</label>
                                <input type="text" name="id" id="id" class="form-control" disabled>
                            </div>
                            <div class="form-group col-sm-6">
                                <label for="name" class="form-label">Tên banner</label>
                                <input type="text" name="name" id="name" class="form-control" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-sm-6">
                                <label for="img" class="form-label">Ảnh</label>
                                <input type="file" name="img" id="img" class="form-control">
                            </div>
                            <div class="form-group col-sm-6">
                                <label>Trạng thái</label>
                                <div class="form-control">
                                    <label class="radio-inline mr-3">
                                        <input type="radio" value="0" name="type" checked>Bật
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" value="1" name="type">Tắt
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="mb-3 text-center">
                            <input type="reset" value="Nhập lại" class="btn btn-danger mr-3">
                            <input type="submit" name="btn_insert" value="Thêm mới" class="btn btn-primary mr-3">
                            <a href="index.php?btn_list"><input type="button" class="btn btn-success" value="Danh sách"></a>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>