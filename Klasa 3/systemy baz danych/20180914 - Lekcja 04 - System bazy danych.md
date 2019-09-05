# Lekcja 4 - System bazy danych

## Główne elementy

- dane
- sprzęt
- oprogramowanie
- użytkownicy

## Architektura systemu baz danych

Interakcja programu użytkownika (aplikacji) z bazą danych odbywa się za pomocą języka SQL.
Użytkownik komunikuje się z bazą danych za pomocą aplikacji, a aplikacja komunikuje się z bazą danych za pomocą poleceń SQL.

Stosujemy dwa sposoby komunikacji z bazą danych:

### Architektura klient-serwer

W architekturze klient-serwer serwer pełni rolę DBMS, natomiast klientami mogą być aplikacje poziomu zewnętrznego.

| Klient | Serwer |
|--------|--------|
| Obsługuje interfejs użytkownika | Akceptuje i przetwarza żądania do bazy danych od klientów |
| Akceptuje wprowadzane dane i spawdza ich poprawność składniową | Sprawdza uprawnienia |
| Obsługuje sterowanie w aplikacji | Zapewnia nienaruszalność więzów integralności |
| Tworzy żądanie do bazy danych i przesyła je do serwera | Realizuje przetwarzanie zapytań/aktualizacji i przekazuje odpowiedzi klientom |
| Przekazuje odpowiedź z powrotem do użytkownika | Konserwuje katalog systemowy |
| | Obsługuje współbieżny dostęp |
| | Realizuje odzyskiwanie danych po awarii |

#### Architektura klient-serwer rozproszona

W architekturze klient-serwer rozproszonej każda maszyna może przechowywać dane i być serwerem dla jednych klientów, natomiast klientem dla innych. Każda maszyna wspiera cały SZBD.

### Architektura 3-warstwowa

Każdy użytkownik nie ma dostępu bezpośrednio do aplikacji, ale przez stronę internetową ma dostęp do serwera aplikacji, ten z kolei do SZBD, a ten do bazy danych.