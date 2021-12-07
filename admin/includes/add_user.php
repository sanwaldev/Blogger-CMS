<?php

if(isset($_POST['create_user'])){

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


$user_password = password_hash($user_password, PASSWORD_BCRYPT, array('cost' => 10) );

$query = "INSERT INTO users(user_firstname, user_lastname, user_role, username, user_email,
  user_password)";

$query .= "VALUES('{$user_firstname}','{$user_lastname}','{$user_role}','{$username}',
'{$user_email}','{$user_password}')";

$create_new_user = mysqli_query($connection, $query);

confirmQuery($create_new_user);

echo "User Created: " . " " . "<a href='users.php'>View Users</a>";

}

 ?>



<form action="" method="post" enctype="multipart/form-data" class="" >

  <div class="form-group">
    <label for="author">Firstname</label>
    <input type="text" name="user_firstname" class="form-control" >
  </div>

  <div class="form-group">
    <label for="post_status">Lastname</label>
    <input type="text" name="user_lastname" class="form-control" >
  </div>

  <div class="form-group">

    <label for="user_role">User Role</label><br>
    <select name="user_role" class="form-control" id="">

      <option value="subscriber">Select Options</option>
      <option value="admin">Admin</option>
      <option value="subscriber">Subscriber</option>

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
    <input type="text" name="username"  class="form-control" >
  </div>

  <div class="form-group">
    <label for="post_tags">User Email</label>
    <input type="email" name="user_email"  class="form-control" >
  </div>

  <div class="form-group">
    <label for="post_tags">User Password</label>
    <input type="password" name="user_password"  class="form-control" >
  </div>

  <div class="form-group">
    <input type="submit" name="create_user"  class="btn btn-primary" value="Add User">
  </div>


</form>
