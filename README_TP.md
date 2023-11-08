------------------------------------
#### VERSION 1
#### AMELIORATION: unicité des données 
#### PREREQUIS: requetes sql,utilisation des dictionnaires
####  EXECUTION : python3 FileManager.py TP-INF351-data
------------------------------------

1-il est necessaire d'importer la bibliotheque os pour manipuler ce programme
2- il en est de meme pour pymysql.cursors pour la liaison avec la base de donnée qui sera expliquée plutard
--------------------------------------
####    UTILISATION DE OS
-------------------------------------
*la fonction "def get_listFile(path):" implemente le parcours et l'affichage des fichiers presents dans un dossier(ATTENTION: dasns le dossier il ne doit qu'avoir les fichiers dédiés au traitement, meme une image ne pas etre presente);
---------------------------------------
*la fonction "def my_split_function(string,character):" implemente la fonction predefenis split :
-Qu'est ce qu'elle fait?
on considere une ligne de notre fichier comme un tableau (tab[] ) , on parcours en fontion de la taille du tableau et on divise le tableau en d'autre tableau ;
-l'element de separation dans notre cas est dabord "|" ensuite "," ;
-a la fin de la separation la fonction nous retourne un tab
----------------------------------------
*la fonction "def read_File(path):" implemente le type d'affichage des fichier et predn en parametre le chemin relatif du dossier ppour eviter a l'utilisateur de retenir plein de path:
-pour eviter la manipulation multiple des taableaux on creera un dictionnaire=   
 dico={}:
    dico["auteur"]=[]
    dico["etablissement"]=[]
    dico["ville"]=[]
    dico["pays"]=[]
    les dictionanaires ecrits sous forme de tableau sont des clés de mon dictionnaire principale . sachant que mes fichier sont censés me donner des informations , le decoupage en ligne plus haut est suivit de ce classement a travers les clés , on pourrait aussi utiliser la fonction append pour les inserer dans les tableaux plutard mais mon choix sur les dictionnaires et les clés sera tres interressant dans la suite;
-Ainsi pour chaque decoupage on aura une affectation des données dans la liste qui lui correspond
ex:dico["auteur"]+=[all_data[0]]
la donnée classée dans la premiere plage correspond au nom de l'auteur et est donc affecté au classement qui lui convient ainsi de suite;
------------------------------------------
*la fonction "def Names_Transfort(nom_auteur):" est definit pour encoder les noms des auteurs au format demandé , il en est de meme pour la fonction "def Country_Transfort(nom_pays):" qui gère le nom des pays 
-----------------------------------------
*la fonction "def print_data(articles):" affiche les fichiers apres avoir traité les données qu'ils contiennent cest a dire :
-decoupage par les separateurs
-classement des données dans leur liste
-encodage des données suis le format;
-------------------------------------
#### UTILISATION DE PYMYSQL
-------------------------------------
*how to connect with your database?
" connection = pymysql.connect(host='localhost',
                                user='root',
                                password='',
                                database='TPINF351')"
--------------------------------------
*l'exercice de lier la bd et le programme python est de pouvoir envoyer les données vers celle ci:
pour cela nous avons utliser la logique  #get_or_create#:
    c'est une fonction qui prend en parametre la connection entre la bd nommée "connection" et la clé utilisé dans notre dictonnaire; cette clé est lobjet qui est manipulé dans la fonction
--------------------------------------
*Creation de la base de donnée:

CREATE DATABASE TPINF351;
    CREATE TABLE Auteur(idauteur integer, nom-encode varchar(250));
    ------------------
    CREATE TABLE Affiliation(idaffiliation integer, ville varchar(200),etablissement varchar(200),pays varchar(50));
    ------------------
    CREATE TABLE Article(idarticle integer,titre_article var char(250));
    -----------------
    CREATE TABLE Auteurfiliation(idauteur integer, FOREIGN KEY idauteur REFERENCES Auteur(idauteur),idaffiliation integer, FOREIGN KEY idaffiliation REFERENCES Affiliation (idaffiliation));
    -----------------
    CREATE TABLE Auteurarticle(idauteur integer, FOREIGN KEY idauteur REFERENCES Auteur(idauteur),idarticle integer, FOREIGN KEY idarticle REFERENCES Article (idarticle));
--------------------------------------
*la fonction get_or_create_key(auteur or affiliation):
etant dans la connection avec la bd on ecrit on affiche les elements presents dans la table et on excute 
-si les elements que l'on veut enregistrés existent deja ,ils seront juste aiffchés 
-si ces elements n'existent pas ils seront créés par la deuxieme requete INSERT INTO  qui permet d'ajouter des elements d'une table 
    