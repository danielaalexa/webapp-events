USE jaita86_events;

CREATE TABLE user (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
cognome VARCHAR(45) NOT NULL,
username VARCHAR(45) NOT NULL,
password VARCHAR(45) NOT NULL,
email VARCHAR(45) NOT NULL,
sesso CHAR(1) NOT NULL CHECK(sesso = "M" OR sesso = "F"),
data_nascita DATE NOT NULL, 
metodo_pagamento_id INT,
FOREIGN KEY (metodo_pagamento_id) REFERENCES metodo_pagamento(id) ON DELETE CASCADE
);

INSERT INTO user VALUES('1', 'Mario', 'Rossi', 'mario_rossi', 'password1', 'mariorossi@gmail.com', 'M', '1980-01-01', '1');
INSERT INTO user VALUES('2', 'Valentina', 'Toppi', 'vale_topi', 'password2', 'toppivalentina@hotmail.it', 'F', '1999-02-02', '2');
INSERT INTO user VALUES('3', 'Giovanni', 'Verdi', 'gio_verdi', '4everVerdi', 'verdigiovanni@outlook.com', 'M', '1992-12-02', '3');
INSERT INTO user VALUES('4', 'Anna', 'Carlini', 'anna_carl', 'l1b3r0', 'annacarlini@icloud.com', 'F', '1989-02-24', '4');
INSERT INTO user VALUES('5', 'Matteo', 'Verdi', 'matteo_verdi', 'password5', 'verdimatteo1@yahoo.com', 'M','1991-04-03', '2');
INSERT INTO user VALUES('6', 'Maria', 'Neri', 'neri_maria', 'password6', 'maria1989@yahoo.com', 'F', '1989-11-21', '1');

SELECT * FROM user;
-- DROP TABLE user;

CREATE TABLE metodo_pagamento (
id INT PRIMARY KEY AUTO_INCREMENT,
tipo VARCHAR(45) NOT NULL
);

INSERT INTO metodo_pagamento VALUES('1', 'Carta');
INSERT INTO metodo_pagamento VALUES('2', 'Paypal');
INSERT INTO metodo_pagamento VALUES('3', 'Pagopa');
INSERT INTO metodo_pagamento VALUES('4', 'Satispay');

SELECT * FROM metodo_pagamento;
-- DROP TABLE metodo_pagamento;

CREATE TABLE prenotazione (
id INT PRIMARY KEY AUTO_INCREMENT,
quantita INT NOT NULL,
user_id INT NOT NULL,
evento_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE,
FOREIGN KEY (evento_id) REFERENCES evento(id) ON DELETE CASCADE
);

SELECT * FROM prenotazione;
-- DROP TABLE prenotazione;

CREATE TABLE evento (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
data DATE NOT NULL,
citta VARCHAR(45) NOT NULL,
descrizione VARCHAR(3000) NOT NULL,
descrizione_card VARCHAR(500),
indirizzo VARCHAR(100) NOT NULL,
immagine VARCHAR(3000) NOT NULL,
gratuito BOOLEAN NOT NULL,
prezzo DOUBLE NOT NULL,
tag_evento_id INT NOT NULL,
FOREIGN KEY (tag_evento_id) references tag_evento(id) ON DELETE CASCADE
);

INSERT INTO evento VALUES('1','Suonimobili - Medioeval Jazz','2023-07-09','Napoli','L’organo portativo medioevale nelle mani di Catalina Vicens, una delle massime esperte mondiali, e il sassofono di Massimiliano Milesi, distintosi negli ultimi anni come una delle voci più interessanti del panorama jazzistico nazionale: i due musicisti suoneranno insieme per la prima volta nell’incredibile ambiente medioevale della Canonica di San Salvatore. Catalina Vicens, musicista di origine cilena, inizia molto presto la sua carriera: a 20 anni aveva già tenuto recital importanti nel Nord e Sud America. Specializzata sugli strumenti a tastiera antichi, collabora alla ricostruzione di organi rinascimentali e medievali e nel 2021 è nominata curatrice della Collezione Tagliavini. È considerata dalla stampa internazionale come una delle musiciste più interessanti per la sua capacità di traghettare la musica antica verso il contemporaneo. Organic Creatures è il suo ultimo progetto che esegue suonando l’organo portativo, strumento del XV secolo che Catalina riporta alla luce confermando la sua ispirazione di musicista ricercatrice.

Massimiliano Milesi non è solo apprezzato per essere un eccellente sassofonista (tenore e soprano), ma è anche stimato per le doti di compositore, con stimoli provenienti dal rock.', 'Tre set di concerti con musica contemporanea antica e moderna.', 'Chiesa di San Salvatore Via Castello 23891 Barzanò','https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F533962019%2F1533498871993%2F1%2Foriginal.20230612-103009?w=940&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C1600%2C800&s=0a658f07d5a2a8a87f3bf5270e89a266','1','0.0','1');

INSERT INTO evento VALUES('2','Concerto folk // Tarakan & the Keltaholics','2023-06-30','Milano','Tarakan & the Keltaholics nasce nel 2021 dall’unione artistica di quattro esperti musicisti decisi a sviluppare un progetto originale nel panorama della musica folk contemporanea. Voce, chitarra, violino, bouzuki e bodhràn sono sapientemente miscelati in armonie suggestive per offrire le perle più emozionanti dalla grande tradizione dell’area celtica, tra canti appassionati, ballate struggenti e set strumentali infuocati; un viaggio nel tempo e nello spazio tra Irlanda, Scozia, Bretagna, fino alle sconfinate pianure americane. È impossibile non rimanere travolti dalle emozioni di un concerto dei Keltaholics! Musica dall’animo antico, che porta con sé l’odore dell’oceano Atlantico e di boschi millenari.', 'La musica di Lets Summer Estate a Paderno Dugnano a Tilane.', 'Tilane 3 Piazza della Divina Commedia 20037 Paderno Dugnano','https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F525919649%2F455813384090%2F1%2Foriginal.20230531-093654?w=940&auto=format%2Ccompress&q=75&sharp=10&rect=100%2C0%2C1000%2C500&s=97c7bae496476b1592f77c9878c6a215','1','0.0','1');

INSERT INTO evento VALUES('3','The Three Tenors in Rome','2023-07-05','Roma',' Ispirato al popolare concerto dei Tre Tenori L. Pavarotti, P. Domingo e J. Carreras, in questo concerto le incantevoli voci di tre tenori accompagnati da archi e pianoforte a coda eseguiranno le più celebri arie d’opera italiane da Tosca, La Traviata e L’Elisir d’amore, seguite dalle popolari canzoni napoletane come “O’sole mio” e “Torna a Surriento”.

 Opera e tradizione napoletana, insieme, danno vita a un’incredibile esperienza musicale.

 Giancarlo Polizzy, Carlo Napoletani, Emil Alekperov: tenori

Denos Volpi: pianoforte

Elvin Dhimitri, Alina Scoticailo: violino

Ilia Kanani: viola

Ester Nagypal: violoncello', 'Emozionatevi con le incantevoli voci dei Tre Tenori accompagnati da archi e pianoforte nell’esecuzione delle più celebri arie d’opera.', 'Chiesa di San Paolo Dentro le Mura Via Nazionale 16/A 00184 Roma','https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F508321889%2F238574379776%2F1%2Foriginal.20230505-091639?w=940&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C720%2C360&s=642150254610ca23c70a3aca3e185e6e','0','22.30','1');

INSERT INTO evento VALUES('4','Festival In Festa','2023-07-16','Torino','Sin dalla sua prima edizione, il Magliano Alfieri Classic Festival ha avuto l’obiettivo di coinvolgere studenti di diverse età, al fine di rendere l’evento accessibile a tutte le generazioni.

Per rispondere a questa missione, abbiamo voluto creare il Festival Young, un progetto appositamente ideato per offrire ai più piccoli un’esperienza formativa di alto livello, modulata in base alle loro esigenze e con un approccio che tenga conto della loro età e comprensione del mondo musicale.

Attraverso il Festival Young, desideriamo aprire le porte del meraviglioso universo della musica classica ai bambini e ai giovani, permettendo loro di vivere in prima persona la bellezza e l’emozione che solo la musica può offrire.', 'Unitevi a noi per una serata di musica e cultura nel Castello di Magliano Alfieri', 'Museo - Castello di Magliano Alfieri 6 Via Adele Alfieri 12050 Magliano Alfieri','https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F533928079%2F1497634959723%2F1%2Foriginal.20230612-092500?w=940&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C52%2C1640%2C820&s=4aa7e6bed2b8616376035b58550c655e','1','0.0','1');

INSERT INTO evento VALUES('5','Etna Sound Festival','2023-07-02','Catania','Etna Sound Festival si caratterizza per la capacità di far confluire le diverse realtà del territorio. Non è un semplice Festival o Contest musical... è molto di più. Impegno profuso, con una certezza di riuscita in termini di visibilità e promozione, punta di attivare e connettere relazioni coinvolgendo sempre più locali e turisti nel racconto del territorio, sviluppando le esperienze migliori e raccontando le storie giuste che meglio ci rappresentano. Il viagglatore avrà dunque come destinazione i locali, non le località. Il nostro obiettivo sarà raggiunto integrando al Festival caratterizzato dal Sound e musica di produzione di artisti locali, anche aziende vitivinicole, artigiani, produttori di vario genere, attori teatrali, scuole ed enti di vario genere. In questo caso la valorizzazione e promozione turistica del territorio diventa un insieme di una comunità, cultura, tradizioni, usi e costumi, arte, esperienza, gastronomia, stili di vita, enti locali, associazioni, imprese, infrastrutture, servizi ed ambiente, Rappresenta ovvero il territorio nella sua realtà, nella sua totalità, nella sua essenza.', 'Unitevi a noi per una serata di musica e cultura al Camporè Wine Contrada', 'Camporè Wine Contrada San Lorenzo 95036 Randazzo','https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F534503579%2F1115615723893%2F1%2Foriginal.20230612-220553?w=940&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C64%2C2048%2C1024&s=be6ae8da3e71c740e5c1bf559940aeb5','0','15.0','1');



SELECT * FROM evento;
DROP TABLE evento;

CREATE TABLE tag_evento (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL
);

INSERT INTO tag_evento VALUES ('1', 'Music');
INSERT INTO tag_evento VALUES ('2', 'Education');
INSERT INTO tag_evento VALUES ('3', 'Comedy');

SELECT * FROM tag_evento;
-- DROP TABLE tag_evento;