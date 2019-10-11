<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
    </style>
</head>
<body>
    <?php
        $x = 0;
        $y = 1;
    ?>
    <table>
    <?php
        echo "<thead>";
        while ($x <= 10) {
            echo <<< EOD
                <th>$x</th>
            EOD;
            $x += 1;
        }
        echo "</thead>";
        $x = 1;
        while ($y <= 10) {
            $x = 1;
            echo "<tr><td>$y</td>";
            while ($x <= 10) {
                echo "<td>", $y * $x, "</td>";
                $x += 1;
            }
            echo "</tr>";
            $y += 1;
        }
    ?>
    </table>
</body>
</html>