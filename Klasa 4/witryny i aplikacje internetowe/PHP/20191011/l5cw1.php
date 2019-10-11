<?php
    $a = 3;
    $b = 1;
    $c = -5;
    $delta = ($b * $b) - 4 * $a * $c;
    $wynik = array();
    if ($delta > 0) {
        array_push($wynik, (-$b + sqrt($delta))/(2 * $a));
        array_push($wynik, (-$b - sqrt($delta))/(2 * $a));
    } else if ($delta == 0) {
        array_push($wynik, (-$b)/(2 * $a));
    }
    echo <<< EOD
        <p>a = $a</p>
        <p>b = $b</p>
        <p>c = $c</p>
        <p>delta = $delta</p>
    EOD;
    if (sizeof($wynik) > 0) {
        foreach ($wynik as $index => $value) {
            $actual = $index + 1;
            echo "<p>Wynik $actual: $value</p>";
        }
    } else {
        echo "<p>Brak wyników</p>";
    }
?>