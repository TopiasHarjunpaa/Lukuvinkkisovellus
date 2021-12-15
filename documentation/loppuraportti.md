## Kerrataan jokaisen sprintin aikana kohdatut ongelmat (prosessiin-, projektityöskentelyyn- ja teknisiin asioihin liittyvät)
### Sprintti 1
Suunnitteluun ja yhteisen näkemyksen hahmottamiseen olisi voinut käyttää enemmän aikaa. 
Hyvä kuitenkin, että heti alkuun kansiorakenne tehtiin siltä pohjalta mitä arkkitehtuuria tullaan käyttämään.
Tietokannan valinta aiheutti päänvaivaa ja ylimääräistä työtä, aluksi valittiin sqlite mutta se ei toimikaan herokun kanssa yhteen joten vaihdettiin psql:ään.
User storyja ei purettu riittävän hyvin taskeiksi, jolloin työnjako jäi hieman roikkumaan ilmaan.

### Sprintti 2
Etätyöskentelyssä jouduttiin tekemään ratkaisuja, ilman että niistä voitiin kunnolla keskustella muiden kanssa.
Tyylisäännöistä ja koodin refaktoroinnista keskusteleminen jäi aikalailla käymättä.
CI:n kanssa oli kaikenlaisia ongelmia: testitietokannan käyttäminen CI:ssä osoittautui alkuun haastavaksi samaten se, että saadaan robottitestit ajettua CI:ssä. 
Herokun kanssa oli myös käynnistymisvaikeuksia.

### Sprintti 3
Jotkin käyttöliittymäkomponentit oli vaikea testata robottitestillä, esim. vetovalikko peitti "submit" näppäimet.
Robottitestit oli kahdessa edellisessä sprintissä yhden henkilön vastuulla ja hän ei ollut käytettävissä sprintin viimeisinä päivinä jolloin jouduttiin opettelemaan niitä vähän enemmän.
Yksi user story (tagien perusteella suodattaminen) jäi tekemättä koska työtunnit täyttyivät ja olimme huolissamme, että robottitestit hajoavat ko. ominaisuutta lisätessä.

## Mikä sujui projektissa hyvin, mitä pitäisi parantaa seuraavaa kertaa varten
Yhteistyö toimi todella hyvin, asioista saatiin hyvin sovittua ja oltiin tosi kannustavia. Jokaiselle riitti tekemistä.

Asiakkaan määrittelemät storyjen toteuttaminen onnistui. Ainoastaan yksi story jäi viimeisessä sprintissä tekemättä.

Sovelluksen ja tietokannan rakenne saatiin varsin selkeäksi ja laajennettavaksi. Uusien ominaisuuksien lisääminen onnistui hyvin mutta haittapuolena oli se, että robottitestejä tarvittiin paljon. Robottitestien määrä kannattaisi pitää mahdollisimman pienenä tästä syystä.

Robottitestit olisi kannattanut tehdä vasta ihan sprintin lopuksi.

Miten toimisi jos työskenneltäisiin samassa tilassa ja samanaikaisesti?

## Mitä asioita opitte, mitä asioita olisitte halunneet oppia, mikä tuntui turhalta
Projektin edetessä tuote alkaa "jähmettymään" ja tulimme varovaisemmaksi uusien ominaisuuksien lisäämisen osalta koska robottitestit hajoavat varsin herkästi ja niiden ajaminen kestää varsin pitkään. Robottitestien liian orjallinen toteuttaminen ehkä rajoitti toimintaa? Olisi pitänyt miettiä tarkemmin paljonko näitä tehdään. Välillä oli hieman epävarmaa mihin uskaltaa koskea ja mihin ei.

Uusia ominaisuuksia kannattaa kokeilla erillisissä ynmpäristöissä. Esim. CI build.

Yhteisten aikataulujen yhteensovittaminen ja taskien toteutusjärjestys. Nyt kävi muutaman kerran niin, että kaksi henkilöä teki samaa taskia.

Paljon pieniä hyödyllisiä yksityiskohtia siitä, miten eri osa-alueet toimivat mm. metodien ohittamista kattavuusraporteissa, tietokantakomentoja, yksittäisiä metodien toteutustapoja.

Kurssilla käytetty ketterä menetelmä toimi yllättävän hyvin. Oli myös hyvin opettavaista tutustua toisten tekemään koodiin. 

Aika hyvin pystyttiin tekemään ristiin eri alueita sovellusarkkitehtuurissa. Muiden tekemistä toiminnallisuuksista pystyi hyvin päättelemään miten jokin asia toimii ja toteuttamaan sitten itse vastaavaa.

Alusta asti käytössä oleva arkkitehtuuripohja teki työskentelystä selkeämpää. 

Parannettavaa: projektin tietoturvavaatimuksia olisi ollut hyvä miettiä.

Aika paljon pystyy refaktoroimaan kun arkkitehtuuri ja testit kunnossa. Serviceja ja repositorioita pystyttiin muokkaamaan aika nopeasti.
