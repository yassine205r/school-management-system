<?php include('shared/_header.php');?>
<head>
  <style>
  .underline-mint {
    display: inline-block;
    position: relative;
    padding-bottom: 0.8rem;        
    transition: color 0.3s ease;   
  }
  .underline-mint::after {
    content: "";
    position: absolute;
    bottom: 0;
    left: 50%;
    width: 50%;                     
    height: 4px;                   
    background-color: #AFEED0;      
    transform: translateX(-50%);
    transition: width 0.3s ease;    
  }
  .underline-mint:hover::after {
    width: 100%;                    
  }
</style>
</head>
<body>
    <main>
        <div class="big-wrapper light">
            <img src="./images/shape.png" alt="" class="shape" />

            
     <?php include('shared/_navbar.php'); ?>



            <div class="split-container ">
        
        <div class="split-text">
                    <h3><span class="text-primary icon-hover"><i class="fa-solid fa-code"></i></span><strong> Formation  </strong></h3>
<p>
                             <br>At <strong>GENERATION NT</strong>, our two-year, four-semester Technical Professional Diploma equips you with the hands-on skills the industry demands. You’ll engage in a blend of:
      <br><br>
<span class="text-primary icon-hover"><i class="bx  bx-code"></i></span><strong>
Lectures & Tutorials – Core theory delivered by expert instructors</strong>
<br><br>
<span class="text-primary icon-hover"><i class="bx  bx-code"></i></span><strong>
Practical Labs & Workshops – Real-world exercises using modern tools and technologies</strong>
<br><br><span class="text-primary icon-hover"><i class="bx  bx-code"></i></span><strong>
Team Challenges & Mini-Projects – Company-style simulations to build collaboration and creativity</strong>
<br><br><span class="text-primary icon-hover"><i class="bx  bx-code"></i></span><strong>
Capstone Project & Internship – A final project plus on-site industry placement to launch your career</strong>
<br><br>
Attendance is mandatory, and continuous assessment ensures you stay on track every step of the way.
After a common first year, you’ll choose your specialization in areas like Full-Stack Web, AI & Data Science, Cybersecurity, Game Development, or 3D Design.
<br>
We also offer continuing education courses—for upskilling, deep dives, or professional certifications—and partner on professional bachelor’s programs to support lifelong learning.</p>
                </div>
                <div class="split-image">
          <img src="./Generation Nt/3.jpg" alt="Student with backpack">
        </div>
 </div>
 

 <div class="text-center my-5">
  <h3 class="card-title underline-mint">
    <span class="text-primary icon-hover">
    </span><br><br>
    <strong>Classes </strong>
  </h3>
</div>
  <?php include('shared/formation-card.php'); ?>

<div class="container mt-3">
        <hr>
      </div>

      <div class="container mt-3 carousel-box">

        <div id="carouselExample" class="carousel slide">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="Generation Nt/9.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="Generation Nt/9.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="Generation Nt/9.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="Generation Nt/9.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="Generation Nt/9.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="Generation Nt/9.jpg" class="d-block w-100" alt="...">
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
            <i class="fa-solid fa-left-long"></i>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
            <i class="fa-solid fa-right-long"></i>
            <span class="visually-hidden">Next</span>
          </button>
        </div>

      </div>
        </div>


    </main>




  
    <?php include('shared/_footer.php'); ?>