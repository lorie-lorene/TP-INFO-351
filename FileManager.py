#Import Package
####  EXECUTION : python3 FileManager.py TP-INF351-data
import os
import pymysql.cursors
import sys

#Fonction pour lire les fichiers d'un dossier
def get_listFile(path):
    files=os.listdir(path)
    for i in range(len(files)):
        files[i]=os.path.join(path, files[i])
    return files

#Fonction pour split une chaine de caractere suivent un caractere specifique
def my_split_function(string,character):
    tab=[]
    start=0
    for end in range(len(string)):
        if string[end]==character or end==len(string)-1:
            if string[start]==" ":
                start+=1
            if string[end]=="|" or string[end]==",":
                tab+=[string[start:end]]
            elif string[end-1]=="\\":
                tab+=[string[start:end-1]]
            else:
                tab+=[string[start:end+1]]
            start=end +1   
    if len(tab)==0:
        tab=[string[:-1]]
    return tab 

#Fonction pour lire les données d'un fichier
def read_File(path):
    dico={}
    dico["auteur"]=[]
    dico["etablissement"]=[]
    dico["ville"]=[]
    dico["pays"]=[]
    try:
        with open(path,"r") as file:
            i=1
            for line in file:
                line=line[:-1]
                if i%2==0:
                   metadata=my_split_function(line, "|")
                   n=1
                   for item in metadata:
                       all_data=my_split_function(item,",")
                       dico["auteur"]+=[all_data[0]]
                       dico["etablissement"]+=[all_data[1]]
                       dico["ville"]+=[all_data[2]]
                       dico["pays"]+=[all_data[3]]
                       n+=1
                else:
                    dico["title"]=line
                i+=1
    except:
        print("Impossible d'ouvrir le fichier {}".format(path))
    return dico

#Fonction pour transformer les données d'un auteurs
def Names_Transfort(nom_auteur):
    names=my_split_function(nom_auteur," ")
    for k in range(len(names)-1):
        p=names[k]
        if k==0:
            name=p[0].upper()
        else:
            name+="."+p[0].upper()
    name+=". "+names[-1].upper()
    return name


#Fonction pour transformer les données d'un pays
def Country_Transfort(nom_pays):
    if nom_pays=="United States":
        nom_pays="USA"
    elif nom_pays=="The Netherlands":
        nom_pays="Netherlands"
    return nom_pays


#Fonction d'affichage des données
def print_data(articles):
    for article in articles.keys():
         print(article)
         print("#############################")
         print(articles[article])
         print("\n")

#Fonction get or create auteur
def get_or_create_auteur(connection, auteur):
    creer = False
    with connection.cursor() as cursor:
        # Verifier si l'auteur existe
        sql = "SELECT * FROM `Auteur` WHERE `nom_encode`=%s"
        cursor.execute(sql, (auteur,))
        result = cursor.fetchall()
        if result==None or result==():
            print("Enregistrement de l'auteur")
            #Si l'auteur n'existe pas dans la BD on le cree et on le recupere dans result
            sql_auteur = "INSERT INTO `Auteur` (`nom_encode`) VALUES (%s)"
            cursor.execute(sql_auteur, (auteur,))
            connection.commit()
            #On marque la creation à True
            creer=True
            #On recupere l'id de l'auteur cree
            sql = "SELECT * FROM `Auteur` WHERE `nom_encode`=%s"
            cursor.execute(sql, (auteur,))
            result = cursor.fetchone()
        else:
            print("L'auteur existe déjà dans la BD")
            result=result[0]
        print(result)
    return (creer,result[0])

#Fonction get or create affiliation
def get_or_create_affiliation(connection, ets, ville, pays):
    creer = False
    with connection.cursor() as cursor:
        # Verifier si l'auteur existe
        sql = "SELECT * FROM `Affiliation` WHERE `etablissement`=%s AND`ville`=%s AND`pays`=%s"
        cursor.execute(sql, (ets,ville,pays))
        result = cursor.fetchone()
        if result==None or result==():
            print("Enregistrement de l'affiliation")
            #Si l'auteur n'existe pas dans la BD on le cree et on le recupere dans result
            sql_affiliation = "INSERT INTO `Affiliation` (`etablissement`,`ville`,`pays`) VALUES (%s,%s,%s)"
            cursor.execute(sql_affiliation, (ets,ville,pays))
            connection.commit()
            #On marque la creation à True
            creer=True
            #On recupere l'id de l'auteur cree
            sql = "SELECT * FROM `Affiliation` WHERE `etablissement`=%s AND `ville`=%s AND`pays`=%s"
            cursor.execute(sql, (ets,ville,pays))
            result = cursor.fetchone()
        else:
            print("L'affiliation existe déjà dans la BD")
        print(result)
    return (creer,result[0])

#Fonction create article
def create_article(connection, titre):
    sql_article = "INSERT INTO `Article` (`titre_article`) VALUES (%s)"
    cursor.execute(sql_article, (titre,))
    connection.commit()
    sql = "SELECT `idarticle` FROM `Article` WHERE `titre_article`=%s"
    cursor.execute(sql, (titre,))
    result = cursor.fetchone()
    print("Enregistrement de l'article")
    print(result)
    return result

if __name__=="__main__":
    #Lecture des fichiers du dossier
    if len(sys.argv)==1:
        print("imput file error: Le dossier des article n'est pas donné en parametre\npython FileManager.py <dir path>")
        exit(1)
    path=sys.argv[-1]
    files=get_listFile(path)
    articles={}
    print("\n####################################")
    print("       LECTURE DES FICHIERS")
    print("####################################\n")
    for file in files:
        file_name=my_split_function(file,"/")
        file_name=file_name[-1]
        articles[file_name]=read_File(file)
    #Transformation des données (Auteurs et Pays)
    for article in articles.keys():
         liste_auteurs=articles[article]["auteur"]
         for i in range(len(liste_auteurs)):
             liste_auteurs[i]=Names_Transfort(liste_auteurs[i])
         articles[article]["auteur"]=liste_auteurs
         liste_pays=articles[article]["pays"]
         for i in range(len(liste_pays)):
             liste_pays[i]=Country_Transfort(liste_pays[i])
         articles[article]["pays"]=liste_pays
    #Affichage des données
    print_data(articles)
    # Connect to the database
    
    connection = pymysql.connect(host='localhost',
                                user='root',
                                password='',
                                database='TPINF351')
    
    print("\n####################################")
    print("     ENREGISTREMENT DANS LA BD")
    print("####################################\n")
    with connection:
        #Creation d'un curseur
        with connection.cursor() as cursor:
            for article in articles.keys():
                data=articles[article]
                id_article=create_article(connection,data["title"])
                n=len(data["auteur"])
                for i in range(n):
                    
                    auteur=data["auteur"][i]
                    _,id_auteur=get_or_create_auteur(connection,auteur)
                    pays=data["pays"][i]
                    ville=data["ville"][i]
                    ets=data["etablissement"][i]
                    
                    _,id_affiliation=get_or_create_affiliation(connection,ets,ville,pays)
                    sql_auteur_affiliation="INSERT INTO `auteurfiliation` (`idauteur`,`idaffiliation`) VALUES (%s,%s)"
                    cursor.execute(sql_auteur_affiliation, (id_auteur,id_affiliation))
                    connection.commit()
                    
                    sql_auteur_article="INSERT INTO `auteurarticle` (`idauteur`,`idarticle`) VALUES (%s,%s)"
                    cursor.execute(sql_auteur_article, (id_auteur,id_article))
                    connection.commit()
