CREATE TABLE categorie (
  cat_id int(11) AUTO_INCREMENT,
  cat_nom varchar(50),
  PRIMARY KEY (cat_id)
);
CREATE TABLE clients (
  cl_id int(11) AUTO_INCREMENT,
  cl_nom varchar(50),
  cl_prenom varchar(50),
  cl_mail varchar(50),
  cl_tel varchar(14),
  cl_identif varchar(50),
  cl_mdp char(60),
  cl_ddn date,
  cl_adresse varchar(100),
  cl_ville varchar(50),
  cl_cp varchar(5),
  PRIMARY KEY (cl_id)
);
CREATE TABLE commande (
  co_id int(11) AUTO_INCREMENT,
  ldc_date date,
  PRIMARY KEY (co_id)
);
CREATE TABLE fournisseur (
  fourni_id int(11) AUTO_INCREMENT,
  fourni_nom varchar(100),
  fourni_tel varchar(14),
  fourni_mail varchar(100),
  fourni_siret int(14),
  fourni_adresse varchar(100),
  fourni_ville varchar(100),
  fourni_pers_join varchar(50),
  fourni_prix decimal(6,2),
  PRIMARY KEY (fourni_id)
);
CREATE TABLE ligne_de_commande (
  ldc_id int(11) AUTO_INCREMENT,
  ldc_date date,
  co_id int(11),
  PRIMARY KEY (ldc_id),
  KEY FK_co_id (co_id)
);
CREATE TABLE livraison (
  li_id int(11) AUTO_INCREMENT,
  cl_adresse varchar(100),
  cl_ville varchar(100),
  cl_cp varchar(5),
  cl_nom varchar(100),
  cl_prenom varchar(100),
  li_date_envoie datetime,
  PRIMARY KEY (li_id)
);
CREATE TABLE personnels (
  pers_id int(11) AUTO_INCREMENT,
  pers_nom varchar(100),
  pers_prenom varchar(50),
  pers_mail varchar(50),
  pers_tel varchar(14),
  pers_identif varchar(20),
  pers_mdp char(60),
  PRIMARY KEY (pers_id)
);
CREATE TABLE produits (
  prod_id int(11) AUTO_INCREMENT,
  prod_ref varchar(10),
  prod_lib varchar(50),
  prod_desc varchar(1000),
  prod_prix decimal(6,2),
  prod_stock int(11),
  prod_ext varchar(4),
  prod_ajout date,
  prod_modif datetime,
  prod_bloque tinyint(1),
  prod_alt varchar(200),
  prod_title varchar(100),
  cat_id int(11),
  fourni_id int(11),
  PRIMARY KEY (prod_id),
  KEY FK_cat_id (cat_id),
  KEY FK_fourni_id (fourni_id)
);

