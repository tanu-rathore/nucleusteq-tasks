
function handleFormSubmission(event) {
    
    event.preventDefault();

    
    var username = document.getElementById("Uname").value;
    var password = document.getElementById("Pswd").value;

    
    // Username validation
     if (username.length < 4) {
        alert("Username must have at least 4 characters");
        return;
    }

    // Password validation
    var passwordRegex = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
    if (!passwordRegex.test(password)) {
        alert("Password must contain at least 8 characters including one alphabet, one number, and one special character (@$!%*?&)");
        return;
    }

    console.log("Username: " + username);
    console.log("Password: " + password);
}


document.addEventListener("DOMContentLoaded", function() {
    
    var form = document.getElementById("loginForm");

    
    form.addEventListener("submit", handleFormSubmission);
});
