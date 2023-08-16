<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-madfoat" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
      </div> <!-- pull-right -->
      <h1><i class="fa fa-credit-card"></i> <?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div> <!-- container-fluid -->
  </div> <!-- page-header -->

  <div class="container-fluid">
    <?php if (!empty($error_warning)) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>

    <div class="panel-body">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-madfoat" class="form-horizontal">
        <ul class="nav nav-tabs" id="tabs">
          <li class="active"><a href="#tab-conf" data-toggle="tab">Settings</a></li>
          <li><a href="#tab-orders" data-toggle="tab">Order Status</a></li>
        </ul>

        <div class="tab-content">
          <div class="tab-pane active" id="tab-conf">
            <div class="form-group required">
              <label class="col-sm-2 control-label" for="madfoat_title"><?php echo $entry_title; ?></label>
              <div class="col-sm-10">
                <input type="text" name="madfoat_title" value="<?php echo $madfoat_title; ?>" placeholder="<?php echo $help_title; ?>" id="madfoat_title" class="form-control"/>
              </div>
            </div>
            <div class="form-group required">
              <label class="col-sm-2 control-label" for="madfoat_store"><?php echo $entry_store; ?></label>
              <div class="col-sm-10">
                <input type="text" name="madfoat_store" value="<?php echo $madfoat_store; ?>" placeholder="<?php echo $help_store; ?>" id="madfoat_store" class="form-control"/>
                <?php if ($error_store) { ?>
                <div class="text-danger"><?php echo $error_store; ?></div>
                <?php } ?>
              </div>
            </div>
            <div class="form-group required">
              <label class="col-sm-2 control-label" for="madfoat_authkey"><?php echo $entry_authkey; ?></label>
              <div class="col-sm-10">
                <input type="text" name="madfoat_authkey" value="<?php echo $madfoat_authkey; ?>" placeholder="<?php echo $help_authkey; ?>" id="madfoat_authkey" class="form-control"/>
                <?php if ($error_authkey) { ?>
                <div class="text-danger"><?php echo $error_authkey; ?></div>
                <?php } ?>
              </div>
            </div>
            <div class="form-group required">
              <label class="col-sm-2 control-label" for="madfoat_purdesc"><?php echo $entry_purdesc; ?></label>
              <div class="col-sm-10">
                <input type="text" name="madfoat_purdesc" value="<?php echo $madfoat_purdesc; ?>" placeholder="<?php echo $help_purdesc; ?>" id="madfoat_purdesc" class="form-control"/>
                <?php if ($error_purdesc) { ?>
                <div class="text-danger"><?php echo $error_purdesc; ?></div>
                <?php } ?>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label"><?php echo $entry_lang; ?></label>
              <div class="col-sm-10">
                <select name="madfoat_lang" class="form-control">
                  <?php if ($madfoat_lang == 'en') { ?>
                  <option value="en" selected="selected"><?php echo $lang_en; ?></option>
                  <option value="ar"><?php echo $lang_ar; ?></option>
                  <?php } else { ?>
                  <option value="en"><?php echo $lang_en; ?></option>
                  <option value="ar" selected="selected"><?php echo $lang_ar; ?></option>
                  <?php } ?>
                </select>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label"><?php echo $entry_pay_mode; ?></label>
              <div class="col-sm-10">
                <select name="madfoat_pay_mode" class="form-control">
                  <?php if ($madfoat_pay_mode == '0') { ?>
                  <option value="0" selected="selected"><?php echo $pay_std; ?></option>
                  <option value="2"><?php echo $pay_frm; ?></option>
                  <?php } else { ?>
                  <option value="0"><?php echo $pay_std; ?></option>
                  <option value="2" selected="selected"><?php echo $pay_frm; ?></option>
                  <?php } ?>
                </select>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label"><?php echo $entry_test; ?></label>
              <div class="col-sm-10">
                <select name="madfoat_test" class="form-control">
                  <?php if ($madfoat_test == 'Yes') { ?>
                  <option value="Yes" selected="selected"><?php echo $text_test; ?></option>
                  <option value="No"><?php echo $text_live; ?></option>
                  <?php } else { ?>
                  <option value="No" selected="selected"><?php echo $text_live; ?></option>
                  <option value="Yes"><?php echo $text_test; ?></option>
                  <?php } ?>
                </select>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label"><?php echo $entry_status; ?></label>
              <div class="col-sm-10">
                <select name="madfoat_status" class="form-control">
                  <?php if ($madfoat_status) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select>
              </div>
            </div>
            <div class="form-group required">
              <label class="col-sm-2 control-label" for="madfoat_total"><?php echo $entry_total; ?></label>
              <div class="col-sm-10">
                <input type="text" name="madfoat_total" value="<?php echo $madfoat_total; ?>" placeholder="<?php echo $help_total; ?>" id="madfoat_total" class="form-control"/>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label"><?php echo $entry_geo_zone; ?></label>
              <div class="col-sm-10">
                <select name="madfoat_geo_zone_id" class="form-control">
                  <option value="0"><?php echo $text_all_zones; ?></option>
                  <?php foreach ($geo_zones as $geo_zone) { ?>
                  <?php if ($geo_zone['geo_zone_id'] == $madfoat_geo_zone_id) { ?>
                  <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
              </div>
            </div>
            <div class="form-group required">
              <label class="col-sm-2 control-label" for="madfoat_sort_order"><?php echo $entry_sort_order; ?></label>
              <div class="col-sm-10">
                <input type="text" name="madfoat_sort_order" value="<?php echo $madfoat_sort_order; ?>" placeholder="<?php echo $help_sort_order; ?>" id="madfoat_sort_order" class="form-control"/>
              </div>
            </div>
          </div>
          <div class="tab-pane" id="tab-orders">
            <div class="form-group">
              <label class="col-sm-2 control-label"><?php echo $entry_pend_status; ?></label>
              <div class="col-sm-10">
                <select name="madfoat_pend_status_id" class="form-control">
                  <?php foreach ($order_statuses as $order_status) { ?>
                  <?php if ($order_status['order_status_id'] == $madfoat_pend_status_id) { ?>
                  <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label"><?php echo $entry_comp_status; ?></label>
              <div class="col-sm-10">
                <select name="madfoat_comp_status_id" class="form-control">
                  <?php foreach ($order_statuses as $order_status) { ?>
                  <?php if ($order_status['order_status_id'] == $madfoat_comp_status_id) { ?>
                  <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label"><?php echo $entry_void_status; ?></label>
              <div class="col-sm-10">
                <select name="madfoat_void_status_id" class="form-control">
                  <?php foreach ($order_statuses as $order_status) { ?>
                  <?php if ($order_status['order_status_id'] == $madfoat_void_status_id) { ?>
                  <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
              </div>
            </div>
          </div> <!-- tab-pane -->
        </div> <!-- tab-content -->
      </form>      
    </div> <!-- panel-body -->
  </div> <!-- container-fluid -->
</div> <!-- content -->
<script type="text/javascript">
  $('#tabs a:first').tab('show');
</script>
<?php echo $footer; ?> 
