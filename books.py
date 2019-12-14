import csv

with open('good_reads_final.csv') as csvfile:
    readCSV = csv.reader(csvfile, delimiter=',')
    authors = []
    books = []
    for row in readCSV:
        genre1 = re.sub('[^A-Za-z0-9]+', '', row[13]).lower()
        genre2 = re.sub('[^A-Za-z0-9]+', '', row[14]).lower()
        if  (("nonfiction" not in genre1) and ("nonfiction" not in genre2)) \
         and (("fiction" in genre1) or ("fiction" in genre2)):
            book = []
            book[0] = row[11]
            book[1] = row[12]
            book[2] = row[13]
            book[3] = row[14]
            book[4] = row[17]
            book[5] = row[18]
            book[6] = row[3]
            book[7] = row[10]

            author = []
            author[0] = row[3]  
            author[1] = row[4]
            author[2] = row[1]
            
            if author not in authors:
                authors.append(author)
            
            books.append(book)

    print(books[0:5])
    print (authors[0:5])
