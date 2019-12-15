import csv
import string
import random

authors = []
books = []
themes = []
countindex = 0
with open('../good_reads_final.csv') as csvfile:
    readCSV = csv.reader(csvfile, delimiter=',')
    printable = set(string.printable)
    count = []
    for row in readCSV:
        if countindex == 10:
            break
        genre1 = ''.join(filter(lambda x: x in printable, row[13])).lower()
        genre2 = ''.join(filter(lambda x: x in printable, row[14])).lower()
        #genre1.sub('[^A-Za-z0-9]+', '', row[13]).lower()
        #genre2.sub('[^A-Za-z0-9]+', '', row[14]).lower()
        if (("nonfiction" not in genre1) and ("nonfiction" not in genre2)) \
         and (("fiction" in genre1) or ("fiction" in genre2)):
            book = [None]*8
            book[0] = row[11]
            book[1] = row[12].strip()
            book[2] = row[13]
            if row[13] not in themes:
                themes.append(row[13])
                count.append(1)
            else:
                count[themes.index(row[13])] += 1
            book[3] = row[14]
            if row[14] not in themes:
                themes.append(row[14])
                count.append(1)
            else:
                count[themes.index(row[14])] += 1
            book[4] = row[17]
            book[5] = row[18][-4:]
            if book[5] == ("" or "by"):
                book[5] = 0
            book[6] = row[3]
            book[7] = row[10]
            author = [None]*3
            author[0] = row[3]  
            author[1] = row[4].strip()
            author[2] = row[1]
            if author not in authors:
                authors.append(author)
            books.append(book)
            countindex += 1

    # l = []
    # for e in zip(count, themes):
    #     l.append(e)

    # l.sort(key=lambda tup: tup[0], reverse = True)
    # for e in l:
    #     print(e[1])

indexbook = 0
for book in books:
    print("([" + "Book_" + str(indexbook) + "] of Libro")
    index = 0
    for author in authors:
        if book[6] in author:
            break
        index += 1
    print(" (autor [Author_" + str(index) + "])")
    print(" (generos")
    print("     [Genres_" + str(themes.index(book[2])) + "]")
    print("     [Genres_" + str(themes.index(book[3])) + "])")
    print(" (idLibro \"" + book[0] + "\")")
    print(" (nPag " + book[4] + ")")
    print(" (publicacion " + str(book[5]) + ")")
    print(" (url \"" + book[7] + "\")")
    print(" (titulo \"" + book[1] + "\"))")
    print("")
    indexbook += 1

indexauthor = 0
for author in authors:
        print("([Author_" + str(indexauthor) + "] of Autor")
        print(" (idAutor \"" + str(author[0]) + "\")")
        print(" (nombreAutor \"" + author[1] + "\")")
        print(" (sexo " + author[2] + "))")
        print("")
        indexauthor += 1


indexgenre = 0
for genre in themes:
        print("([Genres_" + str(indexgenre) + "] of Genero")
        print(" (idGenero \""+ str(indexgenre) +"\")")
        if indexgenre != 0:
            print(" (generosSimilares [" + "Genres_" + str(indexgenre-1) + "])")
        print(" (nombreGenero \"" + genre + "\"))")
        print("")
        indexgenre += 1

indexrecomendacion = 0
for book in books:
        print("([Recomendations_" + str(indexrecomendacion) + "] of Recomendacion")
        print(" (gradoRecomendacion " + str(0) + ")")
        print(" (libro [Book_" + str(indexrecomendacion) + "]))")
        print("")
        indexrecomendacion += 1

indexperfiles = 0
for psicologico in ["A","B","C","D"]:
    for rangoEdad in ["Infantil","Juvenil","Adulto"]:
        print("([Profile_" + str(indexperfiles) + "] of Perfil")
        print(" (generosRecomendados")
        numgenres = random.randint(1,len(themes))
        listgenres = []
        for i in range(numgenres):
            randomgenre = random.randint(0,len(themes)-1)
            exit = False
            while (not exit):
                if randomgenre not in listgenres:
                    listgenres.append(randomgenre)
                    exit = True
                else:
                    randomgenre = random.randint(0,len(themes)-1)
            if i != numgenres-1:
                print("     [Genres_" + str(randomgenre) + "]")
            else:
                print("     [Genres_" + str(randomgenre) + "])")
        print(" (psicologico " + psicologico + ")")
        print(" (rangoEdad " + rangoEdad + "))")
        print("")
        indexperfiles += 1



