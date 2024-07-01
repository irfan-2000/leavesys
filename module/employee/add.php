<?php 
  if (!isset($_SESSION['EMPID'])){
    redirect(web_root."admin/index.php");
   }


 ?> 
  <div class="container">
    <div class="card card-register mx-auto mt-2">
      <div class="card-header">Add new Employee</div>
      <div class="card-body">   
 <form action="controller.php?action=add" method="POST">

                  <div class="form-group">
                    <div class="form-row">
                        <div class="col-md">
                      <label for="employid">Employee ID:</label>

                        <input name="deptid" type="hidden" value="">
                         <input class="form-control input-sm" id="employid" name="employid" placeholder=
                            "Employee ID" type="text" required>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="form-row">
                        <div class="col-md">
                      <label for="name">Name:</label>

                        <input name="deptid" type="hidden" value="">
                         <input class="form-control input-sm" id="name" name="name" placeholder=
                            "Account Name" type="text" required>
                      </div>
                    </div>
                  </div>
                     <div class="form-group">
                    <div class="form-row">
                        <div class="col-md">
                      <label for="sex">Gender:</label>

                       <select class="form-control input-sm" name="sex" id="sex">
                          <option value="MALE">MALE</option>
                          <option value="FEMALE">FEMALE</option>
                         
                        </select> 
                      </div>
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="form-row">
                        <div class="col-md">
                      <label for="username">Email/Username:</label>

                        <input name="deptid" type="hidden" value="">
                         <input class="form-control input-sm" id="username" name="username" placeholder=
                            "Email Address" type="text" required>
                      </div>
                    </div>
                  </div>
                     <div class="form-group">
                    <div class="form-row">
                        <div class="col-md">
                      <label for="college">College:</label>

                       <select class="form-control input-sm" name="college" id="college">
                         <?php 
             
                      global $mydb;
                      $mydb->setQuery("SELECT COLLEGE FROM `tblcollege`");
                      $cur = $mydb->loadResultList();
                      $output .= '<option value="">Select College</option>';
                      foreach ($cur as $prov) {
                           $output .= '<option value="'. $prov->COLLEGE.'">'.$prov->COLLEGE.'</option>';
                        }
                        echo $output;
                      ?>
                  
                  </select>
                       
                        </select> 
                      </div>
                    </div>
                  </div>
                      <div class="form-group">
                    <div class="form-row">
                        <div class="col-md">
                      <label for="department">Department:</label>

                       <select class="form-control input-sm" name="department" id="department">
                        
                         <?php 
             
                      global $mydb;
                      $mydb->setQuery("SELECT DEPTNAME FROM `tbldepts`");
                      $cur = $mydb->loadResultList();
                      $outputs .= '<option value="">Select Department</option>';
                      foreach ($cur as $prov) {
                           $outputs .= '<option value="'. $prov->DEPTNAME.'">'.$prov->DEPTNAME.'</option>';
                        }
                        echo $outputs;
                      ?>
                    
                        </select> 
                      </div>
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="form-row">
                        <div class="col-md">
                      <label  for="pass">Password:</label>

                        <input name="deptid" type="hidden" value="">
                         <input class="form-control input-sm" id="pass" name="pass" placeholder=
                            "Account Password" type="Password" required>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="form-row">
                        <div class="col-md">
                      <label for="type">Type:</label>

                       <select class="form-control input-sm" name="type" id="type">
                          <option value="Administrator">Administrator</option>
                          <option value="Normal user">Normal user</option>
                        </select> 
                      </div>
                    </div>
                  </div>

            
            <button class="btn btn-primary btn-block" name="save" type="submit" ><span class="glyphicon glyphicon-floppy-save"></span> Save User</button>



          
        </form>
                   
      </div>
    </div>
  </div>
 