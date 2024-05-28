CREATE DATABASE IF NOT EXISTS quizapp;

CREATE TABLE IF NOT EXISTS school_schedules (
  schedule_id INT PRIMARY KEY AUTO_INCREMENT,
  schedule_name VARCHAR(255) NOT NULL,
  schedule_desc VARCHAR(255) NOT NULL,
  schedule_img VARCHAR(255) NOT NULL
);

INSERT INTO school_schedules (schedule_name, schedule_desc, schedule_img) VALUES
('Economico Sociale', 'Indirizzo Economico Sociale', 'LES.jpg'),
('Scienze Applicate', 'Indirizzo Scienze Applicate', 'LSA.jpg'),
('Informatica', 'Indirizzo Informatica', 'info.jpg'),
('Telecomunicazioni', 'Indirizzo Telecomunicazioni', 'tele.jpg'),
('Biotecnologie', 'Indirizzo Biotecnologie', 'bio.jpg'),
('Energia', 'Indirizzo Energia', 'energia.jpg');


CREATE TABLE IF NOT EXISTS school_subjects (
  subject_id INT AUTO_INCREMENT PRIMARY KEY,
  subject_name VARCHAR(255) NOT NULL,
  schedule_ids VARCHAR(255) NOT NULL
);


INSERT INTO school_subjects (subject_name, schedule_ids) VALUES
('Biologia, Microbiologia', '5'),  
('Chimica Analitica e Strumentale', '5'),
('Chimica Organica e Biochimica', '5'),
('Diritto ed Economia politica', '1'),
('Filosofia', '1, 2'),
('Fisica', '1, 2'),
('Fisica Ambientale', '5'),
('Francese', '1'),
('GPOI', '3, 4'),
('Impianti Energetici', '6'),
('Informatica', '2, 3'),
('Inglese', '1, 2, 3, 4, 5, 6'),
('Italiano', '1, 2, 3, 4, 5, 6'),
('Matematica', '1, 2, 3, 4, 5, 6'),
('Meccanica ed Energia', '6'),
('Scienze Motorie e Sportive', '1, 2, 3, 4, 5, 6'),
('Scienze naturali', '1, 2'),
('Scienze umane', '1'),
('Sistemi e Automazioni', '6'),
('Sistemi e Reti', '3, 4'),
('Spagnolo', '1'),
('Storia', '1, 2, 3, 4, 5, 6'),
('Storia dell’arte', '1, 2'),
('Telecomunicazioni', '4'),
('Tecnologie Meccaniche', '6'),
('TPSIT', '3, 4');


CREATE TABLE IF NOT EXISTS subject_qnas (
  qna_id  INT PRIMARY KEY AUTO_INCREMENT,
  question  TEXT NOT NULL,
  answer TEXT NOT NULL,
  schedule_ids VARCHAR(255) NOT NULL,
  subject_id INT,
  FOREIGN KEY (subject_id) REFERENCES school_subjects(subject_id)
);


