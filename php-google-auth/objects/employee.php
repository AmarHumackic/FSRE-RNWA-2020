<?php
class Employee
{
	private $conn;
	private $table_name = "employees";

	public $email;
	public $employeeNumber;
	public $extension;
	public $firstName;
	public $jobTitle;
	public $lastName;
	public $officeCode;
	public $reportsTo;

	public function __construct($db)
	{
		$this->conn = $db;
	}

	function read()
	{
		if (!empty($_GET["id"])) {
			return $this->readSingle();
		} else {
			return $this->readAll();
		}
	}

	function readAll()
	{
		$query = "SELECT * FROM " . $this->table_name;
		$stmt = $this->conn->prepare($query);
		$stmt->execute();
		$num = $stmt->rowCount();

		if ($num > 0) {
			$employees_arr = array();
			while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
				extract($row);
				$employee_item = array(
					"email" => $email,
					"employeeNumber" => $employeeNumber,
					"extension" => $extension,
					"firstName" => $firstName,
					"jobTitle" => $jobTitle,
					"lastName" => $lastName,
					"officeCode" => $officeCode,
					"reportsTo" => $reportsTo,
				);
				array_push($employees_arr, $employee_item);
			}
			http_response_code(200);
			return json_encode($employees_arr);
		} else {
			http_response_code(404);
			return json_encode(
				array("error" => "No employees found.")
			);
		}
	}
}