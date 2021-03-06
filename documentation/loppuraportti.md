## Sprinttien aikana kohdatut ongelmat (prosessiin-, projektityöskentelyyn- ja teknisiin asioihin liittyvät)
### Sprintti 1
Suunnitteluun ja yhteisen näkemyksen hahmottamiseen olisi voinut käyttää enemmän aikaa. 
Hyvä kuitenkin, että heti alkuun kansiorakenne tehtiin siltä pohjalta mitä arkkitehtuuria tullaan käyttämään.
Tietokannan valinta aiheutti päänvaivaa ja ylimääräistä työtä, aluksi valittiin sqlite mutta se ei toimikaan herokun kanssa yhteen joten vaihdettiin psql:ään.
User storyja ei purettu riittävän hyvin taskeiksi, jolloin työnjako jäi hieman roikkumaan ilmaan.

### Sprintti 2
Etätyöskentelyssä jouduttiin tekemään ratkaisuja ilman että niistä voitiin kunnolla keskustella muiden kanssa.
Tyylisäännöistä ja koodin refaktoroinnista keskusteleminen jäi aikalailla käymättä.
CI:n kanssa oli kaikenlaisia ongelmia: testitietokannan käyttäminen CI:ssä osoittautui alkuun haastavaksi samaten se, että saadaan robottitestit ajettua CI:ssä. 
Herokun kanssa oli myös käynnistymisvaikeuksia.

### Sprintti 3
Jotkin käyttöliittymäkomponentit oli vaikea testata robottitestillä, esim. vetovalikko peitti "submit" näppäimet.
Robottitestit oli kahdessa edellisessä sprintissä yhden henkilön vastuulla ja hän ei ollut käytettävissä sprintin viimeisinä päivinä jolloin jouduttiin opettelemaan niitä vähän enemmän. Osaamisen kasaannuttua tämän osa-alueen osalta yhdelle henkilölle, oli ryhmä huonosti valmistautunut hänen pakottavien syiden aiheuttamaan poissaoloon.
Yksi user story (tagien perusteella suodattaminen) jäi tekemättä koska työtunnit täyttyivät ja olimme huolissamme, että robottitestit hajoavat ko. ominaisuutta lisätessä.

## Mikä sujui projektissa hyvin, mitä pitäisi parantaa seuraavaa kertaa varten?
Yhteistyö toimi todella hyvin, asioista saatiin hyvin sovittua ja oltiin tosi kannustavia. Jokaiselle riitti tekemistä.

Asiakkaan määrittelemien storyjen toteuttaminen onnistui. Ainoastaan yksi story jäi viimeisessä sprintissä tekemättä.

Sovelluksen ja tietokannan rakenne saatiin varsin selkeäksi ja laajennettavaksi.

Uusien ominaisuuksien lisääminen onnistui hyvin mutta haittapuolena oli se, että robottitestit usein hajosivat samalla. Tästä syystä robottitestien määrä olisi kannattanut pitää mahdollisimman pienenä ja niiden toteuttaminen olisi pitänyt siirtää aina sprintin loppuun.

Etätyöskentely sujui hyvin. Olisi kuitenkin mielenkiintoista tietää miten samaan aikaan samassa tilassa toimiminen olisi vaikuttanut työskentelyyn ja lopputulokseen.

## Mitä asioita opitte?

Uusia ominaisuuksia kannattaa kokeilla erillisissä ympäristöissä. Esim. CI build.

Yhteisten aikataulujen yhteensovittaminen ja taskien toteutusjärjestys. Nyt kävi muutaman kerran niin, että kaksi henkilöä teki samaa taskia.

Paljon pieniä hyödyllisiä yksityiskohtia siitä, miten eri osa-alueet toimivat mm. metodien ohittamista kattavuusraporteissa, tietokantakomentoja, yksittäisiä metodien toteutustapoja.

Kurssilla käytetyt ketterät menetelmät toimivat yllättävän hyvin. Oli myös hyvin opettavaista tutustua toisten tekemään koodiin. Yksikään ryhmän jäsenistä ei ollut aiemmin ohjelmoinut ryhmässä, joten kaikki siihen liittyvä oli uutta. 

Kykenimme hyvin tekemään ristiin eri alueita sovellusarkkitehtuurissa. Muiden tekemistä toiminnallisuuksista pystyi hyvin päättelemään miten jokin asia toimii ja toteuttamaan sitten itse vastaavaa.

Alusta asti käytössä oleva arkkitehtuuripohja teki työskentelystä selkeämpää ja mahdollisti nopean oppimisen, kun tekijä siirtyi tekemään uutta osa-aluetta. 

Refaktoroiminen helpottuu merkittävästi kun arkkitehtuuri ja testit ovat kunnossa. Serviceja ja repositorioita kykeni muokkaamaan nopeasti.

## Mitä asioita olisitte halunneet oppia?

Projektin tietoturvavaatimuksia olisi ollut hyvä miettiä tarkemmin. Nyt mentiin aikalailla perusolettamuksilla eli injektiot ja cross-site -uhat oli otettu huomioon.  

Projektin alkuperäinen suunnittelu ennen ensimmäisen sprintin alkua jäi olemattomaksi. Sitä olisi ollut mukava opetella ja tehdä edes kerran. Keskustelu pöydän ääressä (meidän tapauksessamme etäkokous) tämän aiheen tiimoilta olisi luultavasti ollut hyödyllistä käydä. Aikaa oli kuitenkin hyvin rajallisesti ja tuolloin painotettiin ohjaajien toimesta projektin alulle saamisen viemää aikaa, sekä sen priorisointia. Siksi pidimme vain tavalllisen sprintin suunnittelun ja toivoimme palasten loksahtelevan matkan varrella kohdilleen. Tämä lieneekin *tuottaako tämä lisäarvoa asiakkaalle*-ajattelutavan kuollut kulma, sillä kaipaamamme projektisuunnittelu vain ennaltaehkäisee tulevia, vielä olemattomia ongelmia. Siksi sitä ei voi tälläisessa viitekehyksessä oikeuttaa yhtä helposti, kuin uuden toiminnallisuuden vimmaista kehittämistä.

## Mikä tuntui turhalta?

Robottitestien liian orjallinen toteuttaminen ehkä rajoitti toimintaa. Projektin edetessä tuote alkaa "jähmettymään" ja tulimme varovaisemmaksi uusien ominaisuuksien lisäämisen osalta koska robottitestit hajoavat varsin herkästi ja niiden ajaminen kestää varsin pitkään. Olisi pitänyt miettiä tarkemmin paljonko näitä tehdään. Välillä oli hieman epävarmaa mihin uskaltaa koskea ja mihin ei.

Sekä projektin pituus, että sprinteissä käytettävissä oleva aika olivat niin rajallisia, että turhuuksille ei tunutunut löytyvän tilaa. Monesti piti arvoida, palveleeko juuri tällä hetkellä kirjoittamani metodi tai testi *user storyn* asettamia tavoitteita.

## Projektiryhmä
Topias Harjunpää,
Jirko Leivo,
Tino Pönni,
Simo Levanto,
Markus Aejmelaeus,
Yousef El Houch

