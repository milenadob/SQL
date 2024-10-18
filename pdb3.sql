SELECT p.nr_vin, p.data_pierwszej_rejestracji, w.pesel, mp.marka, mp.nazwa, kp.numer_karty_pojazdu, dr.numer_dowodu_rej
FROM pojazd p INNER JOIN wlasciciel_pojazd wp ON wp.pojazd_id_pojazdu = p.id_pojazdu
INNER JOIN wlasciciel w ON w.id_wlasciciela = wp.wlasciciel_id_wlasciciela
INNER JOIN model_pojazdu mp ON mp.id_model_pojazdu = p.model_pojazdu_id_model_pojazdu
INNER JOIN karta_pojazdu kp ON kp.pojazd_id_pojazdu = p.id_pojazdu
INNER JOIN dowod_rejestracyjny dr ON dr.pojazd_id_pojazdu = p.id_pojazdu
--WHERE wp.numer_rejestracyjny = "ABCD"