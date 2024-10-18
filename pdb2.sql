SET SERVEROUTPUT ON;

DECLARE 
      id_wlasciciela_out INTEGER;
      id_modelu_out INTEGER;
      wlasciciel_imie  VARCHAR2(50);
      wlasciciel_nazwisko VARCHAR2(50);
      wlasciciel_wojewodztwo VARCHAR2(11);
      wlasciciel_powiat   VARCHAR2(30);
      wlasciciel_gmina    VARCHAR2(30);
      wlasciciel_ulica    VARCHAR2(30);
      wlasciciel_numer_domu  INTEGER;
      wlasciciel_numer_mieszkania     INTEGER;
BEGIN

/*CEPIK.dodaj_model_pojazdu('Ford','Fiesta',null,null,1500,null,null, null,1000,null,null,2,null,null,1250,50,'B',null, 5, 0, 'Osobowy',id_modelu_out);*/
        
      CEPIK.odczyt_wlasciciela(
      wlasciciel_imie,
      wlasciciel_nazwisko,
      '123456789',
      wlasciciel_wojewodztwo,
      wlasciciel_powiat,
      wlasciciel_gmina,
      wlasciciel_ulica,
      wlasciciel_numer_domu,
      wlasciciel_numer_mieszkania);
      
      DBMS_OUTPUT.PUT_LINE(wlasciciel_imie);
      DBMS_OUTPUT.PUT_LINE(wlasciciel_nazwisko);
      DBMS_OUTPUT.PUT_LINE(wlasciciel_wojewodztwo);
      DBMS_OUTPUT.PUT_LINE(wlasciciel_powiat);
      DBMS_OUTPUT.PUT_LINE(wlasciciel_gmina);
      DBMS_OUTPUT.PUT_LINE(wlasciciel_ulica);
      DBMS_OUTPUT.PUT_LINE(wlasciciel_numer_domu);
      DBMS_OUTPUT.PUT_LINE(wlasciciel_numer_mieszkania);
END; 