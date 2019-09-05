function spr() {
  var pass = document.f.p.value;
  var regex = /^[A-Z]{1}\w{4}@[A-Z]{1}$/;
  if (regex.test(pass)) {
    document.getElementById("xyz").innerHTML = pass;
  } else {
    alert("Błędne hasło");
  }
}
function phone() {
  var pass = document.f.p.value;
  var regex = /^\(\+48\) \d{2} \d{3} \d{2} \d{2}$/;
  if (regex.test(pass)) {
    document.getElementById("xyz").innerHTML = pass;
  } else {
    alert("Błędny numer");
  }
}

function town() {
  var nick = document.form.nick.value;
  var age = document.form.age.value;
  var city = document.form.city.value;
  var regex = /^Poznań|Pn|P-ń$/;
  if (age >= 18) {
    document.getElementById("xyz").innerHTML = "<p>" + age + "</p>";
  } else {
    alert("Za młody!");
  }
  if (regex.test(city)) {
    document.getElementById("xyz").innerHTML = "<p>" + city + "</p>";
  } else {
    alert("Błędny numer");
  }
}
