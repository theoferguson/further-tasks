document.getElementById("leadForm").addEventListener("submit", function (event) {
    event.preventDefault(); // prevent the form from being submitted normally
    let name = document.getElementById("name").value;
    let email = document.getElementById("email").value;
    let phone = document.getElementById("phone").value;

    // send data to Zapier
    fetch("https://hooks.zapier.com/hooks/catch/15847290/3dcpt2h/", {
        method: "POST",
        body: JSON.stringify({
            name: name,
            email: email,
            phone: phone
        })
    });
});