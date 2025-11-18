<?php
include("../Assets/Connection/connection.php");
session_start();
ob_start();
include("Head.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Vante Classics</title>
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->
    <style>
        body {
            background-color: #f8f9fa; /* Light background */
        }
        .table-container {
            max-width: 800px; /* Limit form width */
            margin: auto; /* Center the container */
            padding: 20px; /* Padding around */
            background-color: #fff; /* White background for the form */
            border-radius: 8px; /* Rounded corners */
            overflow: hidden; /* Rounded corners effect */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }
        .table {
            margin: 20px auto; /* Center table */
        }
        .table th{
            color: white; 
            text-align: center; /* Center text in table */
            background-color: #6c7ae0; /* Your preferred shade for header */
        }
        .table td {
            text-align: center; /* Center text in table */
        }
        .btn-custom {
            background-color: #6c7ae0; /* Custom button color */
            color: white; /* Button text color */
        }
        .btn-custom:hover {
            background-color: #2956d5; /* Darker shade on hover */
        }
        .profile-links a {
            color: #6c7ae0; /* Link color */
            margin: 0 10px; /* Space between links */
        }
        .profile-links a:hover {
            text-decoration: underline; /* Underline on hover */
        }
    </style>
</head>
<body>
    <br>
<div class="container">
<h2 style="text-decoration:bold;color:#6c7ae0;text-align:center;">Products</h2>

    <table class="table table-container">
        <thead class="th">
            <tr>
                <th>Sl No.</th>
                <th>Product Photo</th>
                <th>Product Name</th>
                <th>Price</th>
                <th>Category</th>
                <th>Subcategory</th>
                <th>Material</th>
                <th>Color</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        <?php
        $i=0;
        $SelQry="select * from tbl_product p inner join tbl_subcategory s on p.subcategory_id=s.subcat_id inner join tbl_category c on s.category_id=c.category_id inner join tbl_manufacturer m on p.manufacturer_id=m.manufacturer_id inner join tbl_material mt on p.material_id=mt.material_id inner join tbl_color cl on p.color_id=cl.color_id where m.manufacturer_id=".$_SESSION['mid'];
        $result=$Con->query($SelQry);
        while($row=$result->fetch_assoc()) {
            $i++;
        ?>
            <tr>
                <td><?php echo $i; ?></td>
                <td><img src="../Assets/Files/Product/Photo/<?php echo $row['product_photo'];?>" class="img-fluid" style="max-width: 100px; height: auto;" alt="Product Photo" /></td>
                <td><?php echo $row['product_name'];?></td>
                
                <td><?php echo $row['product_price'];?></td>
                <td><?php echo $row['category_name'];?></td>
                <td><?php echo $row['subcat_name'];?></td>
               
                <td><?php echo $row['material_name'];?></td>
                <td><?php echo $row['color_name'];?></td>
                <td>
                    <a href="Product.php?did=<?php echo $row['product_id'];?>" class="btn btn-link" style="color: #6c7ae0;">Delete</a><br>
                    <a href="Stock.php?pid=<?php echo $row['product_id'];?>" class="btn btn-link" style="color: #6c7ae0;">Add Stock</a><br>
                    <a href="Gallery.php?pid=<?php echo $row['product_id'];?>" class="btn btn-link" style="color: #6c7ae0;">Add Pictures</a><br>
                    <a href="Rating.php?pid=<?php echo $row['product_id'];?>" class="btn btn-link" style="color: #6c7ae0;">View Rating</a>
                </td>
            </tr>
        <?php } ?>
        </tbody>
    </table>
</div>
<body>
</html>
<?php
include("Foot.php");
ob_flush();
?>