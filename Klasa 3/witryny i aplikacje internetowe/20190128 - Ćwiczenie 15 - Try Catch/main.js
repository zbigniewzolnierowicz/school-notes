function errorGenerator() {
  var rok = prompt("Podaj rok");
  var output = document.querySelector("#output");
  var message;
  try {
    if (rok > 2018 || rok < 1970 || isNaN(rok)) {
      throw("Nieprawidłowy rok!");
    } else {
      message = rok;
    }
  } catch (err) {
    message = "Wystąpił błąd! " + err;
  } finally {
    output.innerHTML = message;
  }
}
function image() {
  alert("!!!!!");
}
