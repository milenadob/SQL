CREATE TABLE tablica_rejestracyjna (
    id_tablicy_rejestracyjnej INTEGER NOT NULL,
    numer_rejestracyjny       VARCHAR2(20) NOT NULL,
    pojazd_id_pojazdu         INTEGER NOT NULL
);

ALTER TABLE tablica_rejestracyjna ADD CONSTRAINT tablica_rejestracyjna_pk PRIMARY KEY ( id_tablicy_rejestracyjnej );