# Lekcja 8 - Metody projektowania baz dancych

## Metoda od dołu do góry (wstępująca, bottom-up)

- czyli od pojęć elementarnych do ogółu. Metoda ta nadaje się do projektowania prostych baz dancyh zawierających małą liczbę atrybutów. Taki proces projektowania bazy danych rozpoczyna się od zaidentyfikowania wszystkich atrybutów, a następnie przez analizę

## Etapy projektowania baz danych

### Koncepcyjne projektowanie baz danych

- to proces konstrukcji modelu danych, który jest niezależny od wszelkich aspektów fizycznych (specyficzny model danych, docelowy SZBD, programy użytkowe, język programowania, platforma sprzętowa)

### Logiczne projektowanie baz danych

- to proces konstrukcji modelu, który jest oparty na specyficznym modelu danych (np. model relacyjny, model obiektów) ale niezależny od konkretnego SZBD i innych aspektów fizycznych.

### Fizyczne projektowanie baz danych

- to proces tworzenia opisu implementacji bazy danych w pamięci zewnętrznej. Opis ten zawiera bazowe relacje oraz organizowanie plików

## Projektowanie encji. Pierwszy etap projektowania baz danych. Zanim obiekt stanie się tabelą jest encją

- Zadanniem projektowania baz danych jest odzwierciedlanie obiektów świata rzeczywistego w abstrakcyjne obiekty (encje), które w późniejszym etapie będzie można przekstałcić w tabelę.
- Encja reprezentuje zbiór obiektów opisany tymi samymi cechami (atrybutami, własnościami). Konkretny obiekt świata rzeczywistego jest reprezentowany jako wystąpienie encji (rekord baz danych)
- Jako przykład encji rozważmy następujący mikro-opis fragmentu pewnego świata rzeczywistego: biblioteka. Chcemy przechowywać informacje nt. danych książek: autor, tytuł, rok wydania

| Model         | Koncepcja | Logiczne | Fizyczne |
| ------------- | --------- | -------- | -------- |
| Nazwa encji   | Tak       | Tak      |          |
| Związek encji | Tak       | Tak      |          |
| Atrybuty      |           | Tak      | Tak      |
| Klucze główne |           | Tak      | Tak      |
| Klucze obce   |           | Tak      | Tak      |
| Nazwy tabel   |           |          | Tak      |
| Nazwy kolumn  |           |          | Tak      |
| Typ danych    |           |          | Tak      |