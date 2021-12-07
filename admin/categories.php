<?php include "includes/admin_header.php"; ?>


    <div id="wrapper">

        <!-- Navigation -->
        <?php include "includes/admin_navigation.php"; ?>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Welcome to admin dashboard
                            <small>Author</small>
                        </h1>

                        <div class="col-xs-6">

                          <?php insert_categories(); ?>



                        <form action="" method="post"><!--Form Add category start-->
                          <div class="form-group">
                            <label for="cat_title">Add Category </label>
                              <input type="text" class="form-control" name="cat_title">
                          </div>
                          <div class="form-group">
                              <input class="btn btn-primary" type="submit" name="submit" value="Add Category">
                          </div>
                        </form><!--Form Add category ends-->

                        <!--Form Edit Category Starts-->

                        <!--Udate and includes categories-->
                        <?php

                        if(isset($_GET['edit'])){

                          $cat_id = $_GET['edit'];
                          include "includes/update_categories.php";

                        }

                         ?><!--Udate and includes categories END-->

                      </div><!--Form Edit Category Ends-->

                      <!--FIND ALL CATEGORIES Table Starts-->
                      <div class="col-xs-6">


                        <table class="table table-bordered table-hover">
                          <thead>
                            <tr>
                              <th>Id</th>
                              <th>Category Title</th>
                            </tr>
                          </thead>
                          <tbody>

                        <!--FIND ALL CATEGORIES QUERY-->
                        <?php find_all_categories(); ?>
                        <!--END FIND ALL CATEGORIES QUERY-->

                        <!--DELETE FROM categories table Query-->
                        <?php delete_categories(); ?>
                        <!--END of Delete From CATEGORIES table QUERY-->

                          </tbody>
                        </table><!--END FIND ALL CATEGORIES Table-->
                      </div><!-- Table End-->

                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

        <?php include "includes/admin_footer.php"; ?>
