<footer>
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <!-- Insert website logo -->
          <img src="Generation Nt/GNT.jpg" alt="Website Logo">
          <!-- Display visitor count -->
          <p>GENERATION NT</p>
          <!-- Display time zone -->
          <p>6 RUE KENITRA APPT 3 VILLE NOUVELLE MEKNES MAROC </p>
        </div>
        <div class="col-md-4">
          <br>
          <p><strong>Web School</strong></p>
        </div>
        <div class="col-md-4">
          <div class="footer-links">
           
          <p>follow us on</p>
          </div>
          <div class="social-icons">
            <a href="#"><i class="fab fa-facebook-f facebook"></i></a>
            <a href="#"><i class="fa-brands fa-x-twitter twitter"></i></a>
            <a href="#"><i class="fab fa-instagram instagram"></i></a>
            <a href="#"><i class="fab fa-linkedin-in linked-in"></i></a>
          </div>
        </div>
      </div>
      <div class="row mt-4">
        <div class="col-md-12">
          <p>&copy; <?php echo date('Y'); ?> By <strong>Yassine Myara</strong>.</p>
        </div>
      </div>
    </div>
  </footer>



  <script src="https://kit.fontawesome.com/a81368914c.js"></script>
  <script src="js/bootstrap.bundle.js"></script>
  <script src="./shared/app.js"></script>
  

    <script src="../assets/js/logout.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js" type="text/javascript"></script>
    
    <script src="js/bootstrap.bundle.js"></script>
    
    <script src="script.js"></script>
    <script src="./js/oranbyte-google-translator.js"></script>
         
    <script>
     
      function switchToTab(tabId) {
        if (event) {
        event.preventDefault();
      }
    
        var tab = new bootstrap.Tab(document.getElementById(tabId));
        tab.show();
       
      }
    
      
     
      function isTabAvailable(tabId) {
        return document.getElementById(tabId) !== null;
      }
      
      document.addEventListener('DOMContentLoaded', function () {
        var hash = window.location.hash;
        if (hash) {
          var tabId = hash.substring(1);
          if (isTabAvailable(tabId)) {
            switchToTab(tabId);
          } else {
            window.location.href = window.location.href.split('#')[0];
          }
        }
      });
     
    </script>

</body>

</html>
