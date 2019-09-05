# Lekcja 3 - Korzystanie z usług sieciowych

## Pojęcie usług sieciowych

**Usługa sieciowa** jest to mechanizm udostępniający proces serwera na konkretnym porcie.

Z punktu widzenia użytkownika, sieć komputerowa umożliwia prawidłowe funkcjonowanie aplikacji sieciowych. Każda z aplikacji korzysta z protokołu wymiany danych z inną aplikacją sieciową, zlokalizowaną po stronie zdalnej.

Protokół aplikacji określa sposób wymiany informacji między proceami w odległych hostach, a w szczególności: składnię wiadomości, scenariusze wymiany wiadomości, sposób kodowania, szyfrowania (jeśli wymagane). Jeśli aplikacja nie korzysta z protokołu transportowego TCP, konieczna jest także realizacja sterowania przepływem oraz zapewnienie niezawodności transmisji.

Protokoły aplikacji można podzielić na dwie grupy:

- **protokoły standardowe**, dobrze znane i zestandaryzowane w RFC (Request for Comments)

## Serwis stron WWW

Serwer WWW _(ang. web server)_ - program działający na serwerze, obsługujący żądania protokołu aplikacji HTTP i HTTPS. Z serwerem WWW łączy się poprzez sieć komputerową przeglądarka internetowa, będąca jego klientem, aby pobrać wskazaną stronę WWW.

Protokół http działa domyślnie na porcie 80, a https na porcie 443.

Serwer WWW może też korzystać z usług innego, równolegle działającego oprogramowania (np. PHP, ASP, JSP, PERL, CGI, Ruby, Python i Node JS), udostępniając wynikowe, dynamicznie utworzone strony WWW często wzbogacone danami z bazy danych.

Serwer WWW może pracować w trzech trybach:

- wysyłanie czystych plików HTML, które po przetworzeniu klienta pobierają przez przeglądarkę inne niezbędne pliki wskazane w pliku indeksującym
- przetwarzanie skryptów po stronie serwera. Plik nie jest od razu wysyłany do klienta, tylko jest kompilowany na serwerze i dopiero wysyłany do klienta
- przetwarzane skrypty komunikują się z serwerem baz danych - CMS

## Usługi transferu plików

Protokół **FTP** _(File Transfer Protocol)_ przeznaczony jest do transferu plików między hostami. FTP jest dość nietypowym protokołem, ponieważ używa dwóch dwukierunkowych połączeń TCP do poprawnej realizacji zadania. Połączenie sterujące _(control)_ zawiązywane jest z serwerem FTP na porcie 21, natomiast połączenie do transmisji danych użytkownika _(data)_ uzywa portu zależnego od trybu pracy.

W trybie aktywnym host klienta losuje numer lokalnego, wolnego portu N (z puli tzw. portów wysokich, czyli powyżej 1024).

Pasywny tryb FTP polega na zmianie kierunku komunikacyjnego. Połączenia są otwierane przez klienta. Pierwsze między wysokim a portem 21 serwera. Następnie klient wysyła.

Serwer otwiera port Y zamiast portu 20 i to serwer czeka na inicjacje ze strony klienta do przesyłania plików. strzałki data są na odwrót i zamiast :20 jest :Y (port wysoki). W sumie oba polaczenia są inicjowane przez klienta.

.Przykładowe oprogramowanie serwera FTP:

* FileZilla Server (Windows)
* Pure-FTPd (Unix)
* Vsftpd (Unix)
* ProFTPd (Unix)
* IIS FTP Server (Windows)
* CrushFTP (Mac, Windows, Linux)
* Rumpus (Mac)
* WingFTP (Mac, Windows)
* Xlight FTP Server (Windows)
* Complete FTP (Windows)
* Core FTP Server (Windows)

.Przykładowe oprogramowanie klienta FTP:

* Filezilla (Windows)
* Eksplorator Windows
* Większość przeglądarek internetowych
* FTP w wierszu poleceń (Windows, Mac, Linux)
* FTP Voyager (Windows)
* CrossFTP
* Core FTP Le
* FreeFTP
* Total Commander

SFTP – protokół SFTP nie wymaga obecności serwera FTP, a przesyłane dane są szyfrowane z wykorzystaniem klucza szyfrującego. Domyślny port to 22 (jak w SSH). Przesyłając plik przy użyciu protokołu FTP uzyskujemy dobre przepływności ale nie zyskujemy bezpieczeństwa – nasze hasła i dane nie są szyfrowane podczas przesyłania co potencjalnie stwarza zagrożenie ich kradzieży

SCP jest to rozwiązanie wysyłające tylko pliki przy wykorzystaniu SSH (port 22)

FTPS – protokół, który jest rozszerzeniem protokoły FTP wykorzystującym SSL/TLS. FTPS używa portu 990 TCP dla kontroli przepływu oraz 989 TCP dla transferu danych (RFC 2228 i 4217). FTPS nie powinien być mylony z protokołem SFTP.

RCP – port 469 wysyła w postaci niezaszyfrowanej i został zastąpiony przez SCP – stosowany w systemach UNIX

FISH – wykorzystuje SSH (port 22) lub Remote Shell (RSH – port 514) do transferu i zarządzania plików oraz folderów

