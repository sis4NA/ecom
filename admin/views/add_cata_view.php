<?php 

    if(isset($_POST['add_ctg'])){
      $rtnMsg =   $obj->add_catagory($_POST);
    }
?>


<h2>Add Category</h2>

<h4 class="text-success"> <?php if(isset($rtnMsg)){ echo $rtnMsg; } ?> 

</h4>
<form action="" method="post">


    <div class="form-group">
        <label for="ctg_name">Category Name</label>
        <input type="text" name="ctg_name" class="form-control">
    </div>

    <div class="form-group">
        <label for="ctg_des">Category descriptioon</label>
        <input type="text" name="ctg_des" class="form-control">
    </div>

    <div class="form-group">
        <label for="ctg_status">Category Status</label>
        <select name="ctg_status" class="form-control">
            <option value="1">Published</option>
            <option value="0">Unpublished</option>
        </select>
    </div>

    <input type="submit" value="Add Category" name="add_ctg" class="btn btn-primary" >

</form>