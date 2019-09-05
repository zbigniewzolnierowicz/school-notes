<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Portal ogłoszeniowy</title>
</head>

<body>
    <header>
        <h1>Portal Ogłoszeniowy</h1>
    </header>
    <main>
        <aside>
            <h2>Kategorie ogłoszeń</h2>
            <ol>
                <li>Książki</li>
                <li>Muzyka</li>
                <li>Filmy</li>
            </ol>
            <img src="https://images.unsplash.com/photo-1481627834876-b7833e8f5570" alt="Książki">
            <table>
                <thead>
                    <th>Liczba ogłoszeń</th>
                    <th>Cena ogłoszenia</th>
                    <th>Bonus</th>
                </thead>
                <tbody>
                    <tr>
                        <td>1 - 10</td>
                        <td>1 PLN</td>
                        <td rowspan="3">Subskrypcja newslettera to upust 0,20 PLN na ogłoszenie</td>
                    </tr>
                    <tr>
                        <td>11-50</td>
                        <td>0,80 PLN</td>
                    </tr>
                    <tr>
                        <td>51 i więcej</td>
                        <td>0,60 PLN</td>
                    </tr>
                </tbody>
            </table>
        </aside>
        <article>
            <h2>Ogłoszenia kategorii książki</h2>
            <?php
                echo "Connected.";
            ?>
        </article>
    </main>
    <footer></footer>
</body>

</html>