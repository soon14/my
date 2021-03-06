<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-html" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-html" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-qq_connect_appid"><?php echo $entry_qq_connect_appid; ?></label>
            <div class="col-sm-10">
              <input type="text" name="qq_connect_appid" value="<?php echo $qq_connect_appid; ?>" placeholder="<?php echo $entry_qq_connect_appid; ?>" id="input-qq_connect_appid" class="form-control" />
              <?php if ($error_qq_connect_appid) { ?>
              <div class="text-danger"><?php echo $error_qq_connect_appid; ?></div>
              <?php } ?>
            </div>
          </div>   
		  <div class="form-group">
			<label class="col-sm-2 control-label" for="input-qq_connect_appkey"><?php echo $entry_qq_connect_appkey; ?></label>
			<div class="col-sm-10">
			  <input type="text" name="qq_connect_appkey" value="<?php echo $qq_connect_appkey; ?>" placeholder="<?php echo $entry_qq_connect_appkey; ?>" id="input-qq_connect_appkey" class="form-control" />
			  <?php if ($error_qq_connect_appkey) { ?>
			  <div class="text-danger"><?php echo $error_qq_connect_appkey; ?></div>
			  <?php } ?>
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2 control-label" for="input-qq_connect_return_url"><?php echo $entry_qq_connect_return_url; ?></label>
			<div class="col-sm-10">
			  <input type="text" name="qq_connect_return_url" value="<?php echo $qq_connect_return_url; ?>" placeholder="<?php echo $entry_qq_connect_return_url; ?>" id="input-qq_connect_return_url" class="form-control" />
			  <?php if ($error_qq_connect_return_url) { ?>
			  <div class="text-danger"><?php echo $error_qq_connect_return_url; ?></div>
			  <?php } ?>
			</div>
		  </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-qq_connect_status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="qq_connect_status" id="input-qq_connect_status" class="form-control">
                <?php if ($qq_connect_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>