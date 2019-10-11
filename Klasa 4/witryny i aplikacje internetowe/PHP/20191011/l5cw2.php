<?php
    $i = 5;
?>
<table>
    <tbody>
        <?php
            while($i <= 25) {
                echo "<tr><td>$i</td></tr>";
                $i += 2;
            }
        ?>
    </tbody>
</table>