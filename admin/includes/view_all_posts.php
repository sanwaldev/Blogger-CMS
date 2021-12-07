<?php

if(isset($_POST['checkBoxArray'])){

foreach($_POST['checkBoxArray'] as $postValueId ){

  $bulk_options = $_POST['bulk_options'];

  switch($bulk_options){

    case 'published':
    $query = "UPDATE posts SET post_status = '{$bulk_options}' WHERE
    post_id = {$postValueId}";
    $update_to_published_status = mysqli_query($connection, $query);
    confirmQuery($update_to_published_status);
    break;

    case 'draft':
    $query = "UPDATE posts SET post_status = '{$bulk_options}' WHERE
    post_id = {$postValueId}";
    $update_to_published_status = mysqli_query($connection, $query);
    confirmQuery($update_to_published_status);
    break;

    case 'delete':
    $query = "DELETE FROM posts WHERE post_id = {$postValueId}";
    $delete_post = mysqli_query($connection, $query);
    confirmQuery($delete_post);
    break;

    case 'clone':
    $query = "SELECT * FROM posts WHERE post_id =' {$postValueId}' ";
    $select_post_query = mysqli_query($connection, $query);

    while($row = mysqli_fetch_array($select_post_query)){
      $post_title = $row['post_title'];
      $post_category_id = $row['post_category_id'];
      $post_date = $row['post_date'];
      $post_author = $row['post_author'];
      $post_status = $row['post_status'];
      $post_image = $row['post_image'];
      $post_tags = $row['post_tags'];
      $post_content = $row['post_content'];
    }

    $query = "INSERT INTO posts(post_category_id, post_title, post_author, post_date, post_image,
      post_content, post_tags, post_status)";

    $query .= "VALUES('{$post_category_id}','{$post_title}','{$post_author}', now(),
    '{$post_image}','{$post_content}','{$post_tags}','{$post_status}')";

    $clone_post_query = mysqli_query($connection, $query);

    if(!$clone_post_query){
      die("QUERY FAILED" . mysqli_error($connection));
    }
    break;

  }

}

}


 ?>


<form class="" method="post">

<table class="table table-bordered table-hover">
  <div id="bulkOptionContainer" class="col-xs-4">

    <select class="form-control" id="" name="bulk_options">
      <option value="" name="foo">Select Option</option>
      <option value="published" name="foo">Publish</option>
      <option value="draft" name="foo">Draft</option>
      <option value="clone" name="foo">Clone</option>
      <option value="delete" name="foo">Delete</option>

    </select>

  </div>
  <div class="col-xs-4">
    <input type="submit" class="btn btn-success" name="submit" value="Apply">
    <a class="btn btn-primary" href="./posts.php?source=add_post">Add New</a>
  </div>

  <thead>
    <tr>
      <th><input id="selectAllBoxes" type="checkbox"></input></th>
      <th>Id</th>
      <th>Author</th>
      <th>Title</th>
      <th>Category</th>
      <th>Status</th>
      <th>Image</th>
      <th>Tags</th>
      <th>Comments</th>
      <th>Date</th>
      <th>View</th>
      <th>Edit</th>
      <th>Delete</th>
      <th>Views</th>
    </tr>
  </thead>
  <tbody>

    <?php

      $query = "SELECT * FROM posts ORDER BY post_id DESC ";
      $select_posts = mysqli_query($connection, $query);

      while ($row = mysqli_fetch_assoc($select_posts)){
        $post_id = $row['post_id'];
        $post_author = $row['post_author'];
        $post_title = $row['post_title'];
        $post_category_id = $row['post_category_id'];
        $post_status = $row['post_status'];
        $post_image = $row['post_image'];
        $post_tags = $row['post_tags'];
        $post_comment_count = $row['post_comment_count'];
        $post_views_count = $row['post_views_count'];
        $post_date = $row['post_date'];

          echo "<tr>";
          ?>

          <td><input class='checkBoxes' type='checkbox'
          name='checkBoxArray[]'
          value='<?php echo $post_id; ?>'>
          </input></td>

          <?php
          echo "<td>$post_id</td>";
          echo "<td>$post_author</td>";
          echo "<td>$post_title</td>";

          $query = "SELECT * FROM categories WHERE cat_id = {$post_category_id}";
          $select_categories_id = mysqli_query($connection, $query);

          while( $row = mysqli_fetch_assoc($select_categories_id)) {
          $cat_id = $row ['cat_id'];
          $cat_title = $row ['cat_title'];

          echo "<td>{$cat_title}</td>";

          }

          echo "<td>$post_status</td>";
          echo "<td><img class='img-responsive'  width='100px' src='../images/$post_image' alt=''></td>";
          echo "<td>$post_tags</td>";

          $query = "SELECT * FROM comments WHERE comment_post_id = $post_id";
          $send_comment_query = mysqli_query($connection, $query);

          $row = mysqli_fetch_array($send_comment_query);
          $comment_id = $row['comment_id'];
          $count_comments = mysqli_num_rows($send_comment_query);

          // echo "<td>$post_comment_count</td>";
          echo "<td> <a href='post_comments.php?id=$post_id'> $count_comments </a> </td>";
          echo "<td>$post_date</td>";
          echo "<td><a href='../post.php?p_id={$post_id}'>View</a></td>";
          echo "<td><a href='posts.php?source=edit_post&p_id={$post_id}'>Edit</a></td>";
          echo "<td><a onClick=\"Javascript: return confirm('Are you sure you want to delete'); \" href='posts.php?delete={$post_id}'>Delete</a></td>";
          echo "<td><a href='posts.php?reset={$post_id}'>{$post_views_count}</a></td>";
          echo "</tr>";

        }
   ?>
   <?php

     //DELETE FROM categories table Query
     if(isset($_GET['delete'])){
       if(isset($_SESSION['user_role'])){
       if($_SESSION['user_role'] == 'admin'){
       $the_post_id = mysqli_real_escape_string($_GET['delete']);
       $query = "DELETE FROM posts WHERE post_id = {$the_post_id}";
       $delete_query = mysqli_query($connection, $query);
       header("Location: posts.php");
      }
    }else{
      header("Location: ../index.php");
    }
   }

//Reset Post Views Count
   if(isset($_GET['reset'])){
     if(isset($_SESSION['user_role'])){
     if($_SESSION['user_role'] == 'admin'){
     $the_post_id = mysqli_real_escape_string($_GET['reset']);
     $query = "UPDATE posts SET post_views_count = 0 WHERE post_id =" . mysqli_real_escape_string($connection, $_GET['reset']) . " ";
     $reset_views_count_query = mysqli_query($connection, $query);
     header("Location: posts.php");
    }
  }else{
    header("Location: ../index.php");
  }
 }

   //EDIT FROM categories table Query
   if(isset($_GET['edit'])){
     if(isset($_SESSION['user_role'])){
     if($_SESSION['user_role'] == 'admin'){
     $the_post_id = mysqli_real_escape_string($_GET['edit']);
     $query = "UPDATE FROM posts WHERE post_id = {$the_post_id}";
     $delete_query = mysqli_query($connection, $query);
     header("Location: posts.php");
    }
  }else{
    header("Location: ../index.php");
  }
 }



    ?>
  </tbody>
</table>
</form>
