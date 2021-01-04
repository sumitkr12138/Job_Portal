<?php


session_start();

if(empty($_SESSION['id_user'])) {
	header("Location: ../index.php");
	exit();
}

require_once("../db.php");
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Job Portal</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    
  </head>
  <body style="background-image: url(../image/bg1.jpg);">
    
    <!-- NAVIGATION BAR -->
    <header>
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../index.php">Jobopedia</a>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">     
            <ul class="nav navbar-nav navbar-right">
              <li><a href="../logout.php">Logout</a></li>
            </ul>
          </div>
        </div>
      </nav>
    </header>

 <section>
      <div class="container-fluid" > 
        <div class="row" >
          <div class="col-md-12" >
            <!--div class="jumbotron text-center" style="background-image: url(../image/bg3.jpg);"-->
			<div class="jumbotron text-center" style="background-image: url(placement.jpg);">

              <h1 style="font-family:helvetica; color:#636363" >Jobopedia</h1>
              <p style="font-family:helvetica; color:#33aeb0">!!..your future starts now..!!</p>
			  </div>
              <!-- <p><a class="btn btn-primary btn-lg" href="register.php" role="button">Register</a></p> -->
              <br>
              <br>
              <br>
            <!--/div-->
          </div>
        </div>
      </div>
    </section>
    <!-- Job Post Created Success Message. -->
    <!-- Todo: Remove Success Message Without Reload. -->
    <div class="container">
    <?php if(isset($_SESSION['jobPostSuccess'])) { ?>
      <div class="row successMessage">
        <div class="alert alert-success">
          Job Post Created Successfully!
        </div>
      </div>
    <?php unset($_SESSION['jobPostSuccess']); } ?>
    
    <!-- Job Post Updated Success Message. -->
    <!-- Todo: Remove Success Message Without Reload. -->
    <?php if(isset($_SESSION['jobPostUpdateSuccess'])) { ?>
      <div class="row successMessage">
        <div class="alert alert-success">
          Job Post Updated Successfully!
        </div>
      </div>
    <?php unset($_SESSION['jobPostUpdateSuccess']); } ?>

    <!-- Job Post Deleted Success Message. -->
    <!-- Todo: Remove Success Message Without Reload. -->
    <?php if(isset($_SESSION['jobPostDeleteSuccess'])) { ?>
      <div class="row successMessage">
        <div class="alert alert-success">
          Job Post Deleted Successfully!
        </div>
      </div>
    <?php unset($_SESSION['jobPostDeleteSuccess']); } ?>




<div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="table-responsive">
            
        
                <?php 
                //Sql Query to show all job_post created by logged in company
                  $sql = "SELECT * FROM company WHERE id_company='$_SESSION[id_user]'";
                  $result = $conn->query($sql);

                  //If Job Post exists then display details of post
                  if($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) 
                    {
                     ?>
                      
                        <h2 style="margin-left:400px;">Welcome <?php echo $row['companyname']; ?></h2><br>
                        <br>
                      
                     <?php
                    }
                  }
              
                ?>
          </div>
        </div>
      </div>
    </div>







      <div class="row">
        <div class="col-md-2">
          <a href="create-job-post.php" class="btn btn-success btn-block btn-lg">Create Job Post</a>
        </div>
        <div class="col-md-2">
          <a href="view-job-post.php" class="btn btn-success btn-block btn-lg">View Job Post</a>
        </div>
        <?php
          $sql = "SELECT * FROM apply_job_post WHERE id_company='$_SESSION[id_user]' AND status='0'";
          $result = $conn->query($sql);
          if($result->num_rows > 0) {
            ?>
           <div class="col-md-3">
             <a href="view-job-application.php" class="btn btn-success btn-block btn-lg">View Application</a>
           </div> 
            <?php
          }
        ?>
      </div>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

     <script type="text/javascript">
      $(function() {
        $(".successMessage:visible").fadeOut(2000);
      });
    </script>
  </body>
</html>