INSERT INTO `produits` (`prod_id`, `prod_ref`, `prod_lib`, `prod_desc`, `prod_prix`, `prod_stock`, `prod_ext`, `prod_ajout`, `prod_modif`, `prod_bloque`, `prod_alt`, `prod_title`, `cat_id`, `fourni_id`) VALUES
(1, 'gui000', 'guitare acoustique', 'Harley Benton est une marque créée pour et distribuée par le détaillant allemand Thomann. Créée en 19971, elle propose des guitares, basses, banjos, mandolines, microphones, amplificateurs, pédales d\'effet, des cordes, des médiators, des pièces détachées, etc., souvent à des prix peu élevés (qui s\'expliquent en partie par une fabrication uniquement asiatique et donc très bon marché). Le succès de cette marque s\'inscrit dans une tendance de fond d\'amélioration de la qualité des instruments peu chers.', '75.00', 6, 'png', '2020-04-02', '2020-04-02 19:46:35', 1, 'Harley Benton D-120CE BK', 'Harley Benton D-120CE BK', 1, NULL),
(2, 'gui001', 'guitare classique', 'La manche et la table de ce modèle d\'instrument sont faites en épicéa de Californie avec un dos et côté en érable', '39.55', 2, 'png', '2020-04-02', '2020-04-02 19:46:40', 1, 'Delson Sevilla guitare classique', 'Delson Sevilla guitare classique', 1, NULL),
(3, 'gui003', 'electro acoustique', 'L\'ES-335 était une tentative de trouver un terrain d\'entente: un ton plus chaud qu\'un corps solide produit avec presque aussi peu de rétroaction', '267.50', 2, 'png', '2020-04-02', '2020-04-02 21:37:58', 1, 'Gibson ES 335', 'Gibson ES 335', 1, NULL),
(4, 'bass000', 'basse electrique', 'Le Thunderbird a été conçu par le concepteur automobile américain Raymond H. Dietrich (Chrysler, Lincoln, Checker)', '1999.99', 1, 'png', '2020-04-02', '2020-04-02 21:38:19', 1, 'Gibson Thunderbird', 'Gibson Thunderbird', 1, NULL),
(5, 'bass001', 'basse acoustique', 'Le premier modèle simplement appelé \"Les Paul Bass\", avait quelques caractéristiques intéressantes, notamment des circuits basse impédance, spécialement conçus pour l\'enregistrement en studio.\r\n', '2039.00', 0, 'png', '2020-04-02', '2020-04-02 21:37:21', 1, 'Gibson Lespaul', 'Gibson Lespaul', 1, NULL),
(6, 'bass002', 'basse semi acoustique', 'Basse semi acoustique en l\'honneur de Pat Martino.', '3449.99', 0, 'png', '2020-04-02', '2020-04-02 21:56:40', 1, 'gipson pat martino', 'gipson pat martino', 1, NULL),
(7, 'uku000', 'ukulélés', 'Who lives in a pineapple under the sea?\r\nSpongebob Squarepant!', '14.99', 0, 'png', '2020-04-02', '2020-04-02 22:07:53', 1, 'ukulélés', 'ukulélés', 1, NULL),
(8, 'vio000', 'other cord', 'Le violon est un instrument de musique à cordes frottées. Constitué de 71 éléments de bois collés ou assemblés les uns aux autres..', '155.00', 3, 'png', '2020-04-02', '2020-04-02 22:12:34', 1, 'Stentor SR1500', 'Stentor SR1500', 1, NULL),
(9, 'bat000', 'batterie', 'Les batteries pour débutants.', '550.50', 1, 'png', '2020-04-02', '2020-04-02 22:20:44', 1, 'batterie Pearl', 'batterie Pearl', 2, NULL),
(10, 'pia000', 'piano de scène', 'Un clavier électronique, un clavier portable ou un clavier numérique est un instrument de musique électronique.', '1256.00', 2, 'png', '2020-04-02', '2020-04-02 22:28:50', 1, 'Kawai ES-8 B', 'Kawai ES-8 B', 3, NULL),
(11, 'stu000', 'console de mixage', 'Les consoles analogiques de la série 68 ont été développées pour fournir l\'ensemble de fonctionnalités de base le plus souvent nécessaire pour l\'enregistrement analogique.', '9999.99', 1, 'png', '2020-04-02', '2020-04-02 22:41:16', 1, 'Trident audio', 'Trident audio', 4, NULL),
(12, 'ecl000', 'projecteur', 'éclairage led dmx512 classique.', '56.75', 4, 'png', '2020-04-02', '2020-04-02 23:09:45', 1, 'Projecteur LED DMX512', 'Projecteur LED DMX512', 5, NULL),
(13, 'tab000', 'table de dj', 'une table de dj, houlala vive la description..', '1429.00', 1, 'png', '2020-04-02', '2020-04-02 23:19:34', 1, 'FF-4000', 'FF-4000', 6, NULL),
(14, 'cas000', 'cases', 'c\'est une boite, voila.', '129.00', 4, 'png', '2020-04-02', '2020-04-02 23:27:54', 1, 'flyht pro case', 'flyht pro case', 7, NULL),
(15, 'acc000', 'micro', 'etrange outil porteur de maladie mais qui permet d\'être audible, après tout dépend de celui qui l\'utilise.', '366.66', 6, 'png', '2020-04-02', '2020-04-02 23:27:54', 1, 'micro shure sm7b', 'micro shure sm7b', 8, NULL),
(16, 'acc001', 'cable', 'Un câble d’amplis', '14.99', 12, 'png', '2020-04-02', '2020-04-02 23:30:53', 1, 'cordial cfu 1.5', 'cordial cfu 1.5', 8, NULL),
(17, 'ven000', 'saxophone', 'Le saxophone est un instrument de musique à vent appartenant à la famille des bois. Il a été inventé par le Belge Adolphe Sax et breveté à Paris le 21 mars 1846.', '620.00', 4, 'png', '2020-04-02', '2020-04-02 23:34:35', 1, 'startone sas-75 alto', 'startone sas-75 alto', 9, NULL);