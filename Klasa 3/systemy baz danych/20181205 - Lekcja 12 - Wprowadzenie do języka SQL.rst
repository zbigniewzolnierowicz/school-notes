######################################
Lekcja 12 - Wprowadzenie do języka SQL
######################################

**SQL** - strukturalny język zapytańi _(ang. Structured Query Language)_. Jest to język nieproceduralny delaratywny przeznaczony do definiowania, wyszukiwania i administrowania danymi w relacyjnej bazie danych. Jest oparty na algebrze relacji.

język deklaratywny
  programista definiuje warunki, jakie musi spełniać końcowe rozwiązanie *(co chcemy osiągnąć)*, a nie szczegółową sekwencję kroków, które do niego prowadzą *(jak to zrobić)*.

Historia
--------

Rozwój relacyjnych baz danych, który miał miejsce w latach 70-tych ubiegłego wieku uwarunkował konieczność opracowania języka do manipulacji, wyciągania i obsługi danych w bazach.
Pierwszym oficjalnym językiem relacyjnych baz danych był SEQUEL *(Structured English Query Language)*, opracowany przez pracowników firmy IBM (Raymond F. Boyce oraz Donald Chanberline).
SEQUEL to język służący odpotywaniu baz. Założenia:

- łatwość tworzenia zapytań
- łatwość operacji na zbiorach za pomocą słów kluczowych w języku angielskim.

Język miał być prosty i intuicyjny.

Nazwa ewoluowała - SEQUEL został skrócony do znanej obecnie formy czyli SQL. Najważniejszymi systemami RDBMS *(Relational DataBase Management System)*, w których podstawowym językiem jest SQL jest oczywiście MS SQL Server, Oracle, DB2, MySQL, PostgreSQL.

Podział SQL
-----------

- DDL - język definiowania danych *(ang. Data Definition Language)* - służy do definiowania danych
  - `CREATE TABLE`
  - `ALTER VIEW`
  - `DROP`
- DML - język modyfikowania danych *(ang. Data Modification Language)* - służy do wypełniania, modyfikacji i usuwania danych.
  - `UPDATE`
  - `INSERT`
  - `DELETE`
- DCL - język kontrolowania danych *(ang. Data Control Language)*
  - `GRANT`
  - `REVOKE`
- DQL - język zapytań *(ang. Data Query Language)*
  - `SELECT`
- TCL - język sterowania przepływem danych *(ang. Transaction Control Language)*
  - `COMMIT`
  - `ROLLBACK`
