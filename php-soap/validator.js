validateForm = () => {
    var a = document.forms["form"]["employee_name"].value;
    var b = document.forms["form"]["office_id"].value;
    if ((a == null || a == "") && (b == null || b == "")) {
        alert("Please fill at least one field");
        return false;
    }
}