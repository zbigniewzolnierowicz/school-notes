function ruchomy_napis() {
  var napis_ob = document.getElementById("napis");
  if (parseInt(napis_ob.style.left)<=-220) napis_ob.style.left='900px';
  else
    napis_ob.style.left=parseInt(napis_ob.style.left)-1+'px';
}

function spadajacy_napis() {
  var napis_ob = document.getElementById("heading");
  if (parseInt(napis_ob.style.top)>=200) napis_ob.style.top='-100px';
  else
    napis_ob.style.top=parseInt(napis_ob.style.top)+1+'px';
}
function getMinimum(divs) {
  var inputArray = document.getElementById("form").querySelectorAll('input[type="text"]');
  var min = parseInt(inputArray[0].value);
  var output = document.querySelector("#output");
  for (var i = 1, len = inputArray.length; i < len; i++) {
    var integerValue = parseInt(inputArray[i].value);
    if (isNaN(integerValue) == true) {
      output.innerHTML = "Wprowadź poprawną liczbę.";
      break;
    }
    if (integerValue < min) {
      min = integerValue;
      output.innerHTML = "Najmniejsza liczba to " + min;
    } else {
      continue;
    }
  }
}


window.setInterval('ruchomy_napis()', 30);
window.setInterval('spadajacy_napis()', 30);
