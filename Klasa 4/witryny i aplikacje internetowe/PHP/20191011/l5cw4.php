<?php
    $przedmioty = array('historia i społeczeństwo', 'informatyka', 'język angielski', 'język polski', 'systemy baz danych', 'matematyka', 'witryny i aplikacje internetowe');
    echo "<h1>Sposób 1 - <code>print_r()</code></h1>";
    echo "<code>";
    print_r($przedmioty);
    echo "</code>";
    echo "<h1>Sposób 2 - pętla <code>for</code></h1>";
    echo "<ul>";
    for ($i=0; $i < sizeof($przedmioty); $i++) { 
        echo "<li>", $przedmioty[$i], "</li>";
    }
    echo "</ul>";
    echo "<h1>Sposób 3 - pętla <code>foreach</code></h1>";
    echo "<ul>";    
    foreach ($przedmioty as $key => $value) {
        echo "<li>", $value, "</li>";
    }
    echo "</ul>";
?>