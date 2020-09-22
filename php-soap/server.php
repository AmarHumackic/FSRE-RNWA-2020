<?php

if(!extension_loaded("soap")){
  dl("php_soap.dll");
}

ini_set("soap.wsdl_cache_enabled","0");

$server = new SoapServer("employees.wsdl");

function listEmployees($employee_name, $office_id){
  $resultData= array();

  $conn = mysqli_connect("localhost","root","");
  
  if($conn) {
    $result = mysqli_select_db($conn,"classicmodels");
    if(!$result){
      throw new SoapFault("Server","Not connected");
    }
         
	$sql = "SELECT E.firstName, E.lastName, E.email, E.jobTitle 
	FROM `employees` AS E JOIN `offices` AS O ON E.officeCode=O.officeCode 
	WHERE E.officeCode=$office_id AND CONCAT(E.firstName, ' ', E.lastName ) LIKE '%$employee_name%'";
	
    $result2 = mysqli_query($conn, $sql);
    if(!$result2){
      throw new SoapFault("Server","Can not fetch the data");
    }
    
    while($row = mysqli_fetch_array($result2)) {
        $resultData[]=$row;
    }
    
    return $resultData;
    mysqli_close($conn);
  }
  else {
  throw new SoapFault("Server","Not connected");
  }
}

$server->AddFunction("listEmployees");
$server->handle();
?>