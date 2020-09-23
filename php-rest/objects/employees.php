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

	function readSingle()
	{
		$query = "SELECT * FROM " . $this->table_name . " WHERE employeeNumber = :employeeNumber";
		$stmt = $this->conn->prepare($query);
		$stmt->bindParam(':employeeNumber', $_GET["id"]);
		$stmt->execute();
		$num = $stmt->rowCount();

		if ($num > 0) {
			$row = $stmt->fetch(PDO::FETCH_ASSOC);
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
			http_response_code(200);
			return json_encode($employee_item);
		} else {
			http_response_code(404);
			return json_encode(
				array("error" => "No employees found or invalid employee id.")
			);
		}
	}

	function create()
	{
		$body = json_decode(file_get_contents("php://input"), true);
		$email = $body["email"];
		$employeeNumber = $body["employeeNumber"];
		$extension = $body["extension"];
		$firstName = $body["firstName"];
		$jobTitle = $body["jobTitle"];
		$lastName = $body["lastName"];
		$officeCode = $body["officeCode"];
		$reportsTo = $body["reportsTo"];

		if (
			!empty($email) &&
			!empty($employeeNumber) &&
			!empty($extension) &&
			!empty($firstName) &&
			!empty($jobTitle) &&
			!empty($lastName) &&
			!empty($officeCode)
		) {

			$query = 'INSERT INTO ' . $this->table_name . '
				SET
				email = :email,
				employeeNumber = :employeeNumber,
				extension = :extension,
				firstName = :firstName,
				jobTitle = :jobTitle,
				lastName = :lastName,
				officeCode = :officeCode,
				reportsTo = :reportsTo';

			$stmt = $this->conn->prepare($query);

			$stmt->bindParam(':email', $email);
			$stmt->bindParam(':employeeNumber', $employeeNumber);
			$stmt->bindParam(':extension', $extension);
			$stmt->bindParam(':firstName', $firstName);
			$stmt->bindParam(':jobTitle', $jobTitle);
			$stmt->bindParam(':lastName', $lastName);
			$stmt->bindParam(':officeCode', $officeCode);
			$stmt->bindParam(':reportsTo', $reportsTo);

			try {
				$stmt->execute();
				http_response_code(201);
				return json_encode(array("message" => "Employee was created."));
			} catch (Exception $e) {
				var_dump($e);
				http_response_code(503);
				return json_encode(array("error" => "Unable to create an employee."));
			}
		} else {
			http_response_code(400);
			return json_encode(array("error" => "Unable to create an employee. Data is missing."));
		}
	}

	function update()
	{
		$body = json_decode(file_get_contents("php://input"), true);
		$email = $body["email"];
		$employeeNumber = $body["employeeNumber"];
		$extension = $body["extension"];
		$firstName = $body["firstName"];
		$jobTitle = $body["jobTitle"];
		$lastName = $body["lastName"];
		$officeCode = $body["officeCode"];
		$reportsTo = $body["reportsTo"];

		if (!empty($employeeNumber)) {

			$query = 'UPDATE ' . $this->table_name . '
				SET
				email = :email,
				extension = :extension,
				firstName = :firstName,
				jobTitle = :jobTitle,
				lastName = :lastName,
				officeCode = :officeCode,
				reportsTo = :reportsTo
				WHERE
				employeeNumber = :employeeNumber';

			$stmt = $this->conn->prepare($query);

			$stmt->bindParam(':email', $email);
			$stmt->bindParam(':employeeNumber', $employeeNumber);
			$stmt->bindParam(':extension', $extension);
			$stmt->bindParam(':firstName', $firstName);
			$stmt->bindParam(':jobTitle', $jobTitle);
			$stmt->bindParam(':lastName', $lastName);
			$stmt->bindParam(':officeCode', $officeCode);
			$stmt->bindParam(':reportsTo', $reportsTo);

			try {
				$stmt->execute();
				http_response_code(201);
				return json_encode(array("message" => "Employee was updated."));
			} catch (Exception $e) {
				var_dump($e);
				http_response_code(503);
				return json_encode(array("message" => "Unable to update employee"));
			}
		} else {
			http_response_code(400);
			return json_encode(array("message" => "Unable to update employee. Data is missing."));
		}
	}

	function delete()
	{
		if (!empty($_GET["id"])) {
			$query = 'DELETE FROM ' . $this->table_name . ' WHERE employeeNumber = :employeeNumber';

			$stmt = $this->conn->prepare($query);

			$stmt->bindParam(':employeeNumber', $_GET["id"]);

			try {
				$stmt->execute();
				http_response_code(200);
				return json_encode(array("message" => "Employee was deleted."));
			} catch (Exception $e) {
				var_dump($e);
				http_response_code(503);
				return json_encode(array("error" => "Unable to delete employee."));
			}
		} else {
			http_response_code(400);
			return json_encode(
				array("error" => "Employee doesn't exist or the ID is invalid.")
			);
		}
	}
}