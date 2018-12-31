<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Select update delete</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<body>
<?php if($this->session->flashdata('UpdateSucess')) { ?>
<div class="alert alert-success" role="alert">
<?php echo $this->session->flashdata('UpdateSucess') ?>
</div>
<?php } ?>
<?php if($this->session->flashdata('DeleteSucess')) { ?>
<div class="alert alert-success" role="alert">
<?php echo $this->session->flashdata('DeleteSucess') ?>
</div>
<?php } ?>
<h2>HTML Table</h2>
<table>
  <tr>
    <th>No</th>
    <th>Code</th>
    <th>Name</th>
    <th>Price</th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>
  <?php foreach($data_select as $key => $data_selects) { ?>
  <tr>
    <td><?php echo $key + 1 ?></td>
    <td><?php echo $data_selects['code']; ?></td>
    <td><?php echo $data_selects['name']; ?></td>
    <td><?php echo $data_selects['price']; ?></td>
    <td><a href="javascript:void(0);" onclick="edit_book(<?php echo $data_selects['id']; ?>)">Edit</a></td>
    <td><a href="javascript:void(0);" onclick="delete_book(<?php echo $data_selects['id']; ?>)">Delete</a></td>
  </tr>
  <?php } ?>
</table> 


<script type="text/javascript">
    var url="<?php echo base_url();?>";
    function edit_book(id){
      event.preventDefault()
          window.location = url+"book/select_update_book/"+id;
        } 
    function delete_book(id){
       var r=confirm("Do you want to delete this?")
        if (r==true)
          window.location = url+"book/delete_book/"+id;
        else
          return false;
        } 
</script>
</body>
</html>