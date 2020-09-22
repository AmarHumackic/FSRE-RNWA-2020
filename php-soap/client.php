<?php

  if (isset($_POST["employee_name"])) {
    $employee_name = $_POST['employee_name'];
	
  if (isset($_POST["office_id"])) {
    $office_id = $_POST['office_id'];
	
  try{
	  ini_set('soap.wsdl_cache_enabled',0);
	  ini_set('soap.wsdl_cache_ttl',0);

		$sClient = new SoapClient('http://localhost/php-soap/employees.wsdl',
				  array('cache_wsdl'=>WSDL_CACHE_NONE,'trace' => 1)
				  );
		$response = $sClient->listEmployees($employee_name, $office_id);
		// var_dump($sClient->__getLastRequest()); // In order to show SOAP req obect, for response _getLastResponse
		$sClient->__getLastRequest();
		
  }catch(SoapFault $e){
    var_dump($e);
    echo $e;
  }
   }
  }
?>
<!DOCTYPE html> 
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <title>classicModels - Employees</title>
</head>
<body>

  <form id="form" action="./client.php" onsubmit="return validateForm()" method="post">
    <div class="formContainer">
      <div>
        <div class="formItemContainer">
          <label>Enter first and/or last name:</label>
          <input type="text" id="employee_name" name="employee_name">
        </div>
        <br />
        <div class="formItemContainer">
          <label>Enter office code:</label>
          <input type="text" id="office_id" name="office_id">
        </div>
      </div>
      <button type="submit">Search</button>
      
      <div class="resultsFor">
        <?php echo "Showing results for $employee_name - $office_id"?>
      </div>

    </div>
  </form>

  <table>
  <tr>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Email</th>
    <th>Job Title</th>
  </tr>
    <?php
      for($j=0;$j<sizeof($response);$j++) {
            echo "<tr>
                  <td><b><i>".$response[$j][0]."</i></b></td>
                  <td><b><i>".$response[$j][1]."</i></b></td>
                  <td><b><i>".$response[$j][2]."</i></b></td>
                  <td><b><i>".$response[$j][3]."</i></b></td>
              </tr>";
      }
      ?>
  </table>

  <div class="footer">
    <p>RNWA - Amar Humačkić</p>
  </div>

  <script src="validator.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  </body>
</html>