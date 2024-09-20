<?php session_start();?>
<?php include('common/connection.php')?>
<?php
	if(!empty($_GET['addtocart']))
	{
		$pid=$_GET['pid'];
		$qty=$_GET['qty'];
		$uid=$_GET['uid'];
		$query="insert into cart(userid,productid,qty) values($uid,$pid,$qty)";
		if(mysqli_query($connect,$query))
		{
			echo "Record Inserted";
		}
		else
		{
			echo "Record Not Inserted";
		}
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title>ENEST-3</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Bowlby+One+SC|Catamaran&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="main-div">
		<?php include('common/header.php');?>
		<div class="null">
		
		</div>
		<div class="main-categorious">
			<div class="footer">
				<div class="categorious">
					<div class="cate-heading">
						<p>CATEGORIES</p>
					</div>
					<div class="items">
						<ul>
							<?php include('common/categories.php');?>
						</ul>
					</div>
				</div>
				<div class="contact">
					<div class="contact-us">

					</div>
					<div class="dish-info">
						<table border="1" width="100%">
                            <tr>
                                <th>ID</th>
                                <th>Username</th>
                                <th>Product Name</th>
                                <th>qty</th>
                            </tr>
                            <?php
                                $userid=$_SESSION['userid'];
                                $query="SELECT * FROM cart c, product p, signup su where c.userid=su.id and c.productid=p.id and c.userid=$userid";
                                $result=mysqli_query($connect,$query);
                                while($row=mysqli_fetch_assoc($result))
                                {
                            ?>
                                <tr>
                                    <td><?php echo $row['id'];?></td>
                                    <td><?php echo $row['fullname'];?></td>
                                    <td><?php echo $row['pname'];?></td>
                                    <td><?php echo $row['qty'];?></td>
                                </tr>
                            <?php } ?>
                        </table>
					</div>
					
				</div>
				<?php include ('common/footer.php');?>
			</div>
		</div>
	</div>
</body>
</html>