INSERT INTO subject_qnas (schedule_ids, subject_id, question, answer) VALUES
  ('1', 4, 'Domanda: Spiega il concetto di inflazione e quali sono le sue cause principali', 'Risposta : Nelle economie di mercato i prezzi di beni e servizi possono subire variazioni in qualsiasi momento: alcuni aumentano, altri diminuiscono. Si ha inflazione quando si registra un rincaro di ampia portata, che non si limita a singole voci di spesa. Questo significa che con un euro si possono acquistare oggi meno beni e servizi rispetto al passato. In altre parole, l inflazione riduce il valore della moneta nel tempo.Quando si calcola l incremento medio dei prezzi si attribuisce un peso maggiore alle variazioni dei beni e servizi per i quali i consumatori spendono di più (ad esempio l energia elettrica) rispetto a voci di spesa meno significative (quali lo zucchero o i francobolli). '),
  ('1', 4, 'Domanda: Cosa sono le politiche monetarie e fiscali e come vengono utilizzate per gestire l economia di un paese?', 'Risposta : La politica fiscale delinea come un governo genera entrate riscuotendo le tasse investe le stesse in spese e servizi di pubblica utilità e crea un bilancio realizzando proiezioni di entrate e uscite. Si basa sulla teoria economica keynesiana che suggerisce che la produttività macroeconomica di un paese può essere influenzata dalle decisioni del suo governo in materia di tassazione e spesa. I governi raggiungono obiettivi macroeconomici attraverso tasse spese e budget:Tasse : le principali fonti di reddito della spesa pubblica. Sono applicati a una vasta gamma di articoli come prodotti di consumo stipendi dei dipendenti alloggi e attività commerciali.Spesa : come il reddito generato dalle tasse viene utilizzato dal governo per creare sussidi programmi di welfare e progetti pubblici.Budgeting : piano di distribuzione delle attività di spesa e fondi del governo per lo più fissati a programmi di welfare nazionali come la sicurezza sociale e l assistenza sanitaria. '),
  ('1', 4, 'Domanda: Descrivi il concetto di concorrenza perfetta e fornisce esempi di mercati che si avvicinano a questa situazione', 'Risposta : La concorrenza perfetta è una forma di mercato in cui i produttori e i consumatori non sono in grado di influenzare i prezzi di mercato dei beni e dei servizi. È una forma di mercato caratterizzata da un elevato numero di venditori e compratori. Ogni singolo operatore economico occupa soltanto una parte infinitesimale della domanda o dell offerta dei beni. In tali condizioni il comportamento del singolo operatore ( acquisto o offerta ) non gli consente di influenzare e di far variare il prezzo di mercato. In concorrenza perfetta i soggetti economici sono price-taker in quanto prendono in considerazione il livello del prezzo determinato dal mercato, dalla libera e simultanea contrattazione fra acquirenti e offerenti. '),
  ('1', 4, 'Domanda: Quali sono le differenze tra economia di mercato, economia sociale e economia sostenibile?', 'Risposta : L economia sociale di mercato e l economia circolare rappresentano due visioni diverse dell economia, ognuna con obiettivi specifici e approcci distinti.L economia sociale di mercato si concentra sull armonizzazione della libertà economica e della giustizia sociale, cercando di trovare un equilibrio tra l efficienza economica e il benessere sociale. Il suo scopo principale è quello di creare un sistema in cui l economia di mercato coesista con politiche di inclusione sociale e sicurezza sociale. Si basa sui principi dell economia di mercato, ma prevede anche un ruolo attivo dello Stato nel raggiungimento di obiettivi sociali. L economia sociale di mercato è solitamente applicata a livello di un intero sistema nazionale o regionale.D altra parte, l economia circolare propone un cambiamento di paradigma rispetto al modello tradizionale di economia lineare. Invece di estrarre risorse, produrre beni e poi eliminare i rifiuti, l obiettivo dell economia circolare è ridurre al minimo lo sfruttamento delle risorse naturali e promuovere il riciclaggio, la riutilizzazione e il ripristino dei materiali e dei prodotti. Questo approccio mira a creare un sistema più sostenibile, riducendo lo spreco e ottimizzando il ciclo di vita dei prodotti. '),
  ('1', 4, 'Domanda: Descrivi il concetto di "welfare state" e discuti le sue origini storiche, le principali caratteristiche e il ruolo del governo nella sua implementazione?', 'Risposta : Per welfare state si intende l insieme di istituti dell intervento pubblico in economia – ulteriori rispetto agli interventi di uno stato minimale – che hanno come fine ultimo quello di garantire il benessere dei cittadini. Combattere le condizioni di povertà o di indigenza originate da motivazioni diverse(Malattia, invalidità, vecchiaia, disoccupazione). La grande crisi economica nata nel 1929 negli Stati Uniti, e rapidamente estesa in tutti i Paesi del mondo, ha accelerato la diffusione degli istituti di protezione sociale. • Un passo importante nella formazione degli istituti di welfare state è costituito dal Rapporto Beveridge, presentato nel 1942 in Gran Bretagna. Negli anni successivi alla Seconda Guerra Mondiale che, in tutte le economie occidentali con sistemi di libero mercato, si registra un enorme espansione quantitativa e qualitativa dell intervento pubblico nell economia con finalità sociali. • L affermazione delle destre (Thatcher nel Regno Unito, 1979 e Reagan negli USA, 1980) ha portato altramonto dellinterventismo di stampo keynesiano e ha imposto nuovi modelli di politica economica con uno smantellamento di alcuni istituti dello stato sociale. Si assiste a una riduzione dell entità dei trasferimenti verso lo stato sociale.  '),
  
  ('1', 21, 'Domanda: ¿De qué trata la literatura española contemporánea y qué temas y cuestiones sociales y económicas aborda?', 
'Risposta : Contexto Histórico y Cultural
Época y Ambientación: Refleja problemas actuales en España, como la pobreza y la desigualdad.
Contexto Cultural: La crisis económica y el desempleo crean un entorno donde la explotación infantil es posible.
Desafíos Sociales y Económicos
Pobreza: Las familias necesitan que los niños trabajen para sobrevivir.
Educación: Los niños explotados no pueden asistir a la escuela, perpetuando la pobreza.
Abuso: Trabajan en condiciones peligrosas y son vulnerables al abuso.
Reflejo en la Obra Literaria
Personajes y Tramas: Los niños son retratados como víctimas que luchan por una vida mejor.
Crítica Social: Los autores denuncian la indiferencia y la inacción gubernamental.
Estilo Realista: Detalles vívidos de las condiciones de vida y trabajo de los niños.
Simbología: La explotación infantil simboliza la corrupción y decadencia social.
Conclusión
La literatura española contemporánea utiliza la explotación infantil para criticar las condiciones sociales y económicas que perpetúan esta injusticia, destacando la necesidad de cambios urgentes para proteger a los niños.'),
  ('1', 21, 'Domanda: ¿Explora el papel de la literatura en sacar a la luz las desigualdades económicas y sociales en España. Aborda temas como la pobreza, la marginación y el acceso a los recursos económicos y sociales. ? ', 
  'Risposta : Papel de la Literatura en Resaltar Desigualdades en España
1. Pobreza
Narrativas Realistas: Obras como "Fortunata y Jacinta" de Benito Pérez Galdós retratan la pobreza en el siglo XIX.
Literatura Contemporánea: Escritores como Almudena Grandes, en "Los aires difíciles," abordan la precariedad económica en la España actual.
2. Marginación
Personajes Marginales: "La familia de Pascual Duarte" de Camilo José Cela muestra la vida de personas excluidas socialmente.
Ficción Social: "Crematorio" de Rafael Chirbes explora la corrupción y la marginación en la España moderna.
3. Acceso a Recursos Económicos y Sociales
Crítica a las Élites: "El hereje" de Miguel Delibes critica la desigualdad en la distribución de la riqueza.
Educación y Oportunidades: "La voz dormida" de Dulce Chacón trata sobre la represión franquista y la falta de acceso a la educación.
Impacto
Concienciación Social: La literatura aumenta la conciencia sobre las desigualdades y da voz a los desfavorecidos.
Movilización Social: Ha inspirado movimientos sociales y políticos, fomentando el cambio.
Ejemplos de Obras
"Fortunata y Jacinta" de Benito Pérez Galdós
"La familia de Pascual Duarte" de Camilo José Cela
"Los aires difíciles" de Almudena Grandes
"Crematorio" de Rafael Chirbes
"El hereje" de Miguel Delibes
"La voz dormida" de Dulce Chacón
Conclusión
La literatura española es vital para destacar y criticar las desigualdades económicas y sociales, promoviendo reflexión y cambio social.'),
  ('1', 21, 'Domanda: ¿Examina el concepto de "cuarto sector" a través de la lente de la literatura española contemporánea.Discute las dinámicas económicas y sociales que caracterizan a las empresas sociales y las organizaciones sin ánimo de lucro en España.? ', 
'Risposta : Concepto de "Cuarto Sector" en la Literatura Española Contemporánea
Dinámicas Económicas y Sociales del Cuarto Sector en España
Misión Social y Sostenibilidad Económica

Literatura: Ejemplo en "Los aires difíciles" de Almudena Grandes.
Innovación Social

Empresas sociales innovan para resolver problemas sociales.
Literatura: Ejemplo en "El hereje" de Miguel Delibes.
Impacto Comunitario

Enfoque en mejorar las condiciones de vida de las comunidades.
Literatura: Ejemplo en "Crematorio" de Rafael Chirbes.
Desafíos Financieros y Regulatorios

Luchas financieras y regulaciones que enfrentan las organizaciones del cuarto sector.
Literatura: Ejemplo en "La voz dormida" de Dulce Chacón.
Colaboración y Redes

Importancia de la colaboración entre diferentes actores para el éxito del cuarto sector.
Literatura: Ejemplo en "Patria" de Fernando Aramburu.
Conclusión
La literatura española contemporánea refleja cómo el "cuarto sector" aborda las desigualdades sociales y económicas mediante modelos empresariales sostenibles, innovadores y socialmente comprometidos. Estas obras ofrecen una crítica reflexiva sobre las dinámicas y desafíos que enfrentan estas organizaciones, destacando la importancia de equilibrar la misión social con la viabilidad económica para lograr un impacto positivo en la sociedad.'),
  ('1', 21, 'Domanda: ¿Cuáles son la viabilidad y los posibles impactos del "trabajo garantizado" como política laboral en el contexto económico actual? ', 
'Risposta:Impacto: Contribuiría significativamente a reducir la tasa de desempleo al proporcionar oportunidades de trabajo a quienes lo necesitan.
Mejora de la Estabilidad Económica:

Impacto:Reducción de la Pobreza y la Desigualdad:

Impacto: Podría aumentar los costos fiscales y generar presiones inflacionarias si no se maneja adecuadamente.
Impulso a la Productividad y Competitividad:

Impacto: Mejoraría la productividad laboral y la competitividad económica a largo plazo, especialmente con inversiones en formación y desarrollo laboral.


Conclusión
El concepto de trabajo garantizado se refiere a una política económica en la cual el gobierno se compromete a proporcionar empleo a todos los ciudadanos que estén dispuestos y sean capaces de trabajar, pero que no pueden encontrar empleo en el sector privado.'),
  ('1', 21, 'Domanda: ¿Cuál es el papel del Mercosur en la integración económica y política de América del Sur y cuáles son los desafíos que enfrenta en la actualidad para lograr sus objetivos? ', 
  'Risposta : Papel del Mercosur en la Integración Económica y Política de América del Sur y Desafíos Actuales

El Mercosur desempeña un rol crucial en la integración económica y política de América del Sur, promoviendo la libre circulación de bienes, servicios y factores productivos, así como la coordinación de políticas macroeconómicas y la armonización de legislaciones entre sus países miembros. Sin embargo, enfrenta desafíos importantes:

Integración Económica:
Zona de Libre Comercio:

Importancia: Eliminación de aranceles y barreras comerciales intra-regionales.
Beneficios: Estímulo al comercio y aumento de la competitividad.
Unión Aduanera:

Importancia: Establecimiento de una tarifa externa común para bienes importados.
Beneficios: Coordinación en la política comercial y fortalecimiento del comercio internacional.
Cooperación Económica e Infraestructura:

Importancia: Promoción de proyectos de integración física (transporte, energía).
Beneficios: Mejora de la conectividad y facilitación del comercio.
Integración Política:
Coordinación Política y Diplomática:

Importancia: Consenso en temas políticos y diplomáticos regionales e internacionales.
Beneficios: Fortalecimiento de la voz de América del Sur en foros globales.
Cooperación en Seguridad y Defensa:

Importancia: Promoción de la paz y la seguridad regional.
Beneficios: Fomento de la estabilidad y la confianza entre los países miembros.
Desafíos Actuales del Mercosur:
Crisis Económicas y Políticas Internas:

Desafío: Diferencias económicas y políticas entre los países miembros.
Impacto: Retrasos en la implementación de políticas y proyectos.
Negociaciones Comerciales Externas:

Desafío: Dificultades para avanzar en negociaciones comerciales externas.
Impacto: Pérdida de oportunidades de acceso a mercados externos.
Incertidumbre Política:

Desafío: Cambios políticos y liderazgos que pueden afectar la cohesión del bloque.
Impacto: Incertidumbre sobre la continuidad y el compromiso con la integración regional.
Adaptación a Nuevos Desafíos Globales:

Desafío: Necesidad de adaptarse a desafíos como la digitalización y el cambio climático.
Impacto: Requerimiento de nuevas políticas y regulaciones para el desarrollo sostenible.
Conclusión:
El Mercosur es fundamental para la integración de América del Sur, pero debe superar desafíos internos y externos para fortalecer su posición y cumplir sus objetivos de integración económica y política en la región.'),
 
  ('1', 18, 'Domanda: Quali sono le principali teorie sociologiche che spiegano lo sviluppo delle società moderne e come si collegano ai concetti economici chiave? ', 'Risposta : Le principali teorie sociologiche includono il funzionalismo, che vede la società come un sistema di parti interconnesse che lavorano insieme per mantenere l equilibrio; la teoria del conflitto, che si concentra sulle disuguaglianze di potere e risorse, sostenendo che la società è in costante stato di conflitto per il controllo delle risorse; e l interazionismo simbolico, che esplora come le interazioni quotidiane e i simboli costruiscano la realtà sociale. Queste teorie si collegano ai concetti economici chiave come la divisione del lavoro, la distribuzione delle risorse e il potere economico. '),
  ('1', 18, 'Domanda: Come influiscono i fattori socioeconomici nella formazione dell identità individuale e collettiva nelle comunità locali e globali? ', 'Risposta : I fattori socioeconomici, come il reddito, l istruzione e lo status occupazionale, influenzano profondamente l identità individuale e collettiva. A livello individuale, determinano le opportunità di vita, le aspirazioni e le esperienze personali. A livello collettivo, contribuiscono alla formazione delle identità di gruppo, come la classe sociale, e influenzano le dinamiche di inclusione ed esclusione nelle comunità locali e globali. '),
  ('1', 18, 'Domanda: Qual è il ruolo delle istituzioni sociali, come la famiglia, l istruzione e i media, nella riproduzione e trasformazione delle strutture sociali ed economiche? ', 'Risposta : Le istituzioni sociali come la famiglia, l istruzione e i media giocano un ruolo cruciale nella riproduzione delle strutture sociali ed economiche, trasmettendo valori, norme e conoscenze che mantengono lo status quo. Tuttavia, possono anche essere agenti di cambiamento, promuovendo nuove idee e comportamenti che trasformano le strutture esistenti. Ad esempio, l istruzione può aumentare la mobilità sociale, mentre i media possono sensibilizzare su temi di giustizia sociale e ineguaglianza. '),
  ('1', 18, 'Domanda: Qual è il rapporto tra i processi di globalizzazione economica e i cambiamenti nella distribuzione del potere politico ed economico a livello nazionale e internazionale? ', 'Risposta : La globalizzazione economica ha redistribuito il potere politico ed economico, spesso aumentando la disparità tra nazioni ricche e povere e tra élite economiche e popolazioni comuni. Ha portato alla delocalizzazione della produzione, all espansione delle multinazionali e a nuove forme di interdipendenza economica, influenzando le politiche nazionali e internazionali e rafforzando il potere delle istituzioni finanziarie globali. '),
  ('1', 18, 'Domanda: Quali sono le implicazioni socioeconomiche dei principali problemi contemporanei, come l ineguaglianza dei redditi, la migrazione e la sostenibilità ambientale, e come possono essere affrontate da una prospettiva interdisciplinare delle scienze umane? ', 'Risposta : Le implicazioni socioeconomiche dei problemi contemporanei sono profonde: l ineguaglianza dei redditi porta a tensioni sociali e riduce la coesione sociale; la migrazione può creare pressioni sui servizi pubblici e influenzare le dinamiche culturali; la sostenibilità ambientale è cruciale per il benessere futuro ma richiede cambiamenti economici e sociali significativi. Affrontare questi problemi richiede un approccio interdisciplinare, integrando economia, sociologia, politologia, studi ambientali e altre discipline per sviluppare soluzioni che considerino i vari aspetti umani e strutturali. '),
 
  ('5', 1, 'Domanda: Quali sono le principali applicazioni della biotecnologia nel campo della medicina e della salute umana, e quali sono le implicazioni etiche associate a tali applicazioni? ', 'Risposta : La biotecnologia ha rivoluzionato il campo della medicina con applicazioni che vanno dalle terapie geniche alla diagnostica avanzata. Le terapie geniche, ad esempio, permettono di correggere difetti genetici ereditari introducendo geni sani nelle cellule del paziente, offrendo nuove speranze per malattie come l emofilia e la distrofia muscolare di Duchenne. Un altra applicazione fondamentale è la produzione di farmaci biotecnologici, come l insulina umana ricombinante e gli anticorpi monoclonali, che hanno migliorato significativamente il trattamento di varie patologie, inclusi diversi tipi di cancro e malattie autoimmuni. Sul fronte della diagnostica, le tecnologie avanzate come il sequenziamento del DNA e i microarray permettono la diagnosi precoce e precisa di malattie genetiche e del cancro, facilitando interventi tempestivi e personalizzati. Inoltre, le terapie cellulari utilizzano cellule staminali per rigenerare tessuti e organi danneggiati, aprendo nuove strade per il trattamento di malattie neurodegenerative e lesioni spinali.Tuttavia, queste innovazioni sollevano diverse implicazioni etiche. La manipolazione genetica, soprattutto con tecnologie come CRISPR-Cas9, pone interrogativi sulla sicurezza a lungo termine e sulle conseguenze di alterazioni della linea germinale, come la possibilità di creare "designer babies". Inoltre, l accesso alle nuove terapie biotecnologiche spesso risulta diseguale a causa dei costi elevati, creando disparità tra diverse fasce della popolazione. Infine, la privacy genetica è un altro aspetto critico, poiché la gestione delle informazioni genetiche personali necessita di rigorose misure di protezione per evitare abusi e discriminazioni. '),
  ('5', 1, 'Domanda: Come la biotecnologia influisce sulla produzione di alimenti e sui metodi agricoli, e quali sono le controversie legate agli organismi geneticamente modificati (OGM)?', 'Risposta :Tra le tecnologie emergenti nella biologia molecolare, CRISPR-Cas9 si distingue per la sua capacità di effettuare editing genetico con una precisione e una semplicità senza precedenti, aprendo nuove possibilità per il trattamento di malattie genetiche e lo sviluppo di piante e animali modificati. Il sequenziamento delle singole cellule (single-cell sequencing) permette di analizzare le caratteristiche genetiche di singole cellule, migliorando la comprensione delle dinamiche cellulari e delle malattie complesse. Le nanotecnologie, d altra parte, trovano applicazione nella somministrazione mirata di farmaci e nella diagnostica, permettendo trattamenti più efficaci e con minori effetti collaterali.Queste tecnologie stanno accelerando le scoperte scientifiche e offrendo nuove applicazioni pratiche nel campo delle biotecnologie. Ad esempio, CRISPR potrebbe essere utilizzato non solo per trattare malattie genetiche, ma anche per sviluppare nuove varietà di piante più resistenti e nutrienti. Il single-cell sequencing può rivoluzionare la ricerca sul cancro, consentendo di individuare con precisione le cellule tumorali e personalizzare i trattamenti. Le nanotecnologie, con la loro capacità di operare a livello molecolare, stanno trasformando la somministrazione di farmaci, rendendola più efficiente e sicura.'),
  ('5', 1, 'Domanda: Quali sono le tecnologie emergenti nella biologia molecolare e come potrebbero influenzare la ricerca scientifica e le applicazioni pratiche nel campo delle biotecnologie?', 'Risposta : Tra le tecnologie emergenti nella biologia molecolare, CRISPR-Cas9 si distingue per la sua capacità di effettuare editing genetico con una precisione e una semplicità senza precedenti, aprendo nuove possibilità per il trattamento di malattie genetiche e lo sviluppo di piante e animali modificati. Il sequenziamento delle singole cellule (single-cell sequencing) permette di analizzare le caratteristiche genetiche di singole cellule, migliorando la comprensione delle dinamiche cellulari e delle malattie complesse. Le nanotecnologie, d altra parte, trovano applicazione nella somministrazione mirata di farmaci e nella diagnostica, permettendo trattamenti più efficaci e con minori effetti collaterali.Queste tecnologie stanno accelerando le scoperte scientifiche e offrendo nuove applicazioni pratiche nel campo delle biotecnologie. Ad esempio, CRISPR potrebbe essere utilizzato non solo per trattare malattie genetiche, ma anche per sviluppare nuove varietà di piante più resistenti e nutrienti. Il single-cell sequencing può rivoluzionare la ricerca sul cancro, consentendo di individuare con precisione le cellule tumorali e personalizzare i trattamenti. Le nanotecnologie, con la loro capacità di operare a livello molecolare, stanno trasformando la somministrazione di farmaci, rendendola più efficiente e sicura.Le potenziali terapie genetiche sviluppate grazie a queste scoperte includono la terapia genica, che mira a sostituire o riparare i geni difettosi all interno delle cellule del paziente, e le terapie basate sull RNA, che utilizzano meccanismi come l interferenza dell RNA (RNAi) per modulare l espressione genica. Queste terapie potrebbero rivoluzionare il trattamento di malattie come la fibrosi cistica, la distrofia muscolare e varie forme di cancro, offrendo soluzioni mirate e personalizzate che agiscono direttamente sulle cause genetiche delle malattie.'),
  ('5', 1, 'Domanda: Come la biologia molecolare contribuisce alla comprensione delle malattie genetiche e quali sono le potenziali terapie genetiche che potrebbero essere sviluppate per trattarle?', 'Risposta : La biologia molecolare ha contribuito in modo significativo alla comprensione delle malattie genetiche, permettendo di identificare mutazioni specifiche che causano queste patologie. L analisi genetica ha rivelato le basi molecolari di molte malattie ereditarie, aprendo la strada allo sviluppo di modelli di malattia che possono essere utilizzati per studiare le patologie e testare nuovi trattamenti.Le potenziali terapie genetiche sviluppate grazie a queste scoperte includono la terapia genica, che mira a sostituire o riparare i geni difettosi all interno delle cellule del paziente, e le terapie basate sull RNA, che utilizzano meccanismi come l interferenza dell RNA (RNAi) per modulare l espressione genica. Queste terapie potrebbero rivoluzionare il trattamento di malattie come la fibrosi cistica, la distrofia muscolare e varie forme di cancro, offrendo soluzioni mirate e personalizzate che agiscono direttamente sulle cause genetiche delle malattie. '),
  ('5', 1, 'Domanda: Qual è il ruolo della biotecnologia nella conservazione della biodiversità e nella protezione dell ambiente, e quali sono le sfide nella gestione sostenibile delle risorse naturali?', 'Risposta : La biotecnologia gioca un ruolo cruciale nella conservazione della biodiversità e nella protezione dell ambiente. Tecniche genetiche avanzate sono utilizzate per preservare specie in pericolo, clonando individui o creando riserve genetiche. Inoltre, la bioremediation, che utilizza microrganismi per degradare sostanze inquinanti, rappresenta una soluzione sostenibile per la decontaminazione ambientale.Tuttavia, ci sono sfide significative nella gestione sostenibile delle risorse naturali. L introduzione di organismi geneticamente modificati può avere impatti ecologici imprevisti, come la riduzione della biodiversità o la creazione di specie invasive. Inoltre, è essenziale bilanciare gli interessi economici e conservazionistici, assicurando che lo sviluppo tecnologico non comprometta la salute degli ecosistemi. La gestione sostenibile delle risorse naturali richiede un approccio integrato che consideri sia le esigenze umane che la protezione ambientale a lungo termine.'),
 
  ('5', 2, 'Domanda: Quali sono le principali tecniche analitiche e strumentali utilizzate nella caratterizzazione dei biomateriali e dei prodotti biotecnologici, e come contribuiscono alla qualità e alla sicurezza dei prodotti finali? ', 'Risposta : Le principali tecniche sono Microscopia (SEM, TEM, AFM)

Analizza morfologia e struttura.
Spettroscopia (FTIR, NMR, MS)

Identifica composizione e struttura chimica.
Cromatografia (HPLC, IEC, Affinità)

Separa e purifica componenti.
Diffrazione e Scattering (XRD, DLS)

Determina struttura cristallina e dimensione particelle.
Tecniche Termiche (DSC, TGA)

Analizza transizioni termiche e stabilità.
Contributo alla Qualità e Sicurezza
Qualità: Controllo impurità e conformità alle specifiche.
Sicurezza: Valutazione biocompatibilità e stabilità.
Efficacia: Caratterizzazione funzionale e purificazione.
Conclusione
Queste tecniche garantiscono la qualità, sicurezza ed efficacia dei biomateriali e prodotti biotecnologici.
 '),
  ('5', 2, 'Domanda: Come vengono impiegate le tecniche di spettrometria di massa e cromatografia nella separazione e nell identificazione di molecole biologicamente rilevanti, e quali sono le loro applicazioni pratiche nel campo delle biotecnologie? '
, 'Risposta :Cromatografia e Spettrometria di Massa
Cromatografia
HPLC: Separa e purifica proteine, peptidi e metaboliti.
IEC: Separa biomolecole caricate, come proteine e amminoacidi.
Colonna Affine: Purifica biomolecole con alta specificità, come anticorpi e enzimi.
Spettrometria di Massa (MS)
Identificazione: Misura la massa molecolare e identifica le molecole.
Applicazioni: Identificazione di proteine, peptidi, metaboliti e analisi di modificazioni post-traduzionali.
Applicazioni Pratiche
Proteomica: Identificazione e analisi delle proteine e delle loro modificazioni.
Metabolomica: Profilazione e studio dei metaboliti e delle vie metaboliche.
Sviluppo Farmaceutico: Identificazione, quantificazione e controllo di qualità dei farmaci.
Biotecnologie Ambientali: Monitoraggio degli inquinanti e processi di biorisanamento.
Diagnostica Clinica: Diagnosi di malattie e monitoraggio delle terapie tramite biomarcatori.
Conclusione
Queste tecniche sono fondamentali per garantire la qualità, sicurezza ed efficacia dei prodotti biotecnologici, con applicazioni che vanno dalla ricerca scientifica alla diagnostica e alla produzione industriale. '),
  ('5', 2, 'Domanda: Qual è l importanza della spettroscopia nel monitoraggio dei processi biotecnologici, e come può essere utilizzata per ottimizzare le rese di produzione e garantire la purezza dei prodotti? '
, 'Risposta :La spettroscopia riveste un importanza cruciale nel monitoraggio dei processi biotecnologici, poiché consente di ottenere informazioni dettagliate e in tempo reale sui processi e sui prodotti biologici. Ecco come può essere utilizzata:

Caratterizzazione dei Biomateriali:

Importanza: La spettroscopia permette di caratterizzare biomateriali come proteine, acidi nucleici e carboidrati, essenziali per la produzione biotecnologica.
Utilizzo: Identifica e quantifica molecole, analizzando spettri di assorbimento, emissione o risonanza magnetica.
Monitoraggio dei Processi di Produzione:

Importanza: Monitora variabili chiave come la concentrazione di substrati, la produzione di metaboliti e la crescita del microorganismo.
Utilizzo: Spettroscopia Raman, NIR o fluorescenza per misurare in-linea o in situ.
Ottimizzazione delle Rese di Produzione:

Importanza: Identifica condizioni ottimali per massimizzare la produzione di biomolecole.
Utilizzo: Analisi spettrale per ottimizzare temperatura, pH, e concentrazione di nutrienti.
Controllo della Purezza dei Prodotti:

Importanza: Assicura la qualità e la purezza dei prodotti biotecnologici.
Utilizzo: Spettroscopia UV-Vis, FTIR o NMR per verificare contaminanti o impurità.
Monitoraggio delle Interazioni Molecolari:

Importanza: Studia interazioni molecolari come legami proteina-ligando.
Utilizzo: Spettroscopia di fluorescenza o SPR per analizzare affinità e cinetica.
Conclusione:
La spettroscopia gioca un ruolo fondamentale nel monitoraggio e nell ottimizzazione dei processi biotecnologici, migliorando le rese di produzione e garantendo la purezza dei prodotti. Fornisce informazioni cruciali per regolare parametri di processo e per la qualità del prodotto finale, contribuendo così alla sicurezza e all efficacia delle applicazioni biotecnologiche. '),
  ('5', 2, 'Domanda: Come le tecniche di microscopia, come la microscopia elettronica a scansione e la microscopia a fluorescenza, consentono di studiare le strutture cellulari e subcellulari, e quali sono le implicazioni di tali studi per lo sviluppo di nuove terapie e diagnostica? ', 'Risposta : Le tecniche di microscopia, come la microscopia elettronica a scansione (SEM) e la microscopia a fluorescenza, sono fondamentali nello studio delle strutture cellulari e subcellulari, e hanno implicazioni significative nello sviluppo di nuove terapie e diagnostica. Ecco come contribuiscono:

Microscopia Elettronica a Scansione (SEM)
Studi delle Strutture Superficiali:

Importanza: Permette di visualizzare dettagli morfologici e topografici delle superfici cellulari.
Utilizzo: Indaga la forma, la dimensione e la distribuzione delle strutture cellulari.
Imaging ad Alta Risoluzione:

Importanza: Fornisce immagini dettagliate con risoluzione fino al nanometro.
Utilizzo: Utile per l analisi delle nanoparticelle, studi di interazione cellula-materiale e sviluppo di nanotecnologie in medicina.
Microscopia a Fluorescenza
Visualizzazione delle Strutture Cellulari:

Importanza: Permette di etichettare specificamente le strutture cellulari con fluorocromi.
Utilizzo: Studia localizzazione subcellulare, dinamica delle proteine e interazioni molecolari.
Imaging in Vivo:

Importanza: Utilizzata per osservare processi cellulari in tempo reale in organismi vivi.
Utilizzo: Cruciale per lo sviluppo di terapie basate su cellule e per l ottimizzazione della consegna di farmaci.
Implicazioni per lo Sviluppo di Nuove Terapie e Diagnostica
Identificazione di Anomalie Cellulari:

Implicazioni: Aiuta a comprendere le basi cellulari delle malattie e a identificare anomalie subcellulari.
Utilizzo: Guida lo sviluppo di biomarcatori e diagnostica precoce.
Targeting Terapeutico Preciso:

Implicazioni: Consente di studiare l interazione di farmaci con bersagli cellulari specifici.
Utilizzo: Ottimizza l efficacia dei trattamenti e minimizza gli effetti collaterali.
Innovazioni in Nanomedicina:

Implicazioni: Facilita lo sviluppo di nanosistemi per la consegna mirata di farmaci.
Utilizzo: Migliora la bioattività e la sicurezza dei farmaci.
Conclusione
Le tecniche di microscopia avanzate come SEM e microscopia a fluorescenza rivestono un ruolo essenziale nello studio delle strutture cellulari e subcellulari. Questi studi non solo aumentano la nostra comprensione delle basi biologiche delle malattie, ma anche facilitano lo sviluppo di nuove terapie, diagnostiche avanzate e innovazioni in nanomedicina, contribuendo così alla salute e al benessere. '),
  ('5', 2, 'Domanda: Quali sono le sfide e le opportunità nell applicazione delle tecniche di spettrometria di risonanza magnetica nucleare (NMR) nella caratterizzazione dei composti organici e biochimici, e come queste tecniche possono essere utilizzate per comprendere i meccanismi molecolari delle malattie e lo sviluppo di farmaci? ', 'Risposta : Sfide e Opportunità nell Applicazione della Spettrometria di Risonanza Magnetica Nucleare (NMR)

La spettrometria di risonanza magnetica nucleare (NMR) è una potente tecnica analitica utilizzata nella caratterizzazione dei composti organici e biochimici. Tuttavia, presenta sfide e opportunità significative nell ambito della ricerca scientifica, in particolare per comprendere i meccanismi molecolari delle malattie e nello sviluppo di farmaci.

Sfide:
Complessità e Interpretazione dei Dati:

Sfida: I dati NMR possono essere complessi da interpretare, specialmente quando si tratta di molecole biologicamente rilevanti.
Implicazioni: È necessaria un esperienza significativa per analizzare correttamente i dati e ottenere informazioni molecolari accurate.
Sensibilità e Quantità di Campione:

Sfida: NMR richiede quantità relativamente grandi di campione e può essere meno sensibile rispetto ad altre tecniche analitiche.
Implicazioni: Limitazioni nella quantità di campione disponibile, specialmente per biomolecole rare o in piccole quantità.
Costo degli Strumenti e della Manutenzione:

Sfida: Gli strumenti NMR sono costosi da acquistare, gestire e mantenere.
Implicazioni: Limita l accessibilità della tecnologia, specialmente in contesti di risorse limitate.
Complessità delle Biomolecole:

Sfida: Le biomolecole sono spesso complesse e possono interagire in modi dinamici.
Implicazioni: Richiede tecniche avanzate di NMR per studiare interazioni molecolari e dinamiche conformazionali.
Opportunità:
Alta Risoluzione Strutturale:

Opportunità: NMR fornisce una risoluzione strutturale ad alta definizione delle biomolecole.
Applicazione: Cruciale per comprendere la struttura e la funzione delle proteine, RNA, DNA e metaboliti.
Analisi della Dinamica Molecolare:

Opportunità: NMR consente lo studio della dinamica molecolare e delle interazioni a livello atomico.
Applicazione: Utile per comprendere i meccanismi molecolari delle malattie e per lo sviluppo di farmaci che interferiscono con specifiche interazioni molecolari.
Applicazioni in Vivo e in Vitro:

Opportunità: NMR può essere utilizzato sia in studi in vivo che in vitro.
Applicazione: Fondamentale per lo sviluppo di farmaci e per la valutazione degli effetti dei farmaci sui biomarcatori.
Progressi Tecnologici:

Opportunità: Avanzamenti nella tecnologia NMR migliorano la sensibilità e l accessibilità.
Applicazione: Permette studi più dettagliati e approfonditi, riducendo la necessità di grandi quantità di campione.
Utilizzo per Comprendere i Meccanismi Molecolari delle Malattie e lo Sviluppo di Farmaci:
Identificazione di Biomarcatori:

Applicazione: Utilizzo di NMR per identificare biomarcatori specifici e comprendere le basi molecolari delle malattie.
Progettazione e Valutazione dei Farmaci:

Applicazione: Utilizzo di NMR per studiare l interazione tra farmaci e bersagli molecolari, migliorando la progettazione e l ottimizzazione dei farmaci.
Studi di Metabolomica:

Applicazione: Utilizzo di NMR per lo studio di profili metabolici, identificando biomarcatori di malattie e monitorando risposte al trattamento.
Conclusione:
La spettrometria di risonanza magnetica nucleare (NMR) offre un potente strumento per la caratterizzazione dei composti organici e biochimici, con sfide legate alla complessità dei dati, alla sensibilità e al costo. Tuttavia, fornisce un alta risoluzione strutturale e dinamica molecolare, essenziale per comprendere i meccanismi molecolari delle malattie e per lo sviluppo di nuove terapie e diagnostica avanzata. '),
  
  ('5', 3, 'Domanda: Quali sono le principali classi di composti organici e biomolecole che costituiscono la base della chimica organica e biochimica, e come sono impiegate nella progettazione e sintesi di nuovi composti biologicamente attivi? ', 'Risposta : Le principali classi di composti organici e biomolecole che costituiscono la base della chimica organica e biochimica includono:

Classi di Composti Organici:
Idrocarburi:

Definizione: Composti costituiti solo da atomi di carbonio e idrogeno.
Esempi: Metano, etano, benzene.
Utilizzo: Come base per la sintesi di molti altri composti organici.
Alcoli:

Definizione: Composti contenenti un gruppo -OH (idrossile) legato a un atomo di carbonio.
Esempi: Etanolo, glicerolo.
Utilizzo: Solventi, reagenti per sintesi organica.
Chetoni:

Definizione: Composti con un gruppo carbonilico (C=O) legato a due atomi di carbonio.
Esempi: Acetone, propanone.
Utilizzo: Solventi, precursori per la sintesi di alcoli e acidi carbossilici.
Acidi Carbossilici:

Definizione: Composti con un gruppo carbossilico (COOH).
Esempi: Acido acetico, acido formico.
Utilizzo: Intermedi nella sintesi di esteri e ammidi.
Amine:

Definizione: Composti contenenti un gruppo amminico (-NH2) legato a un atomo di carbonio.
Esempi: Metilammina, etilammina.
Utilizzo: Precursori per la sintesi di farmaci, coloranti, polimeri.
Biomolecole:
Proteine:

Definizione: Polimeri di amminoacidi legati da legami peptidici.
Esempi: Insulina, emoglobina.
Utilizzo: Biocatalizzatori, struttura cellulare, trasporto di molecole.
Carboidrati:

Definizione: Polisaccaridi e zuccheri semplici.
Esempi: Glucosio, amido, cellulosa.
Utilizzo: Fonti di energia, componenti strutturali cellulari.
Lipidi:

Definizione: Molecole insolubili in acqua, come grassi e oli.
Esempi: Acidi grassi, colesterolo.
Utilizzo: Membrane cellulari, riserva energetica.
Acidi Nucleici:

Definizione: DNA e RNA, polimeri di nucleotidi.
Esempi: Adenina, citosina, timina.
Utilizzo: Informazione genetica, sintesi proteica.
Applicazione nella Progettazione di Composti Biologicamente Attivi:
Riconoscimento del Bersaglio Biologico:

Utilizzo: Comprendere le interazioni molecolari tra composti e bersagli biologici.
Esempio: Struttura della proteina nel sito attivo.
Modulazione dell Attività Biologica:

Utilizzo: Guidare la progettazione di composti che modificano l attività biologica.
Esempio: Sintesi di nuovi farmaci basati su analoghi strutturali.
Ottimizzazione della Selettività e dell Affinità:

Utilizzo: Migliorare l affinità e la selettività dei composti per i bersagli desiderati.
Esempio: Sintesi di inibitori enzimatici più potenti e specifici.
Valutazione della Sicurezza e dell Efficacia:

Utilizzo: Testare la sicurezza e l efficacia dei nuovi composti in modelli biologici.
Esempio: Studi preclinici e clinici per l approvazione dei farmaci.
Conclusione:
Le classi di composti organici e biomolecole forniscono le fondamenta per la chimica organica e biochimica, e sono cruciali per la progettazione e la sintesi di nuovi composti biologicamente attivi. L impiego di queste biomolecole nella progettazione di farmaci mira a ottimizzare l efficacia, la selettività e la sicurezza dei trattamenti farmacologici, influenzando positivamente il campo della medicina e della salute. '),
  ('5', 3, 'Domanda: Come le reazioni di trasformazione degli amminoacidi e degli zuccheri influenzano la struttura e la funzione delle proteine e dei carboidrati, e quali sono le implicazioni di tali processi nella progettazione di nuovi farmaci e terapie? ', 'Risposta : Le reazioni di trasformazione degli amminoacidi e degli zuccheri hanno un impatto significativo sulla struttura e sulla funzione delle proteine e dei carboidrati. Questi processi sono cruciali per la progettazione di nuovi farmaci e terapie, poiché influenzano direttamente la loro attività biologica, la stabilità e la selettività.

Amminoacidi:
Reazioni di Trasformazione:
Glicosilazione:

Descrizione: Aggiunta di zuccheri (come il glucosio) ai residui di amminoacidi nelle proteine.
Implicazioni: Regola la stabilità, la localizzazione subcellulare e l attività biologica delle proteine.
Ossidazione e Riduzione:

Descrizione: Modificazione dei gruppi funzionali degli amminoacidi.
Implicazioni: Può alterare la struttura e la funzione delle proteine, influenzando la loro attività enzimatica e interazioni molecolari.
Fosforilazione:

Descrizione: Aggiunta di gruppi fosfato a residui di amminoacidi.
Implicazioni: Regola l attività enzimatica e la trasduzione del segnale cellulare.
Implicazioni nella Progettazione di Farmaci e Terapie:
Modulazione dell Attività Enzimatica: Targetizzare la fosforilazione di specifici amminoacidi per regolare l attività enzimatica.
Inibizione Selettiva: Sfruttare la glicosilazione per modulare la selettività e l efficacia dei farmaci.
Zuccheri (Carboidrati):
Reazioni di Trasformazione:
Glicosilazione:

Descrizione: Aggiunta di zuccheri ai lipidi e alle proteine.
Implicazioni: Determina le interazioni cellulari, la protezione dalla degradazione e la funzione biologica dei carboidrati.
Ossidazione e Riduzione:

Descrizione: Modifica dei gruppi funzionali degli zuccheri.
Implicazioni: Altera la struttura e la funzione dei carboidrati, influenzando la loro attività biologica.
Sulfatazione:

Descrizione: Aggiunta di gruppi solfato a residui di zucchero.
Implicazioni: Regolazione dell adesione cellulare e delle interazioni proteina-glicano.
Implicazioni nella Progettazione di Farmaci e Terapie:
Targetizzazione di Interazioni Cellulare: Modulazione della glicosilazione per regolare le interazioni cellulare e lo sviluppo di terapie anticancro.
Inibizione delle Reazioni di Glicosilazione: Sviluppo di inibitori per interferire con la glicosilazione patologica.
Conclusione:
Le reazioni di trasformazione degli amminoacidi e degli zuccheri giocano un ruolo cruciale nella struttura e nella funzione delle proteine e dei carboidrati. Questi processi sono essenziali nella progettazione di nuovi farmaci e terapie, permettendo di modulare l attività biologica, la selettività e la sicurezza dei trattamenti farmacologici. La comprensione di questi meccanismi è fondamentale per sviluppare strategie terapeutiche innovative e migliorare l efficacia dei farmaci esistenti. '),
  ('5', 3, 'Domanda: Quali sono i meccanismi di azione degli enzimi e come possono essere sfruttati nella produzione di biocatalizzatori e nella sintesi di composti di interesse biotecnologico? ', 'Risposta : risposta in elaborazione '),
  ('5', 3, 'Domanda: Come la struttura e la funzione degli acidi nucleici, come il DNA e l RNA, influenzano l espressione genica e la trasmissione delle informazioni genetiche, e quali sono le applicazioni pratiche di tali conoscenze nella biotecnologia? ', 'Risposta : risposta in elaborazione '),
  ('5', 3, 'Domanda: Quali sono le strategie di ingegneria delle proteine e degli acidi nucleici utilizzate per modificare le proprietà e le funzioni biologiche delle biomolecole, e quali sono le implicazioni di tali modifiche per lo sviluppo di nuovi trattamenti medici e terapie genetiche?', 'Risposta : risposta in elaborazione '),
 
  ('5', 7, 'Domanda: Quali sono i principali fenomeni fisici che influenzano l ambiente naturale e come possono essere studiati e modellati per prevedere gli effetti dei cambiamenti climatici e delle attività antropiche?', 'Risposta : risposta in elaborazione '),
  ('5', 7, 'Domanda: Come la fisica ambientale contribuisce alla comprensione dei processi di inquinamento atmosferico e idrico, e quali sono le tecnologie sviluppate per monitorare e mitigare tali impatti nell ambito delle biotecnologie? ', 'Risposta : risposta in elaborazione '),
  ('5', 7, 'Domanda: Qual è il ruolo della fisica ambientale nello studio dell energia rinnovabile, come solare, eolica e idroelettrica, e quali sono le sfide e le opportunità nella loro integrazione nei sistemi energetici sostenibili?', 'Risposta : risposta in elaborazione '),
  ('5', 7, 'Domanda: Come la fisica dei materiali è impiegata nello sviluppo di tecnologie per il trattamento dei rifiuti e la bonifica dei siti contaminati, e quali sono le considerazioni ambientali da tenere in considerazione durante la progettazione di tali sistemi?', 'Risposta : risposta in elaborazione '),
  ('5', 7, 'Domanda: Quali sono le applicazioni della modellizzazione fisica e computazionale nell analisi dei fenomeni naturali, come la dispersione degli inquinanti e l evoluzione dei sistemi biologici, e come queste metodologie possono supportare la ricerca e lo sviluppo nel campo delle biotecnologie ambientali? ', 'Risposta : risposta in elaborazione '),
 
  ('6', 10, 'Domanda: Quali sono le principali fonti di energia utilizzate per la produzione di elettricità negli impianti energetici e quali sono i loro vantaggi e svantaggi in termini di sostenibilità ambientale e disponibilità?', 'Risposta : risposta in elaborazione '),
  ('6', 10, 'Domanda: Come funzionano i diversi tipi di impianti energetici, come le centrali termoelettriche a carbone, le centrali idroelettriche e le centrali nucleari, e quali sono le implicazioni socioeconomiche e ambientali legate alla loro operatività?', 'Risposta : risposta in elaborazione '),
  ('6', 10, 'Domanda: Qual è il ruolo delle energie rinnovabili, come l energia solare, eolica e geotermica, nella transizione verso un sistema energetico più sostenibile e quali sono le sfide tecniche ed economiche da affrontare nel loro impiego su larga scala?', 'Risposta : risposta in elaborazione '),
  ('6', 10, 'Domanda: Come sono strutturati e gestiti i sistemi di trasmissione e distribuzione dell energia elettrica e quali sono le tecnologie emergenti che potrebbero migliorarne l efficienza e l affidabilità?', 'Risposta : risposta in elaborazione '),
  ('6', 10, 'Domanda: Quali sono le politiche energetiche nazionali e internazionali volte a promuovere la diversificazione delle fonti energetiche e a mitigare gli impatti ambientali dei sistemi di produzione energetica, e quali sono le sfide nell implementare tali politiche nel contesto attuale?', 'Risposta : risposta in elaborazione '),
  
  ('6', 15, 'Domanda: Qual è il ruolo della meccanica nell industria energetica e come vengono applicati i principi meccanici nella progettazione e nell operatività degli impianti di generazione e trasmissione dell energia?', 'Risposta : risposta in elaborazione '),
  ('6', 15, 'Domanda: Come la conversione dell energia meccanica in energia elettrica avviene nei generatori elettrici e quali sono le tecnologie utilizzate per massimizzare l efficienza di questo processo?', 'Risposta : risposta in elaborazione '),
  ('6', 15, 'Domanda: Quali sono i principali tipi di turbine utilizzate nelle centrali elettriche e come funzionano per convertire l energia cinetica del flusso in energia rotazionale e quindi elettrica?', 'Risposta : risposta in elaborazione '),
  ('6', 15, 'Domanda: Come vengono applicati i principi della termodinamica nella progettazione e nell ottimizzazione degli impianti di cogenerazione e teleriscaldamento, e quali sono i vantaggi di tali sistemi nella produzione combinata di energia e calore?', 'Risposta : risposta in elaborazione '),
  ('6', 15, 'Domanda: Qual è il ruolo dell efficienza energetica nei sistemi meccanici e come vengono utilizzate le tecniche di analisi e ottimizzazione per ridurre le perdite e migliorare le prestazioni degli impianti energetici?', 'Risposta : risposta in elaborazione '),
  
  ('6', 19, 'Domanda: Come vengono utilizzati i sistemi di automazione nei processi di produzione e controllo degli impianti energetici, e quali sono i vantaggi in termini di efficienza operativa e sicurezza?', 'Risposta : risposta in elaborazione '),
  ('6', 19, 'Domanda: Quali sono i principali sensori e attuatori impiegati nei sistemi di automazione degli impianti energetici, e come contribuiscono alla raccolta di dati e al controllo dei processi?', 'Risposta : risposta in elaborazione '),
  ('6', 19, 'Domanda: Come vengono applicati i concetti di controllo automatico e regolazione nei sistemi di generazione e distribuzione dell energia, e quali sono le strategie utilizzate per garantire la stabilità e l affidabilità del sistema?', 'Risposta : risposta in elaborazione '),
  ('6', 19, 'Domanda: Qual è il ruolo dei sistemi SCADA (Supervisory Control and Data Acquisition) nell operatività degli impianti energetici e come vengono impiegati per il monitoraggio e la gestione remota dei processi?', 'Risposta : risposta in elaborazione '),
  ('6', 19, 'Domanda: Come la digitalizzazione e l Internet delle cose (IoT) stanno influenzando l evoluzione dei sistemi di automazione nell ambito energetico, e quali sono le sfide e le opportunità nell adozione di tali tecnologie?', 'Risposta : risposta in elaborazione '),
  
  ('6', 25, 'Domanda: Quali sono le tecnologie meccaniche utilizzate nella produzione di energia elettrica e termica, e come influenzano l efficienza e l affidabilità degli impianti energetici?', 'Risposta : risposta in elaborazione '),
  ('6', 25, 'Domanda: Come vengono impiegate le tecnologie di cogenerazione e trigenerazione per ottimizzare l utilizzo dell energia termica prodotta nei processi industriali e nell edilizia, e quali sono i vantaggi di tali sistemi nel contesto energetico attuale?', 'Risposta : risposta in elaborazione '),
  ('6', 25, 'Domanda: Qual è l importanza dei materiali nel settore energetico e come vengono selezionati e progettati materiali con prestazioni ottimali per componenti critici come turbine, generatori e scambiatori di calore?', 'Risposta : risposta in elaborazione '),
  ('6', 25, 'Domanda: Come vengono applicati i principi della termodinamica nella progettazione di cicli di produzione di energia e quali sono le considerazioni da tenere in considerazione per massimizzare l efficienza e ridurre le perdite?', 'Risposta : risposta in elaborazione '),
  ('6', 25, 'Domanda: Quali sono le innovazioni tecnologiche nel settore delle energie rinnovabili, come la tecnologia delle turbine eoliche offshore e le celle solari ad alta efficienza, e come influenzano il panorama energetico globale?', 'Risposta : risposta in elaborazione '),
  
  ('1,2', 5, 'Domanda: In che modo la teoria psicoanalitica di Freud sfida le concezioni tradizionali della mente umana e influisce sul nostro modo di comprendere il sé, l inconscio e la natura dei desideri e dei conflitti interiori?', 'Risposta : risposta in elaborazione '),
  ('1,2', 5, 'Domanda: Come il concetto di "superuomo" di Nietzsche sfida le concezioni morali tradizionali e quale ruolo gioca nell affermazione dell individualità e della creatività nel contesto dell etica dell Oltreuomo?', 'Risposta : risposta in elaborazione '),
  ('1,2', 5, 'Domanda: Qual è la critica principale di Marx alla società capitalista e come questa critica influisce sulla sua visione del progresso storico e sulle possibilità di emancipazione sociale e economica per le classi lavoratrici?', 'Risposta : risposta in elaborazione '),
  ('1,2', 5, 'Domanda: Qual è il ruolo della filosofia nel promuovere la consapevolezza critica e la riflessione sulla natura dell esistenza umana e sul significato della vita? ', 'Risposta : risposta in elaborazione '),
  ('1,2', 5, 'Domanda: In che modo Schopenhauer affronta il problema dell esistenza umana e del suo significato, e quali sono le sue argomentazioni contro la ricerca di felicità e la natura del desiderio umano nella sua filosofia del pessimismo? ', 'Risposta : risposta in elaborazione '),
  
  ('1,2', 6, 'Domanda: Come funziona una pila di Volta e quali sono i principi fisici alla base del suo funzionamento? Spiega il processo di generazione della corrente elettrica in una pila di Volta. ', 'Risposta : risposta in elaborazione '),
  ('1,2', 6, 'Domanda: Descrivi il concetto di campo elettrico e spiega come viene influenzato da cariche positive e negative. Qual è il significato fisico del vettore campo elettrico? ', 'Risposta : risposta in elaborazione '),
  ('1,2', 6, 'Domanda: Quali sono le leggi di Ohm e come sono formulate? Descrivi il loro significato fisico e spiega come vengono utilizzate per analizzare circuiti elettrici.', 'Risposta : risposta in elaborazione '),
  ('1,2', 6, 'Domanda: Illustra le leggi di Coulomb e spiega come descrivono l interazione tra cariche elettriche. Qual è l importanza pratica delle leggi di Coulomb nell analisi del comportamento delle cariche elettriche?', 'Risposta : risposta in elaborazione '),
  ('1,2', 6, 'Domanda: Descrivi la struttura di base di un atomo e spiega come è organizzato. Qual è il ruolo dei protoni, dei neutroni e degli elettroni nella struttura atomica e come sono distribuiti all interno di un atomo?', 'Risposta : risposta in elaborazione '),
  
  ('3,4', 9, 'Domanda: Cos è un processo un progetto e un programma ed evidenzia la differenza tra questi ', 'Risposta : Un progetto riguarda la creazione di qualcosa di nuovo o l implementazione di un cambiamento. Diversamente un processo ha lo scopo di creare valore eseguendo ripetutamente un attività. In un progetto, gli obiettivi e i piani possono essere modificati dagli stakeholder. I processi, invece, sono procedure stabilite per il lavoro in corso e possono essere modificati, generalmente, solo con pianificazione e investimenti. In effetti, con qualsiasi processo che abbia un impatto significativo su un business, è idealmente necessario un progetto per cambiare quel processo.Nell organizzazione aziendale la gestione dei processi è un elemento di vitale importanza per la crescita dell azienda. Un processo aziendale è costituito da una serie di attività interconnesse tra loro per svolgere meglio la gestione operativa e funzionale dell impresa. Attraverso i processi aziendali, l azienda aumenta il valore delle risorse trasformandole in prodotti finali utili a migliorare la soddisfazione di un cliente. Ad esempio, in una sessione di business coaching, può essere osservato il percorso completo che fa una risorsa a partire dal suo ingresso in azienda (input), durante i passaggi intermedi nei diversi reparti, fino all output di processo ovvero la vendita. Il processo aziendale è una realtà che si innesta nella direzione di un azienda, un elemento indispensabile al fine di migliorare la produttività. Di seguito andremo a considerare cos’è, quali sono le sue fasi, come realizzarlo e le differenti classificazioni Un progetto è temporaneo in quanto ha un inizio e una fine nel tempo definiti, e quindi un ambito e risorse definiti. '),
  ('3,4', 9, 'Domanda: Illustra cos è un organigramma e per cosa è usato, aiutati facendo un esempio reale di organigramma ', 'Risposta :Un organigramma mostra la struttura interna di un organizzazione o società. I dipendenti e le posizioni sono rappresentati da caselle o altre forme, che a volte includono foto, informazioni di contatto, collegamenti a e-mail e pagine Web, icone e illustrazioni. Le linee dritte o a gomito collegano insieme i livelli.  Con il nostro software per organigrammi, viene creata una chiara rappresentazione visiva della gerarchia e dei ranghi delle persone, dei diversi lavori e dipartimenti che compongono l organizzazione. Organigramma gerarchico: questo è il tipo di organigramma più comune, e dà origine al sinonimo Grafico delle gerarchie. Una gerarchia è uno schema a forma di piramide, dove un gruppo o una persona è in cima, mentre quelli con meno potere sono sotto di loro. Pensa a una monarchia con un re o una regina nel punto più alto, oppure a un organizzazione con il CEO in cima. Con una gerarchia, i membri in genere comunicano con la persona a cui devono fare riferimento e con chiunque faccia riferimento direttamente a loro. Organigramma a matrice: in genere si riscontra solo quando i singoli individui hanno più di un manager. Ad esempio, un organizzazione potrebbe avere un team di grafici che fanno tutti capo al capo grafico. I grafici stanno anche lavorando ad altri progetti che sono probabilmente guidati da un project manager separato. In questo caso, i grafici avranno due manager. '),
  ('3,4', 9, 'Domanda: Spiega cos è il ciclo di vita di un processo, le sue fasi e fai un esempio pratico ', 'Risposta : La cooperazione consente a più processi di rendere parallela l esecuzione attraverso la CPU, condividere un servizio di rete, condividere una serie di informazioni. Durante il ciclo di vita di un processo, esso attraversa vari stati.NEW il programma è stato richiesto e aspetta di entrare in memoria centrale.READY il programma è diventato una serie di processi, è presente in MC, e sta aspettando di usare la CPU.RUNNING il processo è in esecuzione perchè gli è stato assegnato il processore e da questa situazione può uscire x: deve operare in I/O, è finito il time slaise, è terminato o arriva un processo di maggiore priorità.WAITING il processo si trova in questo stato quando aspetta di svolgere un operazione di I/O.TERMINATED il processo ha svolto tutti i suoi calcoli e rilascia tutte le risposte. '),
  ('3,4', 9, 'Domanda: Parla dell importanza della divisione dei lavori in un progetto e dei ruoli specifici, fai qualche esempipo di ruolo , magari dal più alto gerarchicamente al piu basso ', 'Risposta : Chiarire ruoli e responsabilità per lo svolgimento di un progetto è un passaggio fondamentale della fase di pianificazione. Deve essere svolto con estrema cura in modo da coinvolgere le persone interessate ed ottenerne l impegno a fare quanto concordato. Per alcuni ritrovarsi coinvolti in un progetto può costituire una novità; per altri può essere una prassi abituale. E’ quindi importante allineare tutti sul modo di operare e sul contributo richiesto a ciascuno. Una particolare attenzione deve essere posta nello strutturare il compito di quelle persone che non sono abituate a lavorare in un progetto. Esse conoscono molto bene le attività di routine e le procedure organizzative ma non necessariamente sono al corrente di come si deve operare all interno di un progetto. E’ quindi importante chiarire ruoli e responsabilità nonché i compiti di ciascuno soprattutto se le persone tra di loro non si conoscono e non hanno mai lavorato su un progetto dello stesso tipo. Esistono diversi strumenti a disposizione per chiarire ruoli e responsabilità: Prima di tutto è importante che il project manager conosca i ruoli chiave necessari per lo svolgimento di un progetto. In tal senso, è opportuno che ogni organizzazione definisca la propria governance di gestione progetti. Una volta definito l ambito del lavoro da svolgere, occorre predisporre in fase di pianificazione l organigramma di progetto con indicati i ruoli e le linee di riporto (OBS di progetto). Insieme alla OBS deve essere prodotta anche la RAM di progetto che illustra le attività da svolgere ed i ruoli coinvolti in ciascuna attività. A questi documenti è opportuno affiancare anche la WBS di progetto che chiarisce ciò che dovrà essere prodotto e l ambito del lavoro da svolgere. '),
  ('3,4', 9, 'Domanda: Spiega cos è il BEP(Break Even Point) e come si calcola ', 'Risposta :Nella definizione più calzante per quanto riguarda la contabilità di un azienda, il break even point, sovente abbreviato in BEP, è il punto in cui, su un grafico, i costi totali (spese) e le vendite totali (entrate) dell impresa sono perfettamente uguali. Se i ricavi totali sono uguali ai costi totali, infatti, significa che l azienda ha un profitto pari a zero. Se ne deduce che per un azienda il punto di pareggio è una sorta di margine, che esprime il valore di ricavi necessario a coprire l importo totale delle spese, fisse e variabili, durante un determinato periodo di tempo. Il break even point è dunque utile per determinare quante unità di prodotto devono essere vendute, a un determinato prezzo, per raggiungere almeno il punto in cui non si verifichino delle perdite. Come detto, la traduzione più appropriata della parola break even point è senza dubbio ‘punto di pareggio’; la break even analysis, ovvero l analisi del punto di pareggio, è il metodo che serve per conoscere come modificare i livelli di output per raggiungere il BEP. La formula che permette di calcolare il break even point è quella che vede il punto di pareggio come il risultato della divisione tra i costi fissi e la sottrazione del costo variabile unitario al prezzo di vendita. Q, il valore da calcolare, è la quantità di equilibrio, per l appunto la quantità di prodotto da produrre e vendere per pareggiare la struttura dei costi. In altri termini: Estesa: Break even point = Costi fissi/(Prezzo di vendita unitario – Costo variabile unitario; Con abbreviazioni: BEP = CF/(PV-CVU) Per leggere questa formula, occorre ovviamente conoscere i costi fissi; stabilire il prezzo di vendita unitario, ovvero il prezzo di vendita di una sola unità del prodotto; stabilire il costo variabile unitario, ossia il costo variabile applicato a quella singola unità di prodotto. '),
  
  ('3,4', 11, 'Domanda: Cos è un inconsistenza in un Database e cosa può portare? ', 'Risposta : L inconsistenza si ha quando due dati che rappresentano la stessa informazione hanno valori diversi. I DBMS(DataBase Management System) in genere controllano che i dati siano coerenti, modifiche non valute possono derivare da malfunzionamenti software o hardware. Un esempio è La ridondanza dei dati complica il processo di pulizia dei dati e di controllo della qualità. Identificare e risolvere problemi quali duplicati, imprecisioni o informazioni obsolete diventa più difficile quando esistono copie ridondanti di dati in diversi sistemi o posizioni. Rischi per la conformità e la sicurezza.  '),
  ('3,4', 11, 'Domanda: Elencami gli elementi principali di un modello relazionale , menziona anche gerarchie e cardinalità ', 'Risposta : Il modello relazionale è un modello logico in cui la base di dati è vista come un insieme di tabelle su cui possono essere eseguite delle operazioni. Questo modello si chiama così perché è fondato sul concetto matematico di relazione tra insiemi di oggetti.Una relazione è un sottoinsieme di tutte le “uple” (righe) che si possono costruire prendendo il primo elemento del primo insieme, il secondo elemento del secondo insieme, e così via.Una relazione con n colonne si indica come una relazione di grado n, il nome delle colonne si dice attributo, l insieme dei valori che possono essere assunti da un attributo si chiama dominio di quell attributo e il numero delle uple (righe) che compongono una tabella (chiamate anche tuple) si chiama cardinalità della relazione.La relazione rappresenta un entità, ogni upla rappresenta un istanza dell entità, le colonne contengono i valori assunti dagli attributi delle entità.La chiave della relazione è un attributo (o una combinazione di attributi) che identifica univocamente le uple all interno della relazione, cioè ogni riga della tabella possiede valori diversi per l attributo (o gli attributi) chiave.Il modello relazionale di un database è un insieme di tabelle sulle quali si possono effettuare operazioni, e tra le quali possono essere stabilite associazioni.Requisiti fondamentali del modello relazionale:1. Tutte le righe della tabella contengono lo stesso numero di colonne, corrispondenti agli attributi;2. Gli attributi rappresentano informazioni elementari, non scomponibili ulteriormente, cioè non ci sono campi di gruppo che contengono per ogni riga un insieme di valori invece di un solo valore;3. I valori assunti da un campo appartengono al dominio dei valori possibili per quel campo, e quindi sono valori omogenei tra loro, cioè dello stesso tipo;4. In una relazione, ogni riga è diversa da tutte le altre, cioè non ci possono essere due righe con gli stessi valori dei campi: questo significa che esiste un attributo o una combinazione di più attributi che identificano univocamente la upla e che assumono la funzione di chiave primaria; La chiave (formata da uno o più attributi) identifica la upla all interno della tabella. Per questo motivo, il modello relazionale fissa una regola di integrità sui dati, della integrità sull entità, secondo la quale la chiave primaria non può avere un valore nullo.'),
  ('3,4', 11, 'Domanda: Spiega come avviene la conversione tra modello ER a schema logico menzionando le funzioni delle chiavi esterne', 'Risposta : Ad ogni entità corrisponde una tabella con gli stessi attributi • gli attributi dell Entità costituiscono lo schema della tabella • L identificatore (semplice o composto) dell Entità diventa la chiave primaria della tabella • Gli attributi opzionali dell Entità sono attributi che possono assumere il valore NULL.   Per la traduzione di una Relazione: Passo 1: Vengono prima tradotte le Entità che partecipano alla Relazione Passo 2: Viene quindi tradotta la Relazione. Diverse regole di traduzione per Relazione binaria e ternaria Per una Relazione binaria occorre considerare la cardinalità massima e minima con cui le Entità partecipano alla Relazione'),
  ('3,4', 11, 'Domanda: illustra la differenza tra HTTP e HTTPS e su quali porte del web girano ', 'Risposta : Http e https sono due varianti dello stesso protocollo di telecomunicazione, ovvero quell insieme di regole che definisce i metodi comunicativi tra due o più entità. Essi sono molto utilizzati durante la navigazione web medianti i più conosciuti browser, come Google Chrome, Microsoft Edge e Safari. La principale differenza tra http (l acronimo di HyperText Transfer Protocol) ed https (la cui s finale sta per Secure) risiede appunto nella maggiore sicurezza che quest’ultima variante di protocollo offre rispetto alla prima. Infatti, se nell http lo scambio di risorse tra client e server avviene “in chiaro” (ovvero l informazione che viene diffusa può essere letta da chi decide di intromettersi senza diritto nello scambio dei dati), nell https la comunicazione è protetta grazie all impiego di determinati certificati (come quello SSL, acronimo di Secure Socket Layer) che garantiscono gli aspetti seguenti:'),
  ('3,4', 11, 'Domanda: Spiega come si può usare il linguaggio PHP e come avviene la connesione da un codice ad un database ', 'Risposta :PHP (Hypertext Preprocessor) è un linguaggio di scripting ampiamente utilizzato per lo sviluppo di applicazioni web dinamiche e interattive. Ecco come si può utilizzare PHP e come avviene la connessione da un codice PHP a un database: Utilizzo di PHP:
PHP viene incorporato direttamente nel codice HTML, consentendo agli sviluppatori di creare pagine web dinamiche.
Con PHP è possibile eseguire operazioni come la gestione di form, l accesso a database, la gestione di sessioni utente e molto altro ancora. Connessione a un database da un codice PHP:
Per connettersi a un database da un codice PHP, è necessario utilizzare una delle estensioni di database supportate da PHP, come MySQLi (improved MySQL) o PDO (PHP Data Objects). <?php
// Credenziali di accesso al database
$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "nome_database";'),
  ('3', 12, 'Domanda: explains the difference between a peer to peer network and a client-server network specifying the characteristics of each', 'Risposta : In a peer-to-peer network, all devices or nodes in the network are considered equal, and each device can act as both a client and a server. Here are the key characteristics:
Decentralized: P2P networks are decentralized, meaning there is no central authority or server controlling the network. Each node can communicate directly with other nodes.
Equal Role: Every device in the network has an equal role and can serve as both a client (requesting resources) and a server (providing resources). Resilience: P2P networks are often resilient to failures because there is no single point of failure. If one node goes offline, other nodes can continue to communicate with each other.
Client-Server Network:
In a client-server network model, there are dedicated servers that provide resources or services to client devices. Here are the key characteristics:
Centralized: Client-server networks are centralized, meaning there is a central server or servers that control the network and provide resources or services to clients.
Distinct Roles: Servers have distinct roles from clients. Servers are responsible for providing resources or services, while clients request and consume these resources or services.
Resource Management: Servers manage and control access to resources, ensuring that clients have appropriate permissions to access them.
Efficiency: Client-server networks can be more efficient for centralized tasks, as servers can have higher processing power, storage capacity, and bandwidth compared to client devices.
Security: Client-server networks often have centralized security measures, allowing administrators to implement security policies, access controls, and monitoring more effectively.'),
  ('3', 12, 'Domanda: explains what the ISO/OSI model is, how it was created and which layers compose it', 'Risposta : Creation of the ISO/OSI Model:
The ISO/OSI model was developed by the International Organization for Standardization (ISO) in the late 1970s as a framework to facilitate interoperability between different vendors  networking technologies. It was designed to define a standard approach to networking that could accommodate various types of networks and technologies.

Layers of the ISO/OSI Model:
The ISO/OSI model consists of seven layers, each responsible for specific functions in the communication process. These layers, from bottom to top, are as follows:

Physical Layer (Layer 1): This is the lowest layer of the OSI model and deals with the physical connection between devices. It defines the electrical, mechanical, and procedural aspects of data transmission over the physical medium, such as cables, connectors, and wireless signals.
Data Link Layer (Layer 2): The data link layer is responsible for establishing and maintaining a reliable communication link between two adjacent nodes. It handles error detection and correction, flow control, and framing of data packets.
Network Layer (Layer 3): The network layer focuses on routing and forwarding data packets across multiple networks. It determines the best path for data transmission, based on network topology, addressing, and routing protocols.
Transport Layer (Layer 4): The transport layer ensures end-to-end communication between hosts and provides error recovery and flow control mechanisms. It segments and reassembles data from upper layers and ensures reliable delivery of data packets.
Session Layer (Layer 5): The session layer establishes, maintains, and terminates communication sessions between applications running on different devices. It manages dialog control and synchronization between applications.
Presentation Layer (Layer 6): The presentation layer is responsible for data formatting, encryption, and compression, ensuring that data is presented in a readable format for the application layer. It handles data encryption, decryption, and data conversion.
Application Layer (Layer 7): The application layer is the highest layer of the OSI model and provides network services directly to end-user applications. It enables user access to network resources and supports various application-level protocols, such as HTTP, FTP, SMTP, and DNS.
 '),
  ('3', 12, 'Domanda: tell me what a computer network is and what types of networks you know by giving a practical example of us', 'Risposta : A computer network is a collection of interconnected computers and other devices that can communicate and share resources with each other. These networks enable data exchange, resource sharing, and communication between devices, allowing users to access information and services from anywhere within the network.
Here are some common types of computer networks along with practical examples:
Local Area Network (LAN):
A LAN is a network that covers a small geographical area, such as a home, office building, or school campus.
Practical Example: A small office with multiple computers connected to a central server for file sharing, printing, and internet access.
Wide Area Network (WAN):
A WAN spans a large geographical area and typically connects multiple LANs or other networks over long distances.
Practical Example: A multinational corporation with branch offices in different countries connected via leased lines, MPLS (Multiprotocol Label Switching), or VPN (Virtual Private Network). 
Metropolitan Area Network (MAN):
A MAN covers a larger geographical area than a LAN but smaller than a WAN, typically serving a city or metropolitan area.
Practical Example: A city-wide network connecting various government offices, educational institutions, and businesses for inter-organizational communication and resource sharing.'),
  ('3', 12, 'Domanda: lists the main components of a LAN type network and their use', 'Risposta : Network Interface Cards (NICs):
Network Interface Cards (NICs) are hardware components installed in each device to enable them to connect to the LAN.
Use: NICs facilitate the transmission and reception of data packets between devices on the LAN.
Switches:
Switches are networking devices that connect multiple devices within the LAN and manage the flow of data between them.
Use: Switches facilitate communication between devices by directing data packets only to the intended recipient, improving network efficiency and security.
Router:
A router is a networking device that connects multiple LANs or LANs to the internet, allowing communication between different networks.
Use: Routers forward data packets between different networks based on their IP addresses, enabling devices on the LAN to access resources outside the local network, such as the internet.
Access Points (Wireless LANs):
Access Points (APs) are networking devices that enable wireless devices to connect to the LAN wirelessly, forming a Wireless Local Area Network (WLAN).
Use: APs provide wireless connectivity to devices within the LAN, allowing them to access network resources without the need for physical cables.
Cables/Wireless Connections:
Ethernet cables (e.g., Cat5e, Cat6) or wireless connections (Wi-Fi) are used to connect devices to the LAN.
Use: Cables and wireless connections establish physical or wireless communication pathways between devices, enabling data transmission within the LAN. '),
  ('3', 12, 'Domanda: explain what e-commerce is and how you use it. give examples of using it', 'Risposta :E-commerce, short for electronic commerce, refers to the buying and selling of goods and services over the internet. It encompasses a wide range of online transactions, including online retail (e-tail), electronic payments, online auctions, and digital marketplaces. E-commerce has become increasingly popular due to its convenience, accessibility, and ability to reach a global audience. Here s how you can use e-commerce, along with some examples:
1. Online Retail (E-tail):

You can browse and purchase a variety of products from online retailers  websites or mobile apps.
Example: Ordering clothing, electronics, books, or groceries from websites like Amazon, eBay, or Alibaba.
2. Digital Services and Subscriptions:

You can subscribe to digital services such as streaming platforms, software subscriptions, or online courses.
Example: Subscribing to Netflix for streaming movies and TV shows, purchasing a subscription to Adobe Creative Cloud for graphic design software.
3. Online Marketplaces:
You can buy and sell goods from various sellers on online marketplaces, often offering a wide range of products.
Example: Buying handmade crafts on Etsy, selling vintage items on eBay, or purchasing artisanal goods on Etsy.'),

  ('4', 12, 'Domanda: tell me what a computer network is and what types of networks you know by giving a practical example of us', 'Risposta :  A computer network is a collection of interconnected computers and other devices that can communicate and share resources with each other. These networks enable data exchange, resource sharing, and communication between devices, allowing users to access information and services from anywhere within the network.
Here are some common types of computer networks along with practical examples:
Local Area Network (LAN):
A LAN is a network that covers a small geographical area, such as a home, office building, or school campus.
Practical Example: A small office with multiple computers connected to a central server for file sharing, printing, and internet access.
Wide Area Network (WAN):
A WAN spans a large geographical area and typically connects multiple LANs or other networks over long distances.
Practical Example: A multinational corporation with branch offices in different countries connected via leased lines, MPLS (Multiprotocol Label Switching), or VPN (Virtual Private Network). 
Metropolitan Area Network (MAN):
A MAN covers a larger geographical area than a LAN but smaller than a WAN, typically serving a city or metropolitan area.
Practical Example: A city-wide network connecting various government offices, educational institutions, and businesses for inter-organizational communication and resource sharing. '),
  ('4', 12, 'Domanda: Briefly describe the architecture of a microprocessor and explain the functions of the main components, such as the control unit, the processing unit and the cache memory.', 'Risposta : The architecture of a microprocessor typically consists of several key components that work together to execute instructions and process data. Here s a brief overview of these components:
Control Unit (CU):
The Control Unit is responsible for managing the execution of instructions and coordinating the operation of other components within the microprocessor.
It fetches instructions from memory, decodes them to determine the required operations, and executes them by coordinating the activities of other units.
The Control Unit ensures that instructions are executed in the correct sequence and controls the flow of data between different components of the microprocessor.
Arithmetic Logic Unit (ALU):
The Arithmetic Logic Unit is responsible for performing arithmetic and logical operations on data received from memory or registers.
It can perform operations such as addition, subtraction, multiplication, division, AND, OR, and NOT on binary data.
The ALU operates under the control of the Control Unit and produces results based on the instructions provided.
Registers:
Registers are small, high-speed memory locations within the microprocessor used to store data temporarily during processing.
They hold data, instructions, memory addresses, and intermediate results during program execution.
Registers are directly accessible by the ALU and provide fast access to data for processing.
Cache Memory:
Cache memory is a small, high-speed memory located within the microprocessor or close to it.
It stores frequently accessed data and instructions from main memory to reduce the time required to fetch them from slower main memory.
Cache memory helps improve the performance of the microprocessor by reducing the average time taken to access data and instructions.'),
  ('4', 12, 'Domanda: Describe the concept of Virtual Private Network (VPN) and explain how it works to enable secure, private communication over public networks such as the Internet. Discuss its practical applications and the benefits it offers to users and organizations.', 'Risposta : A Virtual Private Network (VPN) is a technology that enables secure and private communication over public networks, such as the Internet. It creates a secure, encrypted connection between a user s device and a VPN server, allowing the user to access the internet as if they were directly connected to the private network, regardless of their physical location. Here s how a VPN works and its practical applications:
  Practical Applications of VPN:

Remote Access:
Employees can securely access corporate networks, files, and resources from remote locations or while traveling, enhancing productivity and flexibility.
Organizations can implement VPNs to provide secure remote access for employees working from home or on the go.
Bypassing Geographical Restrictions:
Users can access region-restricted content, such as streaming services or websites, by connecting to VPN servers located in different countries.
VPNs allow users to bypass censorship and access blocked websites or services in countries with restricted internet access.
Enhanced Privacy and Security:
VPNs protect user privacy by encrypting internet traffic, preventing ISPs, governments, hackers, and other third parties from monitoring or intercepting online activities.
They offer an extra layer of security when using public Wi-Fi networks, reducing the risk of data breaches and cyber attacks.
Anonymous Browsing:
VPNs can anonymize user identity and online activities by masking their IP address and encrypting internet traffic.
Users can browse the internet anonymously and protect their online privacy from advertisers, trackers, and surveillance.'),
  ('4', 12, 'Domanda: Explain the concept of ionizing and non-ionizing radiation, and discuss their respective effects on human health and the environment. It explains the sources of this radiation and the precautions that must be taken to protect people and the environment from the harmful effects of radiation.', 'Risposta : Ionizing Radiation:
Ionizing radiation has enough energy to remove tightly bound electrons from atoms, creating ions. This type of radiation includes gamma rays, X-rays, and high-energy ultraviolet (UV) radiation. Sources of ionizing radiation include:

Natural Sources:
Cosmic rays from space.
Radioactive elements in the Earth s crust, such as uranium and radon gas.
Radionuclides present in soil, water, and food.
Man-Made Sources:
Medical imaging devices like X-ray machines and CT scanners.
Nuclear power plants and nuclear weapons testing.
Industrial processes involving radioactive materials.
Effects on Human Health and Environment:

Ionizing radiation can damage DNA, leading to mutations, cancer, and genetic disorders in humans.
Acute exposure to high doses of ionizing radiation can cause radiation sickness, organ damage, and death.
Exposure to ionizing radiation can also harm the environment by damaging ecosystems, contaminating soil and water, and affecting plant and animal populations.
Non-Ionizing Radiation:
Non-ionizing radiation has lower energy levels and does not have enough energy to ionize atoms or molecules. This type of radiation includes radiofrequency (RF) radiation, microwaves, visible light, and low-energy UV radiation. Sources of non-ionizing radiation include:

Natural Sources:
Sunlight, including visible light and UV radiation.
Radiofrequency radiation from natural sources like lightning and the Earth s magnetic field.
Man-Made Sources:
Wireless communication devices such as cell phones, Wi-Fi routers, and Bluetooth devices.
Microwave ovens and radar systems.
Power lines, electrical appliances, and electronic devices. '),
  ('4', 12, 'Domanda: lists the main components of a LAN type network and their use', 'Risposta : Network Interface Cards (NICs):
Network Interface Cards (NICs) are hardware components installed in each device to enable them to connect to the LAN.
Use: NICs facilitate the transmission and reception of data packets between devices on the LAN.
Switches:
Switches are networking devices that connect multiple devices within the LAN and manage the flow of data between them.
Use: Switches facilitate communication between devices by directing data packets only to the intended recipient, improving network efficiency and security.
Router:
A router is a networking device that connects multiple LANs or LANs to the internet, allowing communication between different networks.
Use: Routers forward data packets between different networks based on their IP addresses, enabling devices on the LAN to access resources outside the local network, such as the internet.
Access Points (Wireless LANs):
Access Points (APs) are networking devices that enable wireless devices to connect to the LAN wirelessly, forming a Wireless Local Area Network (WLAN).
Use: APs provide wireless connectivity to devices within the LAN, allowing them to access network resources without the need for physical cables.
Cables/Wireless Connections:
Ethernet cables (e.g., Cat5e, Cat6) or wireless connections (Wi-Fi) are used to connect devices to the LAN.
Use: Cables and wireless connections establish physical or wireless communication pathways between devices, enabling data transmission within the LAN. '),
  ('1', 12, 'Domanda: Discuss the innovative use of the stream of consciousness narrative technique in James Joyce s short story collection "Dubliners" and how this technique reflects themes of alienation and the search for identity in early twentieth-century Irish society.', 'Risposta : risposta in elaborazione '),
  ('1', 12, 'Domanda: Explore the role of nature and the environment in Thomas Hardy s novel "Tess of Urberville", focusing on the realistic descriptions of rural landscapes and their impact on the characters stories.', 'Risposta : risposta in elaborazione '),
  ('1', 12, 'Domanda: Analyzes the theme of political repression and government surveillance in George Orwell s dystopian novel "1984", highlighting the similarities and differences with the political concerns of the era in which it was written.', 'Risposta : risposta in elaborazione '),
  ('1', 12, 'Domanda: Explore the theme of unconventional love and interpersonal relationships in the works of Oscar Wilde, focusing on novels such as "The Picture of Dorian Gray" analyzing how this work challenges the social norms of the time.', 'Risposta : risposta in elaborazione '),
  ('1', 12, 'Domanda: Analyzes the role of humor and satire in Oscar Wilde s work, examining how the author uses sarcasm and paradox to question social conventions and Victorian morality in his short stories and plays.', 'Risposta : risposta in elaborazione '),
  ('2', 12, 'Domanda: Analyzes the role of the bourgeoisie in the French Revolution and how its demands for political and economic equality contributed to the outbreak of the revolution. Discuss the major phases and key events of the French Revolution and how these influenced 19th-century European and world history.', 'Risposta : risposta in elaborazione '),
  ('2', 12, 'Domanda: Explore the role of nature and the environment in Thomas Hardy s novel "Tess of Urberville", focusing on the realistic descriptions of rural landscapes and their impact on the characters stories.', 'Risposta : risposta in elaborazione '),
  ('2', 12, 'Domanda: Explore the role of settings in Charlotte Brontë s works, focusing on the novel "Jane Eyre". How do the settings, such as Thornfield Hall and the moor, contribute to the construction of the theme of the character  search for independence and identity?', 'Risposta : risposta in elaborazione '),
  ('2', 12, 'Domanda: Analyzes the theme of isolation and loneliness in Emily Brontë s fiction, with particular reference to the novel "Wuthering Heights". How does the character of Heathcliff embody isolation and what consequences does it have on his life and the lives of the other characters?', 'Risposta : risposta in elaborazione '),
  ('2', 12, 'Domanda: How did Victorian literature reflect and influence the social values ​​and ideologies of the time? Analyze how authors such as Charles Dickens and George Eliot addressed issues such as morality, class, and progress in Victorian England through their literary works.', 'Risposta : risposta in elaborazione '),
  ('5', 12, 'Domanda: Analyzes the impact of environmental pollution on the Earth s ecosystem and human health. Discuss the main sources of pollution, such as air, water and soil pollution, and possible solutions to address this environmental emergency. Use concrete examples and scientific evidence to support your answer.', 'Risposta : risposta in elaborazione '),
  ('5', 12, 'Domanda: Explore strategies and preventative measures that can be taken to reduce the impact of natural disasters on human life and the environment. Discuss the importance of urban planning, natural resource management, building resilient infrastructure, and public education on safety practices.', 'Risposta : risposta in elaborazione '),
  ('5', 12, 'Domanda: Explains the fundamental role of chemical elements, such as carbon, hydrogen, oxygen and nitrogen, in the formation of biological molecules and in the constitution of living organisms. Discuss how these molecules, such as carbohydrates, lipids, proteins, and nucleic acids, are involved in life processes, such as metabolism, growth, and reproduction. Use specific examples to illustrate how the chemistry of life is critical to understanding biological phenomena.', 'Risposta : risposta in elaborazione '),
  ('5', 12, 'Domanda: Describe the role of the immune system in the human body and how it performs its defense function against diseases and infections.', 'Risposta : risposta in elaborazione '),
  ('5', 12, 'Domanda: Explains the importance of vaccines in the prevention of infectious diseases and in the immunization of individuals and populations. Discuss how vaccines work to provide protection against pathogens, such as viruses and bacteria, and how they help reduce the spread of infectious diseases.', 'Risposta : risposta in elaborazione '),
  ('6', 12, 'Domanda: Briefly describe the operating cycle of an internal combustion engine and explain the main stages of the process, such as intake, compression, combustion and exhaust. It illustrates how each phase contributes to the effective operation of the engine and generation of power for the vehicle.', 'Risposta : risposta in elaborazione '),
  ('6', 12, 'Domanda: Describe the concept of home automation and explain how home automation devices and systems can improve the quality of daily life within homes. Provide some practical examples of home automation devices and discuss how they can be used to automate various household functions, such as controlling lights, heating, security and appliances.', 'Risposta : risposta in elaborazione '),
  ('6', 12, 'Domanda: Explain the concept of an electrical system within a home and discuss the main components that make it up. Describe how the electrical panel, electrical circuits, protective devices, such as fuses or RCDs, and energy meters work. Illustrates the importance of correct electrical wiring and safe distribution of electricity within a home.', 'Risposta : risposta in elaborazione '),
  ('6', 12, 'Domanda: Describe the concept of automation systems and explain how they are used to improve efficiency and precision in industrial processes. Provide application examples of automation systems, such as industrial robots, CNC (Computer Numerical Control) machines, and automatic control systems', 'Risposta : risposta in elaborazione '),
  
  ('1,2,3,4,5,6', 13, 'Domanda: In che modo il movimento letterario del Decadentismo ha influenzato la letteratura italiana della fine del XIX secolo, e quali sono le caratteristiche principali delle opere decadentiste? ', 'Risposta : Il movimento letterario del Decadentismo ha esercitato una profonda influenza sulla letteratura italiana della fine del XIX secolo, introducendo una visione del mondo caratterizzata da un senso di disillusione, pessimismo e ricerca dell estetismo. Le opere decadentiste sono contraddistinte da un esplorazione delle emozioni e delle sensazioni più intime e complesse, spesso rappresentate attraverso un linguaggio ricco e simbolico. I temi prevalenti includono la decadenza morale e sociale, l angoscia esistenziale e la ricerca di una bellezza ideale in contrasto con la volgarità del mondo reale. Tra gli autori italiani più rappresentativi del Decadentismo figurano Gabriele D Annunzio e Giovanni Pascoli, che con le loro opere hanno espresso le tensioni e le inquietudini tipiche di questo movimento, riflettendo sulla crisi dei valori tradizionali e sulla ricerca di nuove forme di espressione artistica. '),
  ('1,2,3,4,5,6', 13, 'Domanda: Analizza il ruolo di Luigi Pirandello nella letteratura italiana del Novecento, focalizzandoti sul tema dell identità e della rappresentazione della realtà nelle sue opere teatrali e narrative. ', 'Risposta : Luigi Pirandello ha avuto un ruolo centrale nella letteratura italiana del Novecento, con una produzione che ha rivoluzionato il teatro e la narrativa, concentrandosi sul tema dell identità e sulla rappresentazione della realtà. Pirandello ha esplorato la natura mutevole e sfuggente dell identità umana, spesso rappresentata come frammentata e contraddittoria. Le sue opere teatrali, come "Sei personaggi in cerca d autore" e "Enrico IV", mettono in scena personaggi che lottano con la percezione di sé e la loro rappresentazione agli altri, evidenziando la relatività della verità e la molteplicità dei punti di vista. Anche nelle sue opere narrative, come "Il fu Mattia Pascal", Pirandello indaga la crisi dell identità e l alienazione dell individuo nella società moderna. La sua scrittura riflette una profonda consapevolezza delle ambiguità e delle contraddizioni della condizione umana, contribuendo a ridefinire i confini del realismo e ad anticipare tematiche che sarebbero state sviluppate ulteriormente nella letteratura modernista. '),
  ('1,2,3,4,5,6', 13, 'Domanda: Qual è il contributo di Giovanni Verga al verismo italiano e come ha rappresentato le condizioni sociali e economiche della Sicilia rurale nelle sue opere più celebri?', 'Risposta :Giovanni Verga è stato uno dei principali esponenti del verismo italiano, un movimento letterario che si proponeva di rappresentare la realtà in modo oggettivo e crudo, senza idealizzazioni. Verga ha descritto in modo dettagliato e realistico le condizioni sociali ed economiche della Sicilia rurale, mettendo in luce le dure condizioni di vita delle classi più povere. Nelle sue opere più celebri, come "I Malavoglia" e "Mastro-don Gesualdo", Verga utilizza una tecnica narrativa che privilegia il punto di vista dei personaggi, adottando il loro linguaggio e la loro prospettiva. Questo approccio consente di immergere il lettore nelle vicende quotidiane dei protagonisti, rendendo evidente la loro lotta per la sopravvivenza e il loro destino spesso segnato dalla miseria e dalla fatalità. Il contributo di Verga al verismo risiede nella sua capacità di rappresentare con autenticità e profondità la realtà sociale del suo tempo, offrendo un ritratto vivido e impietoso della vita nella Sicilia del XIX secolo. '),
  ('1,2,3,4,5,6', 13, 'Domanda: Discuti il ruolo di Giovanni Pascoli nella poesia italiana della fine del XIX secolo, esaminando la sua ricerca di una lingua poetica semplice e suggestiva e la sua riflessione sul rapporto tra uomo e natura.', 'Risposta : Giovanni Pascoli ha svolto un ruolo fondamentale nella poesia italiana della fine del XIX secolo, cercando di rinnovare il linguaggio poetico attraverso una ricerca di semplicità e suggestione. La sua poesia è caratterizzata da una profonda riflessione sul rapporto tra uomo e natura, spesso rappresentata in modo intimo e personale. Pascoli utilizza un linguaggio semplice ma evocativo, capace di trasmettere le emozioni e le sensazioni più sottili. Le sue raccolte poetiche, come "Myricae" e "Canti di Castelvecchio", esplorano temi come la nostalgia, l infanzia, la morte e il dolore, sempre con un occhio attento ai dettagli della natura e della vita quotidiana. La sua ricerca di una lingua poetica nuova e accessibile ha avuto un influenza duratura sulla poesia italiana, contribuendo a superare i modelli tradizionali e aprendo la strada a nuove sperimentazioni stilistiche. '),
  ('1,2,3,4,5,6', 13, 'Domanda: In che modo Italo Svevo ha influenzato la narrativa modernista italiana con il suo romanzo "La coscienza di Zeno", e quali sono i temi principali affrontati nella sua opera più famosa? ', 'Risposta : Italo Svevo ha influenzato significativamente la narrativa modernista italiana con il suo romanzo "La coscienza di Zeno", un opera che affronta temi fondamentali come l introspezione psicologica, l alienazione e la complessità della mente umana. "La coscienza di Zeno" è noto per il suo approccio innovativo alla narrazione, utilizzando la tecnica del flusso di coscienza per esplorare i pensieri e i sentimenti del protagonista, Zeno Cosini. Svevo mette in scena un individuo in costante lotta con le proprie nevrosi e contraddizioni, offrendo un ritratto ironico e profondo dell essere umano moderno. I temi principali del romanzo includono la crisi dell identità, l autoinganno, e l inefficacia della volontà. Svevo esplora la psicologia del personaggio in modo dettagliato e complesso, anticipando molte delle tematiche che sarebbero state sviluppate ulteriormente nella letteratura modernista. La sua opera ha contribuito a innovare la narrativa italiana, introducendo nuovi modelli di analisi psicologica e mettendo in discussione le convenzioni narrative tradizionali. '),
  ('1,2,3,4,5,6', 14, 'Domanda: Spiega il concetto di limite di una funzione e illustra come viene utilizzato per definire la continuità di una funzione in un punto. ', 'Risposta : risposta in elaborazione '),
  ('1,2,3,4,5,6', 14, 'Domanda: Descrivi le proprietà fondamentali dei numeri reali e spiega perché costituiscono un insieme completo per la matematica. ', 'Risposta : risposta in elaborazione '),
  ('1,2,3,4,5,6', 14, 'Domanda: Cosa si intende per derivata di una funzione e come viene interpretata geometricamente? Illustra il concetto con un esempio pratico. ', 'Risposta : risposta in elaborazione '),
  ('1,2,3,4,5,6', 14, 'Domanda: Quali sono le proprietà principali degli integrali definiti e quali applicazioni hanno in matematica e fisica? ', 'Risposta : risposta in elaborazione '),
  ('1,2,3,4,5,6', 14, 'Domanda: Spiega il teorema fondamentale del calcolo e come viene utilizzato per calcolare integrali definiti di funzioni continue su intervalli chiusi. ', 'Risposta : risposta in elaborazione '),
 
  ('1,2,3,4,5,6', 16, 'Domanda: Raccontami la nascita delle olimpiadi specificando i vari premi per le varie epoce e lo scopo delle olimpiadi ', 'Le Olimpiadi risalgono all antica Grecia, precisamente all VIII secolo a.C. Si svolgevano ad Olimpia, in onore del dio Zeus, e comprendevano competizioni atletiche come corsa, lancio del disco e lotta. I vincitori ricevevano corone d alloro e onori nella loro città natale. Lo scopo delle Olimpiadi era quello di promuovere la pace attraverso la competizione sportiva e celebrare l ideale dell armonia fisica e mentale. Ecco alcuni dei principali cambiamenti nel corso degli anni:
Crescita delle discipline sportive: Con il passare del tempo, il numero e la varietà delle discipline sportive incluse nelle Olimpiadi sono cresciute notevolmente. Le Olimpiadi moderne includono sport come il nuoto, il tennis, il judo, il tiro con l arco e molti altri, insieme alle tradizionali discipline atletiche.
Partecipazione femminile: Inizialmente le Olimpiadi erano riservate agli uomini, ma nel corso del tempo le donne hanno guadagnato diritto di partecipazione. Le prime donne hanno gareggiato alle Olimpiadi nel 1900, e da allora la partecipazione femminile è cresciuta costantemente, con sempre più discipline sportive che includono eventi femminili. '),
  ('1,2,3,4,5,6', 16, 'Domanda: Spiega il concetto di doping, in quali sport è piu diffuso e quali sono le principali sostanze dopanti ', 'Risposta :  Il doping è l uso di sostanze o metodi proibiti per migliorare le prestazioni sportive. Questo può includere steroidi anabolizzanti, stimolanti, diuretici, ormoni peptidici e altre sostanze. Lo scopo del doping è ottenere un vantaggio competitivo ingiusto. Lo sport in cui il doping è più diffuso varia, ma è spesso associato a sport di forza come il sollevamento pesi e sport che richiedono resistenza come il ciclismo. '),
  ('1,2,3,4,5,6', 16, 'Domanda: spiega come reagiscono la pelle , le ossa ed i muscoli ad urti, abrasioni , fratture ecc.. ', 'Risposta : Quando il corpo subisce urti, abrasioni o fratture, la pelle, le ossa e i muscoli reagiscono in modo diverso. La pelle può rispondere con arrossamento, gonfiore o formazione di croste. Le ossa possono fratturarsi o subire lesioni, richiedendo tempo per guarire attraverso processi come la calcificazione. I muscoli possono contrarsi o rilassarsi a seconda del tipo di lesione subita.
  Urti: Quando il corpo subisce un urto, come ad esempio una caduta o una collisione, le cellule e i tessuti circostanti possono subire danni. In risposta, il corpo può generare una risposta infiammatoria locale per proteggere e riparare i tessuti danneggiati. Questo può manifestarsi con arrossamento, gonfiore e dolore nella zona colpita.
Abrasioni: Le abrasioni sono ferite superficiali della pelle causate da scivolate o sfregamenti contro superfici ruvide. In risposta a un abrasione, la pelle può diventare arrossata, gonfia e sensibile. Il corpo inizia immediatamente il processo di guarigione, producendo nuove cellule per sostituire quelle danneggiate. La formazione di una crosta è una fase comune della guarigione di un abrasione, durante la quale il corpo protegge la ferita e permette la formazione di nuovo tessuto sano sottostante.
Fratture: Le fratture sono rotture o lesioni nelle ossa. Possono essere causate da traumi diretti, come una caduta o un impatto, o da stress ripetuti sulle ossa. Le fratture possono manifestarsi in diversi modi, tra cui fratture chiuse (senza lacerazioni della pelle) e fratture aperte (con lacerazioni della pelle e esposizione dell osso). Le reazioni del corpo alle fratture includono dolore intenso nella zona colpita, gonfiore dovuto all accumulo di sangue e fluido, e limitazione del movimento nell area coinvolta. Il processo di guarigione delle fratture coinvolge la formazione di un callo osseo intorno alla frattura, che progressivamente sostituirà il tessuto osseo danneggiato con nuovo tessuto osseo.'),
  ('1,2,3,4,5,6', 16, 'Domanda: Spiega le regole principali della pallavolo  ', 'Risposta :  Le regole principali della pallavolo includono il numero di giocatori per squadra (di solito sei), le rotazioni dei giocatori durante il gioco, il tocco massimo della palla per giocatore (tre tocchi) e le modalità di segnare punti, che avvengono quando la palla tocca il terreno nel campo avversario o quando viene commesso un errore dall altra squadra. '),
  ('1,2,3,4,5,6', 16, 'Domanda: Illustra come avviene la circolazione del sangue indicando la differenza tra arterie , vene, capillari ', 'Risposta : La circolazione del sangue avviene attraverso il sistema cardiovascolare, composto da cuore, arterie, vene e capillari. Il cuore pompa il sangue ricco di ossigeno attraverso le arterie verso il resto del corpo. Le vene trasportano il sangue ricco di anidride carbonica e altri rifiuti verso il cuore per essere pompato nei polmoni e depurati. I capillari sono piccoli vasi sanguigni che collegano arterie e vene, consentendo lo scambio di sostanze nutritive e gas tra il sangue e i tessuti del corpo. Le arterie portano sangue dal cuore, le vene portano sangue al cuore, mentre i capillari consentono lo scambio di sostanze nutritive e gas.
  La grande circolazione, o sistema circolatorio sistemico, porta il sangue ossigenato dal cuore a tutti gli organi e i tessuti del corpo e riporta il sangue deossigenato al cuore per essere poi pompato nei polmoni e ossigenato nuovamente. Questo coinvolge l intero corpo. La piccola circolazione, o circolazione polmonare, porta il sangue deossigenato dal cuore ai polmoni per l ossigenazione e riporta il sangue ossigenato al cuore. Questo processo coinvolge solo il cuore e i polmoni. In breve, la grande circolazione riguarda il corpo intero, mentre la piccola circolazione riguarda solo il cuore e i polmoni.'),
 
  ('2', 17, 'Domanda: Descrivi il ciclo dell acqua e spiega il suo ruolo nell ecosistema terrestre, includendo i processi di evaporazione, condensazione, precipitazione e flusso attraverso fiumi e oceani. ', 'Risposta : risposta in elaborazione '),
  ('2', 17, 'Domanda: Illustra il concetto di fotosintesi clorofilliana e spiega come avviene questo processo nelle piante, includendo le reazioni chimiche coinvolte e il ruolo della luce solare e del biossido di carbonio. ', 'Risposta : risposta in elaborazione '),
  ('2', 17, 'Domanda: Quali sono le principali teorie sull origine dell universo e del sistema solare? Descrivi brevemente due di esse e discuti le evidenze scientifiche a supporto di ciascuna.', 'Risposta : risposta in elaborazione '),
  ('2', 17, 'Domanda: Spiega il concetto di selezione naturale proposto da Charles Darwin e come questo meccanismo di evoluzione ha contribuito alla diversità delle specie viventi sulla Terra.', 'Risposta : risposta in elaborazione '),
  ('2', 17, 'Domanda: Qual è il ruolo degli ecosistemi marini nell equilibrio ecologico del pianeta? Descrivi due importanti ecosistemi marini e le loro caratteristiche distintive.  ', 'Risposta : risposta in elaborazione '),
  
  ('3,4', 20, 'Domanda: Spiega com si puo strutturare la rete includendo la spiegazione degli elementi hardware e software principali', 'Risposta : Elementi hardware:
Router: Dispositivo di rete che instrada il traffico dati tra reti diverse, come Internet e una rete locale (LAN).
Switch: Dispositivo di rete che collega dispositivi all interno di una LAN e gestisce il traffico dati tra di essi.
Hub: Dispositivo di rete che funge da punto centrale per la connessione di più dispositivi in una LAN, ma trasmette i dati a tutti i dispositivi, causando possibili congestionamenti.
Access point: Dispositivo che permette ai dispositivi wireless di connettersi a una rete cablata, come una LAN o Internet.
Modem: Dispositivo che converte i segnali digitali del computer in segnali analogici compatibili con la rete di trasmissione, come il cavo o la linea telefonica, e viceversa.
Elementi software:
Sistemi operativi di rete: Software che gestisce e controlla le risorse di rete, come la condivisione di file e stampanti.
Protocolli di comunicazione: Insieme di regole e procedure che consentono la comunicazione tra dispositivi in una rete, come TCP/IP per Internet.
Firewall: Software o hardware che protegge una rete controllando il traffico in entrata e in uscita in base a regole di sicurezza. '),
  ('3,4', 20, 'Domanda: Elenca i tipi di virus e i possibili attacchi che può ricevere un computer o una rete', 'Risposta :Tipi di virus:
Trojan horse (Cavallo di Troia): Si presenta come un software legittimo ma nasconde un codice dannoso che può compromettere il sistema una volta eseguito.
Worm (Verme): Si diffonde attraverso reti informatiche e sfrutta vulnerabilità di sicurezza per replicarsi e diffondersi autonomamente.
Spyware: Raccoglie informazioni personali degli utenti senza il loro consenso, come dati di navigazione e informazioni personali, e li invia a terze parti. 
Ransomware: Blocca l accesso al sistema o ai file dell utente e richiede un pagamento di riscatto per ripristinare l accesso. 
Possibili attacchi:
Phishing: Tentativo di ottenere informazioni sensibili, come password o informazioni finanziarie, fingendosi una fonte affidabile tramite email, messaggi di testo o siti web contraffatti.
Attacchi DDoS (Distributed Denial of Service): Sovraccarica un server o un servizio con un alto volume di richieste, rendendolo inaccessibile agli utenti legittimi.
Ransomware: Crittografa i file del sistema o blocca l accesso al computer dell utente fino a quando non viene pagato un riscatto.'),
  ('3,4', 20, 'Domanda: Spiega che cos è la crittografia e indica la differenza tra quella simmetrica e asimmetrica facendo anche riferimento ai certificati digitali', 'Risposta : La crittografia è il processo di trasformazione dei dati in un formato illeggibile, chiamato testo cifrato, utilizzando algoritmi matematici, in modo che solo coloro che hanno la chiave di decrittazione corretta possano leggerli.

Crittografia simmetrica: In questo tipo di crittografia, la stessa chiave viene utilizzata sia per cifrare che per decifrare i dati. Poiché la stessa chiave è utilizzata per entrambe le operazioni, è fondamentale che la chiave rimanga segreta e sicura. La crittografia simmetrica è generalmente veloce ed efficiente, ed è comunemente utilizzata per la crittografia dei dati su larga scala, ad esempio durante il trasferimento di file su Internet o per proteggere i dati memorizzati su un disco rigido.
Crittografia asimmetrica: In questo tipo di crittografia, vengono utilizzate due chiavi distinte: una chiave pubblica e una chiave privata. La chiave pubblica è utilizzata per cifrare i dati, mentre la chiave privata è utilizzata per decifrarli. Poiché la chiave privata rimane segreta e non viene condivisa, solo il destinatario previsto può decifrare i dati. La crittografia asimmetrica è più sicura rispetto alla crittografia simmetrica, ma può essere più lenta e richiede una gestione più complessa delle chiavi. '),
  ('3,4', 20, 'Domanda: Indicami 3 protocolli che si possono utilizzare nella creazione di una rete e motiva la tua scelta', 'Risposta : TCP/IP (Transmission Control Protocol/Internet Protocol): È il fondamento della comunicazione su Internet. TCP/IP definisce come i dati devono essere inviati attraverso Internet, suddividendoli in pacchetti e determinando il percorso che essi devono seguire per raggiungere la destinazione. È composto da due protocolli principali: TCP, che garantisce la consegna dei dati in modo affidabile, e IP, che indirizza e instrada i pacchetti attraverso la rete.
HTTP (Hypertext Transfer Protocol) e HTTPS (HTTP Secure): HTTP è il protocollo utilizzato per il trasferimento di pagine web ipertestuali su Internet. Questo protocollo definisce come i client web (ad esempio browser) comunicano con i server web per richiedere e visualizzare pagine web. HTTPS è una versione sicura di HTTP che utilizza la crittografia SSL/TLS per garantire la privacy e la sicurezza delle comunicazioni tra il client e il server. HTTPS è ampiamente utilizzato per proteggere transazioni online, login e altre attività sensibili su Internet.
SSH (Secure Shell): È un protocollo di rete utilizzato per l accesso remoto sicuro e la gestione di sistemi di rete. SSH consente agli utenti di stabilire una connessione crittografata con un server remoto attraverso la quale possono eseguire comandi remoti, trasferire file in modo sicuro e gestire risorse di rete. È ampiamente utilizzato negli ambienti di amministrazione di sistemi per garantire la sicurezza e la riservatezza delle comunicazioni remote. '),
  ('3,4', 20, 'Domanda: Indica la differenza tra LAN e VLAN e specifica pro e contro di entrambe le tecnologie', 'Risposta : LAN (Local Area Network): Una rete locale che copre un area geografica limitata, come un edificio o un campus. Pro: Velocità elevate, facile da configurare. Contro: Limitata a una singola posizione geografica.
VLAN (Virtual LAN): Una rete logica creata all interno di una rete fisica, consentendo di raggruppare dispositivi in base a criteri logici anziché fisici. Pro: Flessibilità nella gestione delle reti, maggiore sicurezza e controllo del traffico. Contro: Richiede una configurazione più complessa e potrebbe avere costi aggiuntivi.'),
  ('1,2,3,4,5,6', 22, 'Domanda: Illustra le alleanze della prima guerra mondiale e gli eventuali cambi di fronte e entrate in scena', 'Risposta : Le principali alleanze della Prima Guerra Mondiale erano:
Gli Imperi Centrali, composti da Germania, Austria-Ungheria, Impero Ottomano e, in seguito, Bulgaria.
Gli Alleati, che includevano Francia, Regno Unito, Russia, Italia (dal 1915), Giappone, e successivamente anche gli Stati Uniti e altri paesi.
Durante la guerra, ci furono cambi di fronte principalmente dovuti alle mutazioni politiche e alle condizioni sul campo di battaglia, come ad esempio l uscita della Russia dalla guerra nel 1917 e l entrata degli Stati Uniti nel 1917 a sostegno degli Alleati.'),
  ('1,2,3,4,5,6', 22, 'Domanda: Spiega l importanza della prima e seconda rivoluzione industriale indicando anche tutte le nuove invenzioni', 'Risposta : La prima rivoluzione industriale, avvenuta nel XVIII e XIX secolo, ha introdotto innovazioni come la macchina a vapore, la produzione meccanizzata e la ferrovia, portando a un cambiamento significativo nell economia e nella società. La seconda rivoluzione industriale, avvenuta alla fine del XIX e all inizio del XX secolo, ha visto l introduzione di nuove tecnologie come l elettricità, l acciaio, il petrolio e l automobile, accelerando ulteriormente lo sviluppo industriale e portando a un aumento della produzione di massa e della globalizzazione.'),
  ('1,2,3,4,5,6', 22, 'Domanda: Illustra il ruolo ed i comportamenti dell Italia in entrambi i conflitti mondiali ', 'Risposta : Durante la Prima Guerra Mondiale, l Italia faceva originariamente parte della Triplice Alleanza con Germania e Austria-Ungheria ma, nel 1915, entrò in guerra a fianco degli Alleati, ottenendo in cambio promesse di territori. Durante la Seconda Guerra Mondiale, l Italia fu inizialmente alleata della Germania nazista, ma dopo l invasione alleata nel 1943, Mussolini fu destituito e l Italia passò a combattere contro le Potenze dell Asse e a fianco degli Alleati. '),
  ('1,2,3,4,5,6', 22, 'Domanda: Spiega i motivi dello scoppio della prima e seconda guerra mondiale', 'Risposta :  La Prima Guerra Mondiale fu causata da una serie di tensioni politiche, economiche e territoriali tra le potenze europee, tra cui l assassinio dell Arciduca Francesco Ferdinando d Austria nel 1914, che scatenò una serie di alleanze militari preesistenti. La Seconda Guerra Mondiale fu in gran parte il risultato del risentimento tedesco per le condizioni imposte dal Trattato di Versailles dopo la Prima Guerra Mondiale, dell ascesa del nazismo in Germania e delle aggressioni espansionistiche di Italia, Giappone e Germania. '),
  ('1,2,3,4,5,6', 22, 'Domanda: Illustra brevemente le differenze tra Fascismo , Nazismo e Stalinismo mettendo in luce i punti chiave ', 'Risposta :  Il Fascismo, guidato da Benito Mussolini in Italia, promuoveva un forte nazionalismo, autoritarismo e corporativismo, enfatizzando il ruolo dello stato nella vita sociale ed economica. Il Nazismo, guidato da Adolf Hitler in Germania, incorporava elementi di razzismo, antisemitismo e supremazia della razza ariana, oltre a un controllo totale dello stato sull economia e sulla società. Lo Stalinismo, praticato in Unione Sovietica sotto Josef Stalin, era caratterizzato da un regime autoritario, collettivizzazione forzata dell agricoltura, purghe politiche e un controllo rigido dell economia e della società da parte del Partito Comunista.'),
  
  ('1,2', 23, 'Domanda: Analizza il ruolo di Francesco Hayez nell arte italiana del XIX secolo, focalizzandoti sul suo contributo al movimento del Romanticismo e sulle caratteristiche distintive delle sue opere più celebri.', 'Risposta : risposta in elaborazione '),
  ('1,2', 23, 'Domanda: Descrivi il contesto storico e artistico in cui si colloca il dipinto "La morte di Marat" di Jacques-Louis David, includendo il ruolo politico dell artista durante la Rivoluzione francese e la rappresentazione ideologica dell evento nella sua opera.', 'Risposta : risposta in elaborazione '),
  ('1,2', 23, 'Domanda: Quali sono le caratteristiche principali dell Impressionismo e come artisti come Édouard Manet, Claude Monet e Pierre-Auguste Renoir hanno contribuito a questo movimento? Fornisci esempi di opere significative di ciascun artista.', 'Risposta : risposta in elaborazione '),
  ('1,2', 23, 'Domanda: Spiega l influenza di Vincent van Gogh sull arte moderna, includendo le sue tecniche pittoriche distintive e il suo stile espressionista. Discuti l impatto emotivo delle sue opere sulla percezione dell arte nel XIX secolo.', 'Risposta : risposta in elaborazione '),
  ('1,2', 23, 'Domanda: Descrivi il significato simbolico e le tematiche ricorrenti nelle opere di Gustav Klimt, Edvard Munch e Amedeo Modigliani, includendo l analisi di stili artistici come il Simbolismo, l Espressionismo e il Primitivismo.', 'Risposta : risposta in elaborazione '),
  
  ('3,4', 26, 'Domanda: Definisci che cos è la tecnologia Websocket e come si utilizza , indica inoltre la tua esperienza con questa tecnologia', 'Risposta : risposta in elaborazione '),
  ('3,4', 26, 'Domanda: Spiega come funziona la tecnologia Client-Server ', 'Risposta : risposta in elaborazione '),
  ('3,4', 26, 'Domanda: Spiega che cos è un API , quali tipi di API conosci e fammi un esempio di API che usi piu in modo piu frequente', 'Risposta : Un API, o Application Programming Interface, è un insieme di definizioni e protocolli che permettono a software applicativi di comunicare tra loro. In pratica, un API fornisce un modo standardizzato per interagire con un applicazione, consentendo a un programma di accedere alle funzionalità o ai dati di un altra applicazione in modo sicuro e controllato. Ci sono diversi tipi di API, tra cui: API Web, API di database, API di servizio'),
  ('3,4', 26, 'Domanda: Che cos è una politica di scheduling e illustrami quelle che conosci con le relative funzionalità ', 'Risposta : Una politica di scheduling, nellambito dell informatica e dei sistemi operativi, si riferisce alla strategia utilizzata per assegnare le risorse di sistema alle varie attività in esecuzione. Queste politiche sono fondamentali per massimizzare l utilizzo delle risorse, migliorare le prestazioni del sistema e garantire una distribuzione equa delle risorse tra i vari processi. '),
  ('3,4', 26, 'Domanda: Spiega che cos è Node.js indicando i possibili utilizzi associati con altre tecnologie ', 'Risposta : Node.js è un runtime Javascript. In pratica, un ambiente di esecuzione che permette di eseguire codice Javascript come un qualsiasi linguaggio di programmazione, può essere eseguito solo all interno di un browser.
  Semplice – Iniziare a lavorare con Node.js è abbastanza facile. È una scelta obbligata per i principianti del web development. Con moltissimi tutorial e una grande community, iniziare è davvero molto facile.
Scalabile – Offre una grande scalabilità per le applicazioni. Essendo single-threaded, Node.js è in grado di gestire un enorme numero di connessioni contemporanee con elevata portata.
Velocità – L esecuzione non bloccante dei thread rende Node.js ancora più veloce ed efficiente.  ');








