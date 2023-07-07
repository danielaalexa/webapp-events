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
quantita INT NOT NULL DEFAULT ('1'),
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

INSERT INTO evento VALUES('6', 'Urban LAB Chiostri di San Pietro', '2023-07-13', 'Bologna', 'Un percorso che vuole far riscoprire a ragazzi e ragazzi il valore comunicativo della lingua inglese anche attraverso strategia, logica e spirito cooperativo e allo stesso tempo cimentarsi in un contesto più disteso nella produzione verbale in lingua inglese.', 'Tour della città in lingua inglese dedicato ai bambini e alle bambine che desiderano esplorare i luoghi di cultura di Reggio Emilia.', 'Chiostri di San Pietro 44c Via Emilia San Pietro 42121 Reggio Emilia', 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F512889499%2F1545456473353%2F1%2Foriginal.20230511-163027?w=940&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C2160%2C1080&s=9d9b9801e47a184e321f2a20e725e73a', 0, 15.0, 2);

INSERT INTO evento VALUES('7', 'Stelli - Stand Up Comedy', '2023-06-29', 'Genova', 'Nel suggestivo e alcolemico esterno dello Stelli un gruppo di comiche e comici si susseguiranno per due orette abbondanti.

Avete mai visto la Stand Up in uno spazio così, davanti al mare? probabilmente si, ma mai così bello.

Proveranno a farvi ridere, proverranno a farvi riflettere, ma soprattutto proveranno a farvi bere.

Infatti (oltre a quei guasconi che si esibiscono) troverai birre gustose, cocktails ben fatti e cibo succulento da accompagnare con qualche stuzzicheria davvero zozza.', 'Ciao GENOVA! Giovedì 29 Giugno allo Stelli sul Mare *STELLI UP COMEDY* con comici eccezionali!', 'Stelli sul Mare 19 Lungomare Lombardo 16145 Genova', 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F540151369%2F1453673065623%2F1%2Foriginal.20230621-121225?w=940&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C1640%2C820&s=351378d4130d8de9ca1b5d6774fcedbb', 1, 0.0, 3);

INSERT INTO evento VALUES('8', 'Matteo Fallica - Cicale - Comedy Show', '2023-07-04', 'Palermo', 'Matteo Fallica nasce a Bologna in una torrida estate del 1989, senza sapere che ci vorranno quasi trent’anni prima che decida di lanciarsi (più o meno letteralmente) sui palchi della stand-up comedy italiana.

Tra i pochi stand-up comedian LGBT+ attivi in Italia, ha partecipato a due edizioni di “Stand-Up Comedy” in onda su Comedy Central e nel 2023 ha aperto gli spettacoli di Alessandro Cattelan nel tour “Salutava Sempre”.

Nei suoi monologhi non mancano i grandi temi che tanto stanno a cuore ai millennial con partita iva (e non solo): mascolinità tossica, omofobi al bar, faccine di whatsapp, cicale, banche, fagiani e tanto altro. Non esattamente in questo ordine.', 'Matteo Fallica porta a Palermo il suo spettacolo di Stand-Up Comedy: Cicale.', 'Parco Villa Filippina Parco Villa Filippina 90138 Palermo', 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F523540669%2F1573455745833%2F1%2Foriginal.20230526-184255?w=940&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C14%2C1200%2C600&s=529bc55378b8ca8037a9315390d6f79c', 0, 20.0, 3);

INSERT INTO evento VALUES('9', 'La Ripartenza 2023 - Sessione Mattina', '2023-07-08', 'Bari', 'La quinta tappa de La Ripartenza si terrà, come da tradizione, al Teatro Petruzzelli di Bari il 7 luglio.

La Ripartenza23 proporrà una serie di tavole rotonde sui temi dell’economia, con un focus sul lusso il primo giorno e sull’industria e i servizi il secondo.

Si apre venerdì, con la breve pièce teatrale "Sfumature scorrette" a cura di Massimiliano Lenzi e Sarah Biacchi. Successivamente, ci sarà una lettura, sempre sul tema del politicamente corretto, tratta dal libro "Tolleranza", autore Luigi Marco Bassani e dell’attrice Ludovica Frasca Meral. A seguire avremo un panel sul mercato del lusso in Italia, a cui parteciperanno tra gli altri Remo Ruffini (Moncler), Diego della Valle (Tod’s), Diana Frescobaldi (Frescobaldi Vini).

Il sabato mattina, come da tradizione, si apre con Una Zanzara nella zuppa, lettura irriverente dei giornali realizzata da Nicola Porro e Giuseppe Cruciani. Seguirà un approfondimento sul mercato del turismo in Italia, con Paolo Barletta (Arsenale Spa), Bernardo Mattarella (Invitalia), Guido Grimaldi (Grimaldi), Mara Panajia (Henkel) e Michele Centemero (Mastercard).

Nel pomeriggio di sabato ci saranno una serie di lecture culturali con la collaborazione di Vittorio Sgarbi .

A seguire un panel dedicato alla necessità di avere una forte presenza industriale nel nostro paese. Restiamo la seconda manifattura d’Europa, la transizione ambientale rischia di penalizzarci, ma immaginare un’Italia senza fabbriche è rischioso e costoso. Sono previsti gli interventi di Marco Bonometti (Omr), Mario Rossetti (Open Fiber), Pietro Labriola (Tim), Cristina Scocchia (illycaffè) e altri.

Il tutto si concluderà con una tavola rotonda sul futuro di questo governo. Ne parleranno Alessandro Sallusti,Giuseppe Cruciani, Paola Ferrari, Pietrangelo Buttafuoco e Nicola Porro.', 'Una giornata di dibattiti e approfondimenti, condotti da Nicola Porro, nella cornice del teatro Petruzzelli di Bari', 'Teatro Petruzzelli 12 Corso Cavour 70122 Bari', 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F514127539%2F536090669847%2F1%2Foriginal.20230513-143534?w=940&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C4320%2C2160&s=d6f3c65347d5c241b72beeb913e294d9', 1, 0.0, 2);

INSERT INTO evento VALUES('10', 'Film Festival by TATE', '2023-07-03', 'Firenze', 'S﻿ei invitato a una serata dedicata al cinema con una selezione curata da Lorenzo Ciani fondatore del festival che è oggi alla sua 6° edizione.
Il tutto in una location eccezionale, Auditorium Innovation Center di Fondazione Cassa di Risparmio di Firenze.

Ci sarà una proiezione dei 3 cortometraggi vincitori nelle rispettive categorie 2D, 3D e Stop Motion: - Shell in Love by Svilen Dimitrov - AIKĀNE by Daniel Sousa, Dean Hamer, Joe Wilson - Txotxongiloa by Sonia Estévez - CIRCLE by Ke Wang - Footprints In The Forest by Juhaidah Joemin, Sandra Khoo. E infine, la proiezione del miglior film di animazione: METAMORPHOSIS - by Michele Fasano (ITA).',

'T﻿orna a Nana Bianca il Film Festival organizzato da TATE e curato da Lorenzo Ciani.', 'Nana Bianca 10 Piazza di Cestello 50124 Firenze', 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F535878909%2F191653209741%2F1%2Foriginal.20230614-153249?w=940&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C4%2C2178%2C1089&s=7275c9cc87a02bf4ca2745b2bf07301c', 0, 20.0, 2);

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







INSERT INTO evento VALUES('11', 'Concerto Live: Le Stelle del Jazz', '2023-08-15', 'Milano', 'Vieni a goderti una serata magica con il concerto live di "Le Stelle del Jazz". Gli artisti di fama internazionale si esibiranno sul palco e ti regaleranno un esperienza musicale indimenticabile. Non perdere l\'opportunità di ascoltare le note melodiose di questo genere musicale intramontabile.',
'Un concerto unico che ti lascerà senza fiato!', 'Teatro Alla Scala, Via Filodrammatici, 2, 20121 Milano', 'https://hancockinstitute.org/media/108A4554.jpg', 0, 35.0, 1);

INSERT INTO evento VALUES('12', 'Corso di Fotografia Digitale', '2023-09-05', 'Roma', 'Immergiti nel mondo della fotografia digitale con il nostro corso intensivo. Avrai l\'opportunità di imparare le tecniche avanzate di scatto, la post-produzione e la composizione fotografica. Il corso sarà tenuto da esperti del settore e ti forniremo tutto il materiale necessario per le esercitazioni pratiche.',
'Non perdere l\'occasione di sviluppare le tue abilità fotografiche!', 'Via del Corso, 123, 00187 Roma', 'https://images.unsplash.com/photo-1492691527719-9d1e07e534b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1171&q=80', 1, 0.0, 2);

INSERT INTO evento VALUES('13', 'Spettacolo Comico: La Risata è Assicurata', '2023-10-10', 'Napoli', 'Vieni a divertirti con lo spettacolo comico "La Risata è Assicurata". Gli artisti di cabaret più divertenti del momento ti faranno ridere a crepapelle con le loro battute esilaranti e i siparietti comici. Preparati a una serata di puro divertimento e allegria!',
'Un evento che ti farà scoppiare dalle risate!', 'Teatro Bellini, Via Conte di Ruvo, 14, 80133 Napoli', 'https://cdn.comedy.co.uk/images/library/comedies/900x450/r/russell_howard_stand_up_central_2.jpg', 0, 25.0, 3);


INSERT INTO evento VALUES('14', 'Conferenza Nazionale sull Educazione Digitale', '2023-11-20', 'Milano', 'Partecipa alla Conferenza Nazionale sull\'Educazione Digitale e scopri come la tecnologia sta trasformando il settore dell\'istruzione. Esperti di livello internazionale condivideranno le ultime tendenze, best practice e innovazioni nell\'ambito dell\'educazione digitale. Saranno presenti relatori di fama mondiale, workshop interattivi e opportunità di networking.',
'Un evento unico per esplorare il futuro dell\'istruzione!', 'Centro Congressi MiCo, Piazzale Carlo Magno, 1, 20149 Milano', 'https://images.unsplash.com/photo-1587825140708-dfaf72ae4b04?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80', 1, 30.0, 2);

INSERT INTO evento VALUES('15', 'Hackathon: Innovazione e Soluzioni', '2023-12-05', 'Roma', 'Partecipa al nostro Hackathon sulla tematica "Innovazione e Soluzioni per l\'Ecosostenibilità" e unisciti ad una community di creativi, programmatori e innovatori. Collabora in squadra per sviluppare progetti sostenibili che contribuiscano a un futuro migliore. Esperti del settore forniranno mentorship e premi saranno assegnati ai progetti più innovativi.',
'Un\'opportunità straordinaria per creare un impatto positivo!', 'Città dell\'Altra Economia, Largo Dino Frisullo, 00154 Roma', 'https://images.unsplash.com/photo-1504384308090-c894fdcc538d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80', 0, 45.0, 2);

INSERT INTO evento VALUES('16', 'Seminario di Leadership', '2023-12-15', 'Firenze', 'Partecipa al nostro Seminario di Leadership e scopri i segreti dei grandi leader che hanno lasciato un impronta nel mondo. Esperti di leadership condividono strategie, esperienze e competenze chiave per guidare con successo sia se stessi che gli altri. Il seminario fornirà spunti preziosi per sviluppare e potenziare le tue capacità di leadership.',
'Un\'occasione imperdibile per diventare un leader di successo!', 'Palazzo degli Affari, Piazza Adua, 1, 50123 Firenze', 'https://images.unsplash.com/photo-1561489404-42f13a2f09a2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80', 1, 25.0, 2);

INSERT INTO evento VALUES('17', 'Convegno di Educazione Globale', '2024-01-10', 'Bologna', 'Partecipa al Convegno di Educazione Globale e scopri le sfide e le opportunità dell\'istruzione per preparare gli studenti al futuro. Accademici, educatori e professionisti condivideranno le loro visioni sulle competenze chiave, le nuove metodologie didattiche e l\'importanza dell\'educazione interculturale. Saranno presenti sessioni plenarie, panel di discussione e workshop interattivi.',
'Un\'occasione unica per plasmare il futuro dell\'istruzione!', 'Palazzo dei Congressi, Piazza Costituzione, 40128 Bologna', 'https://images.unsplash.com/photo-1544531585-f14f463149ec?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80', 0, 60.0, 2);



INSERT INTO evento VALUES('20', 'Concerto Live di Rock', '2023-11-25', 'Torino', 'Vieni a goderti un concerto live di rock con band famose provenienti da tutto il mondo. Lasciati trasportare dall\'energia travolgente della musica rock e goditi una serata indimenticabile insieme ad altri appassionati.',
'Un\'esplosione di note e emozioni!', 'Stadio Olimpico Grande Torino, Corso Sebastopoli, 123, 10134 Torino', 'https://images.unsplash.com/photo-1604177052603-c2b4cff228db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80', 0, 35.0, 1);



INSERT INTO evento VALUES('21', 'Mostra d\'Arte Contemporanea', '2023-12-08', 'Napoli', 'Immergiti nell\'universo dell\'arte contemporanea attraverso una straordinaria mostra che presenta opere di artisti rinomati a livello internazionale. Ammira le diverse forme di espressione artistica e lasciati ispirare dalla creatività e dall\'innovazione che caratterizzano l\'arte moderna.',
'Un viaggio emozionante nel mondo dell\'arte contemporanea!', 'Museo d\'Arte Contemporanea Donna Regina, Via Settembrini, 79, 80139 Napoli', 'https://images.unsplash.com/photo-1527980965255-1b4c0be2a64e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80', 0, 20.0, 8);


INSERT INTO evento VALUES('23', 'Conferenza di Tecnologia', '2024-01-15', 'Firenze', 'Partecipa alla conferenza di tecnologia e scopri le ultime novità nel campo dell\'innovazione tecnologica. Esperti di settore condivideranno le tendenze emergenti, i futuri sviluppi e le applicazioni pratiche delle nuove tecnologie. Avrai l\'opportunità di interagire con i relatori e di ampliare la tua conoscenza nel mondo della tecnologia.',
'Un\'immersione nel futuro della tecnologia!', 'Palazzo dei Congressi, Piazza Adua, 1, 50123 Firenze', 'https://english.news.cn/europe/20220903/e32d5ebc8c7c4179b7668fac78678454/617858f18e644600815a390016c6a45b.jpg', 0, 40.0, 4);



INSERT INTO evento (nome, data, citta, descrizione, descrizione_card, indirizzo, immagine, gratuito, prezzo, tag_evento_id)
VALUES
('Conferenza strategie di marketing digitale', '2023-11-20', 'Milano', 'Partecipa alla conferenza sulle strategie di marketing digitale e scopri le ultime tendenze nel campo del marketing online. Esperti di marketing condivideranno le strategie vincenti, le best practice e le tattiche per promuovere il tuo business online.', 'Una guida pratica al marketing digitale!', 'Centro Congressi MiCo, Piazzale Carlo Magno, 1, 20149 Milano', 'https://www.wearemarketing.com/uploads/blog-images/d740e2416baaeeddacbb0808d0071568fe38f59b.jpeg', 0, 30.0, 4);

