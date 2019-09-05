var output = document.querySelector("#output");
var table = new Array(101);
var limiter = 50;
var midpoint_countdown = 100;
for (let index = 0; index < limiter; index++) {
    table[index] = index + 1;
    output.innerHTML += "<b>index: </b>" + index + ", <b>value:</b> " + table[index] + "<br>";
}
for (let index = limiter + 1; index < table.length; index++) {
    table[index] = midpoint_countdown;
    midpoint_countdown -= 1;
    output.innerHTML += "<b>index: </b>" + index + ", <b>value:</b> " + table[index] + "<br>";
}
