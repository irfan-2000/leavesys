<?php
require_once ("../../include/initialize.php");
	  if (!isset($_SESSION['EMPID'])){
      redirect(web_root."/index.php");
     }

$action = (isset($_GET['action']) && $_GET['action'] != '') ? $_GET['action'] : '';

switch ($action) {
	case 'add' :
	doInsert();
	break;
	
	case 'edit' :
	doEdit();
	break;
	
	case 'delete' :
	doDelete();
	break;


	case 'photos' :
	doupdateimage();
	break;

 
	}
   
	function doInsert(){
	
	if (isset($_POST['save']) ) {
	
		

		$College = new College();
		$COLLEGE= $_POST['name'];
	
	

				$College->COLLEGE     = $COLLEGE;
				
				 $istrue = $College->create(); 
				 if ($istrue == 1){
				 	message("New College [". $COLLEGE ."] has beem created successfully!", "success");
				 	redirect('index.php');
				 	
				 }

		}

	}

	function doEdit(){
		if(isset($_POST['save'])){

			$College = new College();
			$College->COLLEGE    = $_POST['name'];
			$College->update($_POST['COLLID']);

			message("[". $_POST['name'] ."] has been updated!", "success");
			redirect("index.php");
		}
	}

function doDelete(){
		if(isset($_GET['id'])){

			$College = new College();
			$College->delete($_GET['id']);

			message("College has been deleted!", "success");
			redirect("index.php");
		}
	}


	
 
?>