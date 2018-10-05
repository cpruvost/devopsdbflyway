ALTER SESSION SET EDITION = V1POINT2;

/* INSERTING into QUESTION */

Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('1','Fermée','Quelle est le nom de la machine Oracle permettant de consommer des services Cloud On Premise ?',null,'Oracle Cloud Machine');
Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('2','Ouverte','Quelle est le CA annuel du Cloud Oracle en millions de dollards ?','1000',null);
Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('3','Fermée','Que signifie psm ?',null,'PaaS Service Manager Command Line Interface');
Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('4','Fermée','Quel est l''outil d''intégration continue utilisé sur DevCS ?',null,'Hudson');
Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('5','Fermée','Quel est l''outil de développement Java Oracle ?',null,'JDeveloper');
Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('6','Fermée','Lorsque vous provisionnez une application sur Oracle Application Container Cloud vous pouvez ?',null,'Toutes les propositions');
Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('7','Fermée','Oracle Cloud suporte aujourd’hui ?',null,'Plus de 70 millions d utilisateurs');
Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('8','Fermée','Chaque jour, Oracle Cloud exécute ?',null,'Plus de 33 milliards de transactions');
Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('9','Ouverte','Combien de personnes sont présentes au MBX ?','2957',null);
Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('10','Fermée','Quel est le nom du service Cloud intégration ?',null,'Integration Service');
Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('11','Fermée','Quels sont les 4 fonctions du PaaS4SaaS ?',null,'Etendre, Integrer, Securiser, Analyser');
Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('12','Fermée','Comment s’appelle le service de gestion d’identité ?',null,'IDCS');
Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('13','Ouverte','Combien d’adapteurs Cloud sont disponibles dans le service intégration ?','60',null);
Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('14','Fermée','Les nouveaux business models sont dits "Data driven" : qui est concerné ?',null,'toutes les industries');
Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('15','Fermée','Les offres cloud Oracle proposent ?',null,'du IaaS du PaaS et du SaaS');
Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('16','Fermée','L''offre PaaS d''Oracle est réputée la plus complète du marché. Elle contient ?',null,'plus de 100 services');
Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('17','Ouverte','Combien d''employés travaillent chez Oracle ?','130157',null);
Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('18','Fermée','Le serveur d’applications d’entreprise J2EE as-a-service d’Oracle s’appelle ?',null,'Java Cloud Service');
Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('19','Fermée','Oracle Cloud Machine permet d’exécuter le Cloud Oracle public dans ?',null,'le datacenter de votre choix');
Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('20','Fermée','Le Cloud Oracle est en mesure d’héberger en production les applications développées ?',null,'sur n importe quelles technologies');
Insert into QUESTION (ID,TYPE,TEXT,OPEN_ANSWER,CLOSED_ANSWER) values ('21','Ouverte','Combien y aura t-il de millions d''objets connectés en 2020?','8000',null);

/* INSERTING into ANSWER */

Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('1','1','Oracle Exadata Machine');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('2','1','Oracle Exalogic Machine');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('3','1','Oracle Private Cloud Appliance');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('4','1','Oracle Cloud Machine');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('5','3','PaaS Service Manager Command Line Interface');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('6','3','PaaS Service Manager');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('7','3','PaaS Service Middleware');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('8','3','PaaS Service Management');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('9','4','Jenkins');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('10','4','Hudson');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('11','4','Docker');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('12','4','Ravello');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('13','5','Eclipse');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('14','5','Spring Tools Suite');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('15','5','IntelliJ');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('16','5','JDeveloper');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('17','6','Spécifier la taille de la RAM');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('18','6','Sélectionner le nombre d’instances');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('19','6','Décider de consommer le service par heure ou mois');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('20','6','Toutes les propositions');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('21','7','Moins de 100 000 utilisateurs');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('22','7','Entre 100 000 et 1 million d utilisateurs');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('23','7','Entre 1 et 70 millions d utilisateurs');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('24','7','Plus de 70 millions d utilisateurs');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('25','8','1 milliard de transactions');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('26','8','Entre 1 et 10 milliards de transactions');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('27','8','Entre 11 et 32 milliards de transactions');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('28','8','Plus de 33 milliards de transactions');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('29','10','SOA CS');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('30','10','Integration Service');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('31','10','SaaS Integration');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('32','10','PaaS Integration');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('33','11','Collaborer, Integrer, Securiser, Analyser');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('34','11','Etendre, Accroître, Proteger, Analyser');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('35','11','Etendre, Integrer, Securiser, Analyser');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('36','11','Etendre, Integrer, Vibrer, Dejouer');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('37','12','SCS');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('38','12','IDCS');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('39','12','ICCS');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('40','12','CASBCS');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('41','14','transport VTC, covoiturage');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('42','14','la location');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('43','14','le e-commerce');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('44','14','toutes les industries');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('45','15','du IaaS');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('46','15','du PaaS');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('47','15','du SaaS');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('48','15','du IaaS du PaaS et du SaaS');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('49','16','entre 10 et 50 services');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('50','16','entre 51 et 75 services');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('51','16','entre 76 et 100 services');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('52','16','plus de 100 services');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('53','18','Java Cloud Service');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('54','18','JEE Cloud Service');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('55','18','WebLogic Cloud Service');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('56','18','Application Cloud Service');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('57','19','les Cloud concurrents ');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('58','19','les datacenters des partenaires Oracle ');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('59','19','un datacenter certifié par Oracle');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('60','19','le datacenter de votre choix');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('61','20','sur n importe quelles technologies');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('62','20','sur des technologies Oracle uniquement');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('63','20','dans des VMs Oracle VM uniquement');
Insert into ANSWER (ID,QUESTION_ID,TEXT) values ('64','20','avec toutes les technologies de virtualisation');

/* INSERTING into QUIZ */

Insert into QUIZ (ID,NAME) values ('1','Quiz DevOps');
Insert into QUIZ (ID,NAME) values ('2','Quiz Tech');
Insert into QUIZ (ID,NAME) values ('3','Modern App');
Insert into QUIZ (ID,NAME) values ('4','General Session');
Insert into QUIZ (ID,NAME) values ('5','IOT');

/* INSERTING into QUIZQUESTION */

Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('1','1');
Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('1','2');
Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('1','3');
Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('1','4');
Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('1','5');
Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('2','6');
Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('2','7');
Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('2','8');
Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('2','9');
Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('3','10');
Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('3','11');
Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('3','12');
Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('3','13');
Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('4','14');
Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('4','15');
Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('4','16');
Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('4','17');
Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('5','18');
Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('5','19');
Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('5','20');
Insert into QUIZQUESTION (QUIZ_ID,QUESTION_ID) values ('5','21');

CREATE OR REPLACE Function FindQuizName
   ( id_in IN number )
   RETURN varchar2
IS
   cname varchar2(100);

   cursor c1 is
   SELECT name
     FROM quiz
     WHERE id = id_in;

BEGIN

   open c1;
   fetch c1 into cname;

   if c1%notfound then
      cname := 'THIS QUIZ DOES NOT EXIST';
   end if;

   close c1;

RETURN cname;

EXCEPTION
WHEN OTHERS THEN
   raise_application_error(-20001,'An error was encountered - '||SQLCODE||' -ERROR- '||SQLERRM);
END;
/