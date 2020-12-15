<!-- include header -->
@include('includes.header')
<!-- /include header -->
<style>
body{
    color:#7b7a7b;
}
.bg-dark {
  background-color: #56243a !important;
}
.bg-gray-900 {
  background-color: #f1f1f1 !important;
}
.card, .form-control {
  background-color: #ffffff;
}
.text-gray-300 {
  color: rgb(237 35 125 / 45%) !important;
}
.card .card-header {
  background-color: #dcdcdc;
  border-bottom: 1px solid #dcdcdc;
}
.text-gray-200 {
  color: #ed237d !important;
}
.table thead th{
    border-bottom: 2px solid #dcdcdc;
    background-color: #dcdcdc;
}
.table, .table td, .table th{
    border: 1px solid #dcdcdc;
}
.form-control {
    border: 1px solid #dcdcdc;
    color: #6f6f6f;
}
.card:focus, .form-control:focus,
.selectize-input.full,
.input-group .form-control,
.input-group-text{
    background-color:transparent;
}
.page-item.disabled .page-link {
    border-color: #ed237db8;
    background-color: #ed237db8;
}
.page-item.disabled .page-link{
    color:#fff;
}
.input-group-text{
    border:1px solid #d1d3e2;
}
</style>
<body id="page-top lw-admin-section">
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- include sidebar -->
        @if(isLoggedIn())
            @include('includes.sidebar')
        @endif
        <!-- /include sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column bg-gray-900">
            <div id="content">
                <!-- include top bar -->
                @if(isLoggedIn())
                    @include('includes.top-bar')
                @endif
                <!-- /include top bar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    @if(isset($pageRequested))
                        <?php echo $pageRequested; ?>
                    @endif
                </div>
                <!-- /.container-fluid -->
            </div>

            <!-- include footer -->
            @include('includes.footer')
            <!-- /include footer -->
        </div>
        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    <!-- /Scroll to Top Button-->

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><?= __tr('Ready to Leave?') ?></h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                	<?= __tr('Select "Logout" below if you are ready to end your current session.') ?>
                    
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal"><?= __tr('Cancel') ?></button>
                    <a class="btn btn-primary" href="<?= route('user.logout') ?>"><?= __tr('Logout') ?></a>
                </div>
            </div>
        </div>
    </div> 
    <!-- /Logout Modal-->
</body>
</html>
