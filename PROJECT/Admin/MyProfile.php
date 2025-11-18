<?php
include("../Assets/Connection/connection.php");
session_start();
ob_start();
include("Head.php");
$SelQry="select * from tbl_adminreg where admin_id=".$_SESSION['aid'];
$result=$Con->query($SelQry);
$row=$result->fetch_assoc()

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin Profile</title>
  <!-- Bootstrap CSS -->
  <!-- <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet"> -->
  <style>
    body {
  font-family: 'Poppins', sans-serif;
  background-color: #1e1e2f; /* Matches the Black Dashboard theme */
  color: #ffffff;
  margin: 0;
  padding: 0;
}

.profile-container {
  background-color: #2c2c3a;
  border-radius: 10px;
  padding: 20px;
  max-width: 600px;
  margin: 30px auto;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
}

.profile-header {
  text-align: center;
  margin-bottom: 20px;
}

.profile-image {
  width: 120px;
  height: 120px;
  border-radius: 50%;
  object-fit: cover;
  border: 3px solid #6c7ae0; /* Accent color */
}

.profile-info p {
  margin: 10px 0;
  font-size: 16px;
  color: #cccccc;
}

.profile-info label {
  font-weight: 600;
  color: #6c7ae0; /* Accent color */
}

  </style>
</head>
<body>
  <div class="profile-container">
    <div class="profile-header">
      <img src="../Assets/Templates/Admin/assets/img/adminicon.jpg" class="profile-image" alt="admin Photo">
    </div>

    <div class="profile-info">
      <p><label>Name:</label> <?php echo $row['admin_name']; ?></p>
      <p><label>Email:</label> <?php echo $row['admin_email']; ?></p>
      <p><label>Contact:</label> <?php echo $row['admin_contact']; ?></p>
    </div>
  </div>
</body>
</html>
<?php
include("Foot.php");
ob_flush();
?>