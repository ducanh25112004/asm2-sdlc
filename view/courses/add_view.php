<?php
if (!defined('APP_ROOT_PATH')) {
    die('Can not access');
}

$namePage = 'Create Courses';
$errorAdd = $_SESSION['error_courses'] ?? null;
?>
<link rel="shortcut icon" href="public/img/images (1).png" type="x-icon">
<!-- load header view -->
<?php require APP_PATH_VIEW . "partials/header_view.php"; ?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Create Courses</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a style="color: blue;" href="index.php?c=courses">Courses</a></li>
                        <li class="breadcrumb-item active">Form Add new</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12 col-md-12">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h5 class="card-title">
                                Create Courses
                            </h5>
                        </div>
                        <div class="card-body">
                            <form enctype="multipart/form-data" method="post" action="index.php?c=courses&m=handle-add">
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="form-group mb-3">
                                            <label>Courses</label>
                                            <input type="text" class="form-control" name="name" />
                                            <?php if(!empty($errorAdd['name'])): ?>
                                                <span class="text-primary"><?= $errorAdd['name'] ?></span>
                                            <?php endif; ?>
                                        </div>
                                        <div class="form-group mb-3">
                                            <label>Teacher</label>
                                            <input type="text" class="form-control" name="slug" />
                                            <?php if(!empty($errorAdd['slug'])): ?>
                                                <span class="text-primary"><?= $errorAdd['slug'] ?></span>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div class="form-group mb-3">
                                            <label> Description </label>
                                            <input type="text" class="form-control" name="description" />
                                        </div>
                                        <div class="row">
                                            <div class="form-group mb-3 col-6">
                                                <label> Departments </label>
                                                <select id="" class="form-control" name="department_id" title="departments">
                                                    <?php foreach($detailName as $key => $item): ?>
                                                        <option value="<?php echo $item['id'];?>"><?php echo $item['name']; ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </div>
                                            <div class="form-group mb-3 col-6">
                                                <label> Status </label>
                                                <select class="form-control" name="status">
                                                    <option value="1">Active</option>
                                                    <option value="0">Deactive</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <button class="btn btn-primary btn-lg" type="submit" name="btnSave"> Save </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<!-- load footer view -->
<?php require APP_PATH_VIEW . "partials/footer_view.php"; ?>