<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>L5CW5</title>
</head>
<body>
    <?php
        $partie = array(
            'PO' => 0.01,
            'Lewica' => 0.98,
            'PiS' => 0.01
        );
        echo "<h1>Sposób 1 - <code>print_r()</code></h1>";
        echo "<code>";
        print_r($partie);
        echo "</code>";
        echo "<h1>Sposób 2 - pętla <code>foreach</code></h1>";
        echo "<ul>";    
        foreach ($partie as $key => $value) {
            $actual = $value * 100;
            $actual = (string)$actual . '%';
            echo "<li>Wsparcie dla $key: $actual</li>";
        }
        echo "</ul>";
    ?>
</body>
</html>