<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<div class="heading">
   <h3>About us</h3>
   <p> <a href="home.php">Home</a> / About </p>
</div>

<section class="about">

   <div class="flex">

      <div class="image">
         <img src="images/about-img.jpg" alt="">
      </div>

      <div class="content">
         <h3>why choose us?</h3>
         <p>Welcome to our online book system! Our platform is designed to make it easy for you to browse and purchase books from the comfort of your own home.
         </p>
         <p>At our core, we are a team of book lovers who are passionate about making the world of literature more accessible to everyone. We believe that reading is one of the most                          enriching experiences a person can have, and our goal is to help people discover new books and authors that they will love.</p>
<p>Our platform is designed to make it easy for you to find the books you are looking for. With our user-friendly search and navigation tools, you can quickly and easily browse our extensive selection of books, from classic literature to the latest bestsellers.</p>
<p>We are committed to providing our customers with exceptional service. Our team is always available to answer any questions you may have and help you find the books you are looking for. We also offer fast and reliable shipping, so you can start enjoying your new books as soon as possible.
</p>
<p>Thank you for choosing our online book system for your literary needs. We hope that you enjoy browsing our selection of books and find your next favorite read!</p>

         <a href="contact.php" class="btn">contact us</a>
      </div>

   </div>

</section> 

<section class="authors">

   <h1 class="title">GRATE AUTHORS</h1>

   <div class="box-container">

   <div class="box">
         <img src="images/r-k-narayan.jpg" alt="">

         <h3>R.K.NARAYAN</h3>
<p>R.K. Narayan was an Indian author, best known for his works that depict the everyday life of ordinary people in small-town India, including "Swami and Friends" and "The Guide".</p>
      </div>

      <div class="box">
         <img src="images/khushwant-singh.jpeg" alt="">

         <h3>KHUSHWANT SINGH</h3>
<p>Khushwant Singh was an Indian author, journalist, and historian, known for his works that explore Indian history, politics, and culture, including "Train to Pakistan" and "The History of the Sikhs".</p>
      </div>

      <div class="box">
         <img src="images/Ruskin-Bond.jpg" alt="">
         <h3>RUSKIN BOND</h3>
<p>Ruskin Bond is an Indian author of British descent, known for his works on nature, childhood, and life in the Himalayas, including "The Room on the Roof" and "The Blue Umbrella".</p>

      </div>

      <div class="box">
         <img src="images/Arundhati_Roy_W.jpg" alt="">
         <h3>ARUNDHATI ROY</h3>
        <p>Arundhati Roy is an Indian author, political activist, and recipient of the Man Booker Prize for her novel "The God of Small Things".Arundhati Roy is an Indian author, political activist.</p>
      </div>

      <div class="box">
         <img src="images/Aravind-Adiga-.jpg" alt="">
         <h3>ARAVIND ADIGA</h3>
<p>Aravind Adiga is an Indian author and journalist, known for his Man Booker Prize-winning novel "The White Tiger" and other works that explore themes of social inequality and injustice in modern India.</p>

      </div>

      <div class="box">
         <img src="images/Amitav-Ghosh.jpg" alt="">
         <h3>AMITAV GHOSH</h3>
	<p> Amitav Ghosh is an Indian author and essayist, known for his works that explore themes of migration, colonialism, and the environment, including "The Ibis Trilogy" and "The Great Derangement".</p>

      </div>

   </div>

</section>









<?php include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>