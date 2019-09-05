var output = document.querySelector("#output");
var arr = ["Banan",, "Kiwi",, "Winogrono"];
arr[1] = "Gruszka";
for (const object in arr) {
    output.innerHTML += arr[object] + "<br/>";
}