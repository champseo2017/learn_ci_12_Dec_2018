<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="https://www.b-cube.in/wp-content/uploads/2014/05/aditya-300x177.jpg" id="icon" alt="User Icon" />
      <h1>Aditya News</h1>
    </div>

    <!-- Login Form -->
    <?php if($this->session->flashdata('signupSucess')) { ?>
     
     <div class="alert alert-success"><?php echo $this->session->flashdata('signupSucess') ?></div>
        
    <?php } ?>
    <form>
      <input type="text" id="login" class="fadeIn second" name="login" placeholder="username">
      <input type="text" id="password" class="fadeIn third" name="login" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In">
    </form>
    
    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="#">Go to the Site</a>
    </div>

  </div>
</div>