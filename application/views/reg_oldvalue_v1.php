<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Reg oldvalue</title>
</head>
<body>
<?php echo form_open('form_array_v3/save', array('role'=>'form'))."<br>" ?>
<span>ชื่อ</span>
<input type="text" name="name" value="<?php echo set_value('name'); ?>" size="50" /><br>
<?php  
echo form_error('name')."<br>";
?>
<span>Age</span>
<input type="text" name="age" value="<?php echo set_value('age'); ?>" size="50" /><br>
<?php 
echo form_error('age')."<br>";
?>
<span>Payment</span>
<input type="checkbox" name="accept_terms_checkbox" value="Checkbox True" <?php echo set_checkbox('accept_terms_checkbox', 'Checkbox True'); ?> /> Not Check box false
<?php 
echo form_error('accept_terms_checkbox')."<br>";
?>
<input type="submit" value="Register" class="btn btn-info btn-block">
<?php echo form_close(); ?>
</body>
</html>