function getIntegers() {
  var bottomOfRange = prompt("Podaj dolną granicę: ");
  var topOfRange = prompt("Podaj górną granicę: ");
  if (!Number.isInteger(bottomOfRange) || !Number.isInteger(bottomOfRange)) {
    alert("Podaj dwie liczby całkowite");
  }
  var output = document.querySelector("#output");
  output.innerHTML = "Liczby: ";
  if (bottomOfRange > topOfRange) {
    for (var i = topOfRange; i <= bottomOfRange; i++) {
      output.innerHTML += i + ", ";
    }
  } else if (topOfRange > bottomOfRange) {
    for (var i = bottomOfRange; i <= topOfRange; i++) {
      output.innerHTML += i + ", ";
    }
  }
}
