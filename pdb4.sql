DECLARE 
potwierdzenie_rejestracji_OUT VARCHAR2(100);
id_wlasciciela INTEGER;
potwierdzenie_dodania_wlasciciela_OUT VARCHAR2(100);
potwierdzenie_operacji_przeniesenia_wlasnosci_OUT VARCHAR2(100);
komunikat_OUT VARCHAR2(100);
dane_pojazdu SYS_REFCURSOR;
nr_vin VARCHAR2(50);
rok_produkcji INTEGER;
data_pierwszej_rejestracji DATE;
marka VARCHAR2(50);
nazwa VARCHAR2(50); 
rodzaj VARCHAR2(50);
typ VARCHAR2(50);
kategoria_pojazdu varchar2(50);
numer_swiadectwa_homo VARCHAR2(50);
numer_karty_pojazdu VARCHAR(20);
numer_dowodu_rej VARCHAR(7);
BEGIN

-- TEST1
--CEPIK.rejestracja_pojazdu('111111', DATE '2023-09-01', DATE '2023-06-23', 'WOT12345', DATE '2023-06-25', 'DZIA£ REJESTRACJI W OTWOCKU', 
--'123456789012', DATE '2023-06-23', 'Ford', null, null, null, null, 'Fiesta', null, null, null, null, null, null, null, null, 
--null, null, null, null, null, null, null, 'Jan', 'Kowalski', '99999999999', 'Mazowieckie', 'Otwocki', 'Otwock', 'Prosta',
--11, null, DATE '2023-06-20', null, DATE '2023-05-15', 2015, 'W1234567897654777', null, potwierdzenie_rejestracji_OUT);

--DBMS_OUTPUT.PUT_LINE(potwierdzenie_rejestracji_OUT);

-- TEST2
--CEPIK.rejestracja_pojazdu('111111', DATE '2023-09-01', DATE '2023-06-23', 'WOT12347', DATE '2023-06-25', 'DZIA£ REJESTRACJI W OTWOCKU', 
--'123456789012', DATE '2023-06-23', 'Volkswagen', null, null, 2000, null, 'Passat', null, null, 1000, null, null, 2, null, null, 
--1968, 50, 'D', null, 5, null, 'Osobowy', 'Jan', 'Kowalski', '99999999999', 'Mazowieckie', 'Otwocki', 'Otwock', 'Prosta',
--11, null, DATE '2023-06-20', null, DATE '2023-05-15', 2015, 'W1234567897654329', null, potwierdzenie_rejestracji_OUT);

--DBMS_OUTPUT.PUT_LINE(potwierdzenie_rejestracji_OUT);

-- TEST3
--CEPIK.rejestracja_pojazdu('111111', DATE '2023-09-01', DATE '2023-06-23', 'WOT12347', DATE '2023-06-25', 'DZIA£ REJESTRACJI W OTWOCKU', 
--'123456789012', DATE '2023-06-23', 'Volkswagen', null, null, 2000, null, 'Passat', null, null, 1000, null, null, 2, null, null, 
--1968, 50, 'D', null, 5, null, 'Osobowy', 'Jan', 'Kowalski', '99999999999', 'Mazowieckie', 'Otwocki', 'Otwock', 'Prosta',
--11, null, DATE '2023-06-20', null, DATE '2023-05-15', 2015, null, null, potwierdzenie_rejestracji_OUT);

--DBMS_OUTPUT.PUT_LINE(potwierdzenie_rejestracji_OUT);

--TEST4
--DODAJ_WLASCICIELA
/*CEPIK.dodaj_wlasciciela(
      'Jacek',
      'Kowalski',
      '99999999911',
      'Mazowieckie',
      'Warszawa',
      'Warszawa',
      'Warszawska',
      13,
      null,
      id_wlasciciela,
      potwierdzenie_dodania_wlasciciela_OUT);
      
DBMS_OUTPUT.PUT_LINE(potwierdzenie_dodania_wlasciciela_OUT);*/

--DODANIE POJAZDU
/*CEPIK.rejestracja_pojazdu('111111', DATE '2023-09-01', DATE '2023-06-23', 'WOT12345', DATE '2023-06-25', 'DZIA£ REJESTRACJI W OTWOCKU', 
'123456789012', DATE '2023-06-23', 'Ford', null, null, null, null, 'Fiesta', null, null, null, null, null, null, null, null, 
null, null, null, null, null, null, null, 'Jacek', 'Kowalski', '99999999911', null, null, null, null,
11, null, DATE '2023-06-20', null, DATE '2022-06-15', 2018, 'W1234567897654323', null, potwierdzenie_rejestracji_OUT);
DBMS_OUTPUT.PUT_LINE(potwierdzenie_rejestracji_OUT);*/

--DODANIE KOLEJNEGO WLASCICIELA
/*CEPIK.dodaj_wlasciciela(
      'Bacek',
      'Kowalski',
      '99999999922',
      'Mazowieckie',
      'Warszawa',
      'Warszawa',
      'Warszawska',
      14,
      null,
      id_wlasciciela,
      potwierdzenie_dodania_wlasciciela_OUT);
      
DBMS_OUTPUT.PUT_LINE(potwierdzenie_dodania_wlasciciela_OUT);*/

--PRZENIESIENIE WLASNOSCI
CEPIK.przeniesienie_wlasnosci_pojazdu(
      'Jan',
      'Kowalski',
      '99999999922',
      'Mazowieckie',
      'Otwock',
      'Otwock',
      'Prosta',
      15,
      null,
      DATE '2023-06-25',
      'W1234567897654323',
      potwierdzenie_operacji_przeniesenia_wlasnosci_OUT);
      
--DBMS_OUTPUT.PUT_LINE(potwierdzenie_operacji_przeniesenia_wlasnosci_OUT);


CEPIK.przeniesienie_wlasnosci_pojazdu(
      null,
      null,
      '99999999922',
      null,
      null,
      null,
      null,
      null,
      null,
      DATE '2023-06-25',
      'W123456789765432356',
      potwierdzenie_operacji_przeniesenia_wlasnosci_OUT);
      
--DBMS_OUTPUT.PUT_LINE(potwierdzenie_operacji_przeniesenia_wlasnosci_OUT);


---TEST ODCZYT
CEPIK.odczyt_danych_pojazdu(
      'WOT12349',
      dane_pojazdu,
      komunikat_OUT);
FETCH dane_pojazdu INTO nr_vin,
rok_produkcji,
data_pierwszej_rejestracji,
marka,
nazwa, 
rodzaj,
typ,
kategoria_pojazdu,
numer_swiadectwa_homo,
numer_karty_pojazdu,
numer_dowodu_rej;
DBMS_OUTPUT.PUT_LINE(nr_vin);
DBMS_OUTPUT.PUT_LINE(kategoria_pojazdu);
DBMS_OUTPUT.PUT_LINE(numer_karty_pojazdu);
DBMS_OUTPUT.PUT_LINE(komunikat_OUT);
END;