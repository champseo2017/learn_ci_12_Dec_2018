<?php foreach($serch_res as $serch) { ?>
<img src="<?php echo base_url() ?><?php echo $serch['product_image_1'] ?>"><br>
<img src="<?php echo base_url() ?><?php echo $serch['product_image_2'] ?>"><br>
<img src="<?php echo base_url() ?><?php echo $serch['product_image_3'] ?>"><br>
<img src="<?php echo base_url() ?><?php echo $serch['product_image_4'] ?>"><br>
<h3>Name: <?php echo $serch['product_name'] ?></h3>
<h3>Price: <?php echo $serch['product_price'] ?></h3>
<?php } ?>