TFP (trivial file transfer protocol) – port 69 i działa na protokole UDP; używany do ściągania firmwarów do urządzeń sieciowych

## Poczta elektroniczna

Poczta elektroniczna – najbardziej popularna usługa sieciowa zrewolucjonizowała komunikację między ludźmi dzięki swojej prostocie i szybkości. Do poprawnego działania poczty elektronicznej na komputerze lub innym urządzeniu końcowym (PDA, telefon komórkowy, konsola) wymagane jest kilka aplikacji i usług

Protokoły warstwy aplikacji:

* do dostarczania poczty:

** pop (post office protocol)

** IMAP (Internet messafe access protocol)

* Do wysyłania poczty:

** SMTP (Simple mail transfer protocol)

[options="header"]
|========
|Protokół |Porty bez SSL |Porty z SSL
|SMTP |587, 25 (zdeprecjonowany) |465 (SMTPS)
|POP3 |110 |995 (POP3S)
|IMAP |143 |993 (IMAPS)
|========

Rekordy DNS dla maila - MX

Serwer:

* A.pl:
	- A:
		- Inbox
		- Outbox
		- Sentbox
		- Draftbox
		- Trashbox
		- spambox (opcjonalny)

MTA – (mail transfer agent) – ściśle związany z SMTP, sprawdza czy w outboxie są maile do wysłania

MDA (mail deliver agent) – może skanować w poszukiwaniu wirusów, umieszcza maila w inboxie

MUA (mail user agent) - programy które uruchamia się przez stronę www albo aplikację. Pobiera wysyła pocztę.

MTA w oparciu o zawartość nagłówka wiadomości decyduje jak adresowany

POP3 – protokół odpowiedzialny za przechowywanie poczty offline, umożliwia pobranie wszystkich wiadomości i używania tych wiadomości offline. Pobieramy i rozłączmy się i usuwa wiadomości z serwera (ale w opcjach można pozostawić wiadomości na serwerze). Wszystkie wiadomości są pobierane w całości,

IMAP – pobiera tylko nagłówki (część wiadomości) po kliknięciu jest wiadomość dopobierana. Przeczytana na jednym urządzeniu pokazuje, że jest przeczytana na drugim urządzeniu. Działanie w czasie rzeczywistym – usunięcie wiadomości to usunięcie na serwerze. Potrafi tworzyć katalogi inne niż standardowe.

IMAP do zarządzania w czasie rzeczywistym, a POP3 offline. (przejrzeć szczegóły wiadomości w swojej skrzynce pocztowej)

Proces MTA jest używany do przekazywania poczty elektronicznej. Jak pokazano na rysunku, agent MTA otrzymuje wiadomości od klienta e-mail (MUA) lub innego agenta MTA, który działa na innym serwerze pocztowym.

Agent MTA w oparciu o zawartość nagłówka wiadomości decyduje, jak wiadomość musi być przekazywana, aby osiągnęła swój cel. Jeśli list jest adresowany do użytkownika, który posiada skrzynkę pocztową na lokalnym serwerze, to list jest przkazywany do agenta MDA (folder *[INBOX]*). Natomiast jeśli skrzynka pocztowa adresata znajduje się na innym serwerze, agent MTA przekazuje list do agenta MTA na odpowiednim serwerze.

Na rysunku widzimy, że agent MDA przyjmuje od agenta MTA część poczty elektronicznej i dostarcza ją do adresata. Agent MDA otrzymuje od agenta MTA całą pocztę przychodzącą i umieszcza ją w skrzynkach pocztowych odpowiednich użytkowników. Agent MDA może również zajmować się problemami związanymi z końcową fazą dostarczania wiadomości, np. skanowanie w poszukiwaniu wirusów, filtrowanie spamu czy potwierdzenia odebrania wiadomości lub ich priorytetu. Większość komunikacji w ramach poczty elektronicznej używa aplikacji MUA, MTA oraz MDA. Jednakże istnieją inne alternatywne metody dostarczania poczty.

Klient może być połączony z korporacyjnym systemem poczty elektronicznej, takim jak Lotus Notes firmy IBM, Groupwise firmy Novell czy Microsoft Exchange. Te systemy często mają własny wewnętrzny format poczty elektronicznej, a ich klienci zwykle komunikują się z serwerem przy użyciu zastrzeżonych protokołów.

.Przykładowe aplikacje dla MTA:

* Courier-MTA
* Exim
* Microsoft Exchange (serwer pocztowy)
* MDaemon
* Mercury Mail Transport System
* Postfix
* qmail
* Sendmail
* hMailSErver

.Przykładowe aplikacje dla MDA:

* bin/mail
* deliver
* fdm
* Fetchmail
* maildrop
* postdrop
* postfix-maildrop
* smtp, local, virtual
* procmail
* courier-maildrop
* Microsoft Exchange
* dovecot
* DBMail
* dystill
* Cyrus IMAP
* hMailSErver

.Przykładowe aplikacje dla MUA:

* Outlook Express
* MS Outlook
* Mail (poczta)
* Thunderbird
* The Bat!
* Eudora
* Webmail (poczta przez stronę WWW)
