function getField() {
  var form = document.querySelector('form');
  var height = parseInt(form.height.value);
  var width = parseInt(form.width.value);
  var output = document.querySelector("#output");
  if (!Number.isInteger(height) || !Number.isInteger(width)){
    output.innerHTML = "Wysokość lub szerokość nie jest liczbą";
  }
  else if (height <= 0 || width <= 0) {
    output.innerHTML = "Wysokość lub szerokość mniejsza lub równa zero";
  } else {
    var result = height * width;
    output.innerHTML = "Pole: " + result ;
  }
}
