<?php
session_start();

?>

<!DOCTYPE html>
<html>
<head>
	<title>BOOKWORM</title>
        <link rel="shortcut icon" type="image/png" href="tic.png">
	<style>
		body {
			font-family: Arial, sans-serif;
			font-size: 14px;
			line-height: 1.5;
		}
                #logo {
			width: 32px;
			height: 32px;
			margin-right: 5px;
			vertical-align: middle;
		}
		table {
			border-collapse: collapse;
			margin: 10px 0;
			width: 100%;
		}
		th, td {
			padding: 8px;
			text-align: left;
			border-bottom: 1px solid #ddd;
		}
                @media print {
                    #print-button {
                    display: none;
                      }
                   }
		th {
			background-color: #f2f2f2;
		}
		h1 {
			margin-top: 0;
		}
		

		

	</style>
</head>
<body>
	<center><h1> <b> BOOKWORM </b>	</h1></center>
	<h1>Receipt</h1>
	<?php $transaction_id = rand(100000,999999); ?>
	<p>Transaction ID: <?php echo $transaction_id; ?></p>
	<tr>
				<td>Date:</td>
				<td><?=$_SESSION['placed_on']?></td>
			</tr>
	<table>
		<thead>
			<tr>
				<th colspan="2">Billing Address</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Full Name:</td>
				<td><?=$_SESSION['name']?></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><?=$_SESSION['email']; ?></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><?=$_SESSION['address']; ?></td>
			</tr>
			<tr>
				<td>Order:</td>
				<td><?=$_SESSION['orders']; ?></td>
			</tr>
			<tr>
				<td>Total Price:</td>
				<td><?=$_SESSION['total_price']; ?></td>
			</tr>
			<tr>
				<td>Mode of paymet:</td>
				<td><?=$_SESSION['method']; ?></td>
			</tr>
		</tbody>
	</table>
	<table>
		<thead>
			<tr>
		
<button  id="print-button" onclick="window.print()">Print Receipt</button></br></br>
<center> <h2><img id="logo" src="tic.png" alt="Logo"><?=$_SESSION['method']=='cash on delivery'?"Payment Pending":"Payment Successful"?></h2></center>
<form action="home.php">
<button type="submit">Back To Home Page</button> 
</form>
</body>
</html>
