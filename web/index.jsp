<%-- 
    Document   : index
    Created on : 26 Feb, 2023, 10:36:38 AM
    Author     : ashug
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Rural Helper</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet">
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center justify-content-lg-between">

      <h1 class="logo me-auto me-lg-0"><a href="index.html">RH</a></h1>
      <a href="AdminLogin.html" class="get-started-btn scrollto">Admin Login</a>

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center justify-content-center">
    <div class="container" data-aos="fade-up">

      <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="150">
        <div class="col-xl-6 col-lg-8">
          <h1>Rural Helper</h1>
          <h2>We are team to provide source of employment</h2>
        </div>
      </div>

 
    </div>
  </section>

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
            <img src="assets/img/about.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content" data-aos="fade-right" data-aos-delay="100">
            <h3>About Us</h3>
            <p class="fst-italic">
              Rural Development is an organization dedicated to improving the lives of rural communities.We provide resources and support 
              that help boost economic development, bridge gaps in education and health services, and empower the people of rural regions.
              Our focus is on improving the quality of life for everyone in our rural communities.
            </p>
            
          </div>
        </div>

      </div>
    </section>
    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Services</h2>
          <p>Check our Services</p>
        </div>

        <div class="row">
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bi bi-bus-front"></i></div>
              <h4><a href="">Transportation</a></h4>
              <p>Door-to-door transportation. Anywhere, anytime. Safe and reliable.</p>
              <table style="width: 100%;">
                <tr>
                  <td><a href="TransOwner.html"><button>Owner</button></a></td>
                  <td><a href="TransUser.html"><button>User</button></a></td>
                </tr>
              </table>
            </div>
            
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="zoom-in" data-aos-delay="200">
            <div class="icon-box">
              <div class="icon"><i class="bi bi-book"></i></div>
              <h4><a href="">Education</a></h4>
              <p>Learn, explore, and grow with our educational services.</p>
              <table style="width: 100%;">
                <tr>
                  <td><a href="EduTeacher.html"><button>Teacher</button></a></td>
                  <td><a href="EduStudent.html"><button>Student</button></a></td>
                </tr>
              </table>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-world"></i></div>
              <h4><a href="">Agriculture Machinery</a></h4>
              <p>High-quality agricultural machineries servicing for best farming performance.</p>
              <table style="width: 100%;">
                <tr>
                    <td><a href="AgricultureMachineryOwner.html"><button>Owner</button></a></td>
                    <td><a href="AgricultureMachineryUser.html"><button>User</button></a></td>
                </tr>
              </table>
            </div>
          </div>

            </div>

      </div>
    </section>
      <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Contact</h2>
          <p>Contact Us</p>
        </div>

         <div id="Con" class="col-lg-8 mt-5 mt-lg-0">

            <form  action="ContactUsChecker" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="text" class="form-control" name="contactno" id="email" placeholder="Your Contact" required>
                </div>
              </div>
              <div class="form-group mt-3">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
              </div>
              <div class="form-group mt-3">
                <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
              </div>
              <div class="my-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
                <div class="text-center"><input type="submit" value="Send Message"></div>
            </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

   
  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

   
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

   
  <script src="assets/js/main.js"></script>

</body>

</html>