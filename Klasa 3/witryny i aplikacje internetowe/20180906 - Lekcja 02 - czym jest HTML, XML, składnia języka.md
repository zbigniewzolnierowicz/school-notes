# Lekcja 2 - czym jest HTML, XML, składnia języka

## HTML - Hypertext Markup Language

HTML jest hipertekstowym językiem znaczników.
W roku 2008 W3C (The World Wide Web Consortium) opublikowało najowszą wersję tego języka - HTML 5.
W 2014 HTML5 otrzymał rekomendację W3C.
W tej chwili najnowszą wersją HTML jest 5.2, a od 2017 pojawił się zarys HTML 5.3.

Dokumenty HTML to pliki tekstowe, które zawierają proste polecenia dotycznące składni tekstu, a także dynamiczne odnośniki, obiekty postscriptowe, preformatowane, multimedialne itp.

Dokument HTML można przygotować korzystając z dowolnego edytora. Wyróżniamy:

- **Edytory tekstowe** - bezpośrednia praca z kodem HTML (posiadają dużo ułatwień, np. automatyczne sprawdzanie składni, kolorowanie składni, itp.)
- **Edytory graficzne** - inaczej wizualne; umożliwiające pracę w trybie WYSIWYG - tworzenie stron bez wpisywania kodu.

## XML - Extensible Markup Language

XML to metajęzyk oparty na zwykłym tekście, przeznaczonym do definiowania języków znakowania.
Stworzony został w celu definiowania nowych formatów dokumentów w Internecie.
Dostarcza mechanizmów opisywania struktury dokumentu za pomocą znaczników.
Język XML nie ma ustalonego słownika, dlatego można tworzyć słowniki przeznaczone dla określonyc haplikacji lub branż.

Opracowano już np.:

- Dla dokumentów internetowych - standard XHTML;
- Dla protokołów sieciowych - standard SOAP - protokół wywoływania zdalnego dostępu do obiektów

## DTD - Document Type Declaration

Do dokumentu utworzonego w języku XHTML musi zostać wstawiona deklaracja typu dokumentu **(DTD)**.
Określa jaka wersja języka HTML jest stosowana na stronie.

### Wersja STRICT

Tzw. ścisła, zawiera znaczniki i atrybuty, które nie są zdeprecjonowane i nie pojawiają się w dokumentach z ramkami; nie obejmuje również atrybutu `target=""` oraz znacznika `<iframe>`

```html
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
```

### Wersja TRANSITIONAL

Tzw. przejściowa, zawiera wszystkie elementy *STRICT*, elementy zdeprecjonowane oraz znaczniki `<iframe>` i atrybut `target=""`.

```html
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
```

### Wersja FRAMESET

Tzw. ramkowa, zawiera wszystkie elementy *TRANSITIONAL* oraz elementy odnoszące się do ramek (`frame`, `frameset`, `noframes`)

```html
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "XHTML1-f.dtd" >
```

### DTD w XHTML 1.1

Stosowana jest tylko jedna wersja deklaracji:

```html
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/MarkUp/DTD/xhtml11.dtd">
```

## Różnice między HTML 4 a XHTML 1.0

- Znaczniki zamykające są obowiązujące
- Wartości atrybutów są obowiązkowe
- Nie można pomijać atrybutów logicznych
- Elementy puste muszą mieć znacznik zamykający lub ich znacznik otwierający musi się kończyć sekwencją `/>`

## Składnia języka XHTML

### Znaczniki

Znacznik *(ang. Tag)* to napis otoczony znakami `<>`.
Większa część znaczników otwierających posiada towarzyszący im znacznik zamykający.

### Elementy puste

Elementami pustymi są n.p.:

- `area`
- `base`
- `br`
- `button`
- `col`
- `hr`
- `img`
- `input`
- `link`
- `meta`
- `param`

TODO: ćwiczenie przedstawiające element `param`.

### Znaki specjalne

| Przykład | Opis             | Nazwa      |
| :------: | ---------------- | ---------- |
| <        | znak mniejszości | `&lt;`     |
| >        | znak większości  | `&gt;`     |
| "        | cudzysłów        | `&quot;`   |
| &        | ampersand        | `&amp;`    |
| ^        | daszek           | `&circ;`   |
| ~        | tylda            | `&tilde;`  |
| &nbsp;   | twarda spacja    | `&nbsp;`   |
| &dagger; | krzyżyk          | `&dagger;` |
| &permil; | promil           | `&permil;` |
| &euro;   | euro             | `&euro;`   |
| &copy;   | copyright        | `&copy;`   |
| &reg;    | znak handlowy    | `&reg;`    |
| &rarr;   | strzałka         | `&rarr;`   |

Znacznik `<pre>` nie preformatuje tego, co jest wewnątrz tego znacznika.

### Atrybuty znaczników

Znaczniki otwierające mogą posiadać *atrybuty*.
Rola atrybutów polega na nadawaniu dodatkowych właściwości elementom.

```html
<h1 id="tytuł">Wakacje</h1>
```

```html
<img src="pies.jpg" alt="Mój kochany Pimpuś" />
```

#### Białe znaki w wartościach atrybutów

W kodzie XHTML wartości atrybutów poddawane są dwóm konwersjom (specyfilacja XHTML, pkt. 4.7 oraz C.5)

- Wiodące i końcowe znaki białe zostają usunięte
- Wielokrotne znaki białe występujące w środku zostają zastąpione pojedyńczymi

#### Atrybuty logiczne, wyliczeniowe i inne

Wszystkie atrybuty elementów XHTML można podzielić na trzy grupy:

- Logiczne
- Wyliczeniowe
- Inne

##### Atrybuty logiczne

| Element  | Atrybut logiczny                   |
| -------- | ---------------------------------- |
| area     | nohref                             |
| button   | disabled                           |
| img      | ismap                              |
| input    | checked, disabled, readonly, ismap |
| object   | declare                            |
| optgroup | disabled                           |
| option   | selected, disabled                 |
| script   | defer                              |
| select   | multiple, disabled                 |
| textarea | disabled, readonly                 |

##### Atrybuty wyliczeniowe

| Element                                    | Atrybut   | Wartości                                                                    |
| ------------------------------------------ | --------- | --------------------------------------------------------------------------- |
| button                                     | type      | button, submit, reset                                                       |
| col, colgroup, tbody, td, tfoot, thead, tr | valign    | top, middle, bottom, baseline                                               |
| col, colgroup, tbody, td, tfoot, thead, tr | align     | left, center, right, justify, char                                          |
| form                                       | method    | get, post                                                                   |
| input                                      | type      | text, password, checkbox, radio, submit, reset, file, hidden, image, button |
| param                                      | valuetype | date, ref, object                                                           |
| table                                      | frame     | void, above, below, hsides, lhs, rhs, vsides, box, border                   |
| table                                      | rules     | none, groups, rows, cols, all                                               |
| td, th                                     | scope     | row, col, rowgroup, colgroup                                                |
| wszystkie elementy                         | dir       | ltr, rtl                                                                    |

## Struktura kodu HTML

```html
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
    </body>
</html>
```

To jest test dla Wiktora