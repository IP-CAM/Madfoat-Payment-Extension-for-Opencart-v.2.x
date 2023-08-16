<iframe src="https://uat-secure.madfoat.dev/preload.html" id="madfoat_frame" name="madfoat_frame" style="width:100%;height:600px;display:none;border:0;margin:0;" frameborder="0"></iframe>

<form action="<?php echo $action; ?>" method="post" id="madfoat_form" target="madfoat_frame">
<div class="buttons">
   <div class="pull-right">
     <input type="submit" value="<?php echo $button_confirm; ?>" id="madfoat_submit" class="btn btn-primary" />
   </div>
 </div>
</form>

<script type="text/javascript">
$(document).ready(function() {
	$("#madfoat_submit").click(function() {
		$("#madfoat_frame").show('slow');
		$("#madfoat_submit").hide();
	});
});
</script>
