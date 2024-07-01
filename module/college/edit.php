<?php  
      if (!isset($_SESSION['EMPID'])){
      redirect(web_root."/index.php");
     }

  @$cID = $_GET['id'];
   $College = New  College();
  $c = $College->single_College($cID);

?> 
<div class="container">
    <div class="card card-register mx-auto mt-2">
      <div class="card-header">Update College</div>
      <div class="card-body"> 
 <form  action="controller.php?action=edit" method="POST">

                 
            <div class="form-group">
                    <div class="form-row">
                        <div class="col-md">
                      <label for="name">College Name:</label>
                        <input name="COLLID" type="hidden" value="<?php echo $c->COLLID; ?>">
                         <input class="form-control input-sm" id="name" name="name" placeholder=
                            "COLLEGE Name" type="text" value="<?php echo $c->COLLEGE; ?>" required>
                      </div>
                    </div>
                  </div>
                    
            <button class="btn btn-primary btn-block" name="save" type="submit" ><span class="glyphicon glyphicon-floppy-save"></span> Save College</button>

   
          
        </form>
      

      </div>
    </div>
  </div>
 