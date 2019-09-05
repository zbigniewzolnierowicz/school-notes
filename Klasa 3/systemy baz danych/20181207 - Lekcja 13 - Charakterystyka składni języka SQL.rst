##############################################
Lekcja 13 - Charakterystyka składni języka SQL
##############################################

Instrukcja SQL zaczyna się poleceniem (słowem kluczowym) określającym operację, którą zamierzamy wykonać.

Słowami kluczowymi są słowa zastrzeżone, ponieważ mają już przypisane co najniej jedno znaczenie. W związku z tym należy zapoznać się nie tylko ze słowami kluczowymi standardu SQL, lecz także implementacjami tego języka funkcjonującymi w SZBD.

Posłowie kluczowym mogą znaleźc się klauzule (dookreślenia dla słowa kluczowego).


+---------------------------+----------------+
| Instrukcje                | CREATE, SELECT |
+---------------------------+----------------+
| Klauzule                  | WHERE, JOIN    |
+---------------------------+----------------+
| Nazwy typów danych        | INTEGER, CHAR  |
+---------------------------+----------------+
| Nazwy funkcji systemowych | ISNULL, ABS    |
+---------------------------+----------------+

Uwagi
-----

W przypadku słów kluczowych nie jest uwzględniana wielkość liter. Słowo **SELECT** jest traktowane identycznie jak **select** czy **Select**.

Instrukcja SQL może być napisana w dowolnej liczbie wierszy. Ilość spacji pomiędzy poszczególnymi słowami nie ma znaczenia, np.

::

  SELECT * FROM Klienci;

jest traktowana tak samo jak

::

  SELECT *
  FROM Klienci;

Dobrym zwyczajem jest stawianie średnika na końcu poleceń.

Podwójny znak myślnika to komentarz, którego używamy, aby określony wiersz nie był interpretowany.

::

  SELECT
  --pierwszy komentarz
  Imie
  FROM Klienci;

Jeśli chcemy, aby został zignorowany więcej niż jeden wiersz, warto posłużyć się komentarzem, który odnosi się do bloku instrukcji:

::

  /* tu
  znajduje się
  blok instrukcji
  */

W przypadku MySQL przy zastosowaniu podwójnego myślnika konieczne jest wstawienie po drugim myślniku spacji.

W przypadku MySQL można zastosować # w linii, w której ma znaleźc się komentarz.

::

  SELECT
  # pierwszy komentarz
  Imie
  FROM Klienci;

Każda klauzula składa się z terminów - porównywalnych do części mowy.

+---------------+--------------------------------------+-----------------------------+
| Termin SQL    | Definicja                            | Przykład                    |
+===============+======================================+=============================+
| identyfikator | Nazwa identyfikująca obiekt          | Klienci.NumerTelefonu       |
|               | bazy danych, na przykład             |                             |
|               | nazwa pola.                          |                             |
+---------------+--------------------------------------+-----------------------------+
| operator      | Słowo kluczowe reprezentujące        | AS                          |
|               | lub modyfikujące akcję               |                             |
+---------------+--------------------------------------+-----------------------------+
| stała         | Wartość nie ulegająca zmianie,       | 42                          |
|               | na przykład liczba lub wartośc NULL  |                             |
+---------------+--------------------------------------+-----------------------------+
| wyrażenie     | Kombinacja identyfikatorów,          | >= Protukty.CenaJednostkowa |
|               | operatorów, stałych i funkcji, która |                             |
|               | w wyniku daje pojedynczą odpowiedź.  |                             |
+---------------+--------------------------------------+-----------------------------+

W językach programowania często zachodzi potrzeba posługiwania się literałami definiowanymi jako **stałe dosłowne**.

::

  SELECT 'Witaj świecie';

Operator ``+`` (w Oracle ``||``) - pozwala łączyć atrybut z:

- innym atrybutem
- literałem
- wyrażeniem arytmetycznym
- wartością stałą

Na podstwie tej operacji tworzona jest jedna wynikowa kolumna.

+--------------+--------------------------------------------------------------------------------------+-----------------------+
| Klauzula SQL | Działanie                                                                            | Wymagane              |
+==============+======================================================================================+=======================+
| SELECT       | Zwraca listę pól zawierających wskazane dane                                         | Tak                   |
+--------------+--------------------------------------------------------------------------------------+-----------------------+
| FROM         |  Zwraca listę tabel zawierających pola wymienione w SELECT                           | Nie                   |
+--------------+--------------------------------------------------------------------------------------+-----------------------+
| WHERE        | Określa kryteria pól, które musi spełnić rekord, aby został uwzględniony w wynikach. | Nie                   |
+--------------+--------------------------------------------------------------------------------------+-----------------------+
| ORDER BY     | Określa sposób sortowania wyników                                                    | Nie                   |
+--------------+--------------------------------------------------------------------------------------+-----------------------+
| GROUP BY     | W instrukcji SQL zawierającej funkcje agregujące zwraca listę pól, które nie są      | Tylko, jeśli istnieją |
|              |  podsumowywane w klauzuli SELECT.                                                    | takie pola.           |
+--------------+--------------------------------------------------------------------------------------+-----------------------+
| HAVING       | W instrukcji SQL zawierającej funkcje agregujące określa warunki stosowane do pól    | Nie                   |
|              | podsumowywanych w klauzuli SELECT.                                                   |                       |
+--------------+--------------------------------------------------------------------------------------+-----------------------+

::

  SELECT * FROM R;

π zbiór_atrybutów(R)

::

  SELECT *
  FROM R
  WHERE warunek_logiczny;


ο warunek_logiczny (R)

::

  SELECT *
  FROM Uczniowie
  WHERE Imie LIKE 'Jakub';

Instrukcja, która wyświetli wszystkich asystentów i profesorów.

::

  SELECT id_prac, nazwisko, etat
  FROM Pracownicy
  WHERE etat LIKE ['Profesor','Asystent'];

Instrukcja wyświetlająca wszystkie informacje o pracownikach w zespole 10.

::

  SELECT *
  FROM Pracownicy
  WHERE id_zesp = 10;

Numer pracownika, nazwisko i łączne wynagrodzenie pracowników

::

  SELECT id_prac, nazwisko, płaca_pod + płaca_dod AS Płaca
  FROM Pracownicy

Separatory nazw identyfikatorów
-------------------------------

Pola obliczane
--------------

Wybierając dane nie jesteśmy ograniczeni tylko do wyboru kolumn, które znajdują się w tabeli.

::

  SELECT * FROM Employee
  WHERE DepartmentId = 4;

::

  SELECT Id, LEFT(FirstName, 1), LEFT(LastName, 1)
  FROM Employee

::

  SELECT FirstName, LastName, LEFT(FirstName, 3) + LEFT(LastName, 3) + DepartmentId AS "Password"
  FROM Employee;

::

  SELECT FirstName, LastName, Salary * 1.1
  FROM Employee;

::

  SELECT FirstName, SecondName, Salary
  FROM Employee
  WHERE Gender = "W" AND Salary > 2500;

::

  SELECT FirstName, SecondName, Salary + 1000
  FROM Employee
  WHERE DepartmentId != 2 AND Active = 1;

::

  SELECT FirstName, SecondName, Salary - 20 * LEN(SecondName)
  FROM Employee;
