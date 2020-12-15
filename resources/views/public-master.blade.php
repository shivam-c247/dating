<!-- include header -->
@include('includes.header')
<!-- /include header -->

<style>
body{
color:#666;
}
.lw-page-bg {
    background-color: #56243a !important;
}
a.bg-dark:hover, a.bg-dark:focus, button.bg-dark:hover, button.bg-dark:focus {
    background-color: white !important;
}
.sidebar-dark .sidebar-brand {
    color: #fd267d;
}
.topbar.navbar-light .navbar-nav .nav-item .nav-link {
    color: rgb(237 35 125 / 45%) !important;
}
.card, .form-control {
    background-color: #f1f1f1;
}
.card .card-header {
    background-color: #dcdcdc;
    border-bottom: 1px solid #dcdcdc;
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
<body id="page-top" class="lw-page-bg lw-public-master">
    <!-- Page Wrapper -->
    <div id="wrapper" class="container-fluid">
        <!-- include sidebar -->
        @if(isLoggedIn())
        @include('includes.public-sidebar')
        @endif
        <!-- /include sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column lw-page-bg">
            <div id="content">
                <!-- include top bar -->
                @if(isLoggedIn())
                @include('includes.public-top-bar')
                @endif
                <!-- /include top bar -->

                <!-- Begin Page Content -->
                <div class="lw-page-content">
                    <!-- header advertisement -->
                    @if(!getFeatureSettings('no_adds') and getStoreSettings('header_advertisement')['status'] == 'true')
                    <div class="lw-ad-block-h90">
                        <?= getStoreSettings('header_advertisement')['content'] ?>
                    </div>
                    @endif
                    <!-- /header advertisement -->
                    @if(isset($pageRequested))
                    <?php echo $pageRequested; ?>
                    @endif
                    <!-- footer advertisement -->
                    @if(!getFeatureSettings('no_adds') and getStoreSettings('footer_advertisement')['status'] == 'true')
                    <div class="lw-ad-block-h90">
                        <?= getStoreSettings('footer_advertisement')['content'] ?>
                    </div>
                    @endif
                    <!-- /footer advertisement -->
                </div>
                <!-- /.container-fluid -->
            </div>
        </div>
        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->

	<div class="lw-cookie-policy-container row p-4" id="lwCookiePolicyContainer">
		<div class="col-sm-11">
            @include('includes.cookie-policy')
        </div>
		<div class="col-sm-1 mt-2"><button id="lwCookiePolicyButton" class="btn btn-primary"><?= __tr('OK') ?></button></div>
	</div>
    <!-- include footer -->
    @include('includes.footer')
    <!-- /include footer -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    <!-- /Scroll to Top Button-->

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
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
                    <button class="btn btn-secondary" type="button" data-dismiss="modal"><?= __tr('Not now') ?></button>
                    <a class="btn btn-primary" href="<?= route('user.logout') ?>"><?= __tr('Logout') ?></a>
                </div>
            </div>
        </div>
    </div>
    <!-- /Logout Modal-->
</body>
</html>