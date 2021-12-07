<?php

if(isset($_GET['update_user'])){

$the_user_id = $_GET['update_user'];

$query = "SELECT * FROM users WHERE user_id = $the_user_id ";
$select_users_query = mysqli_query($connection, $query);

while ($row = mysqli_fetch_assoc($select_users_query)){
  $user_id = $row['user_id'];
  $username = $row['username'];
  $user_firstname = $row['user_firstname'];
  $user_lastname = $row['user_lastname'];
  $user_email = $row['user_email'];
  $user_password = $row['user_password'];
  $user_role = $row['user_role'];

}
}

if(isset($_POST['update_user'])){

$user_firstname = $_POST['user_firstname'];
$user_lastname = $_POST['user_lastname'];
$user_role = $_POST['user_role'];
$username = $_POST['username'];

// $post_image = $_FILES['image']['name'];
// $post_image_temp = $_FILES['image']['tmp_name'];

$user_email = $_POST['user_email'];
$user_password = $_POST['user_password'];
// $post_date = date('d-m-y');
// $post_comment_count = 4;


// move_uploaded_file($post_image_temp, "../images/$post_image");

$query = "UPDATE users SET ";
$query .= "user_firstname = '{$user_firstname}', ";
$query .= "user_lastname = '{$user_lastname}', ";
$query .= "user_role = '{$user_role}', ";
$query .= "username = '{$username}', ";
$query .= "user_email = '{$user_email}', ";
$query .= "user_password = '{$user_password}' ";
$query .= "WHERE user_id = {$the_user_id} ";


$update_user_query = mysqli_query($connection, $query);
confirmQuery($update_user_query);
}

 ?>



<form action="" method="post" enctype="multipart/form-data" class="" >

  <div class="form-group">
    <label for="author">Firstname</label>
    <input value="<?php echo $user_firstname; ?>" type="text" name="user_firstname" class="form-control" >
  </div>

  <div class="form-group">
    <label for="post_status">Lastname</label>
    <input value="<?php echo $user_lastname; ?>"type="text" name="user_lastname" class="form-control" >
  </div>

  <div class="form-group">

    <label for="user_role">User Role</label><br>
    <select name="user_role" class="form-control" id="">

      <option value="<?php echo $user_role; ?>"><?php echo $user_role; ?></option>


      <?php
      if($user_role == 'admin'){

      echo "<option value='subscriber'>subscriber</option>";

      }elseif ($user_role == 'subscriber') {
        echo "<option value='admin'>admin</option>";
      }


       ?>




<?php

// $query = "SELECT * FROM users ";
// $select_users = mysqli_query($connection, $query);
//
// confirmQuery($select_users);
//
// while( $row = mysqli_fetch_assoc($select_users)) {
// $user_id = $row ['user_id'];
// $user_role = $row ['user_role'];
//
// echo "<option value='{$user_id}'>{$user_role}</option>";
//
// }


 ?>

    </select>

  </div>

  <!-- <div class="form-group">
    <label for="image">User Image</label>
    <input type="file" name="image" class="form-control">
  </div> -->

  <div class="form-group">
    <label for="post_tags">Username</label>
    <input value="<?php echo $username; ?>" type="text" name="username"  class="form-control" >
  </div>

  <div class="form-group">
    <label for="post_tags">User Email</label>
    <input value="<?php echo $user_email; ?>" type="email" name="user_email"  class="form-control" >
  </div>

  <div class="form-group">
    <label for="post_tags">User Password</label>
    <input value="<?php echo $user_password; ?>" type="password" name="user_password"  class="form-control" required>
  </div>

  <div class="form-group">
    <input type="submit" name="update_user"  class="btn btn-primary" value="Update User">
  </div>


</form>
