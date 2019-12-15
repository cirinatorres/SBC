; Sun Dec 15 19:26:47 CET 2019
;
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot nombreGenero
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot generosSimilares
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(multislot justificaciones
		(type STRING)
		(create-accessor read-write))
	(single-slot idLibro
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nPag
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot titulo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot sexo
		(type SYMBOL)
		(allowed-values male female)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot gradoRecomendacion
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot idGenero
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot psicologico
		(type SYMBOL)
		(allowed-values A B C D)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot terminal
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot autor
		(type INSTANCE)
;+		(allowed-classes Autor)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot autoresSimilares
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write))
	(single-slot curable
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot url
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nombreAutor
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot idAutor
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot generos
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(multislot generosRecomendados
		(type INSTANCE)
;+		(allowed-classes Genero)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot rangoEdad
		(type SYMBOL)
		(allowed-values Infantil Juvenil Adulto)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot publicacion
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Libro
	(is-a USER)
	(role concrete)
	(single-slot nPag
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot url
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot generos
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot idLibro
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot autor
		(type INSTANCE)
;+		(allowed-classes Autor)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot titulo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot publicacion
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Genero
	(is-a USER)
	(role concrete)
	(single-slot nombreGenero
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot generosSimilares
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot idGenero
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Autor
	(is-a USER)
	(role concrete)
	(single-slot sexo
		(type SYMBOL)
		(allowed-values male female)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nombreAutor
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot idAutor
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot autoresSimilares
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write)))

(defclass Perfil
	(is-a USER)
	(role concrete)
	(single-slot rangoEdad
		(type SYMBOL)
		(allowed-values Infantil Juvenil Adulto)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot psicologico
		(type SYMBOL)
		(allowed-values A B C D)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot generosRecomendados
		(type INSTANCE)
;+		(allowed-classes Genero)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Recomendacion
	(is-a USER)
	(role concrete)
	(single-slot libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot gradoRecomendacion
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot justificaciones
		(type STRING)
		(create-accessor read-write)))

(definstances instancies
    ([Book_0] of Libro
     (autor [Author_0])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "0")
     (nPag 465)
     (publicacion 2005)
     (url "https://www.goodreads.com/book/show/2429135.The_Girl_with_the_Dragon_Tattoo")
     (titulo "The Girl with the Dragon Tattoo"))

    ([Book_1] of Libro
     (autor [Author_1])
     (generos
         [Genres_0]
         [Genres_2])
     (idLibro "1")
     (nPag 438)
     (publicacion 1970)
     (url "https://www.goodreads.com/book/show/382975.The_Obscene_Bird_of_Night")
     (titulo "The Obscene Bird of Night"))

    ([Book_2] of Libro
     (autor [Author_2])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "2")
     (nPag 392)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/7260188-mockingjay")
     (titulo "Mockingjay"))

    ([Book_3] of Libro
     (autor [Author_3])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "3")
     (nPag 354)
     (publicacion 1962)
     (url "https://www.goodreads.com/book/show/5130.Island")
     (titulo "Island"))

    ([Book_4] of Libro
     (autor [Author_4])
     (generos
         [Genres_6]
         [Genres_4])
     (idLibro "4")
     (nPag 109)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/20927491-1-27")
     (titulo "127 An ICoS Anthology"))

    ([Book_5] of Libro
     (autor [Author_5])
     (generos
         [Genres_6]
         [Genres_4])
     (idLibro "5")
     (nPag 171)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/20803627-forget-me-not")
     (titulo "Forget Me Not"))

    ([Book_6] of Libro
     (autor [Author_6])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "6")
     (nPag 688)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/17305049-ethan")
     (titulo "Ethan"))

    ([Book_7] of Libro
     (autor [Author_7])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "7")
     (nPag 320)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/7059135-inside-out")
     (titulo "Inside Out"))

    ([Book_8] of Libro
     (autor [Author_8])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "8")
     (nPag 315)
     (publicacion 1987)
     (url "https://www.goodreads.com/book/show/104344.The_Gate_to_Women_s_Country")
     (titulo "The Gate to Womens Country"))

    ([Book_9] of Libro
     (autor [Author_9])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "9")
     (nPag 528)
     (publicacion 1961)
     (url "https://www.goodreads.com/book/show/350.Stranger_in_a_Strange_Land")
     (titulo "Stranger in a Strange Land"))

    ([Book_10] of Libro
     (autor [Author_10])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "10")
     (nPag 326)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/7095831-ship-breaker")
     (titulo "Ship Breaker"))

    ([Book_11] of Libro
     (autor [Author_11])
     (generos
         [Genres_4]
         [Genres_4])
     (idLibro "11")
     (nPag 149)
     (publicacion 1967)
     (url "https://www.goodreads.com/book/show/73654.Logan_s_Run")
     (titulo "Logans Run"))

    ([Book_12] of Libro
     (autor [Author_12])
     (generos
         [Genres_0]
         [Genres_4])
     (idLibro "12")
     (nPag 341)
     (publicacion 1952)
     (url "https://www.goodreads.com/book/show/9597.Player_Piano")
     (titulo "Player Piano"))

    ([Book_13] of Libro
     (autor [Author_13])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "13")
     (nPag 629)
     (publicacion 1977)
     (url "https://www.goodreads.com/book/show/218467.Lucifer_s_Hammer")
     (titulo "Lucifers Hammer"))

    ([Book_14] of Libro
     (autor [Author_14])
     (generos
         [Genres_4]
         [Genres_8])
     (idLibro "14")
     (nPag 345)
     (publicacion 1949)
     (url "https://www.goodreads.com/book/show/93269.Earth_Abides")
     (titulo "Earth Abides"))

    ([Book_15] of Libro
     (autor [Author_15])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "15")
     (nPag 268)
     (publicacion 1963)
     (url "https://www.goodreads.com/book/show/414895.Planet_of_the_Apes")
     (titulo "Planet of the Apes"))

    ([Book_16] of Libro
     (autor [Author_16])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "16")
     (nPag 449)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/10567.Cell")
     (titulo "Cell"))

    ([Book_17] of Libro
     (autor [Author_17])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "17")
     (nPag 219)
     (publicacion 1977)
     (url "https://www.goodreads.com/book/show/14817.A_Scanner_Darkly")
     (titulo "A Scanner Darkly"))

    ([Book_18] of Libro
     (autor [Author_18])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "18")
     (nPag 400)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/2113260.Shades_of_Grey")
     (titulo "Shades of Grey"))

    ([Book_19] of Libro
     (autor [Author_19])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "19")
     (nPag 499)
     (publicacion 1995)
     (url "https://www.goodreads.com/book/show/827.The_Diamond_Age")
     (titulo "The Diamond Age Or A Young Ladys Illustrated Primer"))

    ([Book_20] of Libro
     (autor [Author_20])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "20")
     (nPag 488)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/10576365-the-darkest-minds")
     (titulo "The Darkest Minds"))

    ([Book_21] of Libro
     (autor [Author_21])
     (generos
         [Genres_4]
         [Genres_10])
     (idLibro "21")
     (nPag 382)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/15839976-red-rising")
     (titulo "Red Rising"))

    ([Book_22] of Libro
     (autor [Author_22])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "22")
     (nPag 317)
     (publicacion 1982)
     (url "https://www.goodreads.com/book/show/11607.The_Running_Man")
     (titulo "The Running Man"))

    ([Book_23] of Libro
     (autor [Author_23])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "23")
     (nPag 182)
     (publicacion 1950)
     (url "https://www.goodreads.com/book/show/76778.The_Martian_Chronicles")
     (titulo "The Martian Chronicles"))

    ([Book_24] of Libro
     (autor [Author_24])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "24")
     (nPag 278)
     (publicacion 1974)
     (url "https://www.goodreads.com/book/show/21611.The_Forever_War")
     (titulo "The Forever War"))

    ([Book_25] of Libro
     (autor [Author_25])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "25")
     (nPag 956)
     (publicacion 1987)
     (url "https://www.goodreads.com/book/show/11557.Swan_Song")
     (titulo "Swan Song"))

    ([Book_26] of Libro
     (autor [Author_26])
     (generos
         [Genres_0]
         [Genres_4])
     (idLibro "26")
     (nPag 296)
     (publicacion 1957)
     (url "https://www.goodreads.com/book/show/38180.On_the_Beach")
     (titulo "On the Beach"))

    ([Book_27] of Libro
     (autor [Author_27])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "27")
     (nPag 321)
     (publicacion 1985)
     (url "https://www.goodreads.com/book/show/889284.The_Postman")
     (titulo "The Postman"))

    ([Book_28] of Libro
     (autor [Author_28])
     (generos
         [Genres_0]
         [Genres_4])
     (idLibro "28")
     (nPag 336)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/20170404-station-eleven")
     (titulo "Station Eleven"))

    ([Book_29] of Libro
     (autor [Author_29])
     (generos
         [Genres_0]
         [Genres_4])
     (idLibro "29")
     (nPag 323)
     (publicacion 1959)
     (url "https://www.goodreads.com/book/show/38169.Alas_Babylon")
     (titulo "Alas Babylon"))

    ([Book_30] of Libro
     (autor [Author_30])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "30")
     (nPag 200)
     (publicacion 1955)
     (url "https://www.goodreads.com/book/show/826845.The_Chrysalids")
     (titulo "The Chrysalids"))

    ([Book_31] of Libro
     (autor [Author_31])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "31")
     (nPag 259)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/7137327-enclave")
     (titulo "Enclave"))

    ([Book_32] of Libro
     (autor [Author_32])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "32")
     (nPag 345)
     (publicacion 1993)
     (url "https://www.goodreads.com/book/show/52397.Parable_of_the_Sower")
     (titulo "Parable of the Sower"))

    ([Book_33] of Libro
     (autor [Author_33])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "33")
     (nPag 308)
     (publicacion 2002)
     (url "https://www.goodreads.com/book/show/169756.Feed")
     (titulo "Feed"))

    ([Book_34] of Libro
     (autor [Author_34])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "34")
     (nPag 387)
     (publicacion 1974)
     (url "https://www.goodreads.com/book/show/13651.The_Dispossessed")
     (titulo "The Dispossessed"))

    ([Book_35] of Libro
     (autor [Author_35])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "35")
     (nPag 255)
     (publicacion 1925)
     (url "https://www.goodreads.com/book/show/17690.The_Trial")
     (titulo "The Trial"))

    ([Book_36] of Libro
     (autor [Author_36])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "36")
     (nPag 399)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/8235178-across-the-universe")
     (titulo "Across the Universe"))

    ([Book_37] of Libro
     (autor [Author_37])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "37")
     (nPag 380)
     (publicacion 2002)
     (url "https://www.goodreads.com/book/show/13376.The_House_of_the_Scorpion")
     (titulo "The House of the Scorpion"))

    ([Book_38] of Libro
     (autor [Author_38])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "38")
     (nPag 1168)
     (publicacion 1957)
     (url "https://www.goodreads.com/book/show/662.Atlas_Shrugged")
     (titulo "Atlas Shrugged"))

    ([Book_39] of Libro
     (autor [Author_39])
     (generos
         [Genres_0]
         [Genres_4])
     (idLibro "39")
     (nPag 241)
     (publicacion 1992)
     (url "https://www.goodreads.com/book/show/41913.The_Children_of_Men")
     (titulo "The Children of Men"))

    ([Book_40] of Libro
     (autor [Author_40])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "40")
     (nPag 271)
     (publicacion 1984)
     (url "https://www.goodreads.com/book/show/888628.Neuromancer")
     (titulo "Neuromancer"))

    ([Book_41] of Libro
     (autor [Author_41])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "41")
     (nPag 335)
     (publicacion 1959)
     (url "https://www.goodreads.com/book/show/164154.A_Canticle_for_Leibowitz")
     (titulo "A Canticle for Leibowitz"))

    ([Book_42] of Libro
     (autor [Author_42])
     (generos
         [Genres_0]
         [Genres_4])
     (idLibro "42")
     (nPag 326)
     (publicacion 1995)
     (url "https://www.goodreads.com/book/show/40495148-blindness")
     (titulo "Blindness"))

    ([Book_43] of Libro
     (autor [Author_43])
     (generos
         [Genres_0]
         [Genres_4])
     (idLibro "43")
     (nPag 255)
     (publicacion 1921)
     (url "https://www.goodreads.com/book/show/76171.We")
     (titulo "We"))

    ([Book_44] of Libro
     (autor [Author_44])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "44")
     (nPag 337)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/213753.Life_As_We_Knew_It")
     (titulo "Life As We Knew It"))

    ([Book_45] of Libro
     (autor [Author_45])
     (generos
         [Genres_0]
         [Genres_4])
     (idLibro "45")
     (nPag 617)
     (publicacion 1999)
     (url "https://www.goodreads.com/book/show/57891.Battle_Royale")
     (titulo "Battle Royale"))

    ([Book_46] of Libro
     (autor [Author_46])
     (generos
         [Genres_5]
         [Genres_4])
     (idLibro "46")
     (nPag 118)
     (publicacion 1895)
     (url "https://www.goodreads.com/book/show/2493.The_Time_Machine")
     (titulo "The Time Machine"))

    ([Book_47] of Libro
     (autor [Author_47])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "47")
     (nPag 509)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/13453029-wool-omnibus")
     (titulo "Wool Omnibus"))

    ([Book_48] of Libro
     (autor [Author_48])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "48")
     (nPag 342)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/8908.World_War_Z")
     (titulo "World War Z An Oral History of the Zombie War"))

    ([Book_49] of Libro
     (autor [Author_49])
     (generos
         [Genres_0]
         [Genres_4])
     (idLibro "49")
     (nPag 389)
     (publicacion 2003)
     (url "https://www.goodreads.com/book/show/46756.Oryx_and_Crake")
     (titulo "Oryx and Crake"))

    ([Book_50] of Libro
     (autor [Author_50])
     (generos
         [Genres_0]
         [Genres_4])
     (idLibro "50")
     (nPag 288)
     (publicacion 2005)
     (url "https://www.goodreads.com/book/show/6334.Never_Let_Me_Go")
     (titulo "Never Let Me Go"))

    ([Book_51] of Libro
     (autor [Author_51])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "51")
     (nPag 449)
     (publicacion 1938)
     (url "https://www.goodreads.com/book/show/17899948-rebecca")
     (titulo "Rebecca"))

    ([Book_52] of Libro
     (autor [Author_52])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "52")
     (nPag 308)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/6048530-finger-lickin-fifteen")
     (titulo "Finger Lickin Fifteen"))

    ([Book_53] of Libro
     (autor [Author_53])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "53")
     (nPag 453)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/3720975-handle-with-care")
     (titulo "Handle with Care"))

    ([Book_54] of Libro
     (autor [Author_54])
     (generos
         [Genres_0]
         [Genres_12])
     (idLibro "54")
     (nPag 352)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/17204.The_Friday_Night_Knitting_Club")
     (titulo "The Friday Night Knitting Club"))

    ([Book_55] of Libro
     (autor [Author_55])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "55")
     (nPag 449)
     (publicacion 1868)
     (url "https://www.goodreads.com/book/show/1934.Little_Women")
     (titulo "Little Women"))

    ([Book_56] of Libro
     (autor [Author_56])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "56")
     (nPag 294)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/556602.Sarah_s_Key")
     (titulo "Sarahs Key"))

    ([Book_57] of Libro
     (autor [Author_57])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "57")
     (nPag 496)
     (publicacion 1943)
     (url "https://www.goodreads.com/book/show/14891.A_Tree_Grows_in_Brooklyn")
     (titulo "A Tree Grows in Brooklyn"))

    ([Book_58] of Libro
     (autor [Author_58])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "58")
     (nPag 294)
     (publicacion 1963)
     (url "https://www.goodreads.com/book/show/6514.The_Bell_Jar")
     (titulo "The Bell Jar"))

    ([Book_59] of Libro
     (autor [Author_59])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "59")
     (nPag 815)
     (publicacion 1996)
     (url "https://www.goodreads.com/book/show/13.The_Ultimate_Hitchhiker_s_Guide_to_the_Galaxy")
     (titulo "The Ultimate Hitchhikers Guide to the Galaxy"))

    ([Book_60] of Libro
     (autor [Author_60])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "60")
     (nPag 288)
     (publicacion 1989)
     (url "https://www.goodreads.com/book/show/7763.The_Joy_Luck_Club")
     (titulo "The Joy Luck Club"))

    ([Book_61] of Libro
     (autor [Author_61])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "61")
     (nPag 216)
     (publicacion 1995)
     (url "https://www.goodreads.com/book/show/101299.The_Reader")
     (titulo "The Reader"))

    ([Book_62] of Libro
     (autor [Author_62])
     (generos
         [Genres_0]
         [Genres_4])
     (idLibro "62")
     (nPag 241)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/6288.The_Road")
     (titulo "The Road"))

    ([Book_63] of Libro
     (autor [Author_63])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "63")
     (nPag 186)
     (publicacion 2000)
     (url "https://www.goodreads.com/book/show/22232.Stargirl")
     (titulo "Stargirl"))

    ([Book_64] of Libro
     (autor [Author_64])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "64")
     (nPag 490)
     (publicacion 1955)
     (url "https://www.goodreads.com/book/show/18512.The_Return_of_the_King")
     (titulo "The Return of the King"))

    ([Book_65] of Libro
     (autor [Author_65])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "65")
     (nPag 509)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/6411961-the-lost-symbol")
     (titulo "The Lost Symbol"))

    ([Book_66] of Libro
     (autor [Author_66])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "66")
     (nPag 973)
     (publicacion 1989)
     (url "https://www.goodreads.com/book/show/5043.The_Pillars_of_the_Earth")
     (titulo "The Pillars of the Earth"))

    ([Book_67] of Libro
     (autor [Author_67])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "67")
     (nPag 661)
     (publicacion 2001)
     (url "https://www.goodreads.com/book/show/37470.The_Other_Boleyn_Girl")
     (titulo "The Other Boleyn Girl"))

    ([Book_68] of Libro
     (autor [Author_68])
     (generos
         [Genres_0]
         [Genres_9])
     (idLibro "68")
     (nPag 320)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/5899779-pride-and-prejudice-and-zombies")
     (titulo "Pride and Prejudice and Zombies"))

    ([Book_69] of Libro
     (autor [Author_69])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "69")
     (nPag 401)
     (publicacion 2005)
     (url "https://www.goodreads.com/book/show/10441.The_Memory_Keeper_s_Daughter")
     (titulo "The Memory Keepers Daughter"))

    ([Book_70] of Libro
     (autor [Author_70])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "70")
     (nPag 370)
     (publicacion 2005)
     (url "https://www.goodreads.com/book/show/24768.Pretties")
     (titulo "Pretties"))

    ([Book_71] of Libro
     (autor [Author_71])
     (generos
         [Genres_12]
         [Genres_0])
     (idLibro "71")
     (nPag 288)
     (publicacion 1995)
     (url "https://www.goodreads.com/book/show/227443.Bridget_Jones_s_Diary")
     (titulo "Bridget Joness Diary"))

    ([Book_72] of Libro
     (autor [Author_72])
     (generos
         [Genres_6]
         [Genres_12])
     (idLibro "72")
     (nPag 391)
     (publicacion 2004)
     (url "https://www.goodreads.com/book/show/854757.Bet_Me")
     (titulo "Bet Me"))

    ([Book_73] of Libro
     (autor [Author_73])
     (generos
         [Genres_12]
         [Genres_6])
     (idLibro "73")
     (nPag 374)
     (publicacion 2001)
     (url "https://www.goodreads.com/book/show/33724.Can_You_Keep_a_Secret_")
     (titulo "Can You Keep a Secret"))

    ([Book_74] of Libro
     (autor [Author_74])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "74")
     (nPag 338)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/10429045-shatter-me")
     (titulo "Shatter Me"))

    ([Book_75] of Libro
     (autor [Author_75])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "75")
     (nPag 369)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/7735333-matched")
     (titulo "Matched"))

    ([Book_76] of Libro
     (autor [Author_76])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "76")
     (nPag 503)
     (publicacion 1997)
     (url "https://www.goodreads.com/book/show/929.Memoirs_of_a_Geisha")
     (titulo "Memoirs of a Geisha"))

    ([Book_77] of Libro
     (autor [Author_77])
     (generos
         [Genres_6]
         [Genres_0])
     (idLibro "77")
     (nPag 215)
     (publicacion 1999)
     (url "https://www.goodreads.com/book/show/35545737-a-walk-to-remember")
     (titulo "A Walk to Remember"))

    ([Book_78] of Libro
     (autor [Author_78])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "78")
     (nPag 334)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/20448515-bared-to-you")
     (titulo "Bared to You"))

    ([Book_79] of Libro
     (autor [Author_79])
     (generos
         [Genres_6]
         [Genres_0])
     (idLibro "79")
     (nPag 356)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/10818853-fifty-shades-of-grey")
     (titulo "Fifty Shades of Grey"))

    ([Book_80] of Libro
     (autor [Author_80])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "80")
     (nPag 428)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/11861715-icons")
     (titulo "Icons"))

    ([Book_81] of Libro
     (autor [Author_81])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "81")
     (nPag 312)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/13425802-pods")
     (titulo "PODs"))

    ([Book_82] of Libro
     (autor [Author_82])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "82")
     (nPag 320)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/9791892-unremembered")
     (titulo "Unremembered"))

    ([Book_83] of Libro
     (autor [Author_83])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "83")
     (nPag 309)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/13112869-not-a-drop-to-drink")
     (titulo "Not a Drop to Drink"))

    ([Book_84] of Libro
     (autor [Author_84])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "84")
     (nPag 323)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/10859509-altered")
     (titulo "Altered"))

    ([Book_85] of Libro
     (autor [Author_85])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "85")
     (nPag 292)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/13401993-dualed")
     (titulo "Dualed"))

    ([Book_86] of Libro
     (autor [Author_86])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "86")
     (nPag 400)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/13188615-breaking-point")
     (titulo "Breaking Point"))

    ([Book_87] of Libro
     (autor [Author_87])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "87")
     (nPag 496)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/14743784-unbreakable")
     (titulo "Unbreakable"))

    ([Book_88] of Libro
     (autor [Author_88])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "88")
     (nPag 384)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/13138635-these-broken-stars")
     (titulo "These Broken Stars"))

    ([Book_89] of Libro
     (autor [Author_89])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "89")
     (nPag 360)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/11044367-taken")
     (titulo "Taken"))

    ([Book_90] of Libro
     (autor [Author_90])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "90")
     (nPag 470)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/10222362-mila-2-0")
     (titulo "MILA 20"))

    ([Book_91] of Libro
     (autor [Author_91])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "91")
     (nPag 457)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/16101128-the-5th-wave")
     (titulo "The 5th Wave"))

    ([Book_92] of Libro
     (autor [Author_92])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "92")
     (nPag 369)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/14290364-champion")
     (titulo "Champion"))

    ([Book_93] of Libro
     (autor [Author_93])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "93")
     (nPag 307)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/10874177-etiquette-espionage")
     (titulo "Etiquette  Espionage"))

    ([Book_94] of Libro
     (autor [Author_94])
     (generos
         [Genres_4]
         [Genres_10])
     (idLibro "94")
     (nPag 341)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/12631512-the-essence")
     (titulo "The Essence"))

    ([Book_95] of Libro
     (autor [Author_95])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "95")
     (nPag 405)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/11366397-the-program")
     (titulo "The Program"))

    ([Book_96] of Libro
     (autor [Author_96])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "96")
     (nPag 411)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/8811139-light")
     (titulo "Light"))

    ([Book_97] of Libro
     (autor [Author_97])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "97")
     (nPag 391)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/9593913-requiem")
     (titulo "Requiem"))

    ([Book_98] of Libro
     (autor [Author_98])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "98")
     (nPag 371)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/12383869-sever")
     (titulo "Sever"))

    ([Book_99] of Libro
     (autor [Author_99])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "99")
     (nPag 341)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/13253276-through-the-ever-night")
     (titulo "Through the Ever Night"))

    ([Book_100] of Libro
     (autor [Author_100])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "100")
     (nPag 526)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/18710190-allegiant")
     (titulo "Allegiant"))

    ([Book_101] of Libro
     (autor [Author_101])
     (generos
         [Genres_10]
         [Genres_4])
     (idLibro "101")
     (nPag 304)
     (publicacion 2015)
     (url "https://www.goodreads.com/book/show/40963299-mechanica")
     (titulo "Mechanica"))

    ([Book_102] of Libro
     (autor [Author_102])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "102")
     (nPag 456)
     (publicacion 2015)
     (url "https://www.goodreads.com/book/show/23399192-rook")
     (titulo "Rook"))

    ([Book_103] of Libro
     (autor [Author_103])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "103")
     (nPag 356)
     (publicacion 2015)
     (url "https://www.goodreads.com/book/show/17316770-invaded")
     (titulo "Invaded"))

    ([Book_104] of Libro
     (autor [Author_104])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "104")
     (nPag 415)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/19288043-gone-girl")
     (titulo "Gone Girl"))

    ([Book_105] of Libro
     (autor [Author_105])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "105")
     (nPag 361)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/6909544-birthmarked")
     (titulo "Birthmarked"))

    ([Book_106] of Libro
     (autor [Author_106])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "106")
     (nPag 192)
     (publicacion 1961)
     (url "https://www.goodreads.com/book/show/595394.Some_of_Your_Blood")
     (titulo "Some of Your Blood"))

    ([Book_107] of Libro
     (autor [Author_107])
     (generos
         [Genres_10]
         [Genres_4])
     (idLibro "107")
     (nPag 496)
     (publicacion 1991)
     (url "https://www.goodreads.com/book/show/36159.Black_Sun_Rising")
     (titulo "Black Sun Rising"))

    ([Book_108] of Libro
     (autor [Author_108])
     (generos
         [Genres_9]
         [Genres_4])
     (idLibro "108")
     (nPag 160)
     (publicacion 1954)
     (url "https://www.goodreads.com/book/show/40940649-i-am-legend")
     (titulo "I Am Legend"))

    ([Book_109] of Libro
     (autor [Author_109])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "109")
     (nPag 766)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/6690798-the-passage")
     (titulo "The Passage"))

    ([Book_110] of Libro
     (autor [Author_110])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "110")
     (nPag 403)
     (publicacion 1981)
     (url "https://www.goodreads.com/book/show/62571.The_Keep")
     (titulo "The Keep"))

    ([Book_111] of Libro
     (autor [Author_111])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "111")
     (nPag 296)
     (publicacion 1998)
     (url "https://www.goodreads.com/book/show/34541.Carpe_Jugulum")
     (titulo "Carpe Jugulum"))

    ([Book_112] of Libro
     (autor [Author_112])
     (generos
         [Genres_14]
         [Genres_0])
     (idLibro "112")
     (nPag 300)
     (publicacion 1995)
     (url "https://www.goodreads.com/book/show/33454.Bloodsucking_Fiends")
     (titulo "Bloodsucking Fiends"))

    ([Book_113] of Libro
     (autor [Author_113])
     (generos
         [Genres_9]
         [Genres_4])
     (idLibro "113")
     (nPag 403)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/6065215-the-strain")
     (titulo "The Strain"))

    ([Book_114] of Libro
     (autor [Author_115])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "114")
     (nPag 513)
     (publicacion 2004)
     (url "https://www.goodreads.com/book/show/943402.Let_the_Right_One_In")
     (titulo "Let the Right One In"))

    ([Book_115] of Libro
     (autor [Author_116])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "115")
     (nPag 313)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/2227528.The_Plague_of_Doves")
     (titulo "The Plague of Doves"))

    ([Book_116] of Libro
     (autor [Author_117])
     (generos
         [Genres_0]
         [Genres_12])
     (idLibro "116")
     (nPag 479)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/1472878.Firefly_Lane")
     (titulo "Firefly Lane"))

    ([Book_117] of Libro
     (autor [Author_118])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "117")
     (nPag 400)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/3289281-when-will-there-be-good-news")
     (titulo "When Will There Be Good News"))

    ([Book_118] of Libro
     (autor [Author_119])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "118")
     (nPag 372)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/2017056.Skeletons_at_the_Feast")
     (titulo "Skeletons at the Feast"))

    ([Book_119] of Libro
     (autor [Author_120])
     (generos
         [Genres_0]
         [Genres_15])
     (idLibro "119")
     (nPag 530)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/1833852.A_Fraction_of_the_Whole")
     (titulo "A Fraction of the Whole"))

    ([Book_120] of Libro
     (autor [Author_121])
     (generos
         [Genres_12]
         [Genres_0])
     (idLibro "120")
     (nPag 288)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/426775.Chasing_Harry_Winston")
     (titulo "Chasing Harry Winston"))

    ([Book_121] of Libro
     (autor [Author_122])
     (generos
         [Genres_0]
         [Genres_16])
     (idLibro "121")
     (nPag 898)
     (publicacion 2004)
     (url "https://www.goodreads.com/book/show/63032.2666")
     (titulo "2666"))

    ([Book_122] of Libro
     (autor [Author_123])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "122")
     (nPag 208)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/1840511.Snuff")
     (titulo "Snuff"))

    ([Book_123] of Libro
     (autor [Author_124])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "123")
     (nPag 272)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/2112237.Betrayal_on_Orbis_2")
     (titulo "Betrayal on Orbis 2"))

    ([Book_124] of Libro
     (autor [Author_125])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "124")
     (nPag 167)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/3009435-a-mercy")
     (titulo "A Mercy"))

    ([Book_125] of Libro
     (autor [Author_126])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "125")
     (nPag 332)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/3181953-the-heretic-s-daughter")
     (titulo "The Heretics Daughter"))

    ([Book_126] of Libro
     (autor [Author_127])
     (generos
         [Genres_0]
         [Genres_17])
     (idLibro "126")
     (nPag 128)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/2556204.Unlucky_Lucky_Days")
     (titulo "Unlucky Lucky Days"))

    ([Book_127] of Libro
     (autor [Author_128])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "127")
     (nPag 214)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/1605034.The_Miracle_at_Speedy_Motors")
     (titulo "The Miracle at Speedy Motors"))

    ([Book_128] of Libro
     (autor [Author_129])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "128")
     (nPag 416)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/2177236.Hold_Tight")
     (titulo "Hold Tight"))

    ([Book_129] of Libro
     (autor [Author_130])
     (generos
         [Genres_12]
         [Genres_0])
     (idLibro "129")
     (nPag 386)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/421549.Certain_Girls")
     (titulo "Certain Girls"))

    ([Book_130] of Libro
     (autor [Author_131])
     (generos
         [Genres_14]
         [Genres_0])
     (idLibro "130")
     (nPag 224)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/1809465.Rodrick_Rules")
     (titulo "Rodrick Rules"))

    ([Book_131] of Libro
     (autor [Author_132])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "131")
     (nPag 555)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/2807199-american-wife")
     (titulo "American Wife"))

    ([Book_132] of Libro
     (autor [Author_133])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "132")
     (nPag 466)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/5941114-the-likeness")
     (titulo "The Likeness"))

    ([Book_133] of Libro
     (autor [Author_134])
     (generos
         [Genres_0]
         [Genres_18])
     (idLibro "133")
     (nPag 269)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/2615008-netherland")
     (titulo "Netherland"))

    ([Book_134] of Libro
     (autor [Author_135])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "134")
     (nPag 328)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/2138727.Mudbound")
     (titulo "Mudbound"))

    ([Book_135] of Libro
     (autor [Author_136])
     (generos
         [Genres_12]
         [Genres_0])
     (idLibro "135")
     (nPag 342)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/2120652.Love_the_One_You_re_With")
     (titulo "Love the One Youre With"))

    ([Book_136] of Libro
     (autor [Author_137])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "136")
     (nPag 384)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/1474628.The_Monsters_of_Templeton")
     (titulo "The Monsters of Templeton"))

    ([Book_137] of Libro
     (autor [Author_138])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "137")
     (nPag 740)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/3086160-the-hour-i-first-believed")
     (titulo "The Hour I First Believed"))

    ([Book_138] of Libro
     (autor [Author_139])
     (generos
         [Genres_0]
         [Genres_17])
     (idLibro "138")
     (nPag 270)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/1736739.Olive_Kitteridge")
     (titulo "Olive Kitteridge"))

    ([Book_139] of Libro
     (autor [Author_140])
     (generos
         [Genres_11]
         [Genres_0])
     (idLibro "139")
     (nPag 400)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/2113410.Belong_to_Me")
     (titulo "Belong to Me"))

    ([Book_140] of Libro
     (autor [Author_141])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "140")
     (nPag 258)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/1971304.City_of_Thieves")
     (titulo "City of Thieves"))

    ([Book_141] of Libro
     (autor [Author_142])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "141")
     (nPag 382)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/954674.Little_Brother")
     (titulo "Little Brother"))

    ([Book_142] of Libro
     (autor [Author_143])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "142")
     (nPag 372)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/1379961.People_of_the_Book")
     (titulo "People of the Book"))

    ([Book_143] of Libro
     (autor [Author_145])
     (generos
         [Genres_0]
         [Genres_19])
     (idLibro "143")
     (nPag 566)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/2731276-the-story-of-edgar-sawtelle")
     (titulo "The Story of Edgar Sawtelle"))

    ([Book_144] of Libro
     (autor [Author_147])
     (generos
         [Genres_0]
         [Genres_20])
     (idLibro "144")
     (nPag 407)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/16168313-racing-with-the-rain")
     (titulo "Racing With The Rain"))

    ([Book_145] of Libro
     (autor [Author_148])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "145")
     (nPag 280)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/8135807-rock-me")
     (titulo "Rock Me"))

    ([Book_146] of Libro
     (autor [Author_149])
     (generos
         [Genres_3]
         [Genres_21])
     (idLibro "146")
     (nPag 320)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/10647131-there-you-ll-find-me")
     (titulo "There Youll Find Me"))

    ([Book_147] of Libro
     (autor [Author_150])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "147")
     (nPag 372)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/128029.A_Thousand_Splendid_Suns")
     (titulo "A Thousand Splendid Suns"))

    ([Book_148] of Libro
     (autor [Author_151])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "148")
     (nPag 321)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/31685789-room")
     (titulo "Room"))

    ([Book_149] of Libro
     (autor [Author_152])
     (generos
         [Genres_6]
         [Genres_0])
     (idLibro "149")
     (nPag 369)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/17347634-me-before-you")
     (titulo "Me Before You"))

    ([Book_150] of Libro
     (autor [Author_153])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "150")
     (nPag 525)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/9673436-the-invention-of-hugo-cabret")
     (titulo "The Invention of Hugo Cabret"))

    ([Book_151] of Libro
     (autor [Author_154])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "151")
     (nPag 175)
     (publicacion 2017)
     (url "https://www.goodreads.com/book/show/35002208-maya-s-magical-adventures")
     (titulo "Mayas Magical Adventures"))

    ([Book_152] of Libro
     (autor [Author_155])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "152")
     (nPag 884)
     (publicacion 1982)
     (url "https://www.goodreads.com/book/show/40605251-the-mists-of-avalon")
     (titulo "The Mists of Avalon"))

    ([Book_153] of Libro
     (autor [Author_156])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "153")
     (nPag 494)
     (publicacion 1970)
     (url "https://www.goodreads.com/book/show/82192.The_Crystal_Cave")
     (titulo "The Crystal Cave"))

    ([Book_154] of Libro
     (autor [Author_157])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "154")
     (nPag 242)
     (publicacion 1905)
     (url "https://www.goodreads.com/book/show/3008.A_Little_Princess")
     (titulo "A Little Princess"))

    ([Book_155] of Libro
     (autor [Author_158])
     (generos
         [Genres_10]
         [Genres_4])
     (idLibro "155")
     (nPag 192)
     (publicacion 1976)
     (url "https://www.goodreads.com/book/show/28541.Dragonsong")
     (titulo "Dragonsong"))

    ([Book_156] of Libro
     (autor [Author_159])
     (generos
         [Genres_0]
         [Genres_3])
     (idLibro "156")
     (nPag 176)
     (publicacion 1999)
     (url "https://www.goodreads.com/book/show/78411.The_Bad_Beginning")
     (titulo "The Bad Beginning"))

    ([Book_157] of Libro
     (autor [Author_160])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "157")
     (nPag 304)
     (publicacion 1982)
     (url "https://www.goodreads.com/book/show/44659.Pawn_of_Prophecy")
     (titulo "Pawn of Prophecy"))

    ([Book_158] of Libro
     (autor [Author_161])
     (generos
         [Genres_22]
         [Genres_0])
     (idLibro "158")
     (nPag 240)
     (publicacion 1988)
     (url "https://www.goodreads.com/book/show/39988.Matilda")
     (titulo "Matilda"))

    ([Book_159] of Libro
     (autor [Author_162])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "159")
     (nPag 814)
     (publicacion 1990)
     (url "https://www.goodreads.com/book/show/228665.The_Eye_of_the_World")
     (titulo "The Eye of the World"))

    ([Book_160] of Libro
     (autor [Author_163])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "160")
     (nPag 368)
     (publicacion 2005)
     (url "https://www.goodreads.com/book/show/214856.Leven_Thumps_and_the_Gateway_to_Foo")
     (titulo "Leven Thumps and the Gateway to Foo"))

    ([Book_161] of Libro
     (autor [Author_164])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "161")
     (nPag 662)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/186074.The_Name_of_the_Wind")
     (titulo "The Name of the Wind"))

    ([Book_162] of Libro
     (autor [Author_165])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "162")
     (nPag 398)
     (publicacion 1973)
     (url "https://www.goodreads.com/book/show/21787.The_Princess_Bride")
     (titulo "The Princess Bride"))

    ([Book_163] of Libro
     (autor [Author_166])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "163")
     (nPag 128)
     (publicacion 1977)
     (url "https://www.goodreads.com/book/show/40940121-bridge-to-terabithia")
     (titulo "Bridge to Terabithia"))

    ([Book_164] of Libro
     (autor [Author_167])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "164")
     (nPag 384)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/6186357-the-maze-runner")
     (titulo "The Maze Runner"))

    ([Book_165] of Libro
     (autor [Author_168])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "165")
     (nPag 211)
     (publicacion 1962)
     (url "https://www.goodreads.com/book/show/33574273-a-wrinkle-in-time")
     (titulo "A Wrinkle in Time"))

    ([Book_166] of Libro
     (autor [Author_169])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "166")
     (nPag 336)
     (publicacion 2002)
     (url "https://www.goodreads.com/book/show/347639.What_Happened_to_Lani_Garver")
     (titulo "What Happened to Lani Garver"))

    ([Book_167] of Libro
     (autor [Author_170])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "167")
     (nPag 256)
     (publicacion 1999)
     (url "https://www.goodreads.com/book/show/790289.Hard_Love")
     (titulo "Hard Love"))

    ([Book_168] of Libro
     (autor [Author_171])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "168")
     (nPag 229)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/235466.Someday_This_Pain_Will_Be_Useful_to_You")
     (titulo "Someday This Pain Will Be Useful to You"))

    ([Book_169] of Libro
     (autor [Author_172])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "169")
     (nPag 128)
     (publicacion 1989)
     (url "https://www.goodreads.com/book/show/44353.Weetzie_Bat")
     (titulo "Weetzie Bat"))

    ([Book_170] of Libro
     (autor [Author_173])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "170")
     (nPag 403)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/1189878.My_Most_Excellent_Year")
     (titulo "My Most Excellent Year"))

    ([Book_171] of Libro
     (autor [Author_174])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "171")
     (nPag 384)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/16101023-proxy")
     (titulo "Proxy"))

    ([Book_172] of Libro
     (autor [Author_175])
     (generos
         [Genres_0]
         [Genres_2])
     (idLibro "172")
     (nPag 444)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/2227371.The_Girl_with_No_Shadow")
     (titulo "The Girl with No Shadow"))

    ([Book_173] of Libro
     (autor [Author_176])
     (generos
         [Genres_0]
         [Genres_15])
     (idLibro "173")
     (nPag 287)
     (publicacion 1983)
     (url "https://www.goodreads.com/book/show/4831.Shame")
     (titulo "Shame"))

    ([Book_174] of Libro
     (autor [Author_177])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "174")
     (nPag 304)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/8706185-among-others")
     (titulo "Among Others"))

    ([Book_175] of Libro
     (autor [Author_178])
     (generos
         [Genres_0]
         [Genres_6])
     (idLibro "175")
     (nPag 336)
     (publicacion 1997)
     (url "https://www.goodreads.com/book/show/5159.Here_on_Earth")
     (titulo "Here on Earth"))

    ([Book_176] of Libro
     (autor [Author_179])
     (generos
         [Genres_0]
         [Genres_2])
     (idLibro "176")
     (nPag 499)
     (publicacion 2000)
     (url "https://www.goodreads.com/book/show/14967.A_Trip_to_the_Stars")
     (titulo "A Trip to the Stars"))

    ([Book_177] of Libro
     (autor [Author_180])
     (generos
         [Genres_0]
         [Genres_2])
     (idLibro "177")
     (nPag 368)
     (publicacion 1990)
     (url "https://www.goodreads.com/book/show/3394.The_War_of_Don_Emmanuel_s_Nether_Parts")
     (titulo "The War of Don Emmanuels Nether Parts"))

    ([Book_178] of Libro
     (autor [Author_181])
     (generos
         [Genres_0]
         [Genres_17])
     (idLibro "178")
     (nPag 352)
     (publicacion 1988)
     (url "https://www.goodreads.com/book/show/3291.The_Stories_of_Eva_Luna")
     (titulo "The Stories of Eva Luna"))

    ([Book_179] of Libro
     (autor [Author_182])
     (generos
         [Genres_0]
         [Genres_15])
     (idLibro "179")
     (nPag 393)
     (publicacion 1988)
     (url "https://www.goodreads.com/book/show/17800.Dance_Dance_Dance")
     (titulo "Dance Dance Dance"))

    ([Book_180] of Libro
     (autor [Author_183])
     (generos
         [Genres_0]
         [Genres_17])
     (idLibro "180")
     (nPag 162)
     (publicacion 1962)
     (url "https://www.goodreads.com/book/show/53423.Cronopios_and_Famas")
     (titulo "Cronopios and Famas"))

    ([Book_181] of Libro
     (autor [Author_184])
     (generos
         [Genres_0]
         [Genres_10])
     (idLibro "181")
     (nPag 200)
     (publicacion 1967)
     (url "https://www.goodreads.com/book/show/81026.The_Magic_Toyshop")
     (titulo "The Magic Toyshop"))

    ([Book_182] of Libro
     (autor [Author_185])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "182")
     (nPag 288)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/13538873-mr-penumbra-s-24-hour-bookstore")
     (titulo "Mr Penumbras 24-Hour Bookstore"))

    ([Book_183] of Libro
     (autor [Author_186])
     (generos
         [Genres_0]
         [Genres_2])
     (idLibro "183")
     (nPag 323)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/40940157-swamplandia")
     (titulo "Swamplandia"))

    ([Book_184] of Libro
     (autor [Author_187])
     (generos
         [Genres_0]
         [Genres_10])
     (idLibro "184")
     (nPag 404)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/6240758-of-bees-and-mist")
     (titulo "Of Bees and Mist"))

    ([Book_185] of Libro
     (autor [Author_188])
     (generos
         [Genres_0]
         [Genres_15])
     (idLibro "185")
     (nPag 416)
     (publicacion 1989)
     (url "https://www.goodreads.com/book/show/60937.The_Temple_of_My_Familiar")
     (titulo "The Temple of My Familiar"))

    ([Book_186] of Libro
     (autor [Author_189])
     (generos
         [Genres_0]
         [Genres_2])
     (idLibro "186")
     (nPag 312)
     (publicacion 1988)
     (url "https://www.goodreads.com/book/show/33363.Mama_Day")
     (titulo "Mama Day"))

    ([Book_187] of Libro
     (autor [Author_190])
     (generos
         [Genres_0]
         [Genres_2])
     (idLibro "187")
     (nPag 338)
     (publicacion 1997)
     (url "https://www.goodreads.com/book/show/94669.The_Mistress_of_Spices")
     (titulo "The Mistress of Spices"))

    ([Book_188] of Libro
     (autor [Author_191])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "188")
     (nPag 218)
     (publicacion 1927)
     (url "https://www.goodreads.com/book/show/16631.Steppenwolf")
     (titulo "Steppenwolf"))

    ([Book_189] of Libro
     (autor [Author_192])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "189")
     (nPag 338)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/8366402-the-tiger-s-wife")
     (titulo "The Tigers Wife"))

    ([Book_190] of Libro
     (autor [Author_193])
     (generos
         [Genres_0]
         [Genres_23])
     (idLibro "190")
     (nPag 272)
     (publicacion 1982)
     (url "https://www.goodreads.com/book/show/57736.Shoeless_Joe")
     (titulo "Shoeless Joe"))

    ([Book_191] of Libro
     (autor [Author_194])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "191")
     (nPag 115)
     (publicacion 2004)
     (url "https://www.goodreads.com/book/show/760.Memories_of_My_Melancholy_Whores")
     (titulo "Memories of My Melancholy Whores"))

    ([Book_192] of Libro
     (autor [Author_195])
     (generos
         [Genres_0]
         [Genres_2])
     (idLibro "192")
     (nPag 576)
     (publicacion 1966)
     (url "https://www.goodreads.com/book/show/147039.Dona_Flor_and_Her_Two_Husbands")
     (titulo "Dona Flor and Her Two Husbands"))

    ([Book_193] of Libro
     (autor [Author_196])
     (generos
         [Genres_0]
         [Genres_10])
     (idLibro "193")
     (nPag 192)
     (publicacion 1998)
     (url "https://www.goodreads.com/book/show/129984.Big_Fish")
     (titulo "Big Fish"))

    ([Book_194] of Libro
     (autor [Author_197])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "194")
     (nPag 528)
     (publicacion 2005)
     (url "https://www.goodreads.com/book/show/91289.The_Hummingbird_s_Daughter")
     (titulo "The Hummingbirds Daughter"))

    ([Book_195] of Libro
     (autor [Author_198])
     (generos
         [Genres_0]
         [Genres_2])
     (idLibro "195")
     (nPag 456)
     (publicacion 1974)
     (url "https://www.goodreads.com/book/show/39242.The_Milagro_Beanfield_War")
     (titulo "The Milagro Beanfield War"))

    ([Book_196] of Libro
     (autor [Author_199])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "196")
     (nPag 531)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/5196764-the-angel-s-game")
     (titulo "The Angels Game"))

    ([Book_197] of Libro
     (autor [Author_200])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "197")
     (nPag 580)
     (publicacion 1959)
     (url "https://www.goodreads.com/book/show/35743.The_Tin_Drum")
     (titulo "The Tin Drum"))

    ([Book_198] of Libro
     (autor [Author_201])
     (generos
         [Genres_0]
         [Genres_2])
     (idLibro "198")
     (nPag 128)
     (publicacion 1955)
     (url "https://www.goodreads.com/book/show/38787.Pedro_P_ramo")
     (titulo "Pedro Pramo"))

    ([Book_199] of Libro
     (autor [Author_202])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "199")
     (nPag 386)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/33597976-the-snow-child")
     (titulo "The Snow Child"))

    ([Book_200] of Libro
     (autor [Author_203])
     (generos
         [Genres_0]
         [Genres_14])
     (idLibro "200")
     (nPag 366)
     (publicacion 1976)
     (url "https://www.goodreads.com/book/show/7572.Even_Cowgirls_Get_the_Blues")
     (titulo "Even Cowgirls Get the Blues"))

    ([Book_201] of Libro
     (autor [Author_204])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "201")
     (nPag 290)
     (publicacion 1972)
     (url "https://www.goodreads.com/book/show/14362.Bless_Me_Ultima")
     (titulo "Bless Me Ultima"))

    ([Book_202] of Libro
     (autor [Author_205])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "202")
     (nPag 176)
     (publicacion 1987)
     (url "https://www.goodreads.com/book/show/15047.The_Passion")
     (titulo "The Passion"))

    ([Book_203] of Libro
     (autor [Author_206])
     (generos
         [Genres_0]
         [Genres_2])
     (idLibro "203")
     (nPag 292)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/7048800-the-particular-sadness-of-lemon-cake")
     (titulo "The Particular Sadness of Lemon Cake"))

    ([Book_204] of Libro
     (autor [Author_207])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "204")
     (nPag 260)
     (publicacion 1979)
     (url "https://www.goodreads.com/book/show/374233.If_on_a_Winter_s_Night_a_Traveler")
     (titulo "If on a Winters Night a Traveler"))

    ([Book_205] of Libro
     (autor [Author_208])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "205")
     (nPag 538)
     (publicacion 1981)
     (url "https://www.goodreads.com/book/show/90619.Little_Big")
     (titulo "Little Big"))

    ([Book_206] of Libro
     (autor [Author_209])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "206")
     (nPag 335)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/297673.The_Brief_Wondrous_Life_of_Oscar_Wao")
     (titulo "The Brief Wondrous Life of Oscar Wao"))

    ([Book_207] of Libro
     (autor [Author_210])
     (generos
         [Genres_0]
         [Genres_10])
     (idLibro "207")
     (nPag 748)
     (publicacion 1983)
     (url "https://www.goodreads.com/book/show/12967.Winter_s_Tale")
     (titulo "Winters Tale"))

    ([Book_208] of Libro
     (autor [Author_211])
     (generos
         [Genres_0]
         [Genres_10])
     (idLibro "208")
     (nPag 460)
     (publicacion 2001)
     (url "https://www.goodreads.com/book/show/4214.Life_of_Pi")
     (titulo "Life of Pi"))

    ([Book_209] of Libro
     (autor [Author_212])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "209")
     (nPag 276)
     (publicacion 2002)
     (url "https://www.goodreads.com/book/show/256566.Everything_Is_Illuminated")
     (titulo "Everything Is Illuminated"))

    ([Book_210] of Libro
     (autor [Author_213])
     (generos
         [Genres_0]
         [Genres_2])
     (idLibro "210")
     (nPag 273)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/8546358-the-peach-keeper")
     (titulo "The Peach Keeper"))

    ([Book_211] of Libro
     (autor [Author_214])
     (generos
         [Genres_0]
         [Genres_17])
     (idLibro "211")
     (nPag 174)
     (publicacion 1944)
     (url "https://www.goodreads.com/book/show/426504.Ficciones")
     (titulo "Ficciones"))

    ([Book_212] of Libro
     (autor [Author_215])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "212")
     (nPag 387)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/9361589-the-night-circus")
     (titulo "The Night Circus"))

    ([Book_213] of Libro
     (autor [Author_216])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "213")
     (nPag 373)
     (publicacion 1967)
     (url "https://www.goodreads.com/book/show/117833.The_Master_and_Margarita")
     (titulo "The Master and Margarita"))

    ([Book_214] of Libro
     (autor [Author_217])
     (generos
         [Genres_0]
         [Genres_6])
     (idLibro "214")
     (nPag 224)
     (publicacion 1989)
     (url "https://www.goodreads.com/book/show/6952.Like_Water_for_Chocolate")
     (titulo "Like Water for Chocolate"))

    ([Book_215] of Libro
     (autor [Author_218])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "215")
     (nPag 280)
     (publicacion 1994)
     (url "https://www.goodreads.com/book/show/53496.Walk_Two_Moons")
     (titulo "Walk Two Moons"))

    ([Book_216] of Libro
     (autor [Author_219])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "216")
     (nPag 212)
     (publicacion 1962)
     (url "https://www.goodreads.com/book/show/227463.A_Clockwork_Orange")
     (titulo "A Clockwork Orange"))

    ([Book_217] of Libro
     (autor [Author_220])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "217")
     (nPag 232)
     (publicacion 1918)
     (url "https://www.goodreads.com/book/show/17150.My_ntonia")
     (titulo "My ntonia"))

    ([Book_218] of Libro
     (autor [Author_221])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "218")
     (nPag 518)
     (publicacion 1891)
     (url "https://www.goodreads.com/book/show/32261.Tess_of_the_D_Urbervilles")
     (titulo "Tess of the DUrbervilles"))

    ([Book_219] of Libro
     (autor [Author_222])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "219")
     (nPag 489)
     (publicacion 1859)
     (url "https://www.goodreads.com/book/show/1953.A_Tale_of_Two_Cities")
     (titulo "A Tale of Two Cities"))

    ([Book_220] of Libro
     (autor [Author_223])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "220")
     (nPag 581)
     (publicacion 1952)
     (url "https://www.goodreads.com/book/show/16981.Invisible_Man")
     (titulo "Invisible Man"))

    ([Book_221] of Libro
     (autor [Author_224])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "221")
     (nPag 1463)
     (publicacion 1862)
     (url "https://www.goodreads.com/book/show/24280.Les_Mis_rables")
     (titulo "Les Misrables"))

    ([Book_222] of Libro
     (autor [Author_225])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "222")
     (nPag 461)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/39832183-the-guernsey-literary-and-potato-peel-pie-society")
     (titulo "The Guernsey Literary and Potato Peel Pie Society"))

    ([Book_223] of Libro
     (autor [Author_226])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "223")
     (nPag 219)
     (publicacion 1937)
     (url "https://www.goodreads.com/book/show/37415.Their_Eyes_Were_Watching_God")
     (titulo "Their Eyes Were Watching God"))

    ([Book_224] of Libro
     (autor [Author_227])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "224")
     (nPag 112)
     (publicacion 1970)
     (url "https://www.goodreads.com/book/show/71728.Jonathan_Livingston_Seagull")
     (titulo "Jonathan Livingston Seagull"))

    ([Book_225] of Libro
     (autor [Author_228])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "225")
     (nPag 546)
     (publicacion 1998)
     (url "https://www.goodreads.com/book/show/7244.The_Poisonwood_Bible")
     (titulo "The Poisonwood Bible"))

    ([Book_226] of Libro
     (autor [Author_229])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "226")
     (nPag 329)
     (publicacion 1856)
     (url "https://www.goodreads.com/book/show/2175.Madame_Bovary")
     (titulo "Madame Bovary"))

    ([Book_227] of Libro
     (autor [Author_230])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "227")
     (nPag 479)
     (publicacion 1939)
     (url "https://www.goodreads.com/book/show/18114322-the-grapes-of-wrath")
     (titulo "The Grapes of Wrath"))

    ([Book_228] of Libro
     (autor [Author_231])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "228")
     (nPag 244)
     (publicacion 1876)
     (url "https://www.goodreads.com/book/show/24583.The_Adventures_of_Tom_Sawyer")
     (titulo "The Adventures of Tom Sawyer"))

    ([Book_229] of Libro
     (autor [Author_232])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "229")
     (nPag 188)
     (publicacion 1899)
     (url "https://www.goodreads.com/book/show/4900.Heart_of_Darkness")
     (titulo "Heart of Darkness"))

    ([Book_230] of Libro
     (autor [Author_233])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "230")
     (nPag 336)
     (publicacion 2001)
     (url "https://www.goodreads.com/book/show/37435.The_Secret_Life_of_Bees")
     (titulo "The Secret Life of Bees"))

    ([Book_231] of Libro
     (autor [Author_234])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "231")
     (nPag 324)
     (publicacion 1985)
     (url "https://www.goodreads.com/book/show/375802.Ender_s_Game")
     (titulo "Enders Game"))

    ([Book_232] of Libro
     (autor [Author_235])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "232")
     (nPag 209)
     (publicacion 1958)
     (url "https://www.goodreads.com/book/show/37781.Things_Fall_Apart")
     (titulo "Things Fall Apart"))

    ([Book_233] of Libro
     (autor [Author_236])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "233")
     (nPag 172)
     (publicacion 1903)
     (url "https://www.goodreads.com/book/show/1852.The_Call_of_the_Wild")
     (titulo "The Call of the Wild"))

    ([Book_234] of Libro
     (autor [Author_237])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "234")
     (nPag 325)
     (publicacion 1962)
     (url "https://www.goodreads.com/book/show/332613.One_Flew_Over_the_Cuckoo_s_Nest")
     (titulo "One Flew Over the Cuckoos Nest"))

    ([Book_235] of Libro
     (autor [Author_238])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "235")
     (nPag 132)
     (publicacion 1952)
     (url "https://www.goodreads.com/book/show/2165.The_Old_Man_and_the_Sea")
     (titulo "The Old Man and the Sea"))

    ([Book_236] of Libro
     (autor [Author_239])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "236")
     (nPag 504)
     (publicacion 1390)
     (url "https://www.goodreads.com/book/show/2696.The_Canterbury_Tales")
     (titulo "The Canterbury Tales"))

    ([Book_237] of Libro
     (autor [Author_240])
     (generos
         [Genres_0]
         [Genres_24])
     (idLibro "237")
     (nPag 252)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/40874325-the-shack")
     (titulo "The Shack"))

    ([Book_238] of Libro
     (autor [Author_241])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "238")
     (nPag 478)
     (publicacion 1972)
     (url "https://www.goodreads.com/book/show/76620.Watership_Down")
     (titulo "Watership Down"))

    ([Book_239] of Libro
     (autor [Author_242])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "239")
     (nPag 671)
     (publicacion 1866)
     (url "https://www.goodreads.com/book/show/7144.Crime_and_Punishment")
     (titulo "Crime and Punishment"))

    ([Book_240] of Libro
     (autor [Author_243])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "240")
     (nPag 123)
     (publicacion 1942)
     (url "https://www.goodreads.com/book/show/49552.The_Stranger")
     (titulo "The Stranger"))

    ([Book_241] of Libro
     (autor [Author_244])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "241")
     (nPag 224)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/39999.The_Boy_in_the_Striped_Pajamas")
     (titulo "The Boy in the Striped Pajamas"))

    ([Book_242] of Libro
     (autor [Author_245])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "242")
     (nPag 335)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/43641.Water_for_Elephants")
     (titulo "Water for Elephants"))

    ([Book_243] of Libro
     (autor [Author_246])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "243")
     (nPag 328)
     (publicacion 2002)
     (url "https://www.goodreads.com/book/show/12232938-the-lovely-bones")
     (titulo "The Lovely Bones"))

    ([Book_244] of Libro
     (autor [Author_247])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "244")
     (nPag 197)
     (publicacion 1988)
     (url "https://www.goodreads.com/book/show/865.The_Alchemist")
     (titulo "The Alchemist"))

    ([Book_245] of Libro
     (autor [Author_248])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "245")
     (nPag 273)
     (publicacion 1818)
     (url "https://www.goodreads.com/book/show/35031085-frankenstein")
     (titulo "Frankenstein"))

    ([Book_246] of Libro
     (autor [Author_249])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "246")
     (nPag 311)
     (publicacion 1966)
     (url "https://www.goodreads.com/book/show/36576608-flowers-for-algernon")
     (titulo "Flowers for Algernon"))

    ([Book_247] of Libro
     (autor [Author_250])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "247")
     (nPag 464)
     (publicacion 1847)
     (url "https://www.goodreads.com/book/show/6185.Wuthering_Heights")
     (titulo "Wuthering Heights"))

    ([Book_248] of Libro
     (autor [Author_251])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "248")
     (nPag 465)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/4667024-the-help")
     (titulo "The Help"))

    ([Book_249] of Libro
     (autor [Author_252])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "249")
     (nPag 226)
     (publicacion 2003)
     (url "https://www.goodreads.com/book/show/1618.The_Curious_Incident_of_the_Dog_in_the_Night_Time")
     (titulo "The Curious Incident of the Dog in the Night-Time"))

    ([Book_250] of Libro
     (autor [Author_253])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "250")
     (nPag 279)
     (publicacion 1850)
     (url "https://www.goodreads.com/book/show/12296.The_Scarlet_Letter")
     (titulo "The Scarlet Letter"))

    ([Book_251] of Libro
     (autor [Author_254])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "251")
     (nPag 93)
     (publicacion 1943)
     (url "https://www.goodreads.com/book/show/157993.The_Little_Prince")
     (titulo "The Little Prince"))

    ([Book_252] of Libro
     (autor [Author_255])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "252")
     (nPag 552)
     (publicacion 2005)
     (url "https://www.goodreads.com/book/show/19063.The_Book_Thief")
     (titulo "The Book Thief"))

    ([Book_253] of Libro
     (autor [Author_256])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "253")
     (nPag 122)
     (publicacion 1945)
     (url "https://www.goodreads.com/book/show/170448.Animal_Farm")
     (titulo "Animal Farm"))

    ([Book_254] of Libro
     (autor [Author_257])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "254")
     (nPag 277)
     (publicacion 1951)
     (url "https://www.goodreads.com/book/show/5107.The_Catcher_in_the_Rye")
     (titulo "The Catcher in the Rye"))

    ([Book_255] of Libro
     (autor [Author_258])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "255")
     (nPag 507)
     (publicacion 1847)
     (url "https://www.goodreads.com/book/show/10210.Jane_Eyre")
     (titulo "Jane Eyre"))

    ([Book_256] of Libro
     (autor [Author_259])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "256")
     (nPag 182)
     (publicacion 1954)
     (url "https://www.goodreads.com/book/show/7624.Lord_of_the_Flies")
     (titulo "Lord of the Flies"))

    ([Book_257] of Libro
     (autor [Author_260])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "257")
     (nPag 180)
     (publicacion 1925)
     (url "https://www.goodreads.com/book/show/4671.The_Great_Gatsby")
     (titulo "The Great Gatsby"))

    ([Book_258] of Libro
     (autor [Author_261])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "258")
     (nPag 324)
     (publicacion 1960)
     (url "https://www.goodreads.com/book/show/2657.To_Kill_a_Mockingbird")
     (titulo "To Kill a Mockingbird"))

    ([Book_259] of Libro
     (autor [Author_262])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "259")
     (nPag 351)
     (publicacion 2001)
     (url "https://www.goodreads.com/book/show/6867.Atonement")
     (titulo "Atonement"))

    ([Book_260] of Libro
     (autor [Author_263])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "260")
     (nPag 703)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/177076.The_Meaning_of_Night")
     (titulo "The Meaning of Night"))

    ([Book_261] of Libro
     (autor [Author_264])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "261")
     (nPag 515)
     (publicacion 2005)
     (url "https://www.goodreads.com/book/show/14975.Labyrinth")
     (titulo "Labyrinth"))

    ([Book_262] of Libro
     (autor [Author_265])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "262")
     (nPag 362)
     (publicacion 1993)
     (url "https://www.goodreads.com/book/show/7194.The_Club_Dumas")
     (titulo "The Club Dumas"))

    ([Book_263] of Libro
     (autor [Author_266])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "263")
     (nPag 256)
     (publicacion 1998)
     (url "https://www.goodreads.com/book/show/61463.The_Winter_Queen")
     (titulo "The Winter Queen"))

    ([Book_264] of Libro
     (autor [Author_267])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "264")
     (nPag 576)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/2761171-company-of-liars")
     (titulo "Company of Liars"))

    ([Book_265] of Libro
     (autor [Author_268])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "265")
     (nPag 623)
     (publicacion 1988)
     (url "https://www.goodreads.com/book/show/17841.Foucault_s_Pendulum")
     (titulo "Foucaults Pendulum"))

    ([Book_266] of Libro
     (autor [Author_269])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "266")
     (nPag 263)
     (publicacion 1990)
     (url "https://www.goodreads.com/book/show/37100.Devil_in_a_Blue_Dress")
     (titulo "Devil in a Blue Dress"))

    ([Book_267] of Libro
     (autor [Author_270])
     (generos
         [Genres_13]
         [Genres_25])
     (idLibro "267")
     (nPag 352)
     (publicacion 2015)
     (url "https://www.goodreads.com/book/show/22874238-deception-on-sable-hill")
     (titulo "Deception on Sable Hill"))

    ([Book_268] of Libro
     (autor [Author_271])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "268")
     (nPag 555)
     (publicacion 1990)
     (url "https://www.goodreads.com/book/show/41219.Possession")
     (titulo "Possession"))

    ([Book_269] of Libro
     (autor [Author_272])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "269")
     (nPag 290)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/3367956-hotel-on-the-corner-of-bitter-and-sweet")
     (titulo "Hotel on the Corner of Bitter and Sweet"))

    ([Book_270] of Libro
     (autor [Author_273])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "270")
     (nPag 599)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/1278752.The_House_at_Riverton")
     (titulo "The House at Riverton"))

    ([Book_271] of Libro
     (autor [Author_274])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "271")
     (nPag 582)
     (publicacion 2002)
     (url "https://www.goodreads.com/book/show/8913370-fingersmith")
     (titulo "Fingersmith"))

    ([Book_272] of Libro
     (autor [Author_275])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "272")
     (nPag 424)
     (publicacion 2003)
     (url "https://www.goodreads.com/book/show/18402.The_Dante_Club")
     (titulo "The Dante Club"))

    ([Book_273] of Libro
     (autor [Author_276])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "273")
     (nPag 304)
     (publicacion 2003)
     (url "https://www.goodreads.com/book/show/880.Pompeii")
     (titulo "Pompeii"))

    ([Book_274] of Libro
     (autor [Author_277])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "274")
     (nPag 509)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/2161733.Child_44")
     (titulo "Child 44"))

    ([Book_275] of Libro
     (autor [Author_278])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "275")
     (nPag 386)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/40605285-the-sweetness-at-the-bottom-of-the-pie")
     (titulo "The Sweetness at the Bottom of the Pie"))

    ([Book_276] of Libro
     (autor [Author_279])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "276")
     (nPag 263)
     (publicacion 1985)
     (url "https://www.goodreads.com/book/show/343.Perfume")
     (titulo "Perfume The Story of a Murderer"))

    ([Book_277] of Libro
     (autor [Author_280])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "277")
     (nPag 406)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/40440.The_Thirteenth_Tale")
     (titulo "The Thirteenth Tale"))

    ([Book_278] of Libro
     (autor [Author_283])
     (generos
         [Genres_26]
         [Genres_7])
     (idLibro "278")
     (nPag 84)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/22751611-liberty-belle")
     (titulo "Liberty Belle"))

    ([Book_279] of Libro
     (autor [Author_284])
     (generos
         [Genres_0]
         [Genres_15])
     (idLibro "279")
     (nPag 1152)
     (publicacion 1988)
     (url "https://www.goodreads.com/book/show/74404.The_Cornish_Trilogy")
     (titulo "The Cornish Trilogy The Rebel Angels Whats Bred in the Bone The Lyre of Orpheus"))

    ([Book_280] of Libro
     (autor [Author_285])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "280")
     (nPag 263)
     (publicacion 1976)
     (url "https://www.goodreads.com/book/show/160251.Ordinary_People")
     (titulo "Ordinary People"))

    ([Book_281] of Libro
     (autor [Author_286])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "281")
     (nPag 440)
     (publicacion 1971)
     (url "https://www.goodreads.com/book/show/46917.Rabbit_Redux")
     (titulo "Rabbit Redux"))

    ([Book_282] of Libro
     (autor [Author_287])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "282")
     (nPag 1774)
     (publicacion 1930)
     (url "https://www.goodreads.com/book/show/527756.The_Man_Without_Qualities")
     (titulo "The Man Without Qualities"))

    ([Book_283] of Libro
     (autor [Author_288])
     (generos
         [Genres_0]
         [Genres_15])
     (idLibro "283")
     (nPag 475)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/4952.What_Is_the_What")
     (titulo "What Is the What"))

    ([Book_284] of Libro
     (autor [Author_289])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "284")
     (nPag 448)
     (publicacion 2000)
     (url "https://www.goodreads.com/book/show/3711.White_Teeth")
     (titulo "White Teeth"))

    ([Book_285] of Libro
     (autor [Author_290])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "285")
     (nPag 705)
     (publicacion 2000)
     (url "https://www.goodreads.com/book/show/24800.House_of_Leaves")
     (titulo "House of Leaves"))

    ([Book_286] of Libro
     (autor [Author_291])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "286")
     (nPag 483)
     (publicacion 2001)
     (url "https://www.goodreads.com/book/show/187020.Empire_Falls")
     (titulo "Empire Falls"))

    ([Book_287] of Libro
     (autor [Author_293])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "287")
     (nPag 541)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/3591262-cutting-for-stone")
     (titulo "Cutting for Stone"))

    ([Book_288] of Libro
     (autor [Author_294])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "288")
     (nPag 255)
     (publicacion 2005)
     (url "https://www.goodreads.com/book/show/3867.The_History_of_Love")
     (titulo "The History of Love"))

    ([Book_289] of Libro
     (autor [Author_295])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "289")
     (nPag 653)
     (publicacion 2001)
     (url "https://www.goodreads.com/book/show/3805.The_Corrections")
     (titulo "The Corrections"))

    ([Book_290] of Libro
     (autor [Author_296])
     (generos
         [Genres_0]
         [Genres_4])
     (idLibro "290")
     (nPag 509)
     (publicacion 2004)
     (url "https://www.goodreads.com/book/show/49628.Cloud_Atlas")
     (titulo "Cloud Atlas"))

    ([Book_291] of Libro
     (autor [Author_297])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "291")
     (nPag 288)
     (publicacion 2005)
     (url "https://www.goodreads.com/book/show/40873273-snow-flower-and-the-secret-fan")
     (titulo "Snow Flower and the Secret Fan"))

    ([Book_292] of Libro
     (autor [Author_298])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "292")
     (nPag 639)
     (publicacion 2000)
     (url "https://www.goodreads.com/book/show/3985.The_Amazing_Adventures_of_Kavalier_Clay")
     (titulo "The Amazing Adventures of Kavalier  Clay"))

    ([Book_293] of Libro
     (autor [Author_299])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "293")
     (nPag 352)
     (publicacion 2001)
     (url "https://www.goodreads.com/book/show/5826.Bel_Canto")
     (titulo "Bel Canto"))

    ([Book_294] of Libro
     (autor [Author_300])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "294")
     (nPag 529)
     (publicacion 2002)
     (url "https://www.goodreads.com/book/show/2187.Middlesex")
     (titulo "Middlesex"))

    ([Book_295] of Libro
     (autor [Author_301])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "295")
     (nPag 754)
     (publicacion 1980)
     (url "https://www.goodreads.com/book/show/550454.Aztec")
     (titulo "Aztec"))

    ([Book_296] of Libro
     (autor [Author_302])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "296")
     (nPag 835)
     (publicacion 2002)
     (url "https://www.goodreads.com/book/show/40200.The_Crimson_Petal_and_the_White")
     (titulo "The Crimson Petal and the White"))

    ([Book_297] of Libro
     (autor [Author_303])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "297")
     (nPag 1104)
     (publicacion 1965)
     (url "https://www.goodreads.com/book/show/12657.The_Source")
     (titulo "The Source"))

    ([Book_298] of Libro
     (autor [Author_304])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "298")
     (nPag 351)
     (publicacion 2004)
     (url "https://www.goodreads.com/book/show/68527.The_Last_Kingdom")
     (titulo "The Last Kingdom"))

    ([Book_299] of Libro
     (autor [Author_305])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "299")
     (nPag 672)
     (publicacion 1984)
     (url "https://www.goodreads.com/book/show/8716.Lincoln")
     (titulo "Lincoln"))

    ([Book_300] of Libro
     (autor [Author_306])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "300")
     (nPag 958)
     (publicacion 1978)
     (url "https://www.goodreads.com/book/show/10222.The_Far_Pavilions")
     (titulo "The Far Pavilions"))

    ([Book_301] of Libro
     (autor [Author_307])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "301")
     (nPag 973)
     (publicacion 1985)
     (url "https://www.goodreads.com/book/show/4687.The_Cider_House_Rules")
     (titulo "The Cider House Rules"))

    ([Book_302] of Libro
     (autor [Author_308])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "302")
     (nPag 6576)
     (publicacion 1994)
     (url "https://www.goodreads.com/book/show/24520.The_Complete_Aubrey_Maturin_Novels")
     (titulo "The Complete AubreyMaturin Novels 5 Volumes"))

    ([Book_303] of Libro
     (autor [Author_309])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "303")
     (nPag 1152)
     (publicacion 1997)
     (url "https://www.goodreads.com/book/show/92160.London")
     (titulo "London"))

    ([Book_304] of Libro
     (autor [Author_310])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "304")
     (nPag 470)
     (publicacion 1969)
     (url "https://www.goodreads.com/book/show/56034.The_French_Lieutenant_s_Woman")
     (titulo "The French Lieutenants Woman"))

    ([Book_305] of Libro
     (autor [Author_311])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "305")
     (nPag 972)
     (publicacion 1944)
     (url "https://www.goodreads.com/book/show/5368.Forever_Amber")
     (titulo "Forever Amber"))

    ([Book_306] of Libro
     (autor [Author_312])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "306")
     (nPag 812)
     (publicacion 1982)
     (url "https://www.goodreads.com/book/show/159178.North_and_South")
     (titulo "North and South"))

    ([Book_307] of Libro
     (autor [Author_313])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "307")
     (nPag 1076)
     (publicacion 1990)
     (url "https://www.goodreads.com/book/show/480570.The_First_Man_in_Rome")
     (titulo "The First Man in Rome"))

    ([Book_308] of Libro
     (autor [Author_314])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "308")
     (nPag 734)
     (publicacion 1966)
     (url "https://www.goodreads.com/book/show/42933.Tai_Pan")
     (titulo "Tai-Pan"))

    ([Book_309] of Libro
     (autor [Author_315])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "309")
     (nPag 463)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/481446.Nefertiti")
     (titulo "Nefertiti"))

    ([Book_310] of Libro
     (autor [Author_316])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "310")
     (nPag 427)
     (publicacion 2003)
     (url "https://www.goodreads.com/book/show/28078.The_Birth_of_Venus")
     (titulo "The Birth of Venus"))

    ([Book_311] of Libro
     (autor [Author_317])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "311")
     (nPag 1006)
     (publicacion 2004)
     (url "https://www.goodreads.com/book/show/14201.Jonathan_Strange_Mr_Norrell")
     (titulo "Jonathan Strange  Mr Norrell"))

    ([Book_312] of Libro
     (autor [Author_318])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "312")
     (nPag 653)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/6101138-wolf-hall")
     (titulo "Wolf Hall"))

    ([Book_313] of Libro
     (autor [Author_319])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "313")
     (nPag 405)
     (publicacion 2003)
     (url "https://www.goodreads.com/book/show/3273.Moloka_i")
     (titulo "Molokai"))

    ([Book_314] of Libro
     (autor [Author_320])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "314")
     (nPag 776)
     (publicacion 1958)
     (url "https://www.goodreads.com/book/show/321552.The_Agony_and_the_Ecstasy")
     (titulo "The Agony and the Ecstasy"))

    ([Book_315] of Libro
     (autor [Author_321])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "315")
     (nPag 416)
     (publicacion 1987)
     (url "https://www.goodreads.com/book/show/9375.Fried_Green_Tomatoes_at_the_Whistle_Stop_Cafe")
     (titulo "Fried Green Tomatoes at the Whistle Stop Cafe"))

    ([Book_316] of Libro
     (autor [Author_322])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "316")
     (nPag 531)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/18143977-all-the-light-we-cannot-see")
     (titulo "All the Light We Cannot See"))

    ([Book_317] of Libro
     (autor [Author_323])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "317")
     (nPag 422)
     (publicacion 1996)
     (url "https://www.goodreads.com/book/show/27252.Pope_Joan")
     (titulo "Pope Joan"))

    ([Book_318] of Libro
     (autor [Author_324])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "318")
     (nPag 608)
     (publicacion 1958)
     (url "https://www.goodreads.com/book/show/42697.Exodus")
     (titulo "Exodus"))

    ([Book_319] of Libro
     (autor [Author_325])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "319")
     (nPag 500)
     (publicacion 1954)
     (url "https://www.goodreads.com/book/show/33609.Katherine")
     (titulo "Katherine"))

    ([Book_320] of Libro
     (autor [Author_326])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "320")
     (nPag 320)
     (publicacion 1992)
     (url "https://www.goodreads.com/book/show/11713.The_English_Patient")
     (titulo "The English Patient"))

    ([Book_321] of Libro
     (autor [Author_327])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "321")
     (nPag 468)
     (publicacion 1934)
     (url "https://www.goodreads.com/book/show/18765.I_Claudius")
     (titulo "I Claudius"))

    ([Book_322] of Libro
     (autor [Author_328])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "322")
     (nPag 625)
     (publicacion 1844)
     (url "https://www.goodreads.com/book/show/7190.The_Three_Musketeers")
     (titulo "The Three Musketeers"))

    ([Book_323] of Libro
     (autor [Author_329])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "323")
     (nPag 356)
     (publicacion 1997)
     (url "https://www.goodreads.com/book/show/10920.Cold_Mountain")
     (titulo "Cold Mountain"))

    ([Book_324] of Libro
     (autor [Author_330])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "324")
     (nPag 945)
     (publicacion 1985)
     (url "https://www.goodreads.com/book/show/256008.Lonesome_Dove")
     (titulo "Lonesome Dove"))

    ([Book_325] of Libro
     (autor [Author_331])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "325")
     (nPag 336)
     (publicacion 1997)
     (url "https://www.goodreads.com/book/show/4989.The_Red_Tent")
     (titulo "The Red Tent"))

    ([Book_326] of Libro
     (autor [Author_332])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "326")
     (nPag 1023)
     (publicacion 1605)
     (url "https://www.goodreads.com/book/show/3836.Don_Quixote")
     (titulo "Don Quixote"))

    ([Book_327] of Libro
     (autor [Author_333])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "327")
     (nPag 438)
     (publicacion 1852)
     (url "https://www.goodreads.com/book/show/46787.Uncle_Tom_s_Cabin")
     (titulo "Uncle Toms Cabin"))

    ([Book_328] of Libro
     (autor [Author_334])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "328")
     (nPag 296)
     (publicacion 1929)
     (url "https://www.goodreads.com/book/show/355697.All_Quiet_on_the_Western_Front")
     (titulo "All Quiet on the Western Front"))

    ([Book_329] of Libro
     (autor [Author_335])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "329")
     (nPag 1392)
     (publicacion 1867)
     (url "https://www.goodreads.com/book/show/656.War_and_Peace")
     (titulo "War and Peace"))

    ([Book_330] of Libro
     (autor [Author_336])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "330")
     (nPag 417)
     (publicacion 1955)
     (url "https://www.goodreads.com/book/show/7604.Lolita")
     (titulo "Lolita"))

    ([Book_331] of Libro
     (autor [Author_337])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "331")
     (nPag 453)
     (publicacion 1961)
     (url "https://www.goodreads.com/book/show/168668.Catch_22")
     (titulo "Catch-22"))

    ([Book_332] of Libro
     (autor [Author_338])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "332")
     (nPag 367)
     (publicacion 1890)
     (url "https://www.goodreads.com/book/show/5297.The_Picture_of_Dorian_Gray")
     (titulo "The Picture of Dorian Gray"))

    ([Book_333] of Libro
     (autor [Author_339])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "333")
     (nPag 230)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/693208.The_Absolutely_True_Diary_of_a_Part_Time_Indian")
     (titulo "The Absolutely True Diary of a Part-Time Indian"))

    ([Book_334] of Libro
     (autor [Author_340])
     (generos
         [Genres_0]
         [Genres_22])
     (idLibro "334")
     (nPag 178)
     (publicacion 1967)
     (url "https://www.goodreads.com/book/show/3980.From_the_Mixed_Up_Files_of_Mrs_Basil_E_Frankweiler")
     (titulo "From the Mixed-Up Files of Mrs Basil E Frankweiler"))

    ([Book_335] of Libro
     (autor [Author_341])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "335")
     (nPag 294)
     (publicacion 2001)
     (url "https://www.goodreads.com/book/show/452306.The_Sisterhood_of_the_Traveling_Pants")
     (titulo "The Sisterhood of the Traveling Pants"))

    ([Book_336] of Libro
     (autor [Author_342])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "336")
     (nPag 256)
     (publicacion 1961)
     (url "https://www.goodreads.com/book/show/378.The_Phantom_Tollbooth")
     (titulo "The Phantom Tollbooth"))

    ([Book_337] of Libro
     (autor [Author_343])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "337")
     (nPag 320)
     (publicacion 1908)
     (url "https://www.goodreads.com/book/show/8127.Anne_of_Green_Gables")
     (titulo "Anne of Green Gables"))

    ([Book_338] of Libro
     (autor [Author_344])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "338")
     (nPag 153)
     (publicacion 1998)
     (url "https://www.goodreads.com/book/show/227651.Among_the_Hidden")
     (titulo "Among the Hidden"))

    ([Book_339] of Libro
     (autor [Author_345])
     (generos
         [Genres_0]
         [Genres_27])
     (idLibro "339")
     (nPag 461)
     (publicacion 1973)
     (url "https://www.goodreads.com/book/show/9654.Fear_of_Flying")
     (titulo "Fear of Flying"))

    ([Book_340] of Libro
     (autor [Author_346])
     (generos
         [Genres_0]
         [Genres_28])
     (idLibro "340")
     (nPag 140)
     (publicacion 1974)
     (url "https://www.goodreads.com/book/show/69880.The_Lost_Honor_of_Katharina_Blum")
     (titulo "The Lost Honor of Katharina Blum"))

    ([Book_341] of Libro
     (autor [Author_347])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "341")
     (nPag 567)
     (publicacion 1979)
     (url "https://www.goodreads.com/book/show/19581.Ghost_Story")
     (titulo "Ghost Story"))

    ([Book_342] of Libro
     (autor [Author_348])
     (generos
         [Genres_0]
         [Genres_29])
     (idLibro "342")
     (nPag 462)
     (publicacion 1973)
     (url "https://www.goodreads.com/book/show/136167.The_Other_Side_of_Midnight")
     (titulo "The Other Side of Midnight"))

    ([Book_343] of Libro
     (autor [Author_349])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "343")
     (nPag 1042)
     (publicacion 1978)
     (url "https://www.goodreads.com/book/show/42986.War_and_Remembrance")
     (titulo "War and Remembrance"))

    ([Book_344] of Libro
     (autor [Author_350])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "344")
     (nPag 369)
     (publicacion 1972)
     (url "https://www.goodreads.com/book/show/11507.My_Name_Is_Asher_Lev")
     (titulo "My Name Is Asher Lev"))

    ([Book_345] of Libro
     (autor [Author_351])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "345")
     (nPag 243)
     (publicacion 1973)
     (url "https://www.goodreads.com/book/show/112537.Rendezvous_with_Rama")
     (titulo "Rendezvous with Rama"))

    ([Book_346] of Libro
     (autor [Author_352])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "346")
     (nPag 726)
     (publicacion 1977)
     (url "https://www.goodreads.com/book/show/15575.The_Sword_of_Shannara")
     (titulo "The Sword of Shannara"))

    ([Book_347] of Libro
     (autor [Author_353])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "347")
     (nPag 569)
     (publicacion 1971)
     (url "https://www.goodreads.com/book/show/292408.Angle_of_Repose")
     (titulo "Angle of Repose"))

    ([Book_348] of Libro
     (autor [Author_354])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "348")
     (nPag 592)
     (publicacion 1979)
     (url "https://www.goodreads.com/book/show/78983.Kane_and_Abel")
     (titulo "Kane and Abel"))

    ([Book_349] of Libro
     (autor [Author_355])
     (generos
         [Genres_22]
         [Genres_0])
     (idLibro "349")
     (nPag 144)
     (publicacion 1972)
     (url "https://www.goodreads.com/book/show/37741.Tales_of_a_Fourth_Grade_Nothing")
     (titulo "Tales of a Fourth Grade Nothing"))

    ([Book_350] of Libro
     (autor [Author_356])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "350")
     (nPag 288)
     (publicacion 1970)
     (url "https://www.goodreads.com/book/show/592657.Deliverance")
     (titulo "Deliverance"))

    ([Book_351] of Libro
     (autor [Author_357])
     (generos
         [Genres_22]
         [Genres_0])
     (idLibro "351")
     (nPag 144)
     (publicacion 1978)
     (url "https://www.goodreads.com/book/show/15779.Sideways_Stories_from_Wayside_School")
     (titulo "Sideways Stories from Wayside School"))

    ([Book_352] of Libro
     (autor [Author_358])
     (generos
         [Genres_0]
         [Genres_28])
     (idLibro "352")
     (nPag 313)
     (publicacion 1979)
     (url "https://www.goodreads.com/book/show/240976.The_Book_of_Laughter_and_Forgetting")
     (titulo "The Book of Laughter and Forgetting"))

    ([Book_353] of Libro
     (autor [Author_359])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "353")
     (nPag 776)
     (publicacion 1973)
     (url "https://www.goodreads.com/book/show/415.Gravity_s_Rainbow")
     (titulo "Gravitys Rainbow"))

    ([Book_354] of Libro
     (autor [Author_360])
     (generos
         [Genres_0]
         [Genres_29])
     (idLibro "354")
     (nPag 384)
     (publicacion 1971)
     (url "https://www.goodreads.com/book/show/540020.The_Day_of_the_Jackal")
     (titulo "The Day of the Jackal"))

    ([Book_355] of Libro
     (autor [Author_361])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "355")
     (nPag 345)
     (publicacion 1974)
     (url "https://www.goodreads.com/book/show/682804.The_Killer_Angels")
     (titulo "The Killer Angels"))

    ([Book_356] of Libro
     (autor [Author_362])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "356")
     (nPag 320)
     (publicacion 1975)
     (url "https://www.goodreads.com/book/show/175675.Ragtime")
     (titulo "Ragtime"))

    ([Book_357] of Libro
     (autor [Author_363])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "357")
     (nPag 408)
     (publicacion 1973)
     (url "https://www.goodreads.com/book/show/120182.The_Black_Prince")
     (titulo "The Black Prince"))

    ([Book_358] of Libro
     (autor [Author_364])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "358")
     (nPag 379)
     (publicacion 1974)
     (url "https://www.goodreads.com/book/show/10073506-tinker-tailor-soldier-spy")
     (titulo "Tinker Tailor Soldier Spy"))

    ([Book_359] of Libro
     (autor [Author_365])
     (generos
         [Genres_30]
         [Genres_0])
     (idLibro "359")
     (nPag 540)
     (publicacion 1974)
     (url "https://www.goodreads.com/book/show/629.Zen_and_the_Art_of_Motorcycle_Maintenance")
     (titulo "Zen and the Art of Motorcycle Maintenance An Inquiry Into Values"))

    ([Book_360] of Libro
     (autor [Author_366])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "360")
     (nPag 385)
     (publicacion 1971)
     (url "https://www.goodreads.com/book/show/179780.The_Exorcist")
     (titulo "The Exorcist"))

    ([Book_361] of Libro
     (autor [Author_367])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "361")
     (nPag 204)
     (publicacion 1971)
     (url "https://www.goodreads.com/book/show/7745.Fear_and_Loathing_in_Las_Vegas")
     (titulo "Fear and Loathing in Las Vegas"))

    ([Book_362] of Libro
     (autor [Author_368])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "362")
     (nPag 432)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/13062488-the-lost-girl")
     (titulo "The Lost Girl"))

    ([Book_363] of Libro
     (autor [Author_369])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "363")
     (nPag 234)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/16098473-project-ele")
     (titulo "Project ELE"))

    ([Book_364] of Libro
     (autor [Author_370])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "364")
     (nPag 325)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/12680986-timepiece")
     (titulo "Timepiece"))

    ([Book_365] of Libro
     (autor [Author_371])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "365")
     (nPag 373)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/11544466-breathe")
     (titulo "Breathe"))

    ([Book_366] of Libro
     (autor [Author_372])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "366")
     (nPag 308)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/10535458-glitch")
     (titulo "Glitch"))

    ([Book_367] of Libro
     (autor [Author_373])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "367")
     (nPag 388)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/9859436-something-strange-and-deadly")
     (titulo "Something Strange and Deadly"))

    ([Book_368] of Libro
     (autor [Author_374])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "368")
     (nPag 480)
     (publicacion 1990)
     (url "https://www.goodreads.com/book/show/40604658-jurassic-park")
     (titulo "Jurassic Park"))

    ([Book_369] of Libro
     (autor [Author_375])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "369")
     (nPag 884)
     (publicacion 1960)
     (url "https://www.goodreads.com/book/show/13033.The_Alexandria_Quartet")
     (titulo "The Alexandria Quartet"))

    ([Book_370] of Libro
     (autor [Author_376])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "370")
     (nPag 578)
     (publicacion 1976)
     (url "https://www.goodreads.com/book/show/19821.Riddle_Master")
     (titulo "Riddle-Master"))

    ([Book_371] of Libro
     (autor [Author_379])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "371")
     (nPag 944)
     (publicacion 1995)
     (url "https://www.goodreads.com/book/show/61146.The_Myst_Reader")
     (titulo "The Myst Reader Three Books in One Volume"))

    ([Book_372] of Libro
     (autor [Author_380])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "372")
     (nPag 1173)
     (publicacion 1959)
     (url "https://www.goodreads.com/book/show/39058.The_Gormenghast_Novels")
     (titulo "The Gormenghast Novels"))

    ([Book_373] of Libro
     (autor [Author_381])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "373")
     (nPag 679)
     (publicacion 1953)
     (url "https://www.goodreads.com/book/show/46654.The_Foundation_Trilogy")
     (titulo "The Foundation Trilogy"))

    ([Book_374] of Libro
     (autor [Author_383])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "374")
     (nPag 1224)
     (publicacion 2003)
     (url "https://www.goodreads.com/book/show/493121.Blue_is_for_Nightmares_Collections")
     (titulo "Blue is for Nightmares Collections"))

    ([Book_375] of Libro
     (autor [Author_384])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "375")
     (nPag 2480)
     (publicacion 1998)
     (url "https://www.goodreads.com/book/show/43888.The_Sword_of_Truth_Boxed_Set_I")
     (titulo "The Sword of Truth Boxed Set I Wizards First Rule Blood of the Fold Stone of Tears"))

    ([Book_376] of Libro
     (autor [Author_385])
     (generos
         [Genres_0]
         [Genres_29])
     (idLibro "376")
     (nPag 1408)
     (publicacion 1991)
     (url "https://www.goodreads.com/book/show/123544.The_Bourne_Trilogy")
     (titulo "The Bourne Trilogy"))

    ([Book_377] of Libro
     (autor [Author_387])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "377")
     (nPag 872)
     (publicacion 1921)
     (url "https://www.goodreads.com/book/show/103159.The_Forsyte_Saga")
     (titulo "The Forsyte Saga"))

    ([Book_378] of Libro
     (autor [Author_389])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "378")
     (nPag 416)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/25898833-the-almost-girl")
     (titulo "The Almost Girl"))

    ([Book_379] of Libro
     (autor [Author_390])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "379")
     (nPag 184)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/24034941-the-kaleidoscope")
     (titulo "The Kaleidoscope The Gift of Madness"))

    ([Book_380] of Libro
     (autor [Author_391])
     (generos
         [Genres_4]
         [Genres_4])
     (idLibro "380")
     (nPag 372)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/22586406-experiment")
     (titulo "Experiment"))

    ([Book_381] of Libro
     (autor [Author_392])
     (generos
         [Genres_31]
         [Genres_4])
     (idLibro "381")
     (nPag 272)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/18000952-the-wicked-we-have-done")
     (titulo "The Wicked We Have Done"))

    ([Book_382] of Libro
     (autor [Author_393])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "382")
     (nPag 78)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/20761374-reasonable-doubt")
     (titulo "Reasonable Doubt Volume 1"))

    ([Book_383] of Libro
     (autor [Author_394])
     (generos
         [Genres_0]
         [Genres_29])
     (idLibro "383")
     (nPag 69)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/22029246-netwars")
     (titulo "Netwars The Code"))

    ([Book_384] of Libro
     (autor [Author_395])
     (generos
         [Genres_10]
         [Genres_4])
     (idLibro "384")
     (nPag 148)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/21538656-the-branches-of-time")
     (titulo "The Branches of Time"))

    ([Book_385] of Libro
     (autor [Author_396])
     (generos
         [Genres_25]
         [Genres_4])
     (idLibro "385")
     (nPag 370)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/21407010-haunted")
     (titulo "Haunted State v Sefore 1"))

    ([Book_386] of Libro
     (autor [Author_397])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "386")
     (nPag 372)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/43479909-broken-skies")
     (titulo "Broken Skies"))

    ([Book_387] of Libro
     (autor [Author_398])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "387")
     (nPag 384)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/18774016-the-young-world")
     (titulo "The Young World"))

    ([Book_388] of Libro
     (autor [Author_399])
     (generos
         [Genres_4]
         [Genres_10])
     (idLibro "388")
     (nPag 292)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/20830614-saving-yesterday")
     (titulo "Saving Yesterday"))

    ([Book_389] of Libro
     (autor [Author_400])
     (generos
         [Genres_4]
         [Genres_32])
     (idLibro "389")
     (nPag 454)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/18318651-to-honor-you-call-us")
     (titulo "To Honor You Call Us"))

    ([Book_390] of Libro
     (autor [Author_401])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "390")
     (nPag 406)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/16210411-extraction")
     (titulo "Extraction"))

    ([Book_391] of Libro
     (autor [Author_402])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "391")
     (nPag 196)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/20577546-the-headhunters-race")
     (titulo "The Headhunters Race"))

    ([Book_392] of Libro
     (autor [Author_403])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "392")
     (nPag 324)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/17878473-the-57-lives-of-alex-wayfare")
     (titulo "The 57 Lives of Alex Wayfare"))

    ([Book_393] of Libro
     (autor [Author_404])
     (generos
         [Genres_33]
         [Genres_7])
     (idLibro "393")
     (nPag 372)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/20560304-stuck-in-between")
     (titulo "Stuck in Between"))

    ([Book_394] of Libro
     (autor [Author_405])
     (generos
         [Genres_33]
         [Genres_7])
     (idLibro "394")
     (nPag 131)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/20935363-dom-wars")
     (titulo "Dom Wars Round One"))

    ([Book_395] of Libro
     (autor [Author_406])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "395")
     (nPag 398)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/13576132-the-murder-complex")
     (titulo "The Murder Complex"))

    ([Book_396] of Libro
     (autor [Author_407])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "396")
     (nPag 201)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/19091420-murphy")
     (titulo "Murphy"))

    ([Book_397] of Libro
     (autor [Author_408])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "397")
     (nPag 230)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/22589352-precarious")
     (titulo "Precarious"))

    ([Book_398] of Libro
     (autor [Author_409])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "398")
     (nPag 211)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/21863686-iron-sinners")
     (titulo "Iron Sinners"))

    ([Book_399] of Libro
     (autor [Author_410])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "399")
     (nPag 279)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/17869229-loving-me-trusting-you")
     (titulo "Loving Me Trusting You"))

    ([Book_400] of Libro
     (autor [Author_411])
     (generos
         [Genres_6]
         [Genres_4])
     (idLibro "400")
     (nPag 300)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/17876047-defiance")
     (titulo "Defiance"))

    ([Book_401] of Libro
     (autor [Author_412])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "401")
     (nPag 207)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/17370995-chief-s-angel")
     (titulo "Chiefs Angel"))

    ([Book_402] of Libro
     (autor [Author_413])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "402")
     (nPag 228)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/17969685-making-the-cut")
     (titulo "Making the Cut"))

    ([Book_403] of Libro
     (autor [Author_415])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "403")
     (nPag 144)
     (publicacion 1996)
     (url "https://www.goodreads.com/book/show/141372.Brian_s_Winter")
     (titulo "Brians Winter"))

    ([Book_404] of Libro
     (autor [Author_416])
     (generos
         [Genres_0]
         [Genres_8])
     (idLibro "404")
     (nPag 352)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/4922079-one-second-after")
     (titulo "One Second After"))

    ([Book_405] of Libro
     (autor [Author_417])
     (generos
         [Genres_0]
         [Genres_34])
     (idLibro "405")
     (nPag 384)
     (publicacion 1986)
     (url "https://www.goodreads.com/book/show/266485.Last_of_the_Breed")
     (titulo "Last of the Breed"))

    ([Book_406] of Libro
     (autor [Author_418])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "406")
     (nPag 729)
     (publicacion 1976)
     (url "https://www.goodreads.com/book/show/546018.Roots")
     (titulo "Roots The Saga of an American Family"))

    ([Book_407] of Libro
     (autor [Author_419])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "407")
     (nPag 720)
     (publicacion 1851)
     (url "https://www.goodreads.com/book/show/153747.Moby_Dick_or_the_Whale")
     (titulo "Moby-Dick or the Whale"))

    ([Book_408] of Libro
     (autor [Author_420])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "408")
     (nPag 226)
     (publicacion 1877)
     (url "https://www.goodreads.com/book/show/3685.Black_Beauty")
     (titulo "Black Beauty"))

    ([Book_409] of Libro
     (autor [Author_421])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "409")
     (nPag 309)
     (publicacion 1939)
     (url "https://www.goodreads.com/book/show/51606.Johnny_Got_His_Gun")
     (titulo "Johnny Got His Gun"))

    ([Book_410] of Libro
     (autor [Author_422])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "410")
     (nPag 352)
     (publicacion 1812)
     (url "https://www.goodreads.com/book/show/62111.The_Swiss_Family_Robinson")
     (titulo "The Swiss Family Robinson"))

    ([Book_411] of Libro
     (autor [Author_423])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "411")
     (nPag 562)
     (publicacion 1979)
     (url "https://www.goodreads.com/book/show/228560.Sophie_s_Choice")
     (titulo "Sophies Choice"))

    ([Book_412] of Libro
     (autor [Author_424])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "412")
     (nPag 320)
     (publicacion 1719)
     (url "https://www.goodreads.com/book/show/2932.Robinson_Crusoe")
     (titulo "Robinson Crusoe"))

    ([Book_413] of Libro
     (autor [Author_425])
     (generos
         [Genres_0]
         [Genres_3])
     (idLibro "413")
     (nPag 192)
     (publicacion 1959)
     (url "https://www.goodreads.com/book/show/41667.My_Side_of_the_Mountain")
     (titulo "My Side of the Mountain"))

    ([Book_414] of Libro
     (autor [Author_426])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "414")
     (nPag 184)
     (publicacion 1960)
     (url "https://www.goodreads.com/book/show/41044096-island-of-the-blue-dolphins")
     (titulo "Island of the Blue Dolphins"))

    ([Book_415] of Libro
     (autor [Author_427])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "415")
     (nPag 344)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/8379374-backstage-pass")
     (titulo "Backstage Pass"))

    ([Book_416] of Libro
     (autor [Author_428])
     (generos
         [Genres_7]
         [Genres_6])
     (idLibro "416")
     (nPag 336)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/6100797-laid-bare")
     (titulo "Laid Bare"))

    ([Book_417] of Libro
     (autor [Author_429])
     (generos
         [Genres_7]
         [Genres_6])
     (idLibro "417")
     (nPag 287)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/25185716-long-hard-ride")
     (titulo "Long Hard Ride"))

    ([Book_418] of Libro
     (autor [Author_430])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "418")
     (nPag 128)
     (publicacion 1969)
     (url "https://www.goodreads.com/book/show/598117.Sounder")
     (titulo "Sounder"))

    ([Book_419] of Libro
     (autor [Author_431])
     (generos
         [Genres_19]
         [Genres_0])
     (idLibro "419")
     (nPag 240)
     (publicacion 1948)
     (url "https://www.goodreads.com/book/show/99738.The_Island_Stallion")
     (titulo "The Island Stallion"))

    ([Book_420] of Libro
     (autor [Author_432])
     (generos
         [Genres_19]
         [Genres_0])
     (idLibro "420")
     (nPag 176)
     (publicacion 1948)
     (url "https://www.goodreads.com/book/show/423156.King_of_the_Wind")
     (titulo "King of the Wind The Story of the Godolphin Arabian"))

    ([Book_421] of Libro
     (autor [Author_433])
     (generos
         [Genres_22]
         [Genres_0])
     (idLibro "421")
     (nPag 130)
     (publicacion 1983)
     (url "https://www.goodreads.com/book/show/646195.Babe")
     (titulo "Babe The Gallant Pig"))

    ([Book_422] of Libro
     (autor [Author_434])
     (generos
         [Genres_0]
         [Genres_22])
     (idLibro "422")
     (nPag 96)
     (publicacion 1980)
     (url "https://www.goodreads.com/book/show/817982.Stone_Fox")
     (titulo "Stone Fox"))

    ([Book_423] of Libro
     (autor [Author_435])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "423")
     (nPag 210)
     (publicacion 1902)
     (url "https://www.goodreads.com/book/show/34053.Just_So_Stories")
     (titulo "Just So Stories"))

    ([Book_424] of Libro
     (autor [Author_436])
     (generos
         [Genres_0]
         [Genres_19])
     (idLibro "424")
     (nPag 319)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/7723542-a-dog-s-purpose")
     (titulo "A Dogs Purpose"))

    ([Book_425] of Libro
     (autor [Author_437])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "425")
     (nPag 513)
     (publicacion 1938)
     (url "https://www.goodreads.com/book/show/159582.The_Yearling")
     (titulo "The Yearling"))

    ([Book_426] of Libro
     (autor [Author_438])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "426")
     (nPag 364)
     (publicacion 1985)
     (url "https://www.goodreads.com/book/show/23340.Tailchaser_s_Song")
     (titulo "Tailchasers Song"))

    ([Book_427] of Libro
     (autor [Author_439])
     (generos
         [Genres_0]
         [Genres_22])
     (idLibro "427")
     (nPag 145)
     (publicacion 1991)
     (url "https://www.goodreads.com/book/show/207153.Shiloh")
     (titulo "Shiloh"))

    ([Book_428] of Libro
     (autor [Author_440])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "428")
     (nPag 132)
     (publicacion 1956)
     (url "https://www.goodreads.com/book/show/130580.Old_Yeller")
     (titulo "Old Yeller"))

    ([Book_429] of Libro
     (autor [Author_441])
     (generos
         [Genres_0]
         [Genres_22])
     (idLibro "429")
     (nPag 182)
     (publicacion 2000)
     (url "https://www.goodreads.com/book/show/357664.Because_of_Winn_Dixie")
     (titulo "Because of Winn-Dixie"))

    ([Book_430] of Libro
     (autor [Author_442])
     (generos
         [Genres_0]
         [Genres_19])
     (idLibro "430")
     (nPag 145)
     (publicacion 1960)
     (url "https://www.goodreads.com/book/show/231821.The_Incredible_Journey")
     (titulo "The Incredible Journey"))

    ([Book_431] of Libro
     (autor [Author_443])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "431")
     (nPag 256)
     (publicacion 1908)
     (url "https://www.goodreads.com/book/show/5659.The_Wind_in_the_Willows")
     (titulo "The Wind in the Willows"))

    ([Book_432] of Libro
     (autor [Author_444])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "432")
     (nPag 272)
     (publicacion 1961)
     (url "https://www.goodreads.com/book/show/10365.Where_the_Red_Fern_Grows")
     (titulo "Where the Red Fern Grows"))

    ([Book_433] of Libro
     (autor [Author_445])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "433")
     (nPag 384)
     (publicacion 1993)
     (url "https://www.goodreads.com/book/show/40603587-the-last-wish")
     (titulo "The Last Wish"))

    ([Book_434] of Libro
     (autor [Author_446])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "434")
     (nPag 501)
     (publicacion 1991)
     (url "https://www.goodreads.com/book/show/185253.The_Magic_of_Recluce")
     (titulo "The Magic of Recluce"))

    ([Book_435] of Libro
     (autor [Author_447])
     (generos
         [Genres_0]
         [Genres_35])
     (idLibro "435")
     (nPag 325)
     (publicacion 2017)
     (url "https://www.goodreads.com/book/show/35642518-for-the-love-of-armin")
     (titulo "For the Love of Armin"))

    ([Book_436] of Libro
     (autor [Author_448])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "436")
     (nPag 247)
     (publicacion 2004)
     (url "https://www.goodreads.com/book/show/68210.Gilead")
     (titulo "Gilead"))

    ([Book_437] of Libro
     (autor [Author_449])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "437")
     (nPag 220)
     (publicacion 1971)
     (url "https://www.goodreads.com/book/show/189147.To_Your_Scattered_Bodies_Go")
     (titulo "To Your Scattered Bodies Go"))

    ([Book_438] of Libro
     (autor [Author_450])
     (generos
         [Genres_10]
         [Genres_4])
     (idLibro "438")
     (nPag 262)
     (publicacion 1980)
     (url "https://www.goodreads.com/book/show/60211.The_Shadow_of_the_Torturer")
     (titulo "The Shadow of the Torturer"))

    ([Book_439] of Libro
     (autor [Author_451])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "439")
     (nPag 336)
     (publicacion 1991)
     (url "https://www.goodreads.com/book/show/61905.Barrayar")
     (titulo "Barrayar"))

    ([Book_440] of Libro
     (autor [Author_452])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "440")
     (nPag 544)
     (publicacion 2002)
     (url "https://www.goodreads.com/book/show/40792913-altered-carbon")
     (titulo "Altered Carbon"))

    ([Book_441] of Libro
     (autor [Author_453])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "441")
     (nPag 293)
     (publicacion 1988)
     (url "https://www.goodreads.com/book/show/18630.The_Player_of_Games")
     (titulo "The Player of Games"))

    ([Book_442] of Libro
     (autor [Author_454])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "442")
     (nPag 278)
     (publicacion 1977)
     (url "https://www.goodreads.com/book/show/218427.Gateway")
     (titulo "Gateway"))

    ([Book_443] of Libro
     (autor [Author_455])
     (generos
         [Genres_4]
         [Genres_4])
     (idLibro "443")
     (nPag 493)
     (publicacion 1998)
     (url "https://www.goodreads.com/book/show/77773.To_Say_Nothing_of_the_Dog")
     (titulo "To Say Nothing of the Dog"))

    ([Book_444] of Libro
     (autor [Author_456])
     (generos
         [Genres_0]
         [Genres_4])
     (idLibro "444")
     (nPag 96)
     (publicacion 1884)
     (url "https://www.goodreads.com/book/show/433567.Flatland")
     (titulo "Flatland A Romance of Many Dimensions"))

    ([Book_445] of Libro
     (autor [Author_457])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "445")
     (nPag 613)
     (publicacion 1992)
     (url "https://www.goodreads.com/book/show/77711.A_Fire_Upon_the_Deep")
     (titulo "A Fire Upon the Deep"))

    ([Book_446] of Libro
     (autor [Author_458])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "446")
     (nPag 572)
     (publicacion 1992)
     (url "https://www.goodreads.com/book/show/77507.Red_Mars")
     (titulo "Red Mars"))

    ([Book_447] of Libro
     (autor [Author_459])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "447")
     (nPag 204)
     (publicacion 1961)
     (url "https://www.goodreads.com/book/show/95558.Solaris")
     (titulo "Solaris"))

    ([Book_448] of Libro
     (autor [Author_460])
     (generos
         [Genres_5]
         [Genres_4])
     (idLibro "448")
     (nPag 240)
     (publicacion 1864)
     (url "https://www.goodreads.com/book/show/32829.Journey_to_the_Center_of_the_Earth")
     (titulo "Journey to the Center of the Earth Extraordinary Voyages 3"))

    ([Book_449] of Libro
     (autor [Author_461])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "449")
     (nPag 258)
     (publicacion 1955)
     (url "https://www.goodreads.com/book/show/333867.The_Stars_My_Destination")
     (titulo "The Stars My Destination"))

    ([Book_450] of Libro
     (autor [Author_462])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "450")
     (nPag 431)
     (publicacion 1996)
     (url "https://www.goodreads.com/book/show/334176.The_Sparrow")
     (titulo "The Sparrow"))

    ([Book_451] of Libro
     (autor [Author_463])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "451")
     (nPag 580)
     (publicacion 1985)
     (url "https://www.goodreads.com/book/show/61666.Contact")
     (titulo "Contact"))

    ([Book_452] of Libro
     (autor [Author_464])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "452")
     (nPag 351)
     (publicacion 2005)
     (url "https://www.goodreads.com/book/show/36510196-old-man-s-war")
     (titulo "Old Mans War"))

    ([Book_453] of Libro
     (autor [Author_466])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "453")
     (nPag 318)
     (publicacion 2018)
     (url "https://www.goodreads.com/book/show/40111371-the-nanny-song")
     (titulo "The Nanny Song"))

    ([Book_454] of Libro
     (autor [Author_467])
     (generos
         [Genres_11]
         [Genres_0])
     (idLibro "454")
     (nPag 74)
     (publicacion 2018)
     (url "https://www.goodreads.com/book/show/40593473-finding-hope-in-the-darkness-of-grief")
     (titulo "Finding Hope in the Darkness of Grief Spiritual Insights Expressed Through Art Poetry and Prose"))

    ([Book_455] of Libro
     (autor [Author_468])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "455")
     (nPag 382)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/17339738-riddle-in-stone")
     (titulo "Riddle in Stone"))

    ([Book_456] of Libro
     (autor [Author_469])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "456")
     (nPag 333)
     (publicacion 2017)
     (url "https://www.goodreads.com/book/show/34521870-mistress-suffragette")
     (titulo "Mistress Suffragette"))

    ([Book_457] of Libro
     (autor [Author_470])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "457")
     (nPag 384)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/7904453-the-broken-kingdoms")
     (titulo "The Broken Kingdoms"))

    ([Book_458] of Libro
     (autor [Author_471])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "458")
     (nPag 312)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/3700085-marcelo-in-the-real-world")
     (titulo "Marcelo in the Real World"))

    ([Book_459] of Libro
     (autor [Author_472])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "459")
     (nPag 314)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/33107825-stitch")
     (titulo "Stitch"))

    ([Book_460] of Libro
     (autor [Author_473])
     (generos
         [Genres_10]
         [Genres_4])
     (idLibro "460")
     (nPag 324)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/10031259-the-emperor-s-edge")
     (titulo "The Emperors Edge"))

    ([Book_461] of Libro
     (autor [Author_474])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "461")
     (nPag 272)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/5711714-academy-7")
     (titulo "Academy 7"))

    ([Book_462] of Libro
     (autor [Author_475])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "462")
     (nPag 418)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/9752790-burn")
     (titulo "Burn"))

    ([Book_463] of Libro
     (autor [Author_476])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "463")
     (nPag 492)
     (publicacion 1991)
     (url "https://www.goodreads.com/book/show/28735.By_the_Sword")
     (titulo "By the Sword"))

    ([Book_464] of Libro
     (autor [Author_477])
     (generos
         [Genres_12]
         [Genres_0])
     (idLibro "464")
     (nPag 306)
     (publicacion 2002)
     (url "https://www.goodreads.com/book/show/228333.The_Nanny_Diaries")
     (titulo "The Nanny Diaries"))

    ([Book_465] of Libro
     (autor [Author_478])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "465")
     (nPag 365)
     (publicacion 1999)
     (url "https://www.goodreads.com/book/show/38311414-house-of-sand-and-fog")
     (titulo "House of Sand and Fog"))

    ([Book_466] of Libro
     (autor [Author_479])
     (generos
         [Genres_6]
         [Genres_0])
     (idLibro "466")
     (nPag 224)
     (publicacion 1970)
     (url "https://www.goodreads.com/book/show/73968.Love_Story")
     (titulo "Love Story"))

    ([Book_467] of Libro
     (autor [Author_480])
     (generos
         [Genres_0]
         [Genres_12])
     (idLibro "467")
     (nPag 304)
     (publicacion 1998)
     (url "https://www.goodreads.com/book/show/5191.The_Pilot_s_Wife")
     (titulo "The Pilots Wife"))

    ([Book_468] of Libro
     (autor [Author_481])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "468")
     (nPag 337)
     (publicacion 1993)
     (url "https://www.goodreads.com/book/show/7354.The_Shipping_News")
     (titulo "The Shipping News"))

    ([Book_469] of Libro
     (autor [Author_482])
     (generos
         [Genres_0]
         [Genres_14])
     (idLibro "469")
     (nPag 248)
     (publicacion 1986)
     (url "https://www.goodreads.com/book/show/186190.Forrest_Gump")
     (titulo "Forrest Gump"))

    ([Book_470] of Libro
     (autor [Author_483])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "470")
     (nPag 406)
     (publicacion 1995)
     (url "https://www.goodreads.com/book/show/37442.Wicked")
     (titulo "Wicked The Life and Times of the Wicked Witch of the West"))

    ([Book_471] of Libro
     (autor [Author_484])
     (generos
         [Genres_0]
         [Genres_3])
     (idLibro "471")
     (nPag 110)
     (publicacion 1984)
     (url "https://www.goodreads.com/book/show/139253.The_House_on_Mango_Street")
     (titulo "The House on Mango Street"))

    ([Book_472] of Libro
     (autor [Author_485])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "472")
     (nPag 170)
     (publicacion 1895)
     (url "https://www.goodreads.com/book/show/35220.The_Red_Badge_of_Courage")
     (titulo "The Red Badge of Courage"))

    ([Book_473] of Libro
     (autor [Author_486])
     (generos
         [Genres_12]
         [Genres_0])
     (idLibro "473")
     (nPag 304)
     (publicacion 1996)
     (url "https://www.goodreads.com/book/show/7455.Sex_and_the_City")
     (titulo "Sex and the City"))

    ([Book_474] of Libro
     (autor [Author_487])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "474")
     (nPag 209)
     (publicacion 1927)
     (url "https://www.goodreads.com/book/show/59716.To_the_Lighthouse")
     (titulo "To the Lighthouse"))

    ([Book_475] of Libro
     (autor [Author_488])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "475")
     (nPag 329)
     (publicacion 1916)
     (url "https://www.goodreads.com/book/show/7588.A_Portrait_of_the_Artist_as_a_Young_Man")
     (titulo "A Portrait of the Artist as a Young Man"))

    ([Book_476] of Libro
     (autor [Author_489])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "476")
     (nPag 246)
     (publicacion 1990)
     (url "https://www.goodreads.com/book/show/133518.The_Things_They_Carried")
     (titulo "The Things They Carried"))

    ([Book_477] of Libro
     (autor [Author_490])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "477")
     (nPag 326)
     (publicacion 1929)
     (url "https://www.goodreads.com/book/show/10975.The_Sound_and_the_Fury")
     (titulo "The Sound and the Fury"))

    ([Book_478] of Libro
     (autor [Author_491])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "478")
     (nPag 416)
     (publicacion 1980)
     (url "https://www.goodreads.com/book/show/310612.A_Confederacy_of_Dunces")
     (titulo "A Confederacy of Dunces"))

    ([Book_479] of Libro
     (autor [Author_492])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "479")
     (nPag 418)
     (publicacion 1931)
     (url "https://www.goodreads.com/book/show/1078.The_Good_Earth")
     (titulo "The Good Earth"))

    ([Book_480] of Libro
     (autor [Author_493])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "480")
     (nPag 307)
     (publicacion 1955)
     (url "https://www.goodreads.com/book/show/70401.On_the_Road")
     (titulo "On the Road"))

    ([Book_481] of Libro
     (autor [Author_494])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "481")
     (nPag 307)
     (publicacion 1983)
     (url "https://www.goodreads.com/book/show/133454.Jhereg")
     (titulo "Jhereg"))

    ([Book_482] of Libro
     (autor [Author_495])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "482")
     (nPag 534)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/2315892.Best_Served_Cold")
     (titulo "Best Served Cold"))

    ([Book_483] of Libro
     (autor [Author_496])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "483")
     (nPag 296)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/4345290-the-crown-conspiracy")
     (titulo "The Crown Conspiracy"))

    ([Book_484] of Libro
     (autor [Author_497])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "484")
     (nPag 656)
     (publicacion 1999)
     (url "https://www.goodreads.com/book/show/261604.Rhapsody")
     (titulo "Rhapsody Child of Blood"))

    ([Book_485] of Libro
     (autor [Author_498])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "485")
     (nPag 421)
     (publicacion 1987)
     (url "https://www.goodreads.com/book/show/589979.Daughter_of_the_Empire")
     (titulo "Daughter of the Empire"))

    ([Book_486] of Libro
     (autor [Author_499])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "486")
     (nPag 430)
     (publicacion 1990)
     (url "https://www.goodreads.com/book/show/28481.Dragon_Wing")
     (titulo "Dragon Wing"))

    ([Book_487] of Libro
     (autor [Author_500])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "487")
     (nPag 449)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/12891107-king-of-thorns")
     (titulo "King of Thorns"))

    ([Book_488] of Libro
     (autor [Author_501])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "488")
     (nPag 305)
     (publicacion 2002)
     (url "https://www.goodreads.com/book/show/77160.Across_the_Nightingale_Floor")
     (titulo "Across the Nightingale Floor"))

    ([Book_489] of Libro
     (autor [Author_502])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "489")
     (nPag 325)
     (publicacion 1983)
     (url "https://www.goodreads.com/book/show/76658.On_a_Pale_Horse")
     (titulo "On a Pale Horse"))

    ([Book_490] of Libro
     (autor [Author_503])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "490")
     (nPag 1040)
     (publicacion 1992)
     (url "https://www.goodreads.com/book/show/96281.The_Deed_of_Paksenarrion")
     (titulo "The Deed of Paksenarrion"))

    ([Book_491] of Libro
     (autor [Author_504])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "491")
     (nPag 181)
     (publicacion 1972)
     (url "https://www.goodreads.com/book/show/30036.Elric_of_Melnibon_")
     (titulo "Elric of Melnibon"))

    ([Book_492] of Libro
     (autor [Author_505])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "492")
     (nPag 319)
     (publicacion 1984)
     (url "https://www.goodreads.com/book/show/140671.The_Black_Company")
     (titulo "The Black Company"))

    ([Book_493] of Libro
     (autor [Author_506])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "493")
     (nPag 880)
     (publicacion 1998)
     (url "https://www.goodreads.com/book/show/45100.Ship_of_Magic")
     (titulo "Ship of Magic"))

    ([Book_494] of Libro
     (autor [Author_507])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "494")
     (nPag 1160)
     (publicacion 1977)
     (url "https://www.goodreads.com/book/show/179033.The_Chronicles_of_Thomas_Covenant_the_Unbeliever")
     (titulo "The Chronicles of Thomas Covenant the Unbeliever"))

    ([Book_495] of Libro
     (autor [Author_508])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "495")
     (nPag 416)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/3428935-the-warded-man")
     (titulo "The Warded Man"))

    ([Book_496] of Libro
     (autor [Author_509])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "496")
     (nPag 666)
     (publicacion 1999)
     (url "https://www.goodreads.com/book/show/55399.Gardens_of_the_Moon")
     (titulo "Gardens of the Moon"))

    ([Book_497] of Libro
     (autor [Author_510])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "497")
     (nPag 499)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/29588376-the-lies-of-locke-lamora")
     (titulo "The Lies of Locke Lamora"))

    ([Book_498] of Libro
     (autor [Author_511])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "498")
     (nPag 208)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/15852756-naked")
     (titulo "Naked"))

    ([Book_499] of Libro
     (autor [Author_512])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "499")
     (nPag 604)
     (publicacion 1965)
     (url "https://www.goodreads.com/book/show/234225.Dune")
     (titulo "Dune"))

    ([Book_500] of Libro
     (autor [Author_513])
     (generos
         [Genres_0]
         [Genres_12])
     (idLibro "500")
     (nPag 722)
     (publicacion 1990)
     (url "https://www.goodreads.com/book/show/41977.Circle_of_Friends")
     (titulo "Circle of Friends"))

    ([Book_501] of Libro
     (autor [Author_514])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "501")
     (nPag 244)
     (publicacion 1952)
     (url "https://www.goodreads.com/book/show/298663.The_Killer_Inside_Me")
     (titulo "The Killer Inside Me"))

    ([Book_502] of Libro
     (autor [Author_515])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "502")
     (nPag 454)
     (publicacion 1986)
     (url "https://www.goodreads.com/book/show/498214.Daggerspell")
     (titulo "Daggerspell"))

    ([Book_503] of Libro
     (autor [Author_516])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "503")
     (nPag 344)
     (publicacion 1993)
     (url "https://www.goodreads.com/book/show/135836.Trainspotting")
     (titulo "Trainspotting"))

    ([Book_504] of Libro
     (autor [Author_517])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "504")
     (nPag 246)
     (publicacion 1925)
     (url "https://www.goodreads.com/book/show/99664.The_Painted_Veil")
     (titulo "The Painted Veil"))

    ([Book_505] of Libro
     (autor [Author_518])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "505")
     (nPag 230)
     (publicacion 1998)
     (url "https://www.goodreads.com/book/show/11899.The_Hours")
     (titulo "The Hours"))

    ([Book_506] of Libro
     (autor [Author_519])
     (generos
         [Genres_0]
         [Genres_10])
     (idLibro "506")
     (nPag 360)
     (publicacion 1995)
     (url "https://www.goodreads.com/book/show/239239.The_Prestige")
     (titulo "The Prestige"))

    ([Book_507] of Libro
     (autor [Author_520])
     (generos
         [Genres_0]
         [Genres_6])
     (idLibro "507")
     (nPag 224)
     (publicacion 1992)
     (url "https://www.goodreads.com/book/show/83674.The_Bridges_of_Madison_County")
     (titulo "The Bridges of Madison County"))

    ([Book_508] of Libro
     (autor [Author_521])
     (generos
         [Genres_0]
         [Genres_29])
     (idLibro "508")
     (nPag 181)
     (publicacion 1953)
     (url "https://www.goodreads.com/book/show/3758.Casino_Royale")
     (titulo "Casino Royale"))

    ([Book_509] of Libro
     (autor [Author_522])
     (generos
         [Genres_0]
         [Genres_12])
     (idLibro "509")
     (nPag 288)
     (publicacion 2004)
     (url "https://www.goodreads.com/book/show/2152.The_Jane_Austen_Book_Club")
     (titulo "The Jane Austen Book Club"))

    ([Book_510] of Libro
     (autor [Author_523])
     (generos
         [Genres_0]
         [Genres_36])
     (idLibro "510")
     (nPag 340)
     (publicacion 1995)
     (url "https://www.goodreads.com/book/show/285092.High_Fidelity")
     (titulo "High Fidelity"))

    ([Book_511] of Libro
     (autor [Author_525])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "511")
     (nPag 360)
     (publicacion 1910)
     (url "https://www.goodreads.com/book/show/480204.The_Phantom_of_the_Opera")
     (titulo "The Phantom of the Opera"))

    ([Book_512] of Libro
     (autor [Author_526])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "512")
     (nPag 410)
     (publicacion 1826)
     (url "https://www.goodreads.com/book/show/38296.The_Last_of_the_Mohicans")
     (titulo "The Last of the Mohicans"))

    ([Book_513] of Libro
     (autor [Author_527])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "513")
     (nPag 338)
     (publicacion 1988)
     (url "https://www.goodreads.com/book/show/23807.The_Silence_of_the_Lambs")
     (titulo "The Silence of the Lambs"))

    ([Book_514] of Libro
     (autor [Author_528])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "514")
     (nPag 320)
     (publicacion 1973)
     (url "https://www.goodreads.com/book/show/126232.Jaws")
     (titulo "Jaws"))

    ([Book_515] of Libro
     (autor [Author_529])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "515")
     (nPag 288)
     (publicacion 2004)
     (url "https://www.goodreads.com/book/show/17231.Darkly_Dreaming_Dexter")
     (titulo "Darkly Dreaming Dexter"))

    ([Book_516] of Libro
     (autor [Author_530])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "516")
     (nPag 496)
     (publicacion 2002)
     (url "https://www.goodreads.com/book/show/33482.The_Coming_of_Conan_the_Cimmerian")
     (titulo "The Coming of Conan the Cimmerian"))

    ([Book_517] of Libro
     (autor [Author_531])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "517")
     (nPag 345)
     (publicacion 1984)
     (url "https://www.goodreads.com/book/show/618177.Legend")
     (titulo "Legend"))

    ([Book_518] of Libro
     (autor [Author_532])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "518")
     (nPag 428)
     (publicacion 2016)
     (url "https://www.goodreads.com/book/show/25897792-into-the-dim")
     (titulo "Into the Dim"))

    ([Book_519] of Libro
     (autor [Author_533])
     (generos
         [Genres_33]
         [Genres_7])
     (idLibro "519")
     (nPag 442)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/16117368-the-saint")
     (titulo "The Saint"))

    ([Book_520] of Libro
     (autor [Author_534])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "520")
     (nPag 250)
     (publicacion 2016)
     (url "https://www.goodreads.com/book/show/18280801-stripped-2")
     (titulo "Stripped 2 A Ferro Family Novel"))

    ([Book_521] of Libro
     (autor [Author_535])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "521")
     (nPag 304)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/18744040-last-light")
     (titulo "Last Light"))

    ([Book_522] of Libro
     (autor [Author_536])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "522")
     (nPag 212)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/162086.Such_a_Pretty_Girl")
     (titulo "Such a Pretty Girl"))

    ([Book_523] of Libro
     (autor [Author_537])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "523")
     (nPag 256)
     (publicacion 2003)
     (url "https://www.goodreads.com/book/show/253106.The_Earth_My_Butt_and_Other_Big_Round_Things")
     (titulo "The Earth My Butt and Other Big Round Things"))

    ([Book_524] of Libro
     (autor [Author_538])
     (generos
         [Genres_3]
         [Genres_21])
     (idLibro "524")
     (nPag 172)
     (publicacion 2004)
     (url "https://www.goodreads.com/book/show/97408.Perfect")
     (titulo "Perfect"))

    ([Book_525] of Libro
     (autor [Author_539])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "525")
     (nPag 384)
     (publicacion 1990)
     (url "https://www.goodreads.com/book/show/702539.Get_Shorty")
     (titulo "Get Shorty"))

    ([Book_526] of Libro
     (autor [Author_540])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "526")
     (nPag 304)
     (publicacion 1975)
     (url "https://www.goodreads.com/book/show/43339.Where_Are_the_Children_")
     (titulo "Where Are the Children"))

    ([Book_527] of Libro
     (autor [Author_541])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "527")
     (nPag 212)
     (publicacion 1923)
     (url "https://www.goodreads.com/book/show/192893.Whose_Body_")
     (titulo "Whose Body"))

    ([Book_528] of Libro
     (autor [Author_542])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "528")
     (nPag 352)
     (publicacion 1986)
     (url "https://www.goodreads.com/book/show/104106.The_Ritual_Bath")
     (titulo "The Ritual Bath"))

    ([Book_529] of Libro
     (autor [Author_543])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "529")
     (nPag 116)
     (publicacion 1934)
     (url "https://www.goodreads.com/book/show/25807.The_Postman_Always_Rings_Twice")
     (titulo "The Postman Always Rings Twice"))

    ([Book_530] of Libro
     (autor [Author_544])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "530")
     (nPag 559)
     (publicacion 1992)
     (url "https://www.goodreads.com/book/show/29044.The_Secret_History")
     (titulo "The Secret History"))

    ([Book_531] of Libro
     (autor [Author_545])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "531")
     (nPag 479)
     (publicacion 1989)
     (url "https://www.goodreads.com/book/show/37301.Rules_of_Prey")
     (titulo "Rules of Prey"))

    ([Book_532] of Libro
     (autor [Author_546])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "532")
     (nPag 460)
     (publicacion 1994)
     (url "https://www.goodreads.com/book/show/77142.Snow_Falling_on_Cedars")
     (titulo "Snow Falling on Cedars"))

    ([Book_533] of Libro
     (autor [Author_547])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "533")
     (nPag 482)
     (publicacion 1992)
     (url "https://www.goodreads.com/book/show/32508.The_Black_Echo")
     (titulo "The Black Echo"))

    ([Book_534] of Libro
     (autor [Author_548])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "534")
     (nPag 201)
     (publicacion 1934)
     (url "https://www.goodreads.com/book/show/80616.The_Thin_Man")
     (titulo "The Thin Man"))

    ([Book_535] of Libro
     (autor [Author_549])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "535")
     (nPag 413)
     (publicacion 1988)
     (url "https://www.goodreads.com/book/show/31374.A_Great_Deliverance")
     (titulo "A Great Deliverance"))

    ([Book_536] of Libro
     (autor [Author_550])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "536")
     (nPag 320)
     (publicacion 1955)
     (url "https://www.goodreads.com/book/show/2247142.The_Talented_Mr_Ripley")
     (titulo "The Talented Mr Ripley"))

    ([Book_537] of Libro
     (autor [Author_551])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "537")
     (nPag 433)
     (publicacion 1981)
     (url "https://www.goodreads.com/book/show/762806.Gorky_Park")
     (titulo "Gorky Park"))

    ([Book_538] of Libro
     (autor [Author_552])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "538")
     (nPag 469)
     (publicacion 1992)
     (url "https://www.goodreads.com/book/show/124509.Smilla_s_Sense_of_Snow")
     (titulo "Smillas Sense of Snow"))

    ([Book_539] of Libro
     (autor [Author_553])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "539")
     (nPag 400)
     (publicacion 1992)
     (url "https://www.goodreads.com/book/show/32499.The_Pelican_Brief")
     (titulo "The Pelican Brief"))

    ([Book_540] of Libro
     (autor [Author_554])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "540")
     (nPag 308)
     (publicacion 1982)
     (url "https://www.goodreads.com/book/show/64863.A_is_for_Alibi")
     (titulo "A is for Alibi"))

    ([Book_541] of Libro
     (autor [Author_555])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "541")
     (nPag 144)
     (publicacion 1886)
     (url "https://www.goodreads.com/book/show/51496.The_Strange_Case_of_Dr_Jekyll_and_Mr_Hyde")
     (titulo "The Strange Case of Dr Jekyll and Mr Hyde"))

    ([Book_542] of Libro
     (autor [Author_556])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "542")
     (nPag 421)
     (publicacion 1986)
     (url "https://www.goodreads.com/book/show/425029.Presumed_Innocent")
     (titulo "Presumed Innocent"))

    ([Book_543] of Libro
     (autor [Author_557])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "543")
     (nPag 231)
     (publicacion 1939)
     (url "https://www.goodreads.com/book/show/2052.The_Big_Sleep")
     (titulo "The Big Sleep"))

    ([Book_544] of Libro
     (autor [Author_558])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "544")
     (nPag 416)
     (publicacion 2001)
     (url "https://www.goodreads.com/book/show/21671.Mystic_River")
     (titulo "Mystic River"))

    ([Book_545] of Libro
     (autor [Author_559])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "545")
     (nPag 448)
     (publicacion 1969)
     (url "https://www.goodreads.com/book/show/22034.The_Godfather")
     (titulo "The Godfather"))

    ([Book_546] of Libro
     (autor [Author_560])
     (generos
         [Genres_3]
         [Genres_12])
     (idLibro "546")
     (nPag 298)
     (publicacion 2001)
     (url "https://www.goodreads.com/book/show/138202.Sloppy_Firsts")
     (titulo "Sloppy Firsts"))

    ([Book_547] of Libro
     (autor [Author_561])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "547")
     (nPag 410)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/11387515-wonder")
     (titulo "Wonder"))

    ([Book_548] of Libro
     (autor [Author_562])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "548")
     (nPag 444)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/248704.It_s_Kind_of_a_Funny_Story")
     (titulo "Its Kind of a Funny Story"))

    ([Book_549] of Libro
     (autor [Author_563])
     (generos
         [Genres_0]
         [Genres_37])
     (idLibro "549")
     (nPag 512)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/10996342-the-art-of-fielding")
     (titulo "The Art of Fielding"))

    ([Book_550] of Libro
     (autor [Author_564])
     (generos
         [Genres_0]
         [Genres_15])
     (idLibro "550")
     (nPag 477)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/15796700-americanah")
     (titulo "Americanah"))

    ([Book_551] of Libro
     (autor [Author_565])
     (generos
         [Genres_14]
         [Genres_0])
     (idLibro "551")
     (nPag 64)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/39291659-go-the-f-k-to-sleep")
     (titulo "Go the Fuck to Sleep"))

    ([Book_552] of Libro
     (autor [Author_566])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "552")
     (nPag 150)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/10746542-the-sense-of-an-ending")
     (titulo "The Sense of an Ending"))

    ([Book_553] of Libro
     (autor [Author_567])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "553")
     (nPag 359)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/9736930-before-i-go-to-sleep")
     (titulo "Before I Go to Sleep"))

    ([Book_554] of Libro
     (autor [Author_568])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "554")
     (nPag 288)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/7331435-a-visit-from-the-goon-squad")
     (titulo "A Visit from the Goon Squad"))

    ([Book_555] of Libro
     (autor [Author_569])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "555")
     (nPag 337)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/18774964-a-man-called-ove")
     (titulo "A Man Called Ove"))

    ([Book_556] of Libro
     (autor [Author_570])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "556")
     (nPag 455)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/16160797-the-cuckoo-s-calling")
     (titulo "The Cuckoos Calling"))

    ([Book_557] of Libro
     (autor [Author_571])
     (generos
         [Genres_0]
         [Genres_6])
     (idLibro "557")
     (nPag 297)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/16181775-the-rosie-project")
     (titulo "The Rosie Project"))

    ([Book_558] of Libro
     (autor [Author_572])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "558")
     (nPag 323)
     (publicacion 2015)
     (url "https://www.goodreads.com/book/show/22557272-the-girl-on-the-train")
     (titulo "The Girl on the Train"))

    ([Book_559] of Libro
     (autor [Author_573])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "559")
     (nPag 306)
     (publicacion 1726)
     (url "https://www.goodreads.com/book/show/7733.Gulliver_s_Travels")
     (titulo "Gullivers Travels"))

    ([Book_560] of Libro
     (autor [Author_574])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "560")
     (nPag 364)
     (publicacion 1928)
     (url "https://www.goodreads.com/book/show/32049.Lady_Chatterley_s_Lover")
     (titulo "Lady Chatterleys Lover"))

    ([Book_561] of Libro
     (autor [Author_575])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "561")
     (nPag 468)
     (publicacion 1913)
     (url "https://www.goodreads.com/book/show/12749.Swann_s_Way")
     (titulo "Swanns Way"))

    ([Book_562] of Libro
     (autor [Author_576])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "562")
     (nPag 912)
     (publicacion 1848)
     (url "https://www.goodreads.com/book/show/5797.Vanity_Fair")
     (titulo "Vanity Fair"))

    ([Book_563] of Libro
     (autor [Author_577])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "563")
     (nPag 289)
     (publicacion 1959)
     (url "https://www.goodreads.com/book/show/7437.Naked_Lunch")
     (titulo "Naked Lunch"))

    ([Book_564] of Libro
     (autor [Author_578])
     (generos
         [Genres_30]
         [Genres_0])
     (idLibro "564")
     (nPag 403)
     (publicacion 1991)
     (url "https://www.goodreads.com/book/show/10959.Sophie_s_World")
     (titulo "Sophies World"))

    ([Book_565] of Libro
     (autor [Author_579])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "565")
     (nPag 1088)
     (publicacion 1996)
     (url "https://www.goodreads.com/book/show/6759.Infinite_Jest")
     (titulo "Infinite Jest"))

    ([Book_566] of Libro
     (autor [Author_580])
     (generos
         [Genres_0]
         [Genres_24])
     (idLibro "566")
     (nPag 342)
     (publicacion 1995)
     (url "https://www.goodreads.com/book/show/27523.Left_Behind")
     (titulo "Left Behind"))

    ([Book_567] of Libro
     (autor [Author_581])
     (generos
         [Genres_0]
         [Genres_12])
     (idLibro "567")
     (nPag 376)
     (publicacion 1995)
     (url "https://www.goodreads.com/book/show/5168.Where_the_Heart_Is")
     (titulo "Where the Heart Is"))

    ([Book_568] of Libro
     (autor [Author_582])
     (generos
         [Genres_6]
         [Genres_12])
     (idLibro "568")
     (nPag 501)
     (publicacion 2003)
     (url "https://www.goodreads.com/book/show/366522.P_S_I_Love_You")
     (titulo "PS I Love You"))

    ([Book_569] of Libro
     (autor [Author_583])
     (generos
         [Genres_0]
         [Genres_12])
     (idLibro "569")
     (nPag 383)
     (publicacion 1996)
     (url "https://www.goodreads.com/book/show/137791.Divine_Secrets_of_the_Ya_Ya_Sisterhood")
     (titulo "Divine Secrets of the Ya-Ya Sisterhood"))

    ([Book_570] of Libro
     (autor [Author_584])
     (generos
         [Genres_22]
         [Genres_0])
     (idLibro "570")
     (nPag 160)
     (publicacion 1942)
     (url "https://www.goodreads.com/book/show/297249.The_Boxcar_Children")
     (titulo "The Boxcar Children"))

    ([Book_571] of Libro
     (autor [Author_586])
     (generos
         [Genres_0]
         [Genres_38])
     (idLibro "571")
     (nPag 679)
     (publicacion 1986)
     (url "https://www.goodreads.com/book/show/16735.The_Prince_of_Tides")
     (titulo "The Prince of Tides"))

    ([Book_572] of Libro
     (autor [Author_587])
     (generos
         [Genres_6]
         [Genres_12])
     (idLibro "572")
     (nPag 284)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/7743801-three-daves")
     (titulo "Three Daves"))

    ([Book_573] of Libro
     (autor [Author_588])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "573")
     (nPag 332)
     (publicacion 1920)
     (url "https://www.goodreads.com/book/show/53835.The_Age_of_Innocence")
     (titulo "The Age of Innocence"))

    ([Book_574] of Libro
     (autor [Author_589])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "574")
     (nPag 592)
     (publicacion 1957)
     (url "https://www.goodreads.com/book/show/130440.Doctor_Zhivago")
     (titulo "Doctor Zhivago"))

    ([Book_575] of Libro
     (autor [Author_590])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "575")
     (nPag 119)
     (publicacion 1908)
     (url "https://www.goodreads.com/book/show/3087.A_Room_with_a_View")
     (titulo "A Room with a View"))

    ([Book_576] of Libro
     (autor [Author_591])
     (generos
         [Genres_25]
         [Genres_24])
     (idLibro "576")
     (nPag 464)
     (publicacion 1991)
     (url "https://www.goodreads.com/book/show/11422.Redeeming_Love")
     (titulo "Redeeming Love"))

    ([Book_577] of Libro
     (autor [Author_592])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "577")
     (nPag 521)
     (publicacion 1855)
     (url "https://www.goodreads.com/book/show/156538.North_and_South")
     (titulo "North and South"))

    ([Book_578] of Libro
     (autor [Author_593])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "578")
     (nPag 337)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/11447921-beautiful-ruins")
     (titulo "Beautiful Ruins"))

    ([Book_579] of Libro
     (autor [Author_594])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "579")
     (nPag 320)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/13227454-the-unlikely-pilgrimage-of-harold-fry")
     (titulo "The Unlikely Pilgrimage of Harold Fry"))

    ([Book_580] of Libro
     (autor [Author_595])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "580")
     (nPag 443)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/11529868-the-orphan-master-s-son")
     (titulo "The Orphan Masters Son"))

    ([Book_581] of Libro
     (autor [Author_596])
     (generos
         [Genres_0]
         [Genres_3])
     (idLibro "581")
     (nPag 360)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/12875258-tell-the-wolves-i-m-home")
     (titulo "Tell the Wolves Im Home"))

    ([Book_582] of Libro
     (autor [Author_597])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "582")
     (nPag 421)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/11367726-defending-jacob")
     (titulo "Defending Jacob"))

    ([Book_583] of Libro
     (autor [Author_598])
     (generos
         [Genres_22]
         [Genres_0])
     (idLibro "583")
     (nPag 128)
     (publicacion 1973)
     (url "https://www.goodreads.com/book/show/322351.How_to_Eat_Fried_Worms")
     (titulo "How to Eat Fried Worms"))

    ([Book_584] of Libro
     (autor [Author_600])
     (generos
         [Genres_22]
         [Genres_0])
     (idLibro "584")
     (nPag 144)
     (publicacion 1947)
     (url "https://www.goodreads.com/book/show/25051.Mrs_Piggle_Wiggle")
     (titulo "Mrs Piggle-Wiggle"))

    ([Book_585] of Libro
     (autor [Author_601])
     (generos
         [Genres_22]
         [Genres_0])
     (idLibro "585")
     (nPag 300)
     (publicacion 1964)
     (url "https://www.goodreads.com/book/show/232576.Harriet_the_Spy")
     (titulo "Harriet the Spy"))

    ([Book_586] of Libro
     (autor [Author_602])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "586")
     (nPag 520)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/13518102-salvage")
     (titulo "Salvage"))

    ([Book_587] of Libro
     (autor [Author_603])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "587")
     (nPag 382)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/12369550-elusion")
     (titulo "Elusion"))

    ([Book_588] of Libro
     (autor [Author_604])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "588")
     (nPag 418)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/17149396-avalon")
     (titulo "Avalon"))

    ([Book_589] of Libro
     (autor [Author_605])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "589")
     (nPag 310)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/17165932-independent-study")
     (titulo "Independent Study"))

    ([Book_590] of Libro
     (autor [Author_606])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "590")
     (nPag 400)
     (publicacion 2003)
     (url "https://www.goodreads.com/book/show/80660.We_Need_to_Talk_About_Kevin")
     (titulo "We Need to Talk About Kevin"))

    ([Book_591] of Libro
     (autor [Author_607])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "591")
     (nPag 312)
     (publicacion 2001)
     (url "https://www.goodreads.com/book/show/227571.Peace_Like_a_River")
     (titulo "Peace Like a River"))

    ([Book_592] of Libro
     (autor [Author_608])
     (generos
         [Genres_0]
         [Genres_39])
     (idLibro "592")
     (nPag 204)
     (publicacion 2015)
     (url "https://www.goodreads.com/book/show/40937505")
     (titulo ""))

    ([Book_593] of Libro
     (autor [Author_609])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "593")
     (nPag 266)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/6948436-little-bee")
     (titulo "Little Bee"))

    ([Book_594] of Libro
     (autor [Author_610])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "594")
     (nPag 292)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/2153405.Still_Alice")
     (titulo "Still Alice"))

    ([Book_595] of Libro
     (autor [Author_611])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "595")
     (nPag 299)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/11706625-truth")
     (titulo "Truth"))

    ([Book_596] of Libro
     (autor [Author_612])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "596")
     (nPag 339)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/11455096-tempest")
     (titulo "Tempest"))

    ([Book_597] of Libro
     (autor [Author_613])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "597")
     (nPag 466)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/9644151-ashfall")
     (titulo "Ashfall"))

    ([Book_598] of Libro
     (autor [Author_614])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "598")
     (nPag 252)
     (publicacion 2004)
     (url "https://www.goodreads.com/book/show/592089.The_Bar_Code_Tattoo")
     (titulo "The Bar Code Tattoo"))

    ([Book_599] of Libro
     (autor [Author_615])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "599")
     (nPag 276)
     (publicacion 1993)
     (url "https://www.goodreads.com/book/show/71865.Tomorrow_When_the_War_Began")
     (titulo "Tomorrow When the War Began"))

    ([Book_600] of Libro
     (autor [Author_616])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "600")
     (nPag 320)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/1722717.The_Declaration")
     (titulo "The Declaration"))

    ([Book_601] of Libro
     (autor [Author_617])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "601")
     (nPag 352)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/11861062-starters")
     (titulo "Starters"))

    ([Book_602] of Libro
     (autor [Author_618])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "602")
     (nPag 55)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/15759752-because-you-tempt-me")
     (titulo "Because You Tempt Me"))

    ([Book_603] of Libro
     (autor [Author_619])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "603")
     (nPag 221)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/16087848-mine-to-hold")
     (titulo "Mine to Hold"))

    ([Book_604] of Libro
     (autor [Author_620])
     (generos
         [Genres_33]
         [Genres_7])
     (idLibro "604")
     (nPag 152)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/7573471-heidi-and-the-kaiser")
     (titulo "Heidi and the Kaiser"))

    ([Book_605] of Libro
     (autor [Author_621])
     (generos
         [Genres_7]
         [Genres_6])
     (idLibro "605")
     (nPag 384)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/793003.Broken")
     (titulo "Broken"))

    ([Book_606] of Libro
     (autor [Author_622])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "606")
     (nPag 231)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/17828418-fixed-on-you")
     (titulo "Fixed on You"))

    ([Book_607] of Libro
     (autor [Author_623])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "607")
     (nPag 309)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/34453559-strangers")
     (titulo "Strangers"))

    ([Book_608] of Libro
     (autor [Author_624])
     (generos
         [Genres_33]
         [Genres_7])
     (idLibro "608")
     (nPag 199)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/41153917-honor-thy-teacher")
     (titulo "Honor Thy Teacher"))

    ([Book_609] of Libro
     (autor [Author_625])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "609")
     (nPag 371)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/16099159-claim-me")
     (titulo "Claim Me"))

    ([Book_610] of Libro
     (autor [Author_626])
     (generos
         [Genres_33]
         [Genres_7])
     (idLibro "610")
     (nPag 350)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/6734445-masters-of-the-shadowlands")
     (titulo "Masters of the Shadowlands Masters of the Shadowlands 1-2"))

    ([Book_611] of Libro
     (autor [Author_627])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "611")
     (nPag 338)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/17156015-beauty-from-pain")
     (titulo "Beauty from Pain"))

    ([Book_612] of Libro
     (autor [Author_628])
     (generos
         [Genres_33]
         [Genres_7])
     (idLibro "612")
     (nPag 285)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/15739921-the-reluctant-dom")
     (titulo "The Reluctant Dom"))

    ([Book_613] of Libro
     (autor [Author_629])
     (generos
         [Genres_33]
         [Genres_7])
     (idLibro "613")
     (nPag 468)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/22091449-nobody-s-perfect")
     (titulo "Nobodys Perfect"))

    ([Book_614] of Libro
     (autor [Author_630])
     (generos
         [Genres_0]
         [Genres_7])
     (idLibro "614")
     (nPag 103)
     (publicacion 1928)
     (url "https://www.goodreads.com/book/show/436806.Story_of_the_Eye")
     (titulo "Story of the Eye"))

    ([Book_615] of Libro
     (autor [Author_631])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "615")
     (nPag 335)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/17866.Glasshouse")
     (titulo "Glasshouse"))

    ([Book_616] of Libro
     (autor [Author_632])
     (generos
         [Genres_22]
         [Genres_0])
     (idLibro "616")
     (nPag 139)
     (publicacion 1938)
     (url "https://www.goodreads.com/book/show/61549.Mr_Popper_s_Penguins")
     (titulo "Mr Poppers Penguins"))

    ([Book_617] of Libro
     (autor [Author_633])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "617")
     (nPag 350)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/6703145-spellwright")
     (titulo "Spellwright"))

    ([Book_618] of Libro
     (autor [Author_634])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "618")
     (nPag 613)
     (publicacion 1998)
     (url "https://www.goodreads.com/book/show/144127.The_Runelords")
     (titulo "The Runelords"))

    ([Book_619] of Libro
     (autor [Author_635])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "619")
     (nPag 398)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/16160701-fire-country")
     (titulo "Fire Country"))

    ([Book_620] of Libro
     (autor [Author_636])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "620")
     (nPag 610)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/35292712-forging-zero")
     (titulo "Forging Zero"))

    ([Book_621] of Libro
     (autor [Author_637])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "621")
     (nPag 597)
     (publicacion 2004)
     (url "https://www.goodreads.com/book/show/278280.River_of_Gods")
     (titulo "River of Gods"))

    ([Book_622] of Libro
     (autor [Author_638])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "622")
     (nPag 432)
     (publicacion 2002)
     (url "https://www.goodreads.com/book/show/240297.The_Skinner")
     (titulo "The Skinner"))

    ([Book_623] of Libro
     (autor [Author_639])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "623")
     (nPag 338)
     (publicacion 2000)
     (url "https://www.goodreads.com/book/show/264950.Calculating_God")
     (titulo "Calculating God"))

    ([Book_624] of Libro
     (autor [Author_641])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "624")
     (nPag 518)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/22733729-the-long-way-to-a-small-angry-planet")
     (titulo "The Long Way to a Small Angry Planet"))

    ([Book_625] of Libro
     (autor [Author_642])
     (generos
         [Genres_4]
         [Genres_32])
     (idLibro "625")
     (nPag 746)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/3437328-the-temporal-void")
     (titulo "The Temporal Void"))

    ([Book_626] of Libro
     (autor [Author_643])
     (generos
         [Genres_4]
         [Genres_10])
     (idLibro "626")
     (nPag 416)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/1137215.Boneshaker")
     (titulo "Boneshaker"))

    ([Book_627] of Libro
     (autor [Author_644])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "627")
     (nPag 756)
     (publicacion 2003)
     (url "https://www.goodreads.com/book/show/89184.Absolution_Gap")
     (titulo "Absolution Gap"))

    ([Book_628] of Libro
     (autor [Author_645])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "628")
     (nPag 460)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/13642710-nexus")
     (titulo "Nexus"))

    ([Book_629] of Libro
     (autor [Author_646])
     (generos
         [Genres_9]
         [Genres_4])
     (idLibro "629")
     (nPag 372)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/15062217-14")
     (titulo "14"))

    ([Book_630] of Libro
     (autor [Author_647])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "630")
     (nPag 461)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/17235026-the-girl-with-all-the-gifts")
     (titulo "The Girl With All the Gifts"))

    ([Book_631] of Libro
     (autor [Author_648])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "631")
     (nPag 486)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/8488830-freedom")
     (titulo "Freedom"))

    ([Book_632] of Libro
     (autor [Author_649])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "632")
     (nPag 347)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/9634967-robopocalypse")
     (titulo "Robopocalypse"))

    ([Book_633] of Libro
     (autor [Author_650])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "633")
     (nPag 195)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/17934530-annihilation")
     (titulo "Annihilation"))

    ([Book_634] of Libro
     (autor [Author_651])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "634")
     (nPag 336)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/7562764-the-quantum-thief")
     (titulo "The Quantum Thief"))

    ([Book_635] of Libro
     (autor [Author_652])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "635")
     (nPag 345)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/9265453-embassytown")
     (titulo "Embassytown"))

    ([Book_636] of Libro
     (autor [Author_653])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "636")
     (nPag 400)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/20518872-the-three-body-problem")
     (titulo "The Three-Body Problem"))

    ([Book_637] of Libro
     (autor [Author_654])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "637")
     (nPag 384)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/48484.Blindsight")
     (titulo "Blindsight"))

    ([Book_638] of Libro
     (autor [Author_655])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "638")
     (nPag 464)
     (publicacion 2005)
     (url "https://www.goodreads.com/book/show/910863.Spin")
     (titulo "Spin"))

    ([Book_639] of Libro
     (autor [Author_656])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "639")
     (nPag 386)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/17333324-ancillary-justice")
     (titulo "Ancillary Justice"))

    ([Book_640] of Libro
     (autor [Author_657])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "640")
     (nPag 320)
     (publicacion 1992)
     (url "https://www.goodreads.com/book/show/25354.Bastard_Out_of_Carolina")
     (titulo "Bastard Out of Carolina"))

    ([Book_641] of Libro
     (autor [Author_658])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "641")
     (nPag 290)
     (publicacion 1964)
     (url "https://www.goodreads.com/book/show/50275.Last_Exit_to_Brooklyn")
     (titulo "Last Exit to Brooklyn"))

    ([Book_642] of Libro
     (autor [Author_659])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "642")
     (nPag 315)
     (publicacion 1977)
     (url "https://www.goodreads.com/book/show/293101.The_Amityville_Horror")
     (titulo "The Amityville Horror"))

    ([Book_643] of Libro
     (autor [Author_660])
     (generos
         [Genres_0]
         [Genres_9])
     (idLibro "643")
     (nPag 272)
     (publicacion 1996)
     (url "https://www.goodreads.com/book/show/75479.The_End_of_Alice")
     (titulo "The End of Alice"))

    ([Book_644] of Libro
     (autor [Author_661])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "644")
     (nPag 234)
     (publicacion 1965)
     (url "https://www.goodreads.com/book/show/18452.The_Painted_Bird")
     (titulo "The Painted Bird"))

    ([Book_645] of Libro
     (autor [Author_662])
     (generos
         [Genres_0]
         [Genres_9])
     (idLibro "645")
     (nPag 348)
     (publicacion 1989)
     (url "https://www.goodreads.com/book/show/13872.Geek_Love")
     (titulo "Geek Love"))

    ([Book_646] of Libro
     (autor [Author_663])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "646")
     (nPag 376)
     (publicacion 1785)
     (url "https://www.goodreads.com/book/show/6351885-the-120-days-of-sodom")
     (titulo "The 120 Days of Sodom"))

    ([Book_647] of Libro
     (autor [Author_664])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "647")
     (nPag 370)
     (publicacion 1989)
     (url "https://www.goodreads.com/book/show/179735.The_Girl_Next_Door")
     (titulo "The Girl Next Door"))

    ([Book_648] of Libro
     (autor [Author_665])
     (generos
         [Genres_0]
         [Genres_9])
     (idLibro "648")
     (nPag 192)
     (publicacion 1984)
     (url "https://www.goodreads.com/book/show/567678.The_Wasp_Factory")
     (titulo "The Wasp Factory"))

    ([Book_649] of Libro
     (autor [Author_666])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "649")
     (nPag 447)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/9581507-don-t-breathe-a-word")
     (titulo "Dont Breathe a Word"))

    ([Book_650] of Libro
     (autor [Author_667])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "650")
     (nPag 346)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/9545064-the-story-of-beautiful-girl")
     (titulo "The Story of Beautiful Girl"))

    ([Book_651] of Libro
     (autor [Author_668])
     (generos
         [Genres_0]
         [Genres_6])
     (idLibro "651")
     (nPag 435)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/6280118-one-day")
     (titulo "One Day"))

    ([Book_652] of Libro
     (autor [Author_669])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "652")
     (nPag 314)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/8683812-the-paris-wife")
     (titulo "The Paris Wife"))

    ([Book_653] of Libro
     (autor [Author_670])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "653")
     (nPag 416)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/8337087-possession")
     (titulo "Possession"))

    ([Book_654] of Libro
     (autor [Author_671])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "654")
     (nPag 280)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/8100422-timeless")
     (titulo "Timeless"))

    ([Book_655] of Libro
     (autor [Author_672])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "655")
     (nPag 322)
     (publicacion 2017)
     (url "https://www.goodreads.com/book/show/25092254-cold-summer")
     (titulo "Cold Summer"))

    ([Book_656] of Libro
     (autor [Author_673])
     (generos
         [Genres_40]
         [Genres_4])
     (idLibro "656")
     (nPag 404)
     (publicacion 2017)
     (url "https://www.goodreads.com/book/show/28526192-27-hours")
     (titulo "27 Hours"))

    ([Book_657] of Libro
     (autor [Author_675])
     (generos
         [Genres_0]
         [Genres_12])
     (idLibro "657")
     (nPag 384)
     (publicacion 2018)
     (url "https://www.goodreads.com/book/show/34857255-the-summer-list")
     (titulo "The Summer List"))

    ([Book_658] of Libro
     (autor [Author_676])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "658")
     (nPag 608)
     (publicacion 2003)
     (url "https://www.goodreads.com/book/show/301538.The_Darkness_That_Comes_Before")
     (titulo "The Darkness That Comes Before"))

    ([Book_659] of Libro
     (autor [Author_677])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "659")
     (nPag 402)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/6101718-the-magicians")
     (titulo "The Magicians"))

    ([Book_660] of Libro
     (autor [Author_678])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "660")
     (nPag 483)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/202769.In_the_Night_Garden")
     (titulo "In the Night Garden"))

    ([Book_661] of Libro
     (autor [Author_679])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "661")
     (nPag 468)
     (publicacion 1991)
     (url "https://www.goodreads.com/book/show/51106.Tam_Lin")
     (titulo "Tam Lin"))

    ([Book_662] of Libro
     (autor [Author_680])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "662")
     (nPag 339)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/69136.The_Book_of_Lost_Things")
     (titulo "The Book of Lost Things"))

    ([Book_663] of Libro
     (autor [Author_681])
     (generos
         [Genres_0]
         [Genres_14])
     (idLibro "663")
     (nPag 464)
     (publicacion 2000)
     (url "https://www.goodreads.com/book/show/13066.Sick_Puppy")
     (titulo "Sick Puppy"))

    ([Book_664] of Libro
     (autor [Author_682])
     (generos
         [Genres_0]
         [Genres_14])
     (idLibro "664")
     (nPag 286)
     (publicacion 1938)
     (url "https://www.goodreads.com/book/show/9858081-the-code-of-the-woosters")
     (titulo "The Code of the Woosters"))

    ([Book_665] of Libro
     (autor [Author_683])
     (generos
         [Genres_12]
         [Genres_41])
     (idLibro "665")
     (nPag 379)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/15855708-diary-of-a-dieting-madhouse")
     (titulo "Diary of a Dieting Madhouse"))

    ([Book_666] of Libro
     (autor [Author_684])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "666")
     (nPag 260)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/15831741-nobody-s-slave")
     (titulo "Nobodys Slave"))

    ([Book_667] of Libro
     (autor [Author_685])
     (generos
         [Genres_0]
         [Genres_39])
     (idLibro "667")
     (nPag 212)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/14405931-terra-feliz")
     (titulo "Terra Feliz Vanity"))

    ([Book_668] of Libro
     (autor [Author_686])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "668")
     (nPag 341)
     (publicacion 2004)
     (url "https://www.goodreads.com/book/show/15750570-just-add-water")
     (titulo "Just Add Water"))

    ([Book_669] of Libro
     (autor [Author_687])
     (generos
         [Genres_0]
         [Genres_29])
     (idLibro "669")
     (nPag 232)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/13818476-heavy-duty-people")
     (titulo "Heavy Duty People"))

    ([Book_670] of Libro
     (autor [Author_688])
     (generos
         [Genres_17]
         [Genres_4])
     (idLibro "670")
     (nPag 286)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/13826601-found-money")
     (titulo "Found Money"))

    ([Book_671] of Libro
     (autor [Author_689])
     (generos
         [Genres_0]
         [Genres_14])
     (idLibro "671")
     (nPag 194)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/12865922-the-queen-s-envoy")
     (titulo "The Queens Envoy"))

    ([Book_672] of Libro
     (autor [Author_690])
     (generos
         [Genres_4]
         [Genres_6])
     (idLibro "672")
     (nPag 437)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/23258641-van-laven-chronicles")
     (titulo "Van Laven Chronicles Throne of Novoxos"))

    ([Book_673] of Libro
     (autor [Author_691])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "673")
     (nPag 138)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/16091522-southern-mystical-moments")
     (titulo "Southern Mystical Moments"))

    ([Book_674] of Libro
     (autor [Author_692])
     (generos
         [Genres_4]
         [Genres_4])
     (idLibro "674")
     (nPag 388)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/19148794-evanescent")
     (titulo "Evanescent"))

    ([Book_675] of Libro
     (autor [Author_693])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "675")
     (nPag 368)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/11115457-time-between-us")
     (titulo "Time Between Us"))

    ([Book_676] of Libro
     (autor [Author_694])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "676")
     (nPag 254)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/12486526-the-sphinx-project")
     (titulo "The Sphinx Project"))

    ([Book_677] of Libro
     (autor [Author_695])
     (generos
         [Genres_10]
         [Genres_4])
     (idLibro "677")
     (nPag 451)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/10852343-stormdancer")
     (titulo "Stormdancer"))

    ([Book_678] of Libro
     (autor [Author_696])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "678")
     (nPag 408)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/9277339-innocent-darkness")
     (titulo "Innocent Darkness"))

    ([Book_679] of Libro
     (autor [Author_697])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "679")
     (nPag 295)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/12814540-the-last-princess")
     (titulo "The Last Princess"))

    ([Book_680] of Libro
     (autor [Author_698])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "680")
     (nPag 224)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/11647944-destiny-s-fire")
     (titulo "Destinys Fire"))

    ([Book_681] of Libro
     (autor [Author_699])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "681")
     (nPag 315)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/9554790-the-other-life")
     (titulo "The Other Life"))

    ([Book_682] of Libro
     (autor [Author_700])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "682")
     (nPag 284)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/12844575-gravity")
     (titulo "Gravity"))

    ([Book_683] of Libro
     (autor [Author_701])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "683")
     (nPag 411)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/12367267-the-glimpse")
     (titulo "The Glimpse"))

    ([Book_684] of Libro
     (autor [Author_702])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "684")
     (nPag 373)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/12432229-struck")
     (titulo "Struck"))

    ([Book_685] of Libro
     (autor [Author_703])
     (generos
         [Genres_0]
         [Genres_29])
     (idLibro "685")
     (nPag 432)
     (publicacion 1984)
     (url "https://www.goodreads.com/book/show/19691.The_Hunt_for_Red_October")
     (titulo "The Hunt for Red October"))

    ([Book_686] of Libro
     (autor [Author_704])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "686")
     (nPag 446)
     (publicacion 2003)
     (url "https://www.goodreads.com/book/show/14995.Odd_Thomas")
     (titulo "Odd Thomas"))

    ([Book_687] of Libro
     (autor [Author_705])
     (generos
         [Genres_14]
         [Genres_0])
     (idLibro "687")
     (nPag 213)
     (publicacion 1980)
     (url "https://www.goodreads.com/book/show/529701.Side_Effects")
     (titulo "Side Effects"))

    ([Book_688] of Libro
     (autor [Author_706])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "688")
     (nPag 251)
     (publicacion 1954)
     (url "https://www.goodreads.com/book/show/395182.Lucky_Jim")
     (titulo "Lucky Jim"))

    ([Book_689] of Libro
     (autor [Author_707])
     (generos
         [Genres_14]
         [Genres_0])
     (idLibro "689")
     (nPag 32)
     (publicacion 1963)
     (url "https://www.goodreads.com/book/show/47558.The_Gashlycrumb_Tinies")
     (titulo "The Gashlycrumb Tinies"))

    ([Book_690] of Libro
     (autor [Author_708])
     (generos
         [Genres_0]
         [Genres_14])
     (idLibro "690")
     (nPag 396)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/36578942-the-hundred-year-old-man-who-climbed-out-of-the-window-and-disappeared")
     (titulo "The Hundred-Year-Old Man Who Climbed Out of the Window and Disappeared"))

    ([Book_691] of Libro
     (autor [Author_709])
     (generos
         [Genres_0]
         [Genres_14])
     (idLibro "691")
     (nPag 267)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/1802397.Smashed_Squashed_Splattered_Chewed_Chunked_and_Spewed")
     (titulo "Smashed Squashed Splattered Chewed Chunked and Spewed"))

    ([Book_692] of Libro
     (autor [Author_710])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "692")
     (nPag 233)
     (publicacion 1932)
     (url "https://www.goodreads.com/book/show/92780.Cold_Comfort_Farm")
     (titulo "Cold Comfort Farm"))

    ([Book_693] of Libro
     (autor [Author_711])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "693")
     (nPag 129)
     (publicacion 1759)
     (url "https://www.goodreads.com/book/show/19380.Candide")
     (titulo "Candide"))

    ([Book_694] of Libro
     (autor [Author_712])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "694")
     (nPag 185)
     (publicacion 1889)
     (url "https://www.goodreads.com/book/show/4921.Three_Men_in_a_Boat")
     (titulo "Three Men in a Boat"))

    ([Book_695] of Libro
     (autor [Author_713])
     (generos
         [Genres_4]
         [Genres_10])
     (idLibro "695")
     (nPag 492)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/6234910-the-iron-thorn")
     (titulo "The Iron Thorn"))

    ([Book_696] of Libro
     (autor [Author_714])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "696")
     (nPag 706)
     (publicacion 1924)
     (url "https://www.goodreads.com/book/show/88077.The_Magic_Mountain")
     (titulo "The Magic Mountain"))

    ([Book_697] of Libro
     (autor [Author_715])
     (generos
         [Genres_0]
         [Genres_15])
     (idLibro "697")
     (nPag 1474)
     (publicacion 1993)
     (url "https://www.goodreads.com/book/show/50365.A_Suitable_Boy")
     (titulo "A Suitable Boy"))

    ([Book_698] of Libro
     (autor [Author_716])
     (generos
         [Genres_0]
         [Genres_15])
     (idLibro "698")
     (nPag 603)
     (publicacion 1995)
     (url "https://www.goodreads.com/book/show/5211.A_Fine_Balance")
     (titulo "A Fine Balance"))

    ([Book_699] of Libro
     (autor [Author_717])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "699")
     (nPag 904)
     (publicacion 1871)
     (url "https://www.goodreads.com/book/show/19089.Middlemarch")
     (titulo "Middlemarch"))

    ([Book_700] of Libro
     (autor [Author_718])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "700")
     (nPag 484)
     (publicacion 2016)
     (url "https://www.goodreads.com/book/show/23909755-city-of-blades")
     (titulo "City of Blades"))

    ([Book_701] of Libro
     (autor [Author_719])
     (generos
         [Genres_0]
         [Genres_20])
     (idLibro "701")
     (nPag 322)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/6076387-a-gate-at-the-stairs")
     (titulo "A Gate at the Stairs"))

    ([Book_702] of Libro
     (autor [Author_720])
     (generos
         [Genres_25]
         [Genres_0])
     (idLibro "702")
     (nPag 322)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/3851380-kiss")
     (titulo "Kiss"))

    ([Book_703] of Libro
     (autor [Author_721])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "703")
     (nPag 324)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/6251222-await-your-reply")
     (titulo "Await Your Reply"))

    ([Book_704] of Libro
     (autor [Author_722])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "704")
     (nPag 373)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/6335026-the-weight-of-silence")
     (titulo "The Weight of Silence"))

    ([Book_705] of Libro
     (autor [Author_723])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "705")
     (nPag 262)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/4954833-brooklyn")
     (titulo "Brooklyn"))

    ([Book_706] of Libro
     (autor [Author_724])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "706")
     (nPag 241)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/3525895-the-girl-she-used-to-be")
     (titulo "The Girl She Used to Be"))

    ([Book_707] of Libro
     (autor [Author_725])
     (generos
         [Genres_0]
         [Genres_14])
     (idLibro "707")
     (nPag 339)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/6224935-this-is-where-i-leave-you")
     (titulo "This is Where I Leave You"))

    ([Book_708] of Libro
     (autor [Author_726])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "708")
     (nPag 291)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/4929705-a-reliable-wife")
     (titulo "A Reliable Wife"))

    ([Book_709] of Libro
     (autor [Author_727])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "709")
     (nPag 351)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/5941033-let-the-great-world-spin")
     (titulo "Let the Great World Spin"))

    ([Book_710] of Libro
     (autor [Author_728])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "710")
     (nPag 371)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/4836308-the-physick-book-of-deliverance-dane")
     (titulo "The Physick Book of Deliverance Dane"))

    ([Book_711] of Libro
     (autor [Author_729])
     (generos
         [Genres_14]
         [Genres_7])
     (idLibro "711")
     (nPag 330)
     (publicacion 2016)
     (url "https://www.goodreads.com/book/show/28096757-innuendos")
     (titulo "Innuendos"))

    ([Book_712] of Libro
     (autor [Author_730])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "712")
     (nPag 272)
     (publicacion 1809)
     (url "https://www.goodreads.com/book/show/128837.Elective_Affinities")
     (titulo "Elective Affinities"))

    ([Book_713] of Libro
     (autor [Author_731])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "713")
     (nPag 244)
     (publicacion 1862)
     (url "https://www.goodreads.com/book/show/19117.Fathers_and_Sons")
     (titulo "Fathers and Sons"))

    ([Book_714] of Libro
     (autor [Author_732])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "714")
     (nPag 370)
     (publicacion 1835)
     (url "https://www.goodreads.com/book/show/59145.P_re_Goriot")
     (titulo "Pre Goriot"))

    ([Book_715] of Libro
     (autor [Author_733])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "715")
     (nPag 134)
     (publicacion 1890)
     (url "https://www.goodreads.com/book/show/32585.Hunger")
     (titulo "Hunger"))

    ([Book_716] of Libro
     (autor [Author_734])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "716")
     (nPag 797)
     (publicacion 1881)
     (url "https://www.goodreads.com/book/show/264.The_Portrait_of_a_Lady")
     (titulo "The Portrait of a Lady"))

    ([Book_717] of Libro
     (autor [Author_735])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "717")
     (nPag 512)
     (publicacion 1842)
     (url "https://www.goodreads.com/book/show/28381.Dead_Souls")
     (titulo "Dead Souls"))

    ([Book_718] of Libro
     (autor [Author_736])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "718")
     (nPag 608)
     (publicacion 1830)
     (url "https://www.goodreads.com/book/show/14662.The_Red_and_the_Black")
     (titulo "The Red and the Black"))

    ([Book_719] of Libro
     (autor [Author_737])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "719")
     (nPag 195)
     (publicacion 1899)
     (url "https://www.goodreads.com/book/show/58345.The_Awakening")
     (titulo "The Awakening"))

    ([Book_720] of Libro
     (autor [Author_738])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "720")
     (nPag 542)
     (publicacion 1848)
     (url "https://www.goodreads.com/book/show/337113.The_Tenant_of_Wildfell_Hall")
     (titulo "The Tenant of Wildfell Hall"))

    ([Book_721] of Libro
     (autor [Author_739])
     (generos
         [Genres_0]
         [Genres_15])
     (idLibro "721")
     (nPag 236)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/43191522-book-one")
     (titulo "Sporadic Memories"))

    ([Book_722] of Libro
     (autor [Author_740])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "722")
     (nPag 434)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/1108884.Maledicte")
     (titulo "Maledicte"))

    ([Book_723] of Libro
     (autor [Author_741])
     (generos
         [Genres_4]
         [Genres_4])
     (idLibro "723")
     (nPag 314)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/20554522-dragon-dawn")
     (titulo "Dragon Dawn"))

    ([Book_724] of Libro
     (autor [Author_742])
     (generos
         [Genres_0]
         [Genres_10])
     (idLibro "724")
     (nPag 252)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/30072.The_Brief_History_of_the_Dead")
     (titulo "The Brief History of the Dead"))

    ([Book_725] of Libro
     (autor [Author_743])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "725")
     (nPag 180)
     (publicacion 1968)
     (url "https://www.goodreads.com/book/show/458191.Escape_to_Witch_Mountain")
     (titulo "Escape to Witch Mountain"))

    ([Book_726] of Libro
     (autor [Author_744])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "726")
     (nPag 288)
     (publicacion 1979)
     (url "https://www.goodreads.com/book/show/395397.Legends_of_the_Fall")
     (titulo "Legends of the Fall"))

    ([Book_727] of Libro
     (autor [Author_745])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "727")
     (nPag 311)
     (publicacion 1999)
     (url "https://www.goodreads.com/book/show/215631.Pay_It_Forward")
     (titulo "Pay It Forward"))

    ([Book_728] of Libro
     (autor [Author_746])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "728")
     (nPag 282)
     (publicacion 1991)
     (url "https://www.goodreads.com/book/show/38379.Ring")
     (titulo "Ring"))

    ([Book_729] of Libro
     (autor [Author_747])
     (generos
         [Genres_0]
         [Genres_22])
     (idLibro "729")
     (nPag 192)
     (publicacion 1987)
     (url "https://www.goodreads.com/book/show/1230853.Madame_Doubtfire")
     (titulo "Madame Doubtfire"))

    ([Book_730] of Libro
     (autor [Author_748])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "730")
     (nPag 300)
     (publicacion 2005)
     (url "https://www.goodreads.com/book/show/39987.Nanny_Mcphee")
     (titulo "Nanny Mcphee The Collected Tales of Nurse Matilda"))

    ([Book_731] of Libro
     (autor [Author_749])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "731")
     (nPag 166)
     (publicacion 1988)
     (url "https://www.goodreads.com/book/show/67238.Dead_Poets_Society")
     (titulo "Dead Poets Society"))

    ([Book_732] of Libro
     (autor [Author_750])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "732")
     (nPag 192)
     (publicacion 1923)
     (url "https://www.goodreads.com/book/show/739840.Bambi")
     (titulo "Bambi"))

    ([Book_733] of Libro
     (autor [Author_751])
     (generos
         [Genres_12]
         [Genres_3])
     (idLibro "733")
     (nPag 289)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/10031701-a-shore-thing")
     (titulo "A Shore Thing"))

    ([Book_734] of Libro
     (autor [Author_752])
     (generos
         [Genres_3]
         [Genres_12])
     (idLibro "734")
     (nPag 224)
     (publicacion 2002)
     (url "https://www.goodreads.com/book/show/22188.Gossip_Girl")
     (titulo "Gossip Girl"))

    ([Book_735] of Libro
     (autor [Author_753])
     (generos
         [Genres_4]
         [Genres_6])
     (idLibro "735")
     (nPag 583)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/25397924-starshine")
     (titulo "Starshine Aurora Rising Book One"))

    ([Book_736] of Libro
     (autor [Author_754])
     (generos
         [Genres_0]
         [Genres_42])
     (idLibro "736")
     (nPag 52)
     (publicacion 2005)
     (url "https://www.goodreads.com/book/show/4303567-angelica-and-francesca")
     (titulo "Angelica and Francesca"))

    ([Book_737] of Libro
     (autor [Author_755])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "737")
     (nPag 165)
     (publicacion 1925)
     (url "https://www.goodreads.com/book/show/512704.Gentlemen_Prefer_Blondes")
     (titulo "Gentlemen Prefer Blondes"))

    ([Book_738] of Libro
     (autor [Author_756])
     (generos
         [Genres_0]
         [Genres_25])
     (idLibro "738")
     (nPag 384)
     (publicacion 2016)
     (url "https://www.goodreads.com/book/show/25379594-the-feathered-bone")
     (titulo "The Feathered Bone"))

    ([Book_739] of Libro
     (autor [Author_757])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "739")
     (nPag 464)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/16160314-trust")
     (titulo "Trust A New Beginning"))

    ([Book_740] of Libro
     (autor [Author_758])
     (generos
         [Genres_4]
         [Genres_32])
     (idLibro "740")
     (nPag 472)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/17826638-rogue-genesis")
     (titulo "Rogue Genesis"))

    ([Book_741] of Libro
     (autor [Author_759])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "741")
     (nPag 358)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/3426706-the-jewel-of-medina")
     (titulo "The Jewel of Medina"))

    ([Book_742] of Libro
     (autor [Author_760])
     (generos
         [Genres_0]
         [Genres_3])
     (idLibro "742")
     (nPag 368)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/21611238-in-leah-s-wake")
     (titulo "In Leahs Wake"))

    ([Book_743] of Libro
     (autor [Author_761])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "743")
     (nPag 380)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/13579274-some-are-sicker-than-others")
     (titulo "Some Are Sicker Than Others"))

    ([Book_744] of Libro
     (autor [Author_762])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "744")
     (nPag 208)
     (publicacion 1974)
     (url "https://www.goodreads.com/book/show/397867.The_Rats")
     (titulo "The Rats"))

    ([Book_745] of Libro
     (autor [Author_763])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "745")
     (nPag 358)
     (publicacion 1988)
     (url "https://www.goodreads.com/book/show/103035.Cabal")
     (titulo "Cabal"))

    ([Book_746] of Libro
     (autor [Author_764])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "746")
     (nPag 427)
     (publicacion 1989)
     (url "https://www.goodreads.com/book/show/32430.The_Bad_Place")
     (titulo "The Bad Place"))

    ([Book_747] of Libro
     (autor [Author_765])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "747")
     (nPag 401)
     (publicacion 1973)
     (url "https://www.goodreads.com/book/show/816085.Harvest_Home")
     (titulo "Harvest Home"))

    ([Book_748] of Libro
     (autor [Author_766])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "748")
     (nPag 138)
     (publicacion 1983)
     (url "https://www.goodreads.com/book/show/37034.The_Woman_in_Black")
     (titulo "The Woman in Black"))

    ([Book_749] of Libro
     (autor [Author_767])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "749")
     (nPag 144)
     (publicacion 1972)
     (url "https://www.goodreads.com/book/show/52350.The_Stepford_Wives")
     (titulo "The Stepford Wives"))

    ([Book_750] of Libro
     (autor [Author_768])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "750")
     (nPag 272)
     (publicacion 1976)
     (url "https://www.goodreads.com/book/show/226162.The_Omen")
     (titulo "The Omen"))

    ([Book_751] of Libro
     (autor [Author_769])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "751")
     (nPag 319)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/21726.The_Ruins")
     (titulo "The Ruins"))

    ([Book_752] of Libro
     (autor [Author_770])
     (generos
         [Genres_9]
         [Genres_0])
     (idLibro "752")
     (nPag 146)
     (publicacion 1962)
     (url "https://www.goodreads.com/book/show/89724.We_Have_Always_Lived_in_the_Castle")
     (titulo "We Have Always Lived in the Castle"))

    ([Book_753] of Libro
     (autor [Author_771])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "753")
     (nPag 208)
     (publicacion 2018)
     (url "https://www.goodreads.com/book/show/34386617-the-night-masquerade")
     (titulo "The Night Masquerade"))

    ([Book_754] of Libro
     (autor [Author_772])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "754")
     (nPag 227)
     (publicacion 2018)
     (url "https://www.goodreads.com/book/show/35390279-the-night-child")
     (titulo "The Night Child"))

    ([Book_755] of Libro
     (autor [Author_773])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "755")
     (nPag 320)
     (publicacion 2018)
     (url "https://www.goodreads.com/book/show/35940516-this-i-know")
     (titulo "This I Know"))

    ([Book_756] of Libro
     (autor [Author_774])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "756")
     (nPag 390)
     (publicacion 2018)
     (url "https://www.goodreads.com/book/show/36163568-a-different-kind-of-fire")
     (titulo "A Different Kind of Fire"))

    ([Book_757] of Libro
     (autor [Author_775])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "757")
     (nPag 422)
     (publicacion 2018)
     (url "https://www.goodreads.com/book/show/35099058-gunslinger-girl")
     (titulo "Gunslinger Girl"))

    ([Book_758] of Libro
     (autor [Author_776])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "758")
     (nPag 323)
     (publicacion 2018)
     (url "https://www.goodreads.com/book/show/33026565-rainbirds")
     (titulo "Rainbirds"))

    ([Book_759] of Libro
     (autor [Author_777])
     (generos
         [Genres_0]
         [Genres_11])
     (idLibro "759")
     (nPag 348)
     (publicacion 2018)
     (url "https://www.goodreads.com/book/show/35142025-the-queen-of-hearts")
     (titulo "The Queen of Hearts"))

    ([Book_760] of Libro
     (autor [Author_778])
     (generos
         [Genres_6]
         [Genres_4])
     (idLibro "760")
     (nPag 312)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/20504754-transcendence")
     (titulo "Transcendence"))

    ([Book_761] of Libro
     (autor [Author_779])
     (generos
         [Genres_33]
         [Genres_7])
     (idLibro "761")
     (nPag 174)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/18519368-the-spice-of-life")
     (titulo "The Spice of Life"))

    ([Book_762] of Libro
     (autor [Author_780])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "762")
     (nPag 304)
     (publicacion 1988)
     (url "https://www.goodreads.com/book/show/142395.Samarkand")
     (titulo "Samarkand"))

    ([Book_763] of Libro
     (autor [Author_781])
     (generos
         [Genres_20]
         [Genres_0])
     (idLibro "763")
     (nPag 141)
     (publicacion 1991)
     (url "https://www.goodreads.com/book/show/3110969")
     (titulo ""))

    ([Book_764] of Libro
     (autor [Author_783])
     (generos
         [Genres_20]
         [Genres_0])
     (idLibro "764")
     (nPag 173)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/2618660")
     (titulo ""))

    ([Book_765] of Libro
     (autor [Author_784])
     (generos
         [Genres_0]
         [Genres_20])
     (idLibro "765")
     (nPag 217)
     (publicacion 1967)
     (url "https://www.goodreads.com/book/show/3495961")
     (titulo ""))

    ([Book_766] of Libro
     (autor [Author_785])
     (generos
         [Genres_17]
         [Genres_0])
     (idLibro "766")
     (nPag 225)
     (publicacion 2004)
     (url "https://www.goodreads.com/book/show/5520516")
     (titulo ""))

    ([Book_767] of Libro
     (autor [Author_786])
     (generos
         [Genres_0]
         [Genres_15])
     (idLibro "767")
     (nPag 176)
     (publicacion 1966)
     (url "https://www.goodreads.com/book/show/669780.Season_of_Migration_to_the_North")
     (titulo "Season of Migration to the North"))

    ([Book_768] of Libro
     (autor [Author_787])
     (generos
         [Genres_20]
         [Genres_0])
     (idLibro "768")
     (nPag 385)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/16031620")
     (titulo ""))

    ([Book_769] of Libro
     (autor [Author_788])
     (generos
         [Genres_7]
         [Genres_31])
     (idLibro "769")
     (nPag 191)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/20619926-uncomplicated")
     (titulo "Uncomplicated"))

    ([Book_770] of Libro
     (autor [Author_789])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "770")
     (nPag 343)
     (publicacion 1948)
     (url "https://www.goodreads.com/book/show/31122.I_Capture_the_Castle")
     (titulo "I Capture the Castle"))

    ([Book_771] of Libro
     (autor [Author_790])
     (generos
         [Genres_0]
         [Genres_4])
     (idLibro "771")
     (nPag 376)
     (publicacion 1976)
     (url "https://www.goodreads.com/book/show/772888.Woman_on_the_Edge_of_Time")
     (titulo "Woman on the Edge of Time"))

    ([Book_772] of Libro
     (autor [Author_791])
     (generos
         [Genres_0]
         [Genres_12])
     (idLibro "772")
     (nPag 512)
     (publicacion 2003)
     (url "https://www.goodreads.com/book/show/16249.Angry_Housewives_Eating_Bon_Bons")
     (titulo "Angry Housewives Eating Bon Bons"))

    ([Book_773] of Libro
     (autor [Author_793])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "773")
     (nPag 145)
     (publicacion 1972)
     (url "https://www.goodreads.com/book/show/331256.Roadside_Picnic")
     (titulo "Roadside Picnic"))

    ([Book_774] of Libro
     (autor [Author_794])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "774")
     (nPag 210)
     (publicacion 1963)
     (url "https://www.goodreads.com/book/show/190999.Way_Station")
     (titulo "Way Station"))

    ([Book_775] of Libro
     (autor [Author_795])
     (generos
         [Genres_4]
         [Genres_10])
     (idLibro "775")
     (nPag 186)
     (publicacion 1912)
     (url "https://www.goodreads.com/book/show/40395.A_Princess_of_Mars")
     (titulo "A Princess of Mars"))

    ([Book_776] of Libro
     (autor [Author_796])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "776")
     (nPag 335)
     (publicacion 1906)
     (url "https://www.goodreads.com/book/show/41681.The_Jungle")
     (titulo "The Jungle"))

    ([Book_777] of Libro
     (autor [Author_797])
     (generos
         [Genres_12]
         [Genres_0])
     (idLibro "777")
     (nPag 448)
     (publicacion 2000)
     (url "https://www.goodreads.com/book/show/82748.Sushi_for_Beginners")
     (titulo "Sushi for Beginners"))

    ([Book_778] of Libro
     (autor [Author_798])
     (generos
         [Genres_12]
         [Genres_0])
     (idLibro "778")
     (nPag 320)
     (publicacion 2004)
     (url "https://www.goodreads.com/book/show/381704.Bergdorf_Blondes")
     (titulo "Bergdorf Blondes"))

    ([Book_779] of Libro
     (autor [Author_799])
     (generos
         [Genres_10]
         [Genres_12])
     (idLibro "779")
     (nPag 308)
     (publicacion 2005)
     (url "https://www.goodreads.com/book/show/603398.Enchanted_Inc_")
     (titulo "Enchanted Inc"))

    ([Book_780] of Libro
     (autor [Author_800])
     (generos
         [Genres_12]
         [Genres_6])
     (idLibro "780")
     (nPag 406)
     (publicacion 2005)
     (url "https://www.goodreads.com/book/show/137098.The_Little_Lady_Agency")
     (titulo "The Little Lady Agency"))

    ([Book_781] of Libro
     (autor [Author_801])
     (generos
         [Genres_12]
         [Genres_0])
     (idLibro "781")
     (nPag 368)
     (publicacion 1999)
     (url "https://www.goodreads.com/book/show/31101.Mr_Maybe")
     (titulo "Mr Maybe"))

    ([Book_782] of Libro
     (autor [Author_802])
     (generos
         [Genres_12]
         [Genres_6])
     (idLibro "782")
     (nPag 423)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/9712341-a-girl-like-you")
     (titulo "A Girl Like You"))

    ([Book_783] of Libro
     (autor [Author_803])
     (generos
         [Genres_4]
         [Genres_6])
     (idLibro "783")
     (nPag 214)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/24983185-love-eternally")
     (titulo "Love Eternally"))

    ([Book_784] of Libro
     (autor [Author_804])
     (generos
         [Genres_10]
         [Genres_4])
     (idLibro "784")
     (nPag 613)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/9766078-the-map-of-time")
     (titulo "The Map of Time"))

    ([Book_785] of Libro
     (autor [Author_805])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "785")
     (nPag 366)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/18108877-timebound")
     (titulo "Timebound"))

    ([Book_786] of Libro
     (autor [Author_806])
     (generos
         [Genres_4]
         [Genres_4])
     (idLibro "786")
     (nPag 520)
     (publicacion 1995)
     (url "https://www.goodreads.com/book/show/62992.The_Time_Ships")
     (titulo "The Time Ships"))

    ([Book_787] of Libro
     (autor [Author_807])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "787")
     (nPag 360)
     (publicacion 2004)
     (url "https://www.goodreads.com/book/show/12431807-a-visit-from-voltaire")
     (titulo "A Visit from Voltaire"))

    ([Book_788] of Libro
     (autor [Author_808])
     (generos
         [Genres_4]
         [Genres_4])
     (idLibro "788")
     (nPag 528)
     (publicacion 1992)
     (url "https://www.goodreads.com/book/show/101599.The_Guns_of_the_South")
     (titulo "The Guns of the South"))

    ([Book_789] of Libro
     (autor [Author_809])
     (generos
         [Genres_4]
         [Genres_4])
     (idLibro "789")
     (nPag 765)
     (publicacion 1955)
     (url "https://www.goodreads.com/book/show/261499.Time_Patrol")
     (titulo "Time Patrol"))

    ([Book_790] of Libro
     (autor [Author_810])
     (generos
         [Genres_4]
         [Genres_4])
     (idLibro "790")
     (nPag 174)
     (publicacion 1941)
     (url "https://www.goodreads.com/book/show/94715.Lest_Darkness_Fall")
     (titulo "Lest Darkness Fall"))

    ([Book_791] of Libro
     (autor [Author_811])
     (generos
         [Genres_0]
         [Genres_17])
     (idLibro "791")
     (nPag 144)
     (publicacion 1992)
     (url "https://www.goodreads.com/book/show/14376.Einstein_s_Dreams")
     (titulo "Einsteins Dreams"))

    ([Book_792] of Libro
     (autor [Author_812])
     (generos
         [Genres_4]
         [Genres_4])
     (idLibro "792")
     (nPag 480)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/29661618-just-one-damned-thing-after-another")
     (titulo "Just One Damned Thing After Another"))

    ([Book_793] of Libro
     (autor [Author_814])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "793")
     (nPag 356)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/18853210-the-fatal-tree")
     (titulo "The Fatal Tree"))

    ([Book_794] of Libro
     (autor [Author_815])
     (generos
         [Genres_4]
         [Genres_43])
     (idLibro "794")
     (nPag 276)
     (publicacion 1977)
     (url "https://www.goodreads.com/book/show/216177.The_City_on_the_Edge_of_Forever")
     (titulo "The City on the Edge of Forever The Original Teleplay"))

    ([Book_795] of Libro
     (autor [Author_816])
     (generos
         [Genres_4]
         [Genres_4])
     (idLibro "795")
     (nPag 336)
     (publicacion 1997)
     (url "https://www.goodreads.com/book/show/270490.In_the_Garden_of_Iden")
     (titulo "In the Garden of Iden"))

    ([Book_796] of Libro
     (autor [Author_817])
     (generos
         [Genres_4]
         [Genres_4])
     (idLibro "796")
     (nPag 608)
     (publicacion 1998)
     (url "https://www.goodreads.com/book/show/99702.Island_in_the_Sea_of_Time")
     (titulo "Island in the Sea of Time"))

    ([Book_797] of Libro
     (autor [Author_818])
     (generos
         [Genres_4]
         [Genres_4])
     (idLibro "797")
     (nPag 499)
     (publicacion 1980)
     (url "https://www.goodreads.com/book/show/778990.Timescape")
     (titulo "Timescape"))

    ([Book_798] of Libro
     (autor [Author_819])
     (generos
         [Genres_4]
         [Genres_4])
     (idLibro "798")
     (nPag 597)
     (publicacion 2000)
     (url "https://www.goodreads.com/book/show/16967.1632")
     (titulo "1632"))

    ([Book_799] of Libro
     (autor [Author_820])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "799")
     (nPag 199)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/5310515-when-you-reach-me")
     (titulo "When You Reach Me"))

    ([Book_800] of Libro
     (autor [Author_821])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "800")
     (nPag 304)
     (publicacion 1995)
     (url "https://www.goodreads.com/book/show/72694.From_Time_to_Time")
     (titulo "From Time to Time"))

    ([Book_801] of Libro
     (autor [Author_822])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "801")
     (nPag 405)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/35066358-the-first-fifteen-lives-of-harry-august")
     (titulo "The First Fifteen Lives of Harry August"))

    ([Book_802] of Libro
     (autor [Author_823])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "802")
     (nPag 303)
     (publicacion 1978)
     (url "https://www.goodreads.com/book/show/133738.The_Mirror")
     (titulo "The Mirror"))

    ([Book_803] of Libro
     (autor [Author_824])
     (generos
         [Genres_0]
         [Genres_4])
     (idLibro "803")
     (nPag 311)
     (publicacion 1987)
     (url "https://www.goodreads.com/book/show/341735.Replay")
     (titulo "Replay"))

    ([Book_804] of Libro
     (autor [Author_825])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "804")
     (nPag 896)
     (publicacion 1991)
     (url "https://www.goodreads.com/book/show/73062.Scarlett")
     (titulo "Scarlett"))

    ([Book_805] of Libro
     (autor [Author_826])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "805")
     (nPag 409)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/11106249-chasing-amanda")
     (titulo "Chasing Amanda"))

    ([Book_806] of Libro
     (autor [Author_827])
     (generos
         [Genres_6]
         [Genres_12])
     (idLibro "806")
     (nPag 192)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/32860040-charlie-and-pearl")
     (titulo "Charlie and Pearl"))

    ([Book_807] of Libro
     (autor [Author_828])
     (generos
         [Genres_0]
         [Genres_44])
     (idLibro "807")
     (nPag 293)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/13158512-the-lion-the-lamb-the-hunted")
     (titulo "The Lion the Lamb the Hunted"))

    ([Book_808] of Libro
     (autor [Author_829])
     (generos
         [Genres_29]
         [Genres_4])
     (idLibro "808")
     (nPag 703)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/18998714-may-day")
     (titulo "May Day"))

    ([Book_809] of Libro
     (autor [Author_830])
     (generos
         [Genres_4]
         [Genres_6])
     (idLibro "809")
     (nPag 356)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/16177145-enigma-black")
     (titulo "Enigma Black"))

    ([Book_810] of Libro
     (autor [Author_831])
     (generos
         [Genres_0]
         [Genres_36])
     (idLibro "810")
     (nPag 275)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/22752404-wood-talc-and-mr-j")
     (titulo "Wood Talc and Mr J"))

    ([Book_811] of Libro
     (autor [Author_832])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "811")
     (nPag 374)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/15774215-clovenhoof")
     (titulo "Clovenhoof"))

    ([Book_812] of Libro
     (autor [Author_833])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "812")
     (nPag 220)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/12828201-winter-s-awakening")
     (titulo "Winters Awakening The Metahumans Emerge"))

    ([Book_813] of Libro
     (autor [Author_834])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "813")
     (nPag 396)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/17802724-the-husband-s-secret")
     (titulo "The Husbands Secret"))

    ([Book_814] of Libro
     (autor [Author_835])
     (generos
         [Genres_0]
         [Genres_29])
     (idLibro "814")
     (nPag 692)
     (publicacion 2004)
     (url "https://www.goodreads.com/book/show/40940631-night-fall")
     (titulo "Night Fall"))

    ([Book_815] of Libro
     (autor [Author_836])
     (generos
         [Genres_29]
         [Genres_0])
     (idLibro "815")
     (nPag 226)
     (publicacion 2015)
     (url "https://www.goodreads.com/book/show/26004546-lips-of-a-mastodon")
     (titulo "Lips of a Mastodon"))

    ([Book_816] of Libro
     (autor [Author_837])
     (generos
         [Genres_29]
         [Genres_0])
     (idLibro "816")
     (nPag 422)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/12849385-the-innocent")
     (titulo "The Innocent"))

    ([Book_817] of Libro
     (autor [Author_838])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "817")
     (nPag 399)
     (publicacion 1992)
     (url "https://www.goodreads.com/book/show/187650.Primal_Fear")
     (titulo "Primal Fear"))

    ([Book_818] of Libro
     (autor [Author_839])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "818")
     (nPag 394)
     (publicacion 2018)
     (url "https://www.goodreads.com/book/show/35721194-brightly-burning")
     (titulo "Brightly Burning"))

    ([Book_819] of Libro
     (autor [Author_840])
     (generos
         [Genres_0]
         [Genres_1])
     (idLibro "819")
     (nPag 324)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/24280082-send-more-idiots")
     (titulo "Send More Idiots"))

    ([Book_820] of Libro
     (autor [Author_841])
     (generos
         [Genres_4]
         [Genres_6])
     (idLibro "820")
     (nPag 212)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/10563572-steam-sorcery")
     (titulo "Steam  Sorcery"))

    ([Book_821] of Libro
     (autor [Author_842])
     (generos
         [Genres_4]
         [Genres_6])
     (idLibro "821")
     (nPag 292)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/6414434-binding-vows")
     (titulo "Binding Vows"))

    ([Book_822] of Libro
     (autor [Author_843])
     (generos
         [Genres_4]
         [Genres_6])
     (idLibro "822")
     (nPag 268)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/5168329-highlander-s-challenge")
     (titulo "Highlanders Challenge"))

    ([Book_823] of Libro
     (autor [Author_844])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "823")
     (nPag 224)
     (publicacion 1995)
     (url "https://www.goodreads.com/book/show/260014.Both_Sides_of_Time")
     (titulo "Both Sides of Time"))

    ([Book_824] of Libro
     (autor [Author_845])
     (generos
         [Genres_4]
         [Genres_6])
     (idLibro "824")
     (nPag 448)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/621460.The_Reluctant_Viking")
     (titulo "The Reluctant Viking"))

    ([Book_825] of Libro
     (autor [Author_846])
     (generos
         [Genres_4]
         [Genres_39])
     (idLibro "825")
     (nPag 47)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/22802230-the-spirit-path")
     (titulo "The Spirit Path"))

    ([Book_826] of Libro
     (autor [Author_848])
     (generos
         [Genres_4]
         [Genres_6])
     (idLibro "826")
     (nPag 201)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/9268202-highland-destiny")
     (titulo "Highland Destiny"))

    ([Book_827] of Libro
     (autor [Author_849])
     (generos
         [Genres_4]
         [Genres_13])
     (idLibro "827")
     (nPag 544)
     (publicacion 1998)
     (url "https://www.goodreads.com/book/show/495882.Reflections_in_the_Nile")
     (titulo "Reflections in the Nile"))

    ([Book_828] of Libro
     (autor [Author_850])
     (generos
         [Genres_6]
         [Genres_4])
     (idLibro "828")
     (nPag 426)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/9645632-awaken-the-highland-warrior")
     (titulo "Awaken the Highland Warrior"))

    ([Book_829] of Libro
     (autor [Author_851])
     (generos
         [Genres_4]
         [Genres_6])
     (idLibro "829")
     (nPag 384)
     (publicacion 1993)
     (url "https://www.goodreads.com/book/show/19444805-forever-his")
     (titulo "Forever His"))

    ([Book_830] of Libro
     (autor [Author_852])
     (generos
         [Genres_6]
         [Genres_4])
     (idLibro "830")
     (nPag 309)
     (publicacion 1995)
     (url "https://www.goodreads.com/book/show/699179.Pirates")
     (titulo "Pirates"))

    ([Book_831] of Libro
     (autor [Author_853])
     (generos
         [Genres_4]
         [Genres_6])
     (idLibro "831")
     (nPag 288)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/8698353-dustin-time")
     (titulo "Dustin Time"))

    ([Book_832] of Libro
     (autor [Author_854])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "832")
     (nPag 399)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/9368401-cascade")
     (titulo "Cascade"))

    ([Book_833] of Libro
     (autor [Author_855])
     (generos
         [Genres_4]
         [Genres_6])
     (idLibro "833")
     (nPag 360)
     (publicacion 1996)
     (url "https://www.goodreads.com/book/show/331975.When_There_is_Hope")
     (titulo "When There is Hope"))

    ([Book_834] of Libro
     (autor [Author_856])
     (generos
         [Genres_4]
         [Genres_6])
     (idLibro "834")
     (nPag 294)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/8122928-out-of-time")
     (titulo "Out of Time"))

    ([Book_835] of Libro
     (autor [Author_857])
     (generos
         [Genres_6]
         [Genres_4])
     (idLibro "835")
     (nPag 464)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/13059477-overseas")
     (titulo "Overseas"))

    ([Book_836] of Libro
     (autor [Author_858])
     (generos
         [Genres_4]
         [Genres_6])
     (idLibro "836")
     (nPag 421)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/15701608-the-ruby-brooch")
     (titulo "The Ruby Brooch"))

    ([Book_837] of Libro
     (autor [Author_859])
     (generos
         [Genres_4]
         [Genres_6])
     (idLibro "837")
     (nPag 374)
     (publicacion 2001)
     (url "https://www.goodreads.com/book/show/609153.Time_After_Time")
     (titulo "Time After Time"))

    ([Book_838] of Libro
     (autor [Author_860])
     (generos
         [Genres_6]
         [Genres_4])
     (idLibro "838")
     (nPag 400)
     (publicacion 1996)
     (url "https://www.goodreads.com/book/show/350678.Breath_of_Magic")
     (titulo "Breath of Magic"))

    ([Book_839] of Libro
     (autor [Author_861])
     (generos
         [Genres_6]
         [Genres_4])
     (idLibro "839")
     (nPag 356)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/734191.Thirty_Nights_with_a_Highland_Husband")
     (titulo "Thirty Nights with a Highland Husband"))

    ([Book_840] of Libro
     (autor [Author_863])
     (generos
         [Genres_17]
         [Genres_0])
     (idLibro "840")
     (nPag 252)
     (publicacion 1953)
     (url "https://www.goodreads.com/book/show/48464.A_Good_Man_is_Hard_to_Find_and_Other_Stories")
     (titulo "A Good Man is Hard to Find and Other Stories"))

    ([Book_841] of Libro
     (autor [Author_864])
     (generos
         [Genres_0]
         [Genres_5])
     (idLibro "841")
     (nPag 359)
     (publicacion 1940)
     (url "https://www.goodreads.com/book/show/37380.The_Heart_Is_a_Lonely_Hunter")
     (titulo "The Heart Is a Lonely Hunter"))

    ([Book_842] of Libro
     (autor [Author_865])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "842")
     (nPag 316)
     (publicacion 2018)
     (url "https://www.goodreads.com/book/show/37459966-our-dark-stars")
     (titulo "Our Dark Stars"))

    ([Book_843] of Libro
     (autor [Author_866])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "843")
     (nPag 426)
     (publicacion 1986)
     (url "https://www.goodreads.com/book/show/170293.The_Unlikely_Ones")
     (titulo "The Unlikely Ones"))

    ([Book_844] of Libro
     (autor [Author_867])
     (generos
         [Genres_45]
         [Genres_7])
     (idLibro "844")
     (nPag 322)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/17615896-escape-from-paradise")
     (titulo "Escape from Paradise"))

    ([Book_845] of Libro
     (autor [Author_868])
     (generos
         [Genres_4]
         [Genres_3])
     (idLibro "845")
     (nPag 384)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/17402117-branded")
     (titulo "Branded"))

    ([Book_846] of Libro
     (autor [Author_869])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "846")
     (nPag 308)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/18191815-storm-damages")
     (titulo "Storm Damages"))

    ([Book_847] of Libro
     (autor [Author_870])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "847")
     (nPag 272)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/20486626-breach")
     (titulo "Breach"))

    ([Book_848] of Libro
     (autor [Author_871])
     (generos
         [Genres_29]
         [Genres_0])
     (idLibro "848")
     (nPag 512)
     (publicacion 2000)
     (url "https://www.goodreads.com/book/show/93794.The_Kill_Artist")
     (titulo "The Kill Artist"))

    ([Book_849] of Libro
     (autor [Author_872])
     (generos
         [Genres_0]
         [Genres_29])
     (idLibro "849")
     (nPag 480)
     (publicacion 1979)
     (url "https://www.goodreads.com/book/show/1059.Shibumi")
     (titulo "Shibumi"))

    ([Book_850] of Libro
     (autor [Author_873])
     (generos
         [Genres_1]
         [Genres_0])
     (idLibro "850")
     (nPag 320)
     (publicacion 1998)
     (url "https://www.goodreads.com/book/show/380563.Hit_Man")
     (titulo "Hit Man"))

    ([Book_851] of Libro
     (autor [Author_874])
     (generos
         [Genres_29]
         [Genres_0])
     (idLibro "851")
     (nPag 363)
     (publicacion 2002)
     (url "https://www.goodreads.com/book/show/925.A_Clean_Kill_in_Tokyo")
     (titulo "A Clean Kill in Tokyo"))

    ([Book_852] of Libro
     (autor [Author_875])
     (generos
         [Genres_0]
         [Genres_9])
     (idLibro "852")
     (nPag 259)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/10365343-zone-one")
     (titulo "Zone One"))

    ([Book_853] of Libro
     (autor [Author_876])
     (generos
         [Genres_6]
         [Genres_4])
     (idLibro "853")
     (nPag 256)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/15842439-warm-bodies")
     (titulo "Warm Bodies"))

    ([Book_854] of Libro
     (autor [Author_877])
     (generos
         [Genres_0]
         [Genres_6])
     (idLibro "854")
     (nPag 304)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/12633983-comeback-love")
     (titulo "Comeback Love"))

    ([Book_855] of Libro
     (autor [Author_878])
     (generos
         [Genres_11]
         [Genres_7])
     (idLibro "855")
     (nPag 1096)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/26099342-front-row-center")
     (titulo "Front Row Center"))

    ([Book_856] of Libro
     (autor [Author_267])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "856")
     (nPag 497)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/21353509-the-vanishing-witch")
     (titulo "The Vanishing Witch"))

    ([Book_857] of Libro
     (autor [Author_303])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "857")
     (nPag 1136)
     (publicacion 1959)
     (url "https://www.goodreads.com/book/show/12658.Hawaii")
     (titulo "Hawaii"))

    ([Book_858] of Libro
     (autor [Author_879])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "858")
     (nPag 368)
     (publicacion 1987)
     (url "https://www.goodreads.com/book/show/1920307.Outpassage")
     (titulo "Outpassage"))

    ([Book_859] of Libro
     (autor [Author_880])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "859")
     (nPag 144)
     (publicacion 1979)
     (url "https://www.goodreads.com/book/show/306107.A_Gathering_of_Days")
     (titulo "A Gathering of Days A New England Girls Journal 1830-32"))

    ([Book_860] of Libro
     (autor [Author_881])
     (generos
         [Genres_33]
         [Genres_7])
     (idLibro "860")
     (nPag 210)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/12363622-deadly-captive")
     (titulo "Deadly Captive"))

    ([Book_861] of Libro
     (autor [Author_882])
     (generos
         [Genres_7]
         [Genres_39])
     (idLibro "861")
     (nPag 42)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/18522362-a-dance-for-fools")
     (titulo "A Dance for Fools"))

    ([Book_862] of Libro
     (autor [Author_883])
     (generos
         [Genres_7]
         [Genres_33])
     (idLibro "862")
     (nPag 334)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/15748293-eighty-days-yellow")
     (titulo "Eighty Days Yellow"))

    ([Book_863] of Libro
     (autor [Author_884])
     (generos
         [Genres_7]
         [Genres_29])
     (idLibro "863")
     (nPag 212)
     (publicacion 2017)
     (url "https://www.goodreads.com/book/show/34325423-concealed-anguish")
     (titulo "Concealed Anguish"))

    ([Book_864] of Libro
     (autor [Author_885])
     (generos
         [Genres_7]
         [Genres_45])
     (idLibro "864")
     (nPag 160)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/24901891-hear-me")
     (titulo "Hear Me"))

    ([Book_865] of Libro
     (autor [Author_886])
     (generos
         [Genres_33]
         [Genres_7])
     (idLibro "865")
     (nPag 248)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/36531660-comfort-object")
     (titulo "Comfort Object"))

    ([Book_866] of Libro
     (autor [Author_262])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "866")
     (nPag 351)
     (publicacion 2001)
     (url "https://www.goodreads.com/book/show/6867.Atonement")
     (titulo "Atonement"))

    ([Book_867] of Libro
     (autor [Author_887])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "867")
     (nPag 166)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/26311787-storm")
     (titulo "Storm"))

    ([Book_868] of Libro
     (autor [Author_888])
     (generos
         [Genres_33]
         [Genres_7])
     (idLibro "868")
     (nPag 234)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/16176693-enslaved")
     (titulo "Enslaved"))

    ([Book_869] of Libro
     (autor [Author_830])
     (generos
         [Genres_4]
         [Genres_6])
     (idLibro "869")
     (nPag 356)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/16177145-enigma-black")
     (titulo "Enigma Black"))

    ([Book_870] of Libro
     (autor [Author_889])
     (generos
         [Genres_45]
         [Genres_7])
     (idLibro "870")
     (nPag 576)
     (publicacion 2008)
     (url "https://www.goodreads.com/book/show/7171095-after")
     (titulo "After"))

    ([Book_871] of Libro
     (autor [Author_627])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "871")
     (nPag 338)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/17156015-beauty-from-pain")
     (titulo "Beauty from Pain"))

    ([Book_872] of Libro
     (autor [Author_890])
     (generos
         [Genres_33]
         [Genres_7])
     (idLibro "872")
     (nPag 197)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/40037485-the-erotic-dark")
     (titulo "The Erotic Dark"))

    ([Book_873] of Libro
     (autor [Author_891])
     (generos
         [Genres_33]
         [Genres_7])
     (idLibro "873")
     (nPag 228)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/23300800-baby-girl")
     (titulo "Baby Girl"))

    ([Book_874] of Libro
     (autor [Author_892])
     (generos
         [Genres_7]
         [Genres_6])
     (idLibro "874")
     (nPag 118)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/17258795-beg")
     (titulo "Beg"))

    ([Book_875] of Libro
     (autor [Author_893])
     (generos
         [Genres_7]
         [Genres_33])
     (idLibro "875")
     (nPag 160)
     (publicacion 2014)
     (url "https://www.goodreads.com/book/show/20755739-named-and-shamed")
     (titulo "Named and Shamed"))

    ([Book_876] of Libro
     (autor [Author_894])
     (generos
         [Genres_33]
         [Genres_7])
     (idLibro "876")
     (nPag 199)
     (publicacion 2011)
     (url "https://www.goodreads.com/book/show/11222793-generational-sins")
     (titulo "Generational Sins"))

    ([Book_877] of Libro
     (autor [Author_405])
     (generos
         [Genres_45]
         [Genres_7])
     (idLibro "877")
     (nPag 296)
     (publicacion 2015)
     (url "https://www.goodreads.com/book/show/25358242-no-mercy")
     (titulo "No Mercy"))

    ([Book_878] of Libro
     (autor [Author_895])
     (generos
         [Genres_0]
         [Genres_15])
     (idLibro "878")
     (nPag 272)
     (publicacion 2001)
     (url "https://www.goodreads.com/book/show/30842.Riot")
     (titulo "Riot"))

    ([Book_879] of Libro
     (autor [Author_533])
     (generos
         [Genres_33]
         [Genres_7])
     (idLibro "879")
     (nPag 410)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/13548075-the-angel")
     (titulo "The Angel"))

    ([Book_880] of Libro
     (autor [Author_408])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "880")
     (nPag 211)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/18211118-hell-s-knights")
     (titulo "Hells Knights"))

    ([Book_881] of Libro
     (autor [Author_6])
     (generos
         [Genres_33]
         [Genres_7])
     (idLibro "881")
     (nPag 365)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/17238419-conviction")
     (titulo "Conviction"))

    ([Book_882] of Libro
     (autor [Author_896])
     (generos
         [Genres_33]
         [Genres_7])
     (idLibro "882")
     (nPag 208)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/17264796-take-me-break-me")
     (titulo "Take Me Break Me"))

    ([Book_883] of Libro
     (autor [Author_897])
     (generos
         [Genres_0]
         [Genres_10])
     (idLibro "883")
     (nPag 195)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/15795312-white-heaven-women")
     (titulo "White Heaven Women"))

    ([Book_884] of Libro
     (autor [Author_867])
     (generos
         [Genres_45]
         [Genres_7])
     (idLibro "884")
     (nPag 322)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/17615896-escape-from-paradise")
     (titulo "Escape from Paradise"))

    ([Book_885] of Libro
     (autor [Author_898])
     (generos
         [Genres_7]
         [Genres_0])
     (idLibro "885")
     (nPag 233)
     (publicacion 1984)
     (url "https://www.goodreads.com/book/show/18750.Beauty_s_Punishment")
     (titulo "Beautys Punishment"))

    ([Book_886] of Libro
     (autor [Author_899])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "886")
     (nPag 306)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/17375956-reaper-s-property")
     (titulo "Reapers Property"))

    ([Book_887] of Libro
     (autor [Author_900])
     (generos
         [Genres_7]
         [Genres_33])
     (idLibro "887")
     (nPag 281)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/30901481-willing-victim")
     (titulo "Willing Victim"))

    ([Book_888] of Libro
     (autor [Author_901])
     (generos
         [Genres_7]
         [Genres_44])
     (idLibro "888")
     (nPag 302)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/25136702-the-suicide-princess")
     (titulo "The Suicide Princess"))

    ([Book_889] of Libro
     (autor [Author_902])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "889")
     (nPag 603)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/20758105-monsters-of-men")
     (titulo "Monsters of Men"))

    ([Book_890] of Libro
     (autor [Author_93])
     (generos
         [Genres_4]
         [Genres_10])
     (idLibro "890")
     (nPag 355)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/7719355-blameless")
     (titulo "Blameless"))

    ([Book_891] of Libro
     (autor [Author_486])
     (generos
         [Genres_3]
         [Genres_12])
     (idLibro "891")
     (nPag 389)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/7091370-the-carrie-diaries")
     (titulo "The Carrie Diaries"))

    ([Book_892] of Libro
     (autor [Author_96])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "892")
     (nPag 447)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/6686092-lies")
     (titulo "Lies"))

    ([Book_893] of Libro
     (autor [Author_784])
     (generos
         [Genres_20]
         [Genres_0])
     (idLibro "893")
     (nPag 152)
     (publicacion 1988)
     (url "https://www.goodreads.com/book/show/6037288")
     (titulo ""))

    ([Book_894] of Libro
     (autor [Author_167])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "894")
     (nPag 362)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/7631105-the-scorch-trials")
     (titulo "The Scorch Trials"))

    ([Book_895] of Libro
     (autor [Author_44])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "895")
     (nPag 256)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/6393972-this-world-we-live-in")
     (titulo "This World We Live In"))

    ([Book_896] of Libro
     (autor [Author_903])
     (generos
         [Genres_0]
         [Genres_15])
     (idLibro "896")
     (nPag 104)
     (publicacion 1969)
     (url "https://www.goodreads.com/book/show/5976135")
     (titulo ""))

    ([Book_897] of Libro
     (autor [Author_904])
     (generos
         [Genres_3]
         [Genres_21])
     (idLibro "897")
     (nPag 292)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/7880584-dark-song")
     (titulo "Dark Song"))

    ([Book_898] of Libro
     (autor [Author_905])
     (generos
         [Genres_20]
         [Genres_0])
     (idLibro "898")
     (nPag 528)
     (publicacion 1999)
     (url "https://www.goodreads.com/book/show/3526951")
     (titulo ""))

    ([Book_899] of Libro
     (autor [Author_906])
     (generos
         [Genres_30]
         [Genres_0])
     (idLibro "899")
     (nPag 158)
     (publicacion 1908)
     (url "https://www.goodreads.com/book/show/9658269")
     (titulo ""))

    ([Book_900] of Libro
     (autor [Author_781])
     (generos
         [Genres_20]
         [Genres_0])
     (idLibro "900")
     (nPag 141)
     (publicacion 1991)
     (url "https://www.goodreads.com/book/show/3110969")
     (titulo ""))

    ([Book_901] of Libro
     (autor [Author_907])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "901")
     (nPag 416)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/6555517-the-dead-tossed-waves")
     (titulo "The Dead-Tossed Waves"))

    ([Book_902] of Libro
     (autor [Author_75])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "902")
     (nPag 369)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/7735333-matched")
     (titulo "Matched"))

    ([Book_903] of Libro
     (autor [Author_787])
     (generos
         [Genres_20]
         [Genres_0])
     (idLibro "903")
     (nPag 402)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/3831279")
     (titulo ""))

    ([Book_904] of Libro
     (autor [Author_786])
     (generos
         [Genres_0]
         [Genres_15])
     (idLibro "904")
     (nPag 176)
     (publicacion 1966)
     (url "https://www.goodreads.com/book/show/669780.Season_of_Migration_to_the_North")
     (titulo "Season of Migration to the North"))

    ([Book_905] of Libro
     (autor [Author_908])
     (generos
         [Genres_0]
         [Genres_20])
     (idLibro "905")
     (nPag 354)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/6642715-the-forty-rules-of-love")
     (titulo "The Forty Rules of Love"))

    ([Book_906] of Libro
     (autor [Author_785])
     (generos
         [Genres_0]
         [Genres_46])
     (idLibro "906")
     (nPag 256)
     (publicacion 2002)
     (url "https://www.goodreads.com/book/show/128711.The_Yacoubian_Building")
     (titulo "The Yacoubian Building"))

    ([Book_907] of Libro
     (autor [Author_909])
     (generos
         [Genres_47]
         [Genres_0])
     (idLibro "907")
     (nPag 216)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/17413424-denali-skies")
     (titulo "Denali Skies"))

    ([Book_908] of Libro
     (autor [Author_910])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "908")
     (nPag 528)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/18149927-beneath-this-man")
     (titulo "Beneath This Man"))

    ([Book_909] of Libro
     (autor [Author_911])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "909")
     (nPag 345)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/16117506-beautiful-stranger")
     (titulo "Beautiful Stranger"))

    ([Book_910] of Libro
     (autor [Author_100])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "910")
     (nPag 526)
     (publicacion 2013)
     (url "https://www.goodreads.com/book/show/18710190-allegiant")
     (titulo "Allegiant"))

    ([Book_911] of Libro
     (autor [Author_79])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "911")
     (nPag 579)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/13536860-fifty-shades-freed")
     (titulo "Fifty Shades Freed"))

    ([Book_912] of Libro
     (autor [Author_78])
     (generos
         [Genres_6]
         [Genres_7])
     (idLibro "912")
     (nPag 338)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/20448515-bared-to-you")
     (titulo "Bared to You"))

    ([Book_913] of Libro
     (autor [Author_912])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "913")
     (nPag 192)
     (publicacion 1927)
     (url "https://www.goodreads.com/book/show/207330.Gay_Neck")
     (titulo "Gay-Neck The Story of a Pigeon"))

    ([Book_914] of Libro
     (autor [Author_913])
     (generos
         [Genres_22]
         [Genres_21])
     (idLibro "914")
     (nPag 320)
     (publicacion 2017)
     (url "https://www.goodreads.com/book/show/30653713-hello-universe")
     (titulo "Hello Universe"))

    ([Book_915] of Libro
     (autor [Author_914])
     (generos
         [Genres_0]
         [Genres_3])
     (idLibro "915")
     (nPag 248)
     (publicacion 1959)
     (url "https://www.goodreads.com/book/show/556975.Onion_John")
     (titulo "Onion John"))

    ([Book_916] of Libro
     (autor [Author_915])
     (generos
         [Genres_3]
         [Genres_21])
     (idLibro "916")
     (nPag 337)
     (publicacion 2005)
     (url "https://www.goodreads.com/book/show/43475.Criss_Cross")
     (titulo "Criss Cross"))

    ([Book_917] of Libro
     (autor [Author_916])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "917")
     (nPag 181)
     (publicacion 1950)
     (url "https://www.goodreads.com/book/show/254262.Amos_Fortune_Free_Man")
     (titulo "Amos Fortune Free Man"))

    ([Book_918] of Libro
     (autor [Author_917])
     (generos
         [Genres_22]
         [Genres_0])
     (idLibro "918")
     (nPag 146)
     (publicacion 1938)
     (url "https://www.goodreads.com/book/show/854764.Thimble_Summer")
     (titulo "Thimble Summer"))

    ([Book_919] of Libro
     (autor [Author_918])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "919")
     (nPag 302)
     (publicacion 1932)
     (url "https://www.goodreads.com/book/show/1195367.Young_Fu_of_the_Upper_Yangtze")
     (titulo "Young Fu of the Upper Yangtze"))

    ([Book_920] of Libro
     (autor [Author_919])
     (generos
         [Genres_0]
         [Genres_3])
     (idLibro "920")
     (nPag 176)
     (publicacion 1963)
     (url "https://www.goodreads.com/book/show/818095.It_s_Like_This_Cat")
     (titulo "Its Like This Cat"))

    ([Book_921] of Libro
     (autor [Author_920])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "921")
     (nPag 160)
     (publicacion 1964)
     (url "https://www.goodreads.com/book/show/1077808.Shadow_of_a_Bull")
     (titulo "Shadow of a Bull"))

    ([Book_922] of Libro
     (autor [Author_921])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "922")
     (nPag 96)
     (publicacion 1937)
     (url "https://www.goodreads.com/book/show/298523.The_White_Stag")
     (titulo "The White Stag"))

    ([Book_923] of Libro
     (autor [Author_70])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "923")
     (nPag 417)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/493456.Extras")
     (titulo "Extras"))

    ([Book_924] of Libro
     (autor [Author_256])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "924")
     (nPag 122)
     (publicacion 1945)
     (url "https://www.goodreads.com/book/show/170448.Animal_Farm")
     (titulo "Animal Farm"))

    ([Book_925] of Libro
     (autor [Author_922])
     (generos
         [Genres_0]
         [Genres_22])
     (idLibro "925")
     (nPag 63)
     (publicacion 1930)
     (url "https://www.goodreads.com/book/show/200362.The_Cat_Who_Went_to_Heaven")
     (titulo "The Cat Who Went to Heaven"))

    ([Book_926] of Libro
     (autor [Author_23])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "926")
     (nPag 175)
     (publicacion 1953)
     (url "https://www.goodreads.com/book/show/13079982-fahrenheit-451")
     (titulo "Fahrenheit 451"))

    ([Book_927] of Libro
     (autor [Author_923])
     (generos
         [Genres_0]
         [Genres_22])
     (idLibro "927")
     (nPag 256)
     (publicacion 1956)
     (url "https://www.goodreads.com/book/show/826095.Miracles_on_Maple_Hill")
     (titulo "Miracles on Maple Hill"))

    ([Book_928] of Libro
     (autor [Author_925])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "928")
     (nPag 320)
     (publicacion 1942)
     (url "https://www.goodreads.com/book/show/164255.Adam_of_the_Road")
     (titulo "Adam of the Road"))

    ([Book_929] of Libro
     (autor [Author_926])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "929")
     (nPag 208)
     (publicacion 1928)
     (url "https://www.goodreads.com/book/show/825546.The_Trumpeter_of_Krakow")
     (titulo "The Trumpeter of Krakow"))

    ([Book_930] of Libro
     (autor [Author_441])
     (generos
         [Genres_0]
         [Genres_22])
     (idLibro "930")
     (nPag 182)
     (publicacion 2000)
     (url "https://www.goodreads.com/book/show/357664.Because_of_Winn_Dixie")
     (titulo "Because of Winn-Dixie"))

    ([Book_931] of Libro
     (autor [Author_157])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "931")
     (nPag 331)
     (publicacion 1911)
     (url "https://www.goodreads.com/book/show/2998.The_Secret_Garden")
     (titulo "The Secret Garden"))

    ([Book_932] of Libro
     (autor [Author_341])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "932")
     (nPag 1040)
     (publicacion 2006)
     (url "https://www.goodreads.com/book/show/5451.Sisterhood_of_the_Traveling_Pants_Second_Summer_of_the_Sisterhood_Girls_in_Pants")
     (titulo "Sisterhood of the Traveling Pants  Second Summer of the Sisterhood  Girls in Pants"))

    ([Book_933] of Libro
     (autor [Author_927])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "933")
     (nPag 144)
     (publicacion 1970)
     (url "https://www.goodreads.com/book/show/325636.The_Summer_of_the_Swans")
     (titulo "The Summer of the Swans"))

    ([Book_934] of Libro
     (autor [Author_928])
     (generos
         [Genres_3]
         [Genres_21])
     (idLibro "934")
     (nPag 89)
     (publicacion 1992)
     (url "https://www.goodreads.com/book/show/403722.Missing_May")
     (titulo "Missing May Scholastic Gold"))

    ([Book_935] of Libro
     (autor [Author_929])
     (generos
         [Genres_22]
         [Genres_0])
     (idLibro "935")
     (nPag 127)
     (publicacion 1944)
     (url "https://www.goodreads.com/book/show/333735.Rabbit_Hill")
     (titulo "Rabbit Hill"))

    ([Book_936] of Libro
     (autor [Author_344])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "936")
     (nPag 720)
     (publicacion 2004)
     (url "https://www.goodreads.com/book/show/227652.Shadow_Children_Boxed_Set_")
     (titulo "Shadow Children Boxed Set Among the Hidden Among the Impostors Among the Betrayed Among the Barons"))

    ([Book_937] of Libro
     (autor [Author_930])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "937")
     (nPag 192)
     (publicacion 1965)
     (url "https://www.goodreads.com/book/show/847581.I_Juan_de_Pareja")
     (titulo "I Juan de Pareja"))

    ([Book_938] of Libro
     (autor [Author_931])
     (generos
         [Genres_0]
         [Genres_22])
     (idLibro "938")
     (nPag 262)
     (publicacion 2005)
     (url "https://www.goodreads.com/book/show/266904.The_Penderwicks")
     (titulo "The Penderwicks A Summer Tale of Four Sisters Two Rabbits and a Very Interesting Boy"))

    ([Book_939] of Libro
     (autor [Author_932])
     (generos
         [Genres_3]
         [Genres_21])
     (idLibro "939")
     (nPag 312)
     (publicacion 1997)
     (url "https://www.goodreads.com/book/show/89755.Tangerine")
     (titulo "Tangerine"))

    ([Book_940] of Libro
     (autor [Author_131])
     (generos
         [Genres_14]
         [Genres_0])
     (idLibro "940")
     (nPag 218)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/3293821-the-last-straw")
     (titulo "The Last Straw"))

    ([Book_941] of Libro
     (autor [Author_933])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "941")
     (nPag 256)
     (publicacion 1929)
     (url "https://www.goodreads.com/book/show/41457.Hitty_Her_First_Hundred_Years")
     (titulo "Hitty Her First Hundred Years"))

    ([Book_942] of Libro
     (autor [Author_934])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "942")
     (nPag 169)
     (publicacion 2004)
     (url "https://www.goodreads.com/book/show/12930.Messenger")
     (titulo "Messenger"))

    ([Book_943] of Libro
     (autor [Author_935])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "943")
     (nPag 128)
     (publicacion 1940)
     (url "https://www.goodreads.com/book/show/857528.Call_It_Courage")
     (titulo "Call It Courage"))

    ([Book_944] of Libro
     (autor [Author_936])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "944")
     (nPag 197)
     (publicacion 1966)
     (url "https://www.goodreads.com/book/show/65954.Up_a_Road_Slowly")
     (titulo "Up a Road Slowly"))

    ([Book_945] of Libro
     (autor [Author_937])
     (generos
         [Genres_0]
         [Genres_22])
     (idLibro "945")
     (nPag 298)
     (publicacion 1954)
     (url "https://www.goodreads.com/book/show/468116.The_Wheel_on_the_School")
     (titulo "The Wheel on the School"))

    ([Book_946] of Libro
     (autor [Author_938])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "946")
     (nPag 120)
     (publicacion 1949)
     (url "https://www.goodreads.com/book/show/72543.The_Door_in_the_Wall")
     (titulo "The Door in the Wall"))

    ([Book_947] of Libro
     (autor [Author_939])
     (generos
         [Genres_3]
         [Genres_21])
     (idLibro "947")
     (nPag 169)
     (publicacion 1993)
     (url "https://www.goodreads.com/book/show/8953.Freak_the_Mighty")
     (titulo "Freak the Mighty"))

    ([Book_948] of Libro
     (autor [Author_940])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "948")
     (nPag 251)
     (publicacion 1955)
     (url "https://www.goodreads.com/book/show/128048.Carry_On_Mr_Bowditch")
     (titulo "Carry On Mr Bowditch"))

    ([Book_949] of Libro
     (autor [Author_430])
     (generos
         [Genres_0]
         [Genres_13])
     (idLibro "949")
     (nPag 128)
     (publicacion 1969)
     (url "https://www.goodreads.com/book/show/598117.Sounder")
     (titulo "Sounder"))

    ([Book_950] of Libro
     (autor [Author_941])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "950")
     (nPag 359)
     (publicacion 1982)
     (url "https://www.goodreads.com/book/show/11831.Dicey_s_Song")
     (titulo "Diceys Song"))

    ([Book_951] of Libro
     (autor [Author_432])
     (generos
         [Genres_19]
         [Genres_0])
     (idLibro "951")
     (nPag 176)
     (publicacion 1948)
     (url "https://www.goodreads.com/book/show/423156.King_of_the_Wind")
     (titulo "King of the Wind The Story of the Godolphin Arabian"))

    ([Book_952] of Libro
     (autor [Author_168])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "952")
     (nPag 710)
     (publicacion 1963)
     (url "https://www.goodreads.com/book/show/11841.The_Time_Trilogy")
     (titulo "The Time Trilogy"))

    ([Book_953] of Libro
     (autor [Author_339])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "953")
     (nPag 230)
     (publicacion 2007)
     (url "https://www.goodreads.com/book/show/693208.The_Absolutely_True_Diary_of_a_Part_Time_Indian")
     (titulo "The Absolutely True Diary of a Part-Time Indian"))

    ([Book_954] of Libro
     (autor [Author_942])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "954")
     (nPag 96)
     (publicacion 1986)
     (url "https://www.goodreads.com/book/show/11824.The_Whipping_Boy")
     (titulo "The Whipping Boy"))

    ([Book_955] of Libro
     (autor [Author_355])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "955")
     (nPag 149)
     (publicacion 1970)
     (url "https://www.goodreads.com/book/show/37732.Are_You_There_God_It_s_Me_Margaret")
     (titulo "Are You There God Its Me Margaret"))

    ([Book_956] of Libro
     (autor [Author_943])
     (generos
         [Genres_0]
         [Genres_22])
     (idLibro "956")
     (nPag 180)
     (publicacion 1947)
     (url "https://www.goodreads.com/book/show/837501.The_Twenty_One_Balloons")
     (titulo "The Twenty-One Balloons"))

    ([Book_957] of Libro
     (autor [Author_944])
     (generos
         [Genres_22]
         [Genres_0])
     (idLibro "957")
     (nPag 307)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/11594337-the-one-and-only-ivan")
     (titulo "The One and Only Ivan"))

    ([Book_958] of Libro
     (autor [Author_241])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "958")
     (nPag 478)
     (publicacion 1972)
     (url "https://www.goodreads.com/book/show/76620.Watership_Down")
     (titulo "Watership Down"))

    ([Book_959] of Libro
     (autor [Author_2])
     (generos
         [Genres_3]
         [Genres_4])
     (idLibro "959")
     (nPag 392)
     (publicacion 2010)
     (url "https://www.goodreads.com/book/show/7260188-mockingjay")
     (titulo "Mockingjay"))

    ([Book_960] of Libro
     (autor [Author_439])
     (generos
         [Genres_0]
         [Genres_22])
     (idLibro "960")
     (nPag 145)
     (publicacion 1991)
     (url "https://www.goodreads.com/book/show/207153.Shiloh")
     (titulo "Shiloh"))

    ([Book_961] of Libro
     (autor [Author_386])
     (generos
         [Genres_22]
         [Genres_0])
     (idLibro "961")
     (nPag 134)
     (publicacion 1983)
     (url "https://www.goodreads.com/book/show/105999.Dear_Mr_Henshaw")
     (titulo "Dear Mr Henshaw"))

    ([Book_962] of Libro
     (autor [Author_425])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "962")
     (nPag 176)
     (publicacion 1972)
     (url "https://www.goodreads.com/book/show/386286.Julie_of_the_Wolves")
     (titulo "Julie of the Wolves"))

    ([Book_963] of Libro
     (autor [Author_63])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "963")
     (nPag 192)
     (publicacion 1990)
     (url "https://www.goodreads.com/book/show/139463.Maniac_Magee")
     (titulo "Maniac Magee"))

    ([Book_964] of Libro
     (autor [Author_55])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "964")
     (nPag 449)
     (publicacion 1868)
     (url "https://www.goodreads.com/book/show/1934.Little_Women")
     (titulo "Little Women"))

    ([Book_965] of Libro
     (autor [Author_166])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "965")
     (nPag 244)
     (publicacion 1980)
     (url "https://www.goodreads.com/book/show/337058.Jacob_Have_I_Loved")
     (titulo "Jacob Have I Loved"))

    ([Book_966] of Libro
     (autor [Author_945])
     (generos
         [Genres_13]
         [Genres_0])
     (idLibro "966")
     (nPag 322)
     (publicacion 1943)
     (url "https://www.goodreads.com/book/show/816870.Johnny_Tremain")
     (titulo "Johnny Tremain"))

    ([Book_967] of Libro
     (autor [Author_340])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "967")
     (nPag 176)
     (publicacion 1996)
     (url "https://www.goodreads.com/book/show/4538.The_View_from_Saturday")
     (titulo "The View from Saturday"))

    ([Book_968] of Libro
     (autor [Author_159])
     (generos
         [Genres_0]
         [Genres_3])
     (idLibro "968")
     (nPag 176)
     (publicacion 1999)
     (url "https://www.goodreads.com/book/show/78411.The_Bad_Beginning")
     (titulo "The Bad Beginning"))

    ([Book_969] of Libro
     (autor [Author_820])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "969")
     (nPag 199)
     (publicacion 2009)
     (url "https://www.goodreads.com/book/show/5310515-when-you-reach-me")
     (titulo "When You Reach Me"))

    ([Book_970] of Libro
     (autor [Author_234])
     (generos
         [Genres_4]
         [Genres_0])
     (idLibro "970")
     (nPag 324)
     (publicacion 1985)
     (url "https://www.goodreads.com/book/show/375802.Ender_s_Game")
     (titulo "Enders Game"))

    ([Book_971] of Libro
     (autor [Author_165])
     (generos
         [Genres_10]
         [Genres_0])
     (idLibro "971")
     (nPag 398)
     (publicacion 1973)
     (url "https://www.goodreads.com/book/show/21787.The_Princess_Bride")
     (titulo "The Princess Bride"))

    ([Book_972] of Libro
     (autor [Author_218])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "972")
     (nPag 280)
     (publicacion 1994)
     (url "https://www.goodreads.com/book/show/53496.Walk_Two_Moons")
     (titulo "Walk Two Moons"))

    ([Book_973] of Libro
     (autor [Author_444])
     (generos
         [Genres_5]
         [Genres_0])
     (idLibro "973")
     (nPag 272)
     (publicacion 1961)
     (url "https://www.goodreads.com/book/show/10365.Where_the_Red_Fern_Grows")
     (titulo "Where the Red Fern Grows"))

    ([Book_974] of Libro
     (autor [Author_561])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "974")
     (nPag 315)
     (publicacion 2012)
     (url "https://www.goodreads.com/book/show/11387515-wonder")
     (titulo "Wonder"))

    ([Book_975] of Libro
     (autor [Author_415])
     (generos
         [Genres_3]
         [Genres_0])
     (idLibro "975")
     (nPag 208)
     (publicacion 1986)
     (url "https://www.goodreads.com/book/show/50.Hatchet")
     (titulo "Hatchet"))

    ([Author_0] of Autor
     (idAutor "0")
     (nombreAutor "Stieg Larsson")
     (autoresSimilares
         [Author716])
     (sexo male))

    ([Author_1] of Autor
     (idAutor "1")
     (nombreAutor "Jos Donoso")
     (autoresSimilares
         [Author_422]
         [Author_786]
         [Author_255]
         [Author_218]
         [Author_744]
         [Author_727]
         [Author44])
     (sexo male))

    ([Author_2] of Autor
     (idAutor "2")
     (nombreAutor "Suzanne Collins")
     (autoresSimilares
         [Author_445]
         [Author_596]
         [Author_253]
         [Author_929]
         [Author_697]
         [Author_897]
         [Author_758]
         [Author_909]
         [Author_520]
         [Author_378]
         [Author_222]
         [Author_631]
         [Author_114]
         [Author_853]
         [Author_840]
         [Author471])
     (sexo female))

    ([Author_3] of Autor
     (idAutor "3")
     (nombreAutor "Aldous Huxley")
     (autoresSimilares
         [Author_897]
         [Author_701]
         [Author_642]
         [Author_627]
         [Author_681]
         [Author303])
     (sexo male))

    ([Author_4] of Autor
     (idAutor "4")
     (nombreAutor "Ais")
     (autoresSimilares
         [Author_731]
         [Author_593]
         [Author_250]
         [Author_9]
         [Author_922]
         [Author_825]
         [Author812])
     (sexo male))

    ([Author_5] of Autor
     (idAutor "5")
     (nombreAutor "Jordan Castillo Price")
     (autoresSimilares
         [Author_874]
         [Author_815]
         [Author_447]
         [Author_642]
         [Author_410]
         [Author_242]
         [Author_314]
         [Author_916]
         [Author272])
     (sexo female))

    ([Author_6] of Autor
     (idAutor "6")
     (nombreAutor "Nicole Edwards")
     (autoresSimilares
         [Author_9]
         [Author_215]
         [Author_799]
         [Author_205]
         [Author_646]
         [Author_77]
         [Author_755]
         [Author_669]
         [Author_490]
         [Author_733]
         [Author_72]
         [Author_51]
         [Author_436]
         [Author_819]
         [Author_114]
         [Author_71]
         [Author_650]
         [Author_626]
         [Author751])
     (sexo female))

    ([Author_7] of Autor
     (idAutor "7")
     (nombreAutor "Maria V Snyder")
     (autoresSimilares
         [Author_861]
         [Author_266]
         [Author_814]
         [Author_821]
         [Author_165]
         [Author_78]
         [Author_590]
         [Author_177]
         [Author_652]
         [Author_845]
         [Author_637]
         [Author_93]
         [Author382])
     (sexo female))

    ([Author_8] of Autor
     (idAutor "8")
     (nombreAutor "Sheri S Tepper")
     (autoresSimilares
         [Author_32]
         [Author_479]
         [Author_604]
         [Author_418]
         [Author_303]
         [Author_110]
         [Author_690]
         [Author309])
     (sexo female))

    ([Author_9] of Autor
     (idAutor "9")
     (nombreAutor "Robert A Heinlein")
     (autoresSimilares
         [Author_860]
         [Author_718]
         [Author_135]
         [Author_244]
         [Author466])
     (sexo male))

    ([Author_10] of Autor
     (idAutor "10")
     (nombreAutor "Paolo Bacigalupi")
     (autoresSimilares
         [Author_436]
         [Author_377]
         [Author_584]
         [Author_366]
         [Author_754]
         [Author_457]
         [Author_531]
         [Author_689]
         [Author_830]
         [Author_706]
         [Author_447]
         [Author532])
     (sexo male))

    ([Author_11] of Autor
     (idAutor "11")
     (nombreAutor "William F Nolan")
     (autoresSimilares
         [Author_378]
         [Author420])
     (sexo male))

    ([Author_12] of Autor
     (idAutor "12")
     (nombreAutor "Kurt Vonnegut")
     (autoresSimilares
         [Author_152]
         [Author_740]
         [Author_408]
         [Author_920]
         [Author_86]
         [Author_453]
         [Author_422]
         [Author_445]
         [Author176])
     (sexo male))

    ([Author_13] of Autor
     (idAutor "13")
     (nombreAutor "Larry Niven")
     (autoresSimilares
         [Author_909]
         [Author_118]
         [Author_461]
         [Author_510]
         [Author_304]
         [Author_405]
         [Author_767]
         [Author_828]
         [Author724])
     (sexo male))

    ([Author_14] of Autor
     (idAutor "14")
     (nombreAutor "George R Stewart")
     (autoresSimilares
         [Author_272]
         [Author_772]
         [Author_262]
         [Author_581]
         [Author_241]
         [Author_11]
         [Author_465]
         [Author562])
     (sexo male))

    ([Author_15] of Autor
     (idAutor "15")
     (nombreAutor "Pierre Boulle")
     (autoresSimilares
         [Author_762]
         [Author_742]
         [Author_709]
         [Author_1]
         [Author712])
     (sexo male))

    ([Author_16] of Autor
     (idAutor "16")
     (nombreAutor "Stephen King")
     (autoresSimilares
         [Author_274]
         [Author_626]
         [Author_35]
         [Author_905]
         [Author_177]
         [Author215])
     (sexo male))

    ([Author_17] of Autor
     (idAutor "17")
     (nombreAutor "Philip K Dick")
     (autoresSimilares
         [Author_152]
         [Author_555]
         [Author_87]
         [Author_891]
         [Author_86]
         [Author_656]
         [Author_184]
         [Author_842]
         [Author_443]
         [Author_715]
         [Author_516]
         [Author832])
     (sexo male))

    ([Author_18] of Autor
     (idAutor "18")
     (nombreAutor "Jasper Fforde")
     (autoresSimilares
         [Author_76]
         [Author_855]
         [Author_582]
         [Author_247]
         [Author_762]
         [Author_870]
         [Author_165]
         [Author_496]
         [Author_641]
         [Author725])
     (sexo male))

    ([Author_19] of Autor
     (idAutor "19")
     (nombreAutor "Neal Stephenson")
     (autoresSimilares
         [Author_420]
         [Author_453]
         [Author_575]
         [Author_370]
         [Author_593]
         [Author_700]
         [Author_83]
         [Author_615]
         [Author_675]
         [Author64])
     (sexo male))

    ([Author_20] of Autor
     (idAutor "20")
     (nombreAutor "Alexandra Bracken")
     (autoresSimilares
         [Author_195]
         [Author_796]
         [Author_378]
         [Author563])
     (sexo male))

    ([Author_21] of Autor
     (idAutor "21")
     (nombreAutor "Pierce Brown")
     (autoresSimilares
         [Author_456]
         [Author_350]
         [Author_757]
         [Author_754]
         [Author_478]
         [Author_12]
         [Author_56]
         [Author_339]
         [Author_739]
         [Author_714]
         [Author356])
     (sexo male))

    ([Author_22] of Autor
     (idAutor "22")
     (nombreAutor "Richard Bachman")
     (autoresSimilares
         [Author_917]
         [Author_192]
         [Author_399]
         [Author_740]
         [Author_305]
         [Author_160]
         [Author_920]
         [Author_368]
         [Author_905]
         [Author_207]
         [Author_762]
         [Author_727]
         [Author_350]
         [Author_665]
         [Author_680]
         [Author_778]
         [Author_630]
         [Author_788]
         [Author457])
     (sexo male))

    ([Author_23] of Autor
     (idAutor "23")
     (nombreAutor "Ray Bradbury")
     (autoresSimilares
         [Author_2]
         [Author_742]
         [Author_64]
         [Author_786]
         [Author_751]
         [Author_478]
         [Author_710]
         [Author_345]
         [Author_227]
         [Author27])
     (sexo male))

    ([Author_24] of Autor
     (idAutor "24")
     (nombreAutor "Joe Haldeman")
     (autoresSimilares
         [Author_701]
         [Author_478]
         [Author_467]
         [Author_142]
         [Author_257]
         [Author_503]
         [Author_264]
         [Author_143]
         [Author_817]
         [Author800])
     (sexo male))

    ([Author_25] of Autor
     (idAutor "25")
     (nombreAutor "Robert R McCammon")
     (autoresSimilares
         [Author471])
     (sexo male))

    ([Author_26] of Autor
     (idAutor "26")
     (nombreAutor "Nevil Shute")
     (autoresSimilares
         [Author_675]
         [Author_499]
         [Author870])
     (sexo male))

    ([Author_27] of Autor
     (idAutor "27")
     (nombreAutor "David Brin")
     (autoresSimilares
         [Author_29]
         [Author_620]
         [Author_685]
         [Author_858]
         [Author_207]
         [Author_944]
         [Author_668]
         [Author_429]
         [Author_228]
         [Author_933]
         [Author_338]
         [Author_833]
         [Author_183]
         [Author_726]
         [Author97])
     (sexo male))

    ([Author_28] of Autor
     (idAutor "28")
     (nombreAutor "Emily St John Mandel")
     (autoresSimilares
         [Author_131]
         [Author_924]
         [Author_3]
         [Author_10]
         [Author_587]
         [Author_860]
         [Author_138]
         [Author316])
     (sexo female))

    ([Author_29] of Autor
     (idAutor "29")
     (nombreAutor "Pat Frank")
     (autoresSimilares
         [Author_287]
         [Author_302]
         [Author_926]
         [Author_488]
         [Author_138]
         [Author_116]
         [Author_610]
         [Author_127]
         [Author_548]
         [Author_814]
         [Author447])
     (sexo male))

    ([Author_30] of Autor
     (idAutor "30")
     (nombreAutor "John Wyndham")
     (autoresSimilares
         [Author_893]
         [Author_374]
         [Author_632]
         [Author_388]
         [Author_79]
         [Author_110]
         [Author_283]
         [Author_867]
         [Author_569]
         [Author305])
     (sexo male))

    ([Author_31] of Autor
     (idAutor "31")
     (nombreAutor "Ann Aguirre")
     (autoresSimilares
         [Author_294]
         [Author_851]
         [Author_750]
         [Author_593]
         [Author_369]
         [Author_152]
         [Author_643]
         [Author98])
     (sexo female))

    ([Author_32] of Autor
     (idAutor "32")
     (nombreAutor "Octavia E Butler")
     (autoresSimilares
         [Author_329]
         [Author_303]
         [Author_333]
         [Author_152]
         [Author_925]
         [Author_112]
         [Author_154]
         [Author_739]
         [Author_808]
         [Author_525]
         [Author_768]
         [Author_90]
         [Author_539]
         [Author_395]
         [Author_261]
         [Author_696]
         [Author_145]
         [Author426])
     (sexo female))

    ([Author_33] of Autor
     (idAutor "33")
     (nombreAutor "MT Anderson")
     (autoresSimilares
         [Author_454]
         [Author_31]
         [Author_65]
         [Author_313]
         [Author_939]
         [Author_866]
         [Author_367]
         [Author_605]
         [Author435])
     (sexo male))

    ([Author_34] of Autor
     (idAutor "34")
     (nombreAutor "Ursula K Le Guin")
     (autoresSimilares
         [Author_40]
         [Author213])
     (sexo female))

    ([Author_35] of Autor
     (idAutor "35")
     (nombreAutor "Franz Kafka")
     (autoresSimilares
         [Author_791]
         [Author_469]
         [Author_685]
         [Author_583]
         [Author_416]
         [Author_621]
         [Author_736]
         [Author_299]
         [Author_515]
         [Author_614]
         [Author19])
     (sexo male))

    ([Author_36] of Autor
     (idAutor "36")
     (nombreAutor "Beth Revis")
     (autoresSimilares
         [Author386])
     (sexo female))

    ([Author_37] of Autor
     (idAutor "37")
     (nombreAutor "Nancy Farmer")
     (autoresSimilares
         [Author_848]
         [Author_302]
         [Author_858]
         [Author373])
     (sexo female))

    ([Author_38] of Autor
     (idAutor "38")
     (nombreAutor "Ayn Rand")
     (autoresSimilares
         [Author_16]
         [Author_789]
         [Author_18]
         [Author_781]
         [Author_924]
         [Author_15]
         [Author_376]
         [Author_560]
         [Author_571]
         [Author_489]
         [Author506])
     (sexo female))

    ([Author_39] of Autor
     (idAutor "39")
     (nombreAutor "PD James")
     (autoresSimilares
         [Author_186]
         [Author_44]
         [Author455])
     (sexo female))

    ([Author_40] of Autor
     (idAutor "40")
     (nombreAutor "William Gibson")
     (autoresSimilares
         [Author_86]
         [Author_655]
         [Author_424]
         [Author_704]
         [Author_602]
         [Author_35]
         [Author_36]
         [Author913])
     (sexo male))

    ([Author_41] of Autor
     (idAutor "41")
     (nombreAutor "Walter M Miller Jr")
     (autoresSimilares
         [Author_692]
         [Author_917]
         [Author_847]
         [Author_839]
         [Author223])
     (sexo male))

    ([Author_42] of Autor
     (idAutor "42")
     (nombreAutor "Jos Saramago")
     (autoresSimilares
         [Author_749]
         [Author_366]
         [Author_747]
         [Author_895]
         [Author_687]
         [Author_849]
         [Author_861]
         [Author_133]
         [Author_907]
         [Author_400]
         [Author_398]
         [Author576])
     (sexo male))

    ([Author_43] of Autor
     (idAutor "43")
     (nombreAutor "Yevgeny Zamyatin")
     (autoresSimilares
         [Author_496]
         [Author_611]
         [Author_680]
         [Author_909]
         [Author_568]
         [Author_546]
         [Author_925]
         [Author_204]
         [Author_688]
         [Author_608]
         [Author_903]
         [Author_291]
         [Author_585]
         [Author_304]
         [Author_319]
         [Author_476]
         [Author_109]
         [Author_721]
         [Author805])
     (sexo male))

    ([Author_44] of Autor
     (idAutor "44")
     (nombreAutor "Susan Beth Pfeffer")
     (autoresSimilares
         [Author_208]
         [Author_563]
         [Author_461]
         [Author_644]
         [Author_108]
         [Author_779]
         [Author_372]
         [Author_422]
         [Author_359]
         [Author_417]
         [Author_19]
         [Author_65]
         [Author796])
     (sexo female))

    ([Author_45] of Autor
     (idAutor "45")
     (nombreAutor "Koushun Takami")
     (autoresSimilares
         [Author_509]
         [Author_311]
         [Author_213]
         [Author_256]
         [Author_89]
         [Author_111]
         [Author_475]
         [Author_875]
         [Author_870]
         [Author_149]
         [Author_576]
         [Author_581]
         [Author_605]
         [Author_54]
         [Author_752]
         [Author557])
     (sexo male))

    ([Author_46] of Autor
     (idAutor "46")
     (nombreAutor "HG Wells")
     (autoresSimilares
         [Author_102]
         [Author_339]
         [Author_150]
         [Author_745]
         [Author_168]
         [Author_845]
         [Author_826]
         [Author_555]
         [Author_751]
         [Author689])
     (sexo male))

    ([Author_47] of Autor
     (idAutor "47")
     (nombreAutor "Hugh Howey")
     (autoresSimilares
         [Author_187]
         [Author_349]
         [Author_753]
         [Author_759]
         [Author_853]
         [Author_266]
         [Author_17]
         [Author_14]
         [Author_115]
         [Author_889]
         [Author_553]
         [Author_583]
         [Author_90]
         [Author511])
     (sexo male))

    ([Author_48] of Autor
     (idAutor "48")
     (nombreAutor "Max Brooks")
     (autoresSimilares
         [Author_915]
         [Author_714]
         [Author_643]
         [Author_146]
         [Author_102]
         [Author_24]
         [Author_339]
         [Author_892]
         [Author_937]
         [Author_378]
         [Author_463]
         [Author_473]
         [Author_76]
         [Author_100]
         [Author_865]
         [Author626])
     (sexo male))

    ([Author_49] of Autor
     (idAutor "49")
     (nombreAutor "Margaret Atwood")
     (autoresSimilares
         [Author_545]
         [Author_499]
         [Author_630]
         [Author_760]
         [Author_178]
         [Author_322]
         [Author_187]
         [Author_483]
         [Author_631]
         [Author_731]
         [Author127])
     (sexo female))

    ([Author_50] of Autor
     (idAutor "50")
     (nombreAutor "Kazuo Ishiguro")
     (autoresSimilares
         [Author448])
     (sexo male))

    ([Author_51] of Autor
     (idAutor "51")
     (nombreAutor "Daphne du Maurier")
     (autoresSimilares
         [Author_717]
         [Author_855]
         [Author_114]
         [Author_283]
         [Author_309]
         [Author_543]
         [Author_343]
         [Author_229]
         [Author_447]
         [Author_751]
         [Author_11]
         [Author_626]
         [Author_645]
         [Author_254]
         [Author_756]
         [Author_393]
         [Author_10]
         [Author_809]
         [Author_148]
         [Author560])
     (sexo female))

    ([Author_52] of Autor
     (idAutor "52")
     (nombreAutor "Janet Evanovich")
     (autoresSimilares
         [Author_667]
         [Author_68]
         [Author_452]
         [Author_30]
         [Author_291]
         [Author_208]
         [Author_845]
         [Author_450]
         [Author_212]
         [Author_909]
         [Author314])
     (sexo male))

    ([Author_53] of Autor
     (idAutor "53")
     (nombreAutor "Jodi Picoult")
     (autoresSimilares
         [Author_925]
         [Author_779]
         [Author_646]
         [Author_695]
         [Author_425]
         [Author_819]
         [Author_123]
         [Author_455]
         [Author_495]
         [Author_386]
         [Author_944]
         [Author_681]
         [Author_428]
         [Author_180]
         [Author_723]
         [Author_653]
         [Author_915]
         [Author_307]
         [Author_907]
         [Author557])
     (sexo female))

    ([Author_54] of Autor
     (idAutor "54")
     (nombreAutor "Kate Jacobs")
     (autoresSimilares
         [Author_235]
         [Author_504]
         [Author_683]
         [Author_529]
         [Author_474]
         [Author_405]
         [Author_393]
         [Author_713]
         [Author_434]
         [Author_697]
         [Author_638]
         [Author_45]
         [Author551])
     (sexo female))

    ([Author_55] of Autor
     (idAutor "55")
     (nombreAutor "Louisa May Alcott")
     (autoresSimilares
         [Author_599]
         [Author_518]
         [Author_928]
         [Author_712]
         [Author_840]
         [Author_208]
         [Author_866]
         [Author_182]
         [Author_582]
         [Author_343]
         [Author_672]
         [Author_537]
         [Author_554]
         [Author_88]
         [Author_727]
         [Author_172]
         [Author_633]
         [Author_489]
         [Author235])
     (sexo female))

    ([Author_56] of Autor
     (idAutor "56")
     (nombreAutor "Tatiana de Rosnay")
     (autoresSimilares
         [Author_744]
         [Author_894]
         [Author_613]
         [Author_345]
         [Author_683]
         [Author_862]
         [Author_309]
         [Author_557]
         [Author_754]
         [Author_825]
         [Author532])
     (sexo female))

    ([Author_57] of Autor
     (idAutor "57")
     (nombreAutor "Betty  Smith")
     (autoresSimilares
         [Author_241]
         [Author_622]
         [Author_889]
         [Author_276]
         [Author_491]
         [Author_778]
         [Author_698]
         [Author_916]
         [Author_50]
         [Author_329]
         [Author_335]
         [Author_501]
         [Author_837]
         [Author_531]
         [Author706])
     (sexo female))

    ([Author_58] of Autor
     (idAutor "58")
     (nombreAutor "Sylvia Plath")
     (autoresSimilares
         [Author_381]
         [Author_796]
         [Author_652]
         [Author835])
     (sexo female))

    ([Author_59] of Autor
     (idAutor "59")
     (nombreAutor "Douglas Adams")
     (autoresSimilares
         [Author_719]
         [Author_573]
         [Author_875]
         [Author_148]
         [Author_384]
         [Author_813]
         [Author_497]
         [Author_800]
         [Author_890]
         [Author_872]
         [Author_515]
         [Author_192]
         [Author_550]
         [Author425])
     (sexo male))

    ([Author_60] of Autor
     (idAutor "60")
     (nombreAutor "Amy Tan")
     (autoresSimilares
         [Author_459]
         [Author_372]
         [Author202])
     (sexo female))

    ([Author_61] of Autor
     (idAutor "61")
     (nombreAutor "Bernhard Schlink")
     (autoresSimilares
         [Author_114]
         [Author_802]
         [Author_249]
         [Author_127]
         [Author_530]
         [Author_478]
         [Author_421]
         [Author_928]
         [Author_607]
         [Author_758]
         [Author_0]
         [Author_143]
         [Author_845]
         [Author_671]
         [Author191])
     (sexo male))

    ([Author_62] of Autor
     (idAutor "62")
     (nombreAutor "Cormac McCarthy")
     (autoresSimilares
         [Author_114]
         [Author_533]
         [Author_323]
         [Author_228]
         [Author_285]
         [Author_140]
         [Author_128]
         [Author_778]
         [Author_847]
         [Author_912]
         [Author_773]
         [Author241])
     (sexo male))

    ([Author_63] of Autor
     (idAutor "63")
     (nombreAutor "Jerry Spinelli")
     (autoresSimilares
         [Author499])
     (sexo male))

    ([Author_64] of Autor
     (idAutor "64")
     (nombreAutor "JRR Tolkien")
     (autoresSimilares
         [Author_399]
         [Author_31]
         [Author_43]
         [Author_417]
         [Author_501]
         [Author_241]
         [Author_485]
         [Author_440]
         [Author_527]
         [Author_573]
         [Author_115]
         [Author_169]
         [Author_890]
         [Author_439]
         [Author_942]
         [Author_589]
         [Author_533]
         [Author_790]
         [Author_857]
         [Author372])
     (sexo male))

    ([Author_65] of Autor
     (idAutor "65")
     (nombreAutor "Dan Brown")
     (autoresSimilares
         [Author_92]
         [Author_292]
         [Author_471]
         [Author_352]
         [Author_723]
         [Author787])
     (sexo male))

    ([Author_66] of Autor
     (idAutor "66")
     (nombreAutor "Ken Follett")
     (autoresSimilares
         [Author_565]
         [Author_454]
         [Author_288]
         [Author_661]
         [Author530])
     (sexo male))

    ([Author_67] of Autor
     (idAutor "67")
     (nombreAutor "Philippa Gregory")
     (autoresSimilares
         [Author_558]
         [Author_684]
         [Author_604]
         [Author_215]
         [Author_899]
         [Author_624]
         [Author_699]
         [Author_503]
         [Author_367]
         [Author139])
     (sexo female))

    ([Author_68] of Autor
     (idAutor "68")
     (nombreAutor "Seth Grahame-Smith")
     (autoresSimilares
         [Author_350]
         [Author_499]
         [Author_712]
         [Author_579]
         [Author_490]
         [Author865])
     (sexo male))

    ([Author_69] of Autor
     (idAutor "69")
     (nombreAutor "Kim Edwards")
     (autoresSimilares
         [Author_538]
         [Author_426]
         [Author_201]
         [Author_622]
         [Author_573]
         [Author_668]
         [Author_830]
         [Author_286]
         [Author_252]
         [Author_218]
         [Author_14]
         [Author_419]
         [Author_578]
         [Author_341]
         [Author772])
     (sexo female))

    ([Author_70] of Autor
     (idAutor "70")
     (nombreAutor "Scott Westerfeld")
     (autoresSimilares
         [Author_66]
         [Author_179]
         [Author_572]
         [Author_468]
         [Author_313]
         [Author_266]
         [Author_367]
         [Author_452]
         [Author_733]
         [Author130])
     (sexo male))

    ([Author_71] of Autor
     (idAutor "71")
     (nombreAutor "Helen Fielding")
     (autoresSimilares
         [Author_115]
         [Author_224]
         [Author_363]
         [Author_656]
         [Author_733]
         [Author_48]
         [Author_585]
         [Author_288]
         [Author_130]
         [Author_100]
         [Author_510]
         [Author_902]
         [Author_924]
         [Author_911]
         [Author_450]
         [Author_777]
         [Author_898]
         [Author517])
     (sexo male))

    ([Author_72] of Autor
     (idAutor "72")
     (nombreAutor "Jennifer Crusie")
     (autoresSimilares
         [Author647])
     (sexo female))

    ([Author_73] of Autor
     (idAutor "73")
     (nombreAutor "Sophie Kinsella")
     (autoresSimilares
         [Author_142]
         [Author_339]
         [Author_901]
         [Author_290]
         [Author_549]
         [Author_728]
         [Author_471]
         [Author937])
     (sexo female))

    ([Author_74] of Autor
     (idAutor "74")
     (nombreAutor "Tahereh Mafi")
     (autoresSimilares
         [Author_293]
         [Author_173]
         [Author_270]
         [Author_717]
         [Author_673]
         [Author_762]
         [Author_800]
         [Author_632]
         [Author_23]
         [Author_138]
         [Author_88]
         [Author_550]
         [Author_772]
         [Author_85]
         [Author3])
     (sexo female))

    ([Author_75] of Autor
     (idAutor "75")
     (nombreAutor "Ally Condie")
     (autoresSimilares
         [Author_68]
         [Author_753]
         [Author_723]
         [Author_668]
         [Author_796]
         [Author_428]
         [Author_93]
         [Author_182]
         [Author_568]
         [Author_645]
         [Author55])
     (sexo female))

    ([Author_76] of Autor
     (idAutor "76")
     (nombreAutor "Arthur Golden")
     (autoresSimilares
         [Author_24]
         [Author726])
     (sexo male))

    ([Author_77] of Autor
     (idAutor "77")
     (nombreAutor "Nicholas Sparks")
     (autoresSimilares
         [Author_619]
         [Author_836]
         [Author_450]
         [Author_563]
         [Author_466]
         [Author_406]
         [Author_331]
         [Author_47]
         [Author_695]
         [Author_499]
         [Author_810]
         [Author_346]
         [Author713])
     (sexo male))

    ([Author_78] of Autor
     (idAutor "78")
     (nombreAutor "Sylvia Day")
     (autoresSimilares
         [Author_150]
         [Author_475]
         [Author_940]
         [Author_374]
         [Author_186]
         [Author_322]
         [Author_353]
         [Author_9]
         [Author_163]
         [Author_484]
         [Author_187]
         [Author_425]
         [Author145])
     (sexo female))

    ([Author_79] of Autor
     (idAutor "79")
     (nombreAutor "EL James")
     (autoresSimilares
         [Author_83]
         [Author_432]
         [Author_765]
         [Author_309]
         [Author_250]
         [Author_553]
         [Author_89]
         [Author_69]
         [Author_294]
         [Author_180]
         [Author_232]
         [Author_202]
         [Author_261]
         [Author793])
     (sexo male))

    ([Author_80] of Autor
     (idAutor "80")
     (nombreAutor "Margaret Stohl")
     (autoresSimilares
         [Author_470]
         [Author_70]
         [Author_686]
         [Author_674]
         [Author_355]
         [Author_193]
         [Author_51]
         [Author_259]
         [Author_94]
         [Author_335]
         [Author_801]
         [Author_387]
         [Author_467]
         [Author_460]
         [Author_570]
         [Author242])
     (sexo female))

    ([Author_81] of Autor
     (idAutor "81")
     (nombreAutor "Michelle K Pickett")
     (autoresSimilares
         [Author_758]
         [Author_383]
         [Author_197]
         [Author_767]
         [Author_565]
         [Author_626]
         [Author_866]
         [Author_356]
         [Author_498]
         [Author_347]
         [Author649])
     (sexo female))

    ([Author_82] of Autor
     (idAutor "82")
     (nombreAutor "Jessica Brody")
     (autoresSimilares
         [Author_305]
         [Author_329]
         [Author_839]
         [Author_340]
         [Author_180]
         [Author_811]
         [Author_526]
         [Author_643]
         [Author_639]
         [Author_421]
         [Author_311]
         [Author_486]
         [Author_243]
         [Author_16]
         [Author_738]
         [Author617])
     (sexo female))

    ([Author_83] of Autor
     (idAutor "83")
     (nombreAutor "Mindy McGinnis")
     (autoresSimilares
         [Author_596]
         [Author_822]
         [Author_308]
         [Author_390]
         [Author_648]
         [Author_694]
         [Author_47]
         [Author_504]
         [Author_933]
         [Author_348]
         [Author_338]
         [Author_359]
         [Author_813]
         [Author482])
     (sexo male))

    ([Author_84] of Autor
     (idAutor "84")
     (nombreAutor "Jennifer Rush")
     (autoresSimilares
         [Author_181]
         [Author_472]
         [Author_906]
         [Author_931]
         [Author_665]
         [Author_62]
         [Author_52]
         [Author_150]
         [Author_631]
         [Author_219]
         [Author_371]
         [Author_508]
         [Author_739]
         [Author_245]
         [Author_210]
         [Author_115]
         [Author_586]
         [Author_632]
         [Author_850]
         [Author307])
     (sexo female))

    ([Author_85] of Autor
     (idAutor "85")
     (nombreAutor "Elsie Chapman")
     (autoresSimilares
         [Author_203]
         [Author_444]
         [Author_927]
         [Author_894]
         [Author_429]
         [Author_558]
         [Author_943]
         [Author68])
     (sexo male))

    ([Author_86] of Autor
     (idAutor "86")
     (nombreAutor "Kristen Simmons")
     (autoresSimilares
         [Author_272]
         [Author_536]
         [Author_296]
         [Author_81]
         [Author_531]
         [Author_550]
         [Author_528]
         [Author_134]
         [Author_382]
         [Author_653]
         [Author_62]
         [Author_636]
         [Author_658]
         [Author_180]
         [Author512])
     (sexo female))

    ([Author_87] of Autor
     (idAutor "87")
     (nombreAutor "Elizabeth Norris")
     (autoresSimilares
         [Author_794]
         [Author_480]
         [Author_840]
         [Author_777]
         [Author_543]
         [Author_67]
         [Author_367]
         [Author_259]
         [Author557])
     (sexo female))

    ([Author_88] of Autor
     (idAutor "88")
     (nombreAutor "Amie Kaufman")
     (autoresSimilares
         [Author_608]
         [Author_557]
         [Author_422]
         [Author_781]
         [Author_545]
         [Author_459]
         [Author_290]
         [Author_941]
         [Author_531]
         [Author_825]
         [Author_888]
         [Author_499]
         [Author_916]
         [Author_526]
         [Author_215]
         [Author_513]
         [Author_229]
         [Author58])
     (sexo female))

    ([Author_89] of Autor
     (idAutor "89")
     (nombreAutor "Erin Bowman")
     (autoresSimilares
         [Author_258]
         [Author_783]
         [Author_230]
         [Author475])
     (sexo female))

    ([Author_90] of Autor
     (idAutor "90")
     (nombreAutor "Debra Driza")
     (autoresSimilares
         [Author_735]
         [Author_285]
         [Author_869]
         [Author_714]
         [Author547])
     (sexo male))

    ([Author_91] of Autor
     (idAutor "91")
     (nombreAutor "Rick Yancey")
     (autoresSimilares
         [Author_55]
         [Author797])
     (sexo male))

    ([Author_92] of Autor
     (idAutor "92")
     (nombreAutor "Marie Lu")
     (autoresSimilares
         [Author_495]
         [Author_240]
         [Author90])
     (sexo male))

    ([Author_93] of Autor
     (idAutor "93")
     (nombreAutor "Gail Carriger")
     (autoresSimilares
         [Author_18]
         [Author_747]
         [Author_923]
         [Author_140]
         [Author_85]
         [Author_272]
         [Author383])
     (sexo male))

    ([Author_94] of Autor
     (idAutor "94")
     (nombreAutor "Kimberly Derting")
     (autoresSimilares
         [Author_700]
         [Author_793]
         [Author_226]
         [Author_251]
         [Author_562]
         [Author_652]
         [Author_792]
         [Author_688]
         [Author_114]
         [Author718])
     (sexo female))

    ([Author_95] of Autor
     (idAutor "95")
     (nombreAutor "Suzanne Young")
     (autoresSimilares
         [Author_639]
         [Author_847]
         [Author_96]
         [Author_415]
         [Author_452]
         [Author_385]
         [Author_435]
         [Author_151]
         [Author_131]
         [Author_695]
         [Author_276]
         [Author486])
     (sexo female))

    ([Author_96] of Autor
     (idAutor "96")
     (nombreAutor "Michael  Grant")
     (autoresSimilares
         [Author_206]
         [Author21])
     (sexo male))

    ([Author_97] of Autor
     (idAutor "97")
     (nombreAutor "Lauren Oliver")
     (autoresSimilares
         [Author_450]
         [Author_547]
         [Author_598]
         [Author_184]
         [Author246])
     (sexo female))

    ([Author_98] of Autor
     (idAutor "98")
     (nombreAutor "Lauren DeStefano")
     (autoresSimilares
         [Author_233]
         [Author_2]
         [Author_257]
         [Author_113]
         [Author_463]
         [Author_755]
         [Author_362]
         [Author_369]
         [Author232])
     (sexo male))

    ([Author_99] of Autor
     (idAutor "99")
     (nombreAutor "Veronica Rossi")
     (autoresSimilares
         [Author_844]
         [Author_696]
         [Author_861]
         [Author_525]
         [Author_386]
         [Author_184]
         [Author_848]
         [Author_21]
         [Author_229]
         [Author_233]
         [Author_301]
         [Author_798]
         [Author_300]
         [Author_307]
         [Author_599]
         [Author655])
     (sexo male))

    ([Author_100] of Autor
     (idAutor "100")
     (nombreAutor "Veronica Roth")
     (autoresSimilares
         [Author_641]
         [Author_66]
         [Author_367]
         [Author_353]
         [Author_572]
         [Author_335]
         [Author_134]
         [Author_723]
         [Author_148]
         [Author_259]
         [Author_638]
         [Author_793]
         [Author_463]
         [Author_444]
         [Author_566]
         [Author318])
     (sexo female))

    ([Author_101] of Autor
     (idAutor "101")
     (nombreAutor "Betsy Cornwell")
     (autoresSimilares
         [Author_552]
         [Author_238]
         [Author290])
     (sexo female))

    ([Author_102] of Autor
     (idAutor "102")
     (nombreAutor "Sharon Cameron")
     (autoresSimilares
         [Author_763]
         [Author703])
     (sexo female))

    ([Author_103] of Autor
     (idAutor "103")
     (nombreAutor "Melissa Landers")
     (autoresSimilares
         [Author_859]
         [Author_396]
         [Author_350]
         [Author_278]
         [Author_156]
         [Author_254]
         [Author_471]
         [Author_153]
         [Author231])
     (sexo male))

    ([Author_104] of Autor
     (idAutor "104")
     (nombreAutor "Gillian Flynn")
     (autoresSimilares
         [Author_861]
         [Author_50]
         [Author8])
     (sexo female))

    ([Author_105] of Autor
     (idAutor "105")
     (nombreAutor "Caragh M OBrien")
     (autoresSimilares
         [Author_145]
         [Author_745]
         [Author_880]
         [Author_634]
         [Author_519]
         [Author_37]
         [Author_377]
         [Author_181]
         [Author_452]
         [Author_313]
         [Author_323]
         [Author_468]
         [Author_66]
         [Author_927]
         [Author_209]
         [Author_492]
         [Author_689]
         [Author133])
     (sexo female))

    ([Author_106] of Autor
     (idAutor "106")
     (nombreAutor "Theodore Sturgeon")
     (autoresSimilares
         [Author636])
     (sexo male))

    ([Author_107] of Autor
     (idAutor "107")
     (nombreAutor "CS Friedman")
     (autoresSimilares
         [Author_13]
         [Author_289]
         [Author_768]
         [Author_475]
         [Author_758]
         [Author_835]
         [Author_92]
         [Author_45]
         [Author_218]
         [Author_584]
         [Author829])
     (sexo male))

    ([Author_108] of Autor
     (idAutor "108")
     (nombreAutor "Richard Matheson")
     (autoresSimilares
         [Author_526]
         [Author_727]
         [Author_906]
         [Author_740]
         [Author_397]
         [Author_489]
         [Author_210]
         [Author_886]
         [Author212])
     (sexo male))

    ([Author_109] of Autor
     (idAutor "109")
     (nombreAutor "Justin Cronin")
     (autoresSimilares
         [Author_799]
         [Author_253]
         [Author_93]
         [Author_715]
         [Author_271]
         [Author_385]
         [Author_539]
         [Author_272]
         [Author_857]
         [Author_944]
         [Author_10]
         [Author_402]
         [Author_243]
         [Author_62]
         [Author_167]
         [Author_754]
         [Author_178]
         [Author_95]
         [Author710])
     (sexo male))

    ([Author_110] of Autor
     (idAutor "110")
     (nombreAutor "F Paul Wilson")
     (autoresSimilares
         [Author_506]
         [Author_162]
         [Author_264]
         [Author_804]
         [Author_109]
         [Author_741]
         [Author_268]
         [Author_114]
         [Author_509]
         [Author567])
     (sexo male))

    ([Author_111] of Autor
     (idAutor "111")
     (nombreAutor "Terry Pratchett")
     (autoresSimilares
         [Author_923]
         [Author_747]
         [Author_855]
         [Author_760]
         [Author_792]
         [Author_549]
         [Author_191]
         [Author_666]
         [Author_568]
         [Author_459]
         [Author_609]
         [Author_722]
         [Author_65]
         [Author719])
     (sexo male))

    ([Author_112] of Autor
     (idAutor "112")
     (nombreAutor "Christopher Moore")
     (autoresSimilares
         [Author_437]
         [Author_872]
         [Author_623]
         [Author131])
     (sexo male))

    ([Author_113] of Autor
     (idAutor "113")
     (nombreAutor "Guillermo del Toro")
     (autoresSimilares
         [Author_327]
         [Author124])
     (sexo male))

    ([Author_114] of Autor
     (idAutor "114")
     (nombreAutor "Deborah Harkness")
     (autoresSimilares
         [Author_697]
         [Author_824]
         [Author_668]
         [Author_163]
         [Author_751]
         [Author890])
     (sexo male))

    ([Author_115] of Autor
     (idAutor "115")
     (nombreAutor "John Ajvide Lindqvist")
     (autoresSimilares
         [Author_116]
         [Author_586]
         [Author_132]
         [Author_487]
         [Author_257]
         [Author_763]
         [Author_765]
         [Author_356]
         [Author_134]
         [Author_139]
         [Author_620]
         [Author_646]
         [Author_798]
         [Author_471]
         [Author_884]
         [Author_839]
         [Author138])
     (sexo male))

    ([Author_116] of Autor
     (idAutor "116")
     (nombreAutor "Louise Erdrich")
     (autoresSimilares
         [Author_320]
         [Author_540]
         [Author_937]
         [Author_782]
         [Author_868]
         [Author_763]
         [Author_22]
         [Author_182]
         [Author_501]
         [Author_729]
         [Author_332]
         [Author_217]
         [Author_263]
         [Author_62]
         [Author_179]
         [Author_26]
         [Author_472]
         [Author_361]
         [Author_147]
         [Author314])
     (sexo male))

    ([Author_117] of Autor
     (idAutor "117")
     (nombreAutor "Kristin Hannah")
     (autoresSimilares
         [Author_729]
         [Author_351]
         [Author_819]
         [Author_757]
         [Author_530]
         [Author_318]
         [Author_513]
         [Author_135]
         [Author_566]
         [Author_918]
         [Author_260]
         [Author_927]
         [Author_212]
         [Author_739]
         [Author_229]
         [Author_396]
         [Author507])
     (sexo male))

    ([Author_118] of Autor
     (idAutor "118")
     (nombreAutor "Kate Atkinson")
     (autoresSimilares
         [Author_322]
         [Author_131]
         [Author_242]
         [Author_684]
         [Author_413]
         [Author_162]
         [Author_196]
         [Author_734]
         [Author_7]
         [Author_926]
         [Author_533]
         [Author_151]
         [Author_532]
         [Author_445]
         [Author_468]
         [Author_150]
         [Author_478]
         [Author_514]
         [Author_659]
         [Author238])
     (sexo female))

    ([Author_119] of Autor
     (idAutor "119")
     (nombreAutor "Chris Bohjalian")
     (autoresSimilares
         [Author_353]
         [Author_905]
         [Author_45]
         [Author_224]
         [Author_713]
         [Author_324]
         [Author_669]
         [Author_164]
         [Author_580]
         [Author_639]
         [Author_34]
         [Author_707]
         [Author_775]
         [Author927])
     (sexo male))

    ([Author_120] of Autor
     (idAutor "120")
     (nombreAutor "Steve Toltz")
     (autoresSimilares
         [Author431])
     (sexo male))

    ([Author_121] of Autor
     (idAutor "121")
     (nombreAutor "Lauren Weisberger")
     (autoresSimilares
         [Author_569]
         [Author_290]
         [Author_810]
         [Author_701]
         [Author_171]
         [Author_177]
         [Author_139]
         [Author_478]
         [Author_682]
         [Author_146]
         [Author405])
     (sexo female))

    ([Author_122] of Autor
     (idAutor "122")
     (nombreAutor "Roberto Bolao")
     (autoresSimilares
         [Author_463]
         [Author_364]
         [Author_577]
         [Author_702]
         [Author_538]
         [Author_336]
         [Author867])
     (sexo male))

    ([Author_123] of Autor
     (idAutor "123")
     (nombreAutor "Chuck Palahniuk")
     (autoresSimilares
         [Author_562]
         [Author160])
     (sexo male))

    ([Author_124] of Autor
     (idAutor "124")
     (nombreAutor "PJ Haarsma")
     (autoresSimilares
         [Author_218]
         [Author_618]
         [Author_214]
         [Author_147]
         [Author_37]
         [Author_880]
         [Author_82]
         [Author_237]
         [Author_758]
         [Author_577]
         [Author_784]
         [Author_782]
         [Author_831]
         [Author87])
     (sexo male))

    ([Author_125] of Autor
     (idAutor "125")
     (nombreAutor "Toni Morrison")
     (autoresSimilares
         [Author_31]
         [Author462])
     (sexo female))

    ([Author_126] of Autor
     (idAutor "126")
     (nombreAutor "Kathleen Kent")
     (autoresSimilares
         [Author470])
     (sexo male))

    ([Author_127] of Autor
     (idAutor "127")
     (nombreAutor "Daniel Grandbois")
     (autoresSimilares
         [Author_619]
         [Author_71]
         [Author_22]
         [Author_575]
         [Author_651]
         [Author_9]
         [Author_903]
         [Author_442]
         [Author606])
     (sexo male))

    ([Author_128] of Autor
     (idAutor "128")
     (nombreAutor "Alexander McCall Smith")
     (autoresSimilares
         [Author_259]
         [Author_583]
         [Author_608]
         [Author_164]
         [Author_924]
         [Author_496]
         [Author_820]
         [Author_768]
         [Author_526]
         [Author_683]
         [Author_2]
         [Author_32]
         [Author_78]
         [Author_819]
         [Author_178]
         [Author_17]
         [Author814])
     (sexo male))

    ([Author_129] of Autor
     (idAutor "129")
     (nombreAutor "Harlan Coben")
     (autoresSimilares
         [Author_853]
         [Author_165]
         [Author_851]
         [Author_761]
         [Author_342]
         [Author_559]
         [Author_157]
         [Author_254]
         [Author_871]
         [Author_614]
         [Author_574]
         [Author_266]
         [Author_549]
         [Author_69]
         [Author_344]
         [Author_841]
         [Author_593]
         [Author781])
     (sexo male))

    ([Author_130] of Autor
     (idAutor "130")
     (nombreAutor "Jennifer Weiner")
     (autoresSimilares
         [Author_526]
         [Author_943]
         [Author_704]
         [Author_170]
         [Author_458]
         [Author39])
     (sexo female))

    ([Author_131] of Autor
     (idAutor "131")
     (nombreAutor "Jeff Kinney")
     (autoresSimilares
         [Author_561]
         [Author_345]
         [Author_297]
         [Author_609]
         [Author_394]
         [Author_486]
         [Author_651]
         [Author_358]
         [Author_908]
         [Author_754]
         [Author_549]
         [Author_788]
         [Author_50]
         [Author_58]
         [Author_487]
         [Author_867]
         [Author_92]
         [Author_830]
         [Author507])
     (sexo male))

    ([Author_132] of Autor
     (idAutor "132")
     (nombreAutor "Curtis Sittenfeld")
     (autoresSimilares
         [Author_16]
         [Author_887]
         [Author_167]
         [Author_121]
         [Author_880]
         [Author_781]
         [Author_643]
         [Author_552]
         [Author_22]
         [Author_428]
         [Author_228]
         [Author_224]
         [Author_261]
         [Author_627]
         [Author894])
     (sexo female))

    ([Author_133] of Autor
     (idAutor "133")
     (nombreAutor "Tana French")
     (autoresSimilares
         [Author_769]
         [Author_567]
         [Author_154]
         [Author_762]
         [Author_720]
         [Author_42]
         [Author_86]
         [Author_822]
         [Author_270]
         [Author_839]
         [Author_867]
         [Author_881]
         [Author_537]
         [Author_357]
         [Author_728]
         [Author_228]
         [Author45])
     (sexo female))

    ([Author_134] of Autor
     (idAutor "134")
     (nombreAutor "Joseph ONeill")
     (autoresSimilares
         [Author_381]
         [Author_280]
         [Author_623]
         [Author938])
     (sexo male))

    ([Author_135] of Autor
     (idAutor "135")
     (nombreAutor "Hillary Jordan")
     (autoresSimilares
         [Author_54]
         [Author_524]
         [Author_131]
         [Author_619]
         [Author_520]
         [Author_149]
         [Author_877]
         [Author_148]
         [Author_625]
         [Author_87]
         [Author_942]
         [Author375])
     (sexo female))

    ([Author_136] of Autor
     (idAutor "136")
     (nombreAutor "Emily Giffin")
     (autoresSimilares
         [Author_374]
         [Author_830]
         [Author_292]
         [Author708])
     (sexo female))

    ([Author_137] of Autor
     (idAutor "137")
     (nombreAutor "Lauren Groff")
     (autoresSimilares
         [Author571])
     (sexo female))

    ([Author_138] of Autor
     (idAutor "138")
     (nombreAutor "Wally Lamb")
     (autoresSimilares
         [Author_867]
         [Author_542]
         [Author_462]
         [Author_427]
         [Author_132]
         [Author_420]
         [Author_677]
         [Author331])
     (sexo male))

    ([Author_139] of Autor
     (idAutor "139")
     (nombreAutor "Elizabeth Strout")
     (autoresSimilares
         [Author336])
     (sexo female))

    ([Author_140] of Autor
     (idAutor "140")
     (nombreAutor "Marisa de los Santos")
     (autoresSimilares
         [Author_570]
         [Author_602]
         [Author_31]
         [Author_807]
         [Author_242]
         [Author_876]
         [Author_621]
         [Author_792]
         [Author_99]
         [Author_886]
         [Author_397]
         [Author_644]
         [Author940])
     (sexo female))

    ([Author_141] of Autor
     (idAutor "141")
     (nombreAutor "David Benioff")
     (autoresSimilares
         [Author_701]
         [Author_410]
         [Author_407]
         [Author_597]
         [Author_925]
         [Author_54]
         [Author_399]
         [Author_197]
         [Author_785]
         [Author_826]
         [Author_271]
         [Author_125]
         [Author541])
     (sexo male))

    ([Author_142] of Autor
     (idAutor "142")
     (nombreAutor "Cory Doctorow")
     (autoresSimilares
         [Author_457]
         [Author_169]
         [Author_223]
         [Author_428]
         [Author_215]
         [Author_844]
         [Author_419]
         [Author_545]
         [Author_407]
         [Author_62]
         [Author_904]
         [Author_616]
         [Author560])
     (sexo male))

    ([Author_143] of Autor
     (idAutor "143")
     (nombreAutor "Geraldine Brooks")
     (autoresSimilares
         [Author_45]
         [Author_590]
         [Author586])
     (sexo female))

    ([Author_144] of Autor
     (idAutor "144")
     (nombreAutor "Jhumpa Lahiri")
     (autoresSimilares
         [Author_514]
         [Author_488]
         [Author_832]
         [Author_925]
         [Author_326]
         [Author_383]
         [Author129])
     (sexo female))

    ([Author_145] of Autor
     (idAutor "145")
     (nombreAutor "David Wroblewski")
     (autoresSimilares
         [Author_763]
         [Author_850]
         [Author_906]
         [Author_350]
         [Author_34]
         [Author_579]
         [Author_721]
         [Author_848]
         [Author_50]
         [Author_147]
         [Author_808]
         [Author_181]
         [Author_796]
         [Author_533]
         [Author_76]
         [Author816])
     (sexo male))

    ([Author_146] of Autor
     (idAutor "146")
     (nombreAutor "Audrey Niffenegger")
     (autoresSimilares
         [Author_623]
         [Author_424]
         [Author692])
     (sexo male))

    ([Author_147] of Autor
     (idAutor "147")
     (nombreAutor "Ken Puddicombe")
     (autoresSimilares
         [Author_22]
         [Author_841]
         [Author_335]
         [Author_789]
         [Author_268]
         [Author_77]
         [Author_722]
         [Author_299]
         [Author_484]
         [Author_545]
         [Author_442]
         [Author_308]
         [Author_920]
         [Author_871]
         [Author_851]
         [Author_70]
         [Author_599]
         [Author_465]
         [Author_598]
         [Author822])
     (sexo male))

    ([Author_148] of Autor
     (idAutor "148")
     (nombreAutor "Cherrie Lynn")
     (autoresSimilares
         [Author_729]
         [Author_573]
         [Author192])
     (sexo female))

    ([Author_149] of Autor
     (idAutor "149")
     (nombreAutor "Jenny B Jones")
     (autoresSimilares
         [Author_513]
         [Author_636]
         [Author_9]
         [Author_428]
         [Author331])
     (sexo female))

    ([Author_150] of Autor
     (idAutor "150")
     (nombreAutor "Khaled Hosseini")
     (autoresSimilares
         [Author_713]
         [Author_135]
         [Author_560]
         [Author_696]
         [Author_255]
         [Author_677]
         [Author_369]
         [Author_536]
         [Author_169]
         [Author_371]
         [Author_522]
         [Author_703]
         [Author_50]
         [Author_655]
         [Author_943]
         [Author_540]
         [Author708])
     (sexo male))

    ([Author_151] of Autor
     (idAutor "151")
     (nombreAutor "Emma Donoghue")
     (autoresSimilares
         [Author_780]
         [Author_295]
         [Author_544]
         [Author_365]
         [Author_606]
         [Author_223]
         [Author_569]
         [Author_855]
         [Author_944]
         [Author_720]
         [Author_490]
         [Author_376]
         [Author_533]
         [Author_758]
         [Author_591]
         [Author170])
     (sexo female))

    ([Author_152] of Autor
     (idAutor "152")
     (nombreAutor "Jojo Moyes")
     (autoresSimilares
         [Author_744]
         [Author_650]
         [Author_648]
         [Author_137]
         [Author_579]
         [Author_653]
         [Author_623]
         [Author_514]
         [Author_533]
         [Author522])
     (sexo female))

    ([Author_153] of Autor
     (idAutor "153")
     (nombreAutor "Brian Selznick")
     (autoresSimilares
         [Author_819]
         [Author_907]
         [Author_909]
         [Author_255]
         [Author_825]
         [Author_78]
         [Author_556]
         [Author_861]
         [Author_169]
         [Author_88]
         [Author_771]
         [Author_367]
         [Author_208]
         [Author_531]
         [Author778])
     (sexo male))

    ([Author_154] of Autor
     (idAutor "154")
     (nombreAutor "Malcolm McCoard")
     (autoresSimilares
         [Author_884]
         [Author_244]
         [Author_594]
         [Author_149]
         [Author_351]
         [Author_368]
         [Author_890]
         [Author_490]
         [Author_172]
         [Author_705]
         [Author_467]
         [Author_477]
         [Author_835]
         [Author_150]
         [Author73])
     (sexo male))

    ([Author_155] of Autor
     (idAutor "155")
     (nombreAutor "Marion Zimmer Bradley")
     (autoresSimilares
         [Author_299]
         [Author_152]
         [Author_765]
         [Author_170]
         [Author133])
     (sexo female))

    ([Author_156] of Autor
     (idAutor "156")
     (nombreAutor "Mary  Stewart")
     (autoresSimilares
         [Author_503]
         [Author_204]
         [Author_704]
         [Author_423]
         [Author_936]
         [Author_524]
         [Author_666]
         [Author_761]
         [Author_579]
         [Author_583]
         [Author_80]
         [Author_377]
         [Author_588]
         [Author914])
     (sexo female))

    ([Author_157] of Autor
     (idAutor "157")
     (nombreAutor "Frances Hodgson Burnett")
     (autoresSimilares
         [Author_215]
         [Author_430]
         [Author_622]
         [Author273])
     (sexo female))

    ([Author_158] of Autor
     (idAutor "158")
     (nombreAutor "Anne McCaffrey")
     (autoresSimilares
         [Author_503]
         [Author_795]
         [Author_138]
         [Author_90]
         [Author_147]
         [Author_510]
         [Author_685]
         [Author_267]
         [Author_228]
         [Author_894]
         [Author_265]
         [Author_323]
         [Author_732]
         [Author_468]
         [Author_455]
         [Author_261]
         [Author354])
     (sexo female))

    ([Author_159] of Autor
     (idAutor "159")
     (nombreAutor "Lemony Snicket")
     (autoresSimilares
         [Author_295]
         [Author_650]
         [Author821])
     (sexo male))

    ([Author_160] of Autor
     (idAutor "160")
     (nombreAutor "David Eddings")
     (autoresSimilares
         [Author_413]
         [Author_420]
         [Author_297]
         [Author846])
     (sexo male))

    ([Author_161] of Autor
     (idAutor "161")
     (nombreAutor "Roald Dahl")
     (autoresSimilares
         [Author_380]
         [Author_260]
         [Author_377]
         [Author_471]
         [Author_748]
         [Author_59]
         [Author_360]
         [Author_31]
         [Author_943]
         [Author_700]
         [Author_466]
         [Author493])
     (sexo male))

    ([Author_162] of Autor
     (idAutor "162")
     (nombreAutor "Robert Jordan")
     (autoresSimilares
         [Author_678]
         [Author_627]
         [Author_628]
         [Author_506]
         [Author_673]
         [Author_782]
         [Author829])
     (sexo male))

    ([Author_163] of Autor
     (idAutor "163")
     (nombreAutor "Obert Skye")
     (autoresSimilares
         [Author846])
     (sexo male))

    ([Author_164] of Autor
     (idAutor "164")
     (nombreAutor "Patrick Rothfuss")
     (autoresSimilares
         [Author_484]
         [Author_387]
         [Author_760]
         [Author_409]
         [Author_675]
         [Author_684]
         [Author_494]
         [Author_845]
         [Author810])
     (sexo male))

    ([Author_165] of Autor
     (idAutor "165")
     (nombreAutor "William Goldman")
     (autoresSimilares
         [Author_913]
         [Author_181]
         [Author_596]
         [Author_768]
         [Author_183]
         [Author_415]
         [Author_291]
         [Author_314]
         [Author_151]
         [Author_376]
         [Author_326]
         [Author_99]
         [Author_801]
         [Author_659]
         [Author_683]
         [Author230])
     (sexo male))

    ([Author_166] of Autor
     (idAutor "166")
     (nombreAutor "Katherine Paterson")
     (autoresSimilares
         [Author_858]
         [Author_174]
         [Author_714]
         [Author591])
     (sexo female))

    ([Author_167] of Autor
     (idAutor "167")
     (nombreAutor "James Dashner")
     (autoresSimilares
         [Author_286]
         [Author_536]
         [Author_63]
         [Author_586]
         [Author_729]
         [Author_480]
         [Author_638]
         [Author_46]
         [Author_158]
         [Author_647]
         [Author_333]
         [Author_940]
         [Author_43]
         [Author36])
     (sexo male))

    ([Author_168] of Autor
     (idAutor "168")
     (nombreAutor "Madeleine LEngle")
     (autoresSimilares
         [Author_358]
         [Author_841]
         [Author_228]
         [Author_192]
         [Author_545]
         [Author_705]
         [Author_198]
         [Author_765]
         [Author_236]
         [Author_759]
         [Author_823]
         [Author_479]
         [Author_783]
         [Author_729]
         [Author_871]
         [Author_558]
         [Author_486]
         [Author_84]
         [Author_82]
         [Author534])
     (sexo female))

    ([Author_169] of Autor
     (idAutor "169")
     (nombreAutor "Carol Plum-Ucci")
     (autoresSimilares
         [Author_49]
         [Author_816]
         [Author_517]
         [Author_110]
         [Author_291]
         [Author_250]
         [Author_164]
         [Author_178]
         [Author_731]
         [Author_745]
         [Author_280]
         [Author_871]
         [Author_372]
         [Author_730]
         [Author_577]
         [Author_595]
         [Author_569]
         [Author883])
     (sexo female))

    ([Author_170] of Autor
     (idAutor "170")
     (nombreAutor "Ellen Wittlinger")
     (autoresSimilares
         [Author_440]
         [Author_404]
         [Author_355]
         [Author_295]
         [Author_834]
         [Author_150]
         [Author_536]
         [Author_934]
         [Author_912]
         [Author_1]
         [Author_206]
         [Author_340]
         [Author_772]
         [Author_555]
         [Author_130]
         [Author_137]
         [Author_854]
         [Author_784]
         [Author448])
     (sexo female))

    ([Author_171] of Autor
     (idAutor "171")
     (nombreAutor "Peter Cameron")
     (autoresSimilares
         [Author_347]
         [Author_284]
         [Author_640]
         [Author_403]
         [Author_888]
         [Author624])
     (sexo male))

    ([Author_172] of Autor
     (idAutor "172")
     (nombreAutor "Francesca Lia Block")
     (autoresSimilares
         [Author_335]
         [Author_433]
         [Author_916]
         [Author514])
     (sexo female))

    ([Author_173] of Autor
     (idAutor "173")
     (nombreAutor "Steve Kluger")
     (autoresSimilares
         [Author_596]
         [Author_192]
         [Author_542]
         [Author_368]
         [Author_256]
         [Author_635]
         [Author_202]
         [Author_730]
         [Author_907]
         [Author_107]
         [Author_515]
         [Author608])
     (sexo male))

    ([Author_174] of Autor
     (idAutor "174")
     (nombreAutor "Alex London")
     (autoresSimilares
         [Author_230]
         [Author_865]
         [Author_393]
         [Author_674]
         [Author_524]
         [Author_792]
         [Author_632]
         [Author479])
     (sexo male))

    ([Author_175] of Autor
     (idAutor "175")
     (nombreAutor "Joanne Harris")
     (autoresSimilares
         [Author_781]
         [Author_17]
         [Author_865]
         [Author_915]
         [Author_499]
         [Author_168]
         [Author_131]
         [Author_210]
         [Author_285]
         [Author_106]
         [Author_531]
         [Author_176]
         [Author_495]
         [Author_119]
         [Author484])
     (sexo female))

    ([Author_176] of Autor
     (idAutor "176")
     (nombreAutor "Salman Rushdie")
     (autoresSimilares
         [Author_33]
         [Author_521]
         [Author_852]
         [Author_384]
         [Author_791]
         [Author412])
     (sexo male))

    ([Author_177] of Autor
     (idAutor "177")
     (nombreAutor "Jo Walton")
     (autoresSimilares
         [Author_722]
         [Author_236]
         [Author_168]
         [Author_894]
         [Author_739]
         [Author_296]
         [Author_752]
         [Author_804]
         [Author_221]
         [Author_231]
         [Author_905]
         [Author_730]
         [Author_107]
         [Author_463]
         [Author_808]
         [Author_815]
         [Author507])
     (sexo female))

    ([Author_178] of Autor
     (idAutor "178")
     (nombreAutor "Alice Hoffman")
     (autoresSimilares
         [Author_137]
         [Author_690]
         [Author367])
     (sexo male))

    ([Author_179] of Autor
     (idAutor "179")
     (nombreAutor "Nicholas Christopher")
     (autoresSimilares
         [Author_357]
         [Author_97]
         [Author_720]
         [Author_392]
         [Author_659]
         [Author_523]
         [Author_881]
         [Author_243]
         [Author_145]
         [Author_784]
         [Author_554]
         [Author521])
     (sexo male))

    ([Author_180] of Autor
     (idAutor "180")
     (nombreAutor "Louis de Bernires")
     (autoresSimilares
         [Author_330]
         [Author_775]
         [Author48])
     (sexo male))

    ([Author_181] of Autor
     (idAutor "181")
     (nombreAutor "Isabel Allende")
     (autoresSimilares
         [Author_489]
         [Author_654]
         [Author_371]
         [Author_37]
         [Author_528]
         [Author223])
     (sexo female))

    ([Author_182] of Autor
     (idAutor "182")
     (nombreAutor "Haruki Murakami")
     (autoresSimilares
         [Author_437]
         [Author_556]
         [Author_649]
         [Author_562]
         [Author_677]
         [Author_131]
         [Author_897]
         [Author_942]
         [Author_822]
         [Author_585]
         [Author_314]
         [Author1])
     (sexo male))

    ([Author_183] of Autor
     (idAutor "183")
     (nombreAutor "Julio Cortzar")
     (autoresSimilares
         [Author_106]
         [Author_759]
         [Author_421]
         [Author_240]
         [Author_694]
         [Author_775]
         [Author_99]
         [Author_431]
         [Author_42]
         [Author_829]
         [Author_133]
         [Author_448]
         [Author_633]
         [Author_581]
         [Author543])
     (sexo male))

    ([Author_184] of Autor
     (idAutor "184")
     (nombreAutor "Angela Carter")
     (autoresSimilares
         [Author_27]
         [Author_753]
         [Author_73]
         [Author_382]
         [Author_205]
         [Author_32]
         [Author_689]
         [Author_610]
         [Author_632]
         [Author_693]
         [Author_688]
         [Author_479]
         [Author_384]
         [Author_690]
         [Author_684]
         [Author_356]
         [Author_387]
         [Author_243]
         [Author_439]
         [Author372])
     (sexo female))

    ([Author_185] of Autor
     (idAutor "185")
     (nombreAutor "Robin Sloan")
     (autoresSimilares
         [Author_436]
         [Author_388]
         [Author_880]
         [Author_595]
         [Author_662]
         [Author_842]
         [Author_40]
         [Author_611]
         [Author_8]
         [Author_553]
         [Author_77]
         [Author_68]
         [Author_428]
         [Author_932]
         [Author_299]
         [Author_766]
         [Author_883]
         [Author_794]
         [Author_372]
         [Author674])
     (sexo male))

    ([Author_186] of Autor
     (idAutor "186")
     (nombreAutor "Karen Russell")
     (autoresSimilares
         [Author_603]
         [Author_129]
         [Author_417]
         [Author_16]
         [Author_716]
         [Author_788]
         [Author_519]
         [Author_937]
         [Author_109]
         [Author_156]
         [Author_824]
         [Author_712]
         [Author_922]
         [Author_141]
         [Author_413]
         [Author_348]
         [Author124])
     (sexo female))

    ([Author_187] of Autor
     (idAutor "187")
     (nombreAutor "Erick Setiawan")
     (autoresSimilares
         [Author_75]
         [Author_134]
         [Author_672]
         [Author_198]
         [Author_455]
         [Author_786]
         [Author_233]
         [Author_460]
         [Author_360]
         [Author_146]
         [Author_641]
         [Author_447]
         [Author_125]
         [Author_491]
         [Author_498]
         [Author_36]
         [Author_559]
         [Author_255]
         [Author_180]
         [Author89])
     (sexo male))

    ([Author_188] of Autor
     (idAutor "188")
     (nombreAutor "Alice Walker")
     (autoresSimilares
         [Author649])
     (sexo female))

    ([Author_189] of Autor
     (idAutor "189")
     (nombreAutor "Gloria Naylor")
     (autoresSimilares
         [Author_813]
         [Author_889]
         [Author_26]
         [Author_899]
         [Author_713]
         [Author_537]
         [Author_87]
         [Author_82]
         [Author_872]
         [Author_444]
         [Author_209]
         [Author_213]
         [Author_51]
         [Author_826]
         [Author452])
     (sexo female))

    ([Author_190] of Autor
     (idAutor "190")
     (nombreAutor "Chitra Banerjee Divakaruni")
     (autoresSimilares
         [Author_70]
         [Author_312]
         [Author_252]
         [Author_81]
         [Author_290]
         [Author_671]
         [Author_435]
         [Author_884]
         [Author_323]
         [Author_942]
         [Author_391]
         [Author_740]
         [Author_668]
         [Author_619]
         [Author_584]
         [Author_309]
         [Author_756]
         [Author_835]
         [Author_933]
         [Author188])
     (sexo female))

    ([Author_191] of Autor
     (idAutor "191")
     (nombreAutor "Hermann Hesse")
     (autoresSimilares
         [Author_205]
         [Author_11]
         [Author_201]
         [Author_503]
         [Author_558]
         [Author380])
     (sexo male))

    ([Author_192] of Autor
     (idAutor "192")
     (nombreAutor "Ta Obreht")
     (autoresSimilares
         [Author_125]
         [Author_34]
         [Author_605]
         [Author_654]
         [Author_78]
         [Author_524]
         [Author_176]
         [Author_586]
         [Author_634]
         [Author_283]
         [Author_879]
         [Author_122]
         [Author_213]
         [Author_398]
         [Author_420]
         [Author_189]
         [Author582])
     (sexo female))

    ([Author_193] of Autor
     (idAutor "193")
     (nombreAutor "WP Kinsella")
     (autoresSimilares
         [Author_387]
         [Author_465]
         [Author_588]
         [Author_151]
         [Author_216]
         [Author_632]
         [Author_740]
         [Author_806]
         [Author_257]
         [Author_900]
         [Author24])
     (sexo male))

    ([Author_194] of Autor
     (idAutor "194")
     (nombreAutor "Gabriel Garca Mrquez")
     (autoresSimilares
         [Author_753]
         [Author_495]
         [Author610])
     (sexo male))

    ([Author_195] of Autor
     (idAutor "195")
     (nombreAutor "Jorge Amado")
     (autoresSimilares
         [Author_67]
         [Author_594]
         [Author_605]
         [Author_163]
         [Author_220]
         [Author_24]
         [Author_818]
         [Author_629]
         [Author_471]
         [Author348])
     (sexo male))

    ([Author_196] of Autor
     (idAutor "196")
     (nombreAutor "Daniel Wallace")
     (autoresSimilares
         [Author_357]
         [Author_12]
         [Author_253]
         [Author_463]
         [Author_506]
         [Author_83]
         [Author_766]
         [Author_207]
         [Author_239]
         [Author_418]
         [Author_179]
         [Author_746]
         [Author_892]
         [Author_171]
         [Author_603]
         [Author_493]
         [Author_394]
         [Author_153]
         [Author374])
     (sexo male))

    ([Author_197] of Autor
     (idAutor "197")
     (nombreAutor "Luis Alberto Urrea")
     (autoresSimilares
         [Author_454]
         [Author_942]
         [Author_505]
         [Author_798]
         [Author_610]
         [Author_538]
         [Author_214]
         [Author_824]
         [Author539])
     (sexo male))

    ([Author_198] of Autor
     (idAutor "198")
     (nombreAutor "John     Nichols")
     (autoresSimilares
         [Author_469]
         [Author_502]
         [Author_446]
         [Author569])
     (sexo male))

    ([Author_199] of Autor
     (idAutor "199")
     (nombreAutor "Carlos Ruiz Zafn")
     (autoresSimilares
         [Author_391]
         [Author_47]
         [Author_169]
         [Author_612]
         [Author_877]
         [Author_540]
         [Author_194]
         [Author_534]
         [Author_902]
         [Author_514]
         [Author755])
     (sexo male))

    ([Author_200] of Autor
     (idAutor "200")
     (nombreAutor "Gnter Grass")
     (autoresSimilares
         [Author_773]
         [Author220])
     (sexo male))

    ([Author_201] of Autor
     (idAutor "201")
     (nombreAutor "Juan Rulfo")
     (autoresSimilares
         [Author18])
     (sexo male))

    ([Author_202] of Autor
     (idAutor "202")
     (nombreAutor "Eowyn Ivey")
     (autoresSimilares
         [Author_468]
         [Author_881]
         [Author_664]
         [Author_620]
         [Author_654]
         [Author_914]
         [Author_307]
         [Author_375]
         [Author_863]
         [Author_576]
         [Author_533]
         [Author_61]
         [Author_488]
         [Author_310]
         [Author_937]
         [Author373])
     (sexo female))

    ([Author_203] of Autor
     (idAutor "203")
     (nombreAutor "Tom Robbins")
     (autoresSimilares
         [Author_790]
         [Author_776]
         [Author_411]
         [Author_738]
         [Author_187]
         [Author_348]
         [Author_596]
         [Author_561]
         [Author_179]
         [Author_307]
         [Author_841]
         [Author_493]
         [Author_277]
         [Author299])
     (sexo male))

    ([Author_204] of Autor
     (idAutor "204")
     (nombreAutor "Rudolfo Anaya")
     (autoresSimilares
         [Author_617]
         [Author_668]
         [Author940])
     (sexo male))

    ([Author_205] of Autor
     (idAutor "205")
     (nombreAutor "Jeanette Winterson")
     (autoresSimilares
         [Author_252]
         [Author_748]
         [Author_784]
         [Author_820]
         [Author_164]
         [Author_887]
         [Author_512]
         [Author_143]
         [Author728])
     (sexo female))

    ([Author_206] of Autor
     (idAutor "206")
     (nombreAutor "Aimee Bender")
     (autoresSimilares
         [Author_727]
         [Author_207]
         [Author_108]
         [Author_199]
         [Author_56]
         [Author_573]
         [Author_97]
         [Author_481]
         [Author_928]
         [Author_673]
         [Author_290]
         [Author_264]
         [Author_116]
         [Author_259]
         [Author_181]
         [Author_143]
         [Author_319]
         [Author_594]
         [Author141])
     (sexo male))

    ([Author_207] of Autor
     (idAutor "207")
     (nombreAutor "Italo Calvino")
     (autoresSimilares
         [Author_493]
         [Author_200]
         [Author_425]
         [Author_89]
         [Author_773]
         [Author_193]
         [Author_376]
         [Author_281]
         [Author_36]
         [Author_282]
         [Author_799]
         [Author_208]
         [Author_424]
         [Author_815]
         [Author_123]
         [Author_475]
         [Author_260]
         [Author_227]
         [Author364])
     (sexo male))

    ([Author_208] of Autor
     (idAutor "208")
     (nombreAutor "John Crowley")
     (autoresSimilares
         [Author_858]
         [Author_793]
         [Author365])
     (sexo male))

    ([Author_209] of Autor
     (idAutor "209")
     (nombreAutor "Junot Daz")
     (autoresSimilares
         [Author_685]
         [Author_471]
         [Author_59]
         [Author_411]
         [Author_653]
         [Author_590]
         [Author_599]
         [Author_819]
         [Author_368]
         [Author_526]
         [Author_478]
         [Author_593]
         [Author_211]
         [Author_251]
         [Author_387]
         [Author_891]
         [Author_714]
         [Author568])
     (sexo male))

    ([Author_210] of Autor
     (idAutor "210")
     (nombreAutor "Mark Helprin")
     (autoresSimilares
         [Author_242]
         [Author_673]
         [Author_504]
         [Author_285]
         [Author390])
     (sexo male))

    ([Author_211] of Autor
     (idAutor "211")
     (nombreAutor "Yann Martel")
     (autoresSimilares
         [Author_474]
         [Author_628]
         [Author_884]
         [Author_793]
         [Author_71]
         [Author_569]
         [Author_266]
         [Author_739]
         [Author_903]
         [Author_48]
         [Author_372]
         [Author_868]
         [Author_534]
         [Author_53]
         [Author_84]
         [Author_634]
         [Author_395]
         [Author36])
     (sexo male))

    ([Author_212] of Autor
     (idAutor "212")
     (nombreAutor "Jonathan Safran Foer")
     (autoresSimilares
         [Author143])
     (sexo male))

    ([Author_213] of Autor
     (idAutor "213")
     (nombreAutor "Sarah Addison Allen")
     (autoresSimilares
         [Author_487]
         [Author_328]
         [Author_408]
         [Author104])
     (sexo female))

    ([Author_214] of Autor
     (idAutor "214")
     (nombreAutor "Jorge Luis Borges")
     (autoresSimilares
         [Author_596]
         [Author_893]
         [Author_322]
         [Author_134]
         [Author_22]
         [Author_493]
         [Author_460]
         [Author_721]
         [Author_574]
         [Author929])
     (sexo male))

    ([Author_215] of Autor
     (idAutor "215")
     (nombreAutor "Erin Morgenstern")
     (autoresSimilares
         [Author_57]
         [Author_187]
         [Author_634]
         [Author_784]
         [Author_203]
         [Author_364]
         [Author_205]
         [Author_414]
         [Author_590]
         [Author683])
     (sexo female))

    ([Author_216] of Autor
     (idAutor "216")
     (nombreAutor "Mikhail Bulgakov")
     (autoresSimilares
         [Author_450]
         [Author_521]
         [Author_0]
         [Author_227]
         [Author_831]
         [Author_172]
         [Author_832]
         [Author_356]
         [Author_378]
         [Author_693]
         [Author_703]
         [Author_336]
         [Author_510]
         [Author_65]
         [Author_427]
         [Author375])
     (sexo male))

    ([Author_217] of Autor
     (idAutor "217")
     (nombreAutor "Laura Esquivel")
     (autoresSimilares
         [Author_896]
         [Author_918]
         [Author_48]
         [Author195])
     (sexo female))

    ([Author_218] of Autor
     (idAutor "218")
     (nombreAutor "Sharon Creech")
     (autoresSimilares
         [Author_423]
         [Author_186]
         [Author_83]
         [Author_467]
         [Author_517]
         [Author_618]
         [Author_844]
         [Author_155]
         [Author_647]
         [Author_737]
         [Author_530]
         [Author_529]
         [Author_243]
         [Author_668]
         [Author_224]
         [Author_527]
         [Author260])
     (sexo male))

    ([Author_219] of Autor
     (idAutor "219")
     (nombreAutor "Anthony Burgess")
     (autoresSimilares
         [Author891])
     (sexo male))

    ([Author_220] of Autor
     (idAutor "220")
     (nombreAutor "Willa Cather")
     (autoresSimilares
         [Author_5]
         [Author_725]
         [Author_101]
         [Author_783]
         [Author_856]
         [Author_239]
         [Author_853]
         [Author_557]
         [Author_394]
         [Author809])
     (sexo female))

    ([Author_221] of Autor
     (idAutor "221")
     (nombreAutor "Thomas Hardy")
     (autoresSimilares
         [Author_481]
         [Author_427]
         [Author_872]
         [Author_161]
         [Author_456]
         [Author_557]
         [Author571])
     (sexo male))

    ([Author_222] of Autor
     (idAutor "222")
     (nombreAutor "Charles Dickens")
     (autoresSimilares
         [Author_234]
         [Author_696]
         [Author_402]
         [Author_266]
         [Author_927]
         [Author_138]
         [Author_173]
         [Author_925]
         [Author_328]
         [Author_472]
         [Author_297]
         [Author_849]
         [Author_165]
         [Author_508]
         [Author_751]
         [Author_492]
         [Author_828]
         [Author595])
     (sexo male))

    ([Author_223] of Autor
     (idAutor "223")
     (nombreAutor "Ralph Ellison")
     (autoresSimilares
         [Author289])
     (sexo male))

    ([Author_224] of Autor
     (idAutor "224")
     (nombreAutor "Victor Hugo")
     (autoresSimilares
         [Author_505]
         [Author_75]
         [Author_770]
         [Author_748]
         [Author_432]
         [Author_550]
         [Author272])
     (sexo male))

    ([Author_225] of Autor
     (idAutor "225")
     (nombreAutor "Mary Ann Shaffer")
     (autoresSimilares
         [Author_95]
         [Author_597]
         [Author_277]
         [Author_698]
         [Author_134]
         [Author675])
     (sexo female))

    ([Author_226] of Autor
     (idAutor "226")
     (nombreAutor "Zora Neale Hurston")
     (autoresSimilares
         [Author_3]
         [Author_829]
         [Author_170]
         [Author_593]
         [Author_228]
         [Author_330]
         [Author_272]
         [Author_753]
         [Author_58]
         [Author_204]
         [Author_780]
         [Author_267]
         [Author_756]
         [Author541])
     (sexo female))

    ([Author_227] of Autor
     (idAutor "227")
     (nombreAutor "Richard Bach")
     (autoresSimilares
         [Author_854]
         [Author_550]
         [Author_315]
         [Author_655]
         [Author_783]
         [Author_144]
         [Author_816]
         [Author_760]
         [Author_178]
         [Author_607]
         [Author_912]
         [Author_638]
         [Author_480]
         [Author_811]
         [Author_896]
         [Author84])
     (sexo male))

    ([Author_228] of Autor
     (idAutor "228")
     (nombreAutor "Barbara Kingsolver")
     (autoresSimilares
         [Author_79]
         [Author_628]
         [Author_668]
         [Author_344]
         [Author_564]
         [Author_439]
         [Author_424]
         [Author_697]
         [Author_646]
         [Author_758]
         [Author_699]
         [Author_31]
         [Author_318]
         [Author_288]
         [Author_320]
         [Author44])
     (sexo female))

    ([Author_229] of Autor
     (idAutor "229")
     (nombreAutor "Gustave Flaubert")
     (autoresSimilares
         [Author_906]
         [Author_700]
         [Author_125]
         [Author_489]
         [Author_207]
         [Author_730]
         [Author_339]
         [Author_277]
         [Author52])
     (sexo male))

    ([Author_230] of Autor
     (idAutor "230")
     (nombreAutor "John Steinbeck")
     (autoresSimilares
         [Author_234]
         [Author_285]
         [Author_20]
         [Author_656]
         [Author_72]
         [Author_798]
         [Author_360]
         [Author696])
     (sexo male))

    ([Author_231] of Autor
     (idAutor "231")
     (nombreAutor "Mark Twain")
     (autoresSimilares
         [Author_745]
         [Author_868]
         [Author_402]
         [Author_683]
         [Author_34]
         [Author_134]
         [Author233])
     (sexo male))

    ([Author_232] of Autor
     (idAutor "232")
     (nombreAutor "Joseph Conrad")
     (autoresSimilares
         [Author_45]
         [Author_534]
         [Author_687]
         [Author_614]
         [Author_710]
         [Author_816]
         [Author_702]
         [Author_740]
         [Author_127]
         [Author_265]
         [Author822])
     (sexo male))

    ([Author_233] of Autor
     (idAutor "233")
     (nombreAutor "Sue Monk Kidd")
     (autoresSimilares
         [Author_923]
         [Author_30]
         [Author351])
     (sexo female))

    ([Author_234] of Autor
     (idAutor "234")
     (nombreAutor "Orson Scott Card")
     (autoresSimilares
         [Author_731]
         [Author_865]
         [Author_672]
         [Author_842]
         [Author_738]
         [Author_615]
         [Author_924]
         [Author499])
     (sexo male))

    ([Author_235] of Autor
     (idAutor "235")
     (nombreAutor "Chinua Achebe")
     (autoresSimilares
         [Author_938]
         [Author_645]
         [Author_745]
         [Author_34]
         [Author_541]
         [Author_114]
         [Author_25]
         [Author_866]
         [Author_672]
         [Author106])
     (sexo male))

    ([Author_236] of Autor
     (idAutor "236")
     (nombreAutor "Jack London")
     (autoresSimilares
         [Author_761]
         [Author_567]
         [Author_156]
         [Author_116]
         [Author_862]
         [Author_929]
         [Author_53]
         [Author_331]
         [Author276])
     (sexo male))

    ([Author_237] of Autor
     (idAutor "237")
     (nombreAutor "Ken Kesey")
     (autoresSimilares
         [Author_485]
         [Author_303]
         [Author_337]
         [Author_302]
         [Author_360]
         [Author_14]
         [Author_199]
         [Author_766]
         [Author_12]
         [Author671])
     (sexo male))

    ([Author_238] of Autor
     (idAutor "238")
     (nombreAutor "Ernest Hemingway")
     (autoresSimilares
         [Author_617]
         [Author_49]
         [Author_738]
         [Author_125]
         [Author_565]
         [Author_776]
         [Author_9]
         [Author_311]
         [Author_837]
         [Author_490]
         [Author_899]
         [Author_218]
         [Author_832]
         [Author_270]
         [Author_488]
         [Author_807]
         [Author928])
     (sexo male))

    ([Author_239] of Autor
     (idAutor "239")
     (nombreAutor "Geoffrey Chaucer")
     (autoresSimilares
         [Author_473]
         [Author_831]
         [Author_380]
         [Author_130]
         [Author_408]
         [Author_758]
         [Author_773]
         [Author_313]
         [Author_733]
         [Author_720]
         [Author_785]
         [Author_92]
         [Author_759]
         [Author_612]
         [Author463])
     (sexo male))

    ([Author_240] of Autor
     (idAutor "240")
     (nombreAutor "William Paul Young")
     (autoresSimilares
         [Author_558]
         [Author586])
     (sexo male))

    ([Author_241] of Autor
     (idAutor "241")
     (nombreAutor "Richard  Adams")
     (autoresSimilares
         [Author_388]
         [Author_202]
         [Author_154]
         [Author463])
     (sexo male))

    ([Author_242] of Autor
     (idAutor "242")
     (nombreAutor "Fyodor Dostoyevsky")
     (autoresSimilares
         [Author_664]
         [Author_468]
         [Author_63]
         [Author_471]
         [Author_924]
         [Author_252]
         [Author_86]
         [Author_807]
         [Author_135]
         [Author_652]
         [Author_597]
         [Author_51]
         [Author_580]
         [Author_801]
         [Author264])
     (sexo male))

    ([Author_243] of Autor
     (idAutor "243")
     (nombreAutor "Albert Camus")
     (autoresSimilares
         [Author_357]
         [Author_238]
         [Author_128]
         [Author_538]
         [Author_373]
         [Author_944]
         [Author_477]
         [Author_567]
         [Author_46]
         [Author_273]
         [Author_190]
         [Author_65]
         [Author_432]
         [Author_334]
         [Author508])
     (sexo male))

    ([Author_244] of Autor
     (idAutor "244")
     (nombreAutor "John Boyne")
     (autoresSimilares
         [Author_648]
         [Author_837]
         [Author_546]
         [Author_747]
         [Author_27]
         [Author_357]
         [Author_500]
         [Author_597]
         [Author_842]
         [Author_743]
         [Author827])
     (sexo male))

    ([Author_245] of Autor
     (idAutor "245")
     (nombreAutor "Sara Gruen")
     (autoresSimilares
         [Author_402]
         [Author_170]
         [Author_491]
         [Author_519]
         [Author_643]
         [Author_274]
         [Author_473]
         [Author_358]
         [Author_786]
         [Author_459]
         [Author_166]
         [Author_395]
         [Author_564]
         [Author_806]
         [Author_860]
         [Author_122]
         [Author168])
     (sexo female))

    ([Author_246] of Autor
     (idAutor "246")
     (nombreAutor "Alice Sebold")
     (autoresSimilares
         [Author_605]
         [Author_704]
         [Author_810]
         [Author559])
     (sexo male))

    ([Author_247] of Autor
     (idAutor "247")
     (nombreAutor "Paulo Coelho")
     (autoresSimilares
         [Author_468]
         [Author_553]
         [Author_746]
         [Author_671]
         [Author_676]
         [Author_345]
         [Author_875]
         [Author_489]
         [Author_695]
         [Author_689]
         [Author_36]
         [Author_235]
         [Author_922]
         [Author_407]
         [Author_88]
         [Author_887]
         [Author_854]
         [Author64])
     (sexo male))

    ([Author_248] of Autor
     (idAutor "248")
     (nombreAutor "Mary Wollstonecraft Shelley")
     (autoresSimilares
         [Author_634]
         [Author_231]
         [Author_312]
         [Author_800]
         [Author_219]
         [Author_559]
         [Author_168]
         [Author_860]
         [Author_577]
         [Author_338]
         [Author_450]
         [Author92])
     (sexo female))

    ([Author_249] of Autor
     (idAutor "249")
     (nombreAutor "Daniel Keyes")
     (autoresSimilares
         [Author_110]
         [Author_213]
         [Author_813]
         [Author_887]
         [Author_658]
         [Author_0]
         [Author_538]
         [Author_531]
         [Author_655]
         [Author_219]
         [Author_53]
         [Author_134]
         [Author_793]
         [Author_478]
         [Author_470]
         [Author_466]
         [Author872])
     (sexo male))

    ([Author_250] of Autor
     (idAutor "250")
     (nombreAutor "Emily Bront")
     (autoresSimilares
         [Author_526]
         [Author_943]
         [Author_179]
         [Author610])
     (sexo female))

    ([Author_251] of Autor
     (idAutor "251")
     (nombreAutor "Kathryn Stockett")
     (autoresSimilares
         [Author_58]
         [Author_712]
         [Author_312]
         [Author_636]
         [Author_13]
         [Author_423]
         [Author_285]
         [Author_754]
         [Author_580]
         [Author_930]
         [Author246])
     (sexo female))

    ([Author_252] of Autor
     (idAutor "252")
     (nombreAutor "Mark Haddon")
     (autoresSimilares
         [Author_361]
         [Author_234]
         [Author_204]
         [Author_463]
         [Author_379]
         [Author689])
     (sexo male))

    ([Author_253] of Autor
     (idAutor "253")
     (nombreAutor "Nathaniel Hawthorne")
     (autoresSimilares
         [Author_622]
         [Author_21]
         [Author_427]
         [Author_894]
         [Author_369]
         [Author_389]
         [Author_374]
         [Author_304]
         [Author_306]
         [Author_892]
         [Author_528]
         [Author_13]
         [Author_34]
         [Author_919]
         [Author_769]
         [Author_48]
         [Author_43]
         [Author_864]
         [Author_160]
         [Author877])
     (sexo male))

    ([Author_254] of Autor
     (idAutor "254")
     (nombreAutor "Antoine de Saint-Exupry")
     (autoresSimilares
         [Author_310]
         [Author_375]
         [Author_607]
         [Author_602]
         [Author_511]
         [Author_572]
         [Author235])
     (sexo male))

    ([Author_255] of Autor
     (idAutor "255")
     (nombreAutor "Markus Zusak")
     (autoresSimilares
         [Author475])
     (sexo male))

    ([Author_256] of Autor
     (idAutor "256")
     (nombreAutor "George Orwell")
     (autoresSimilares
         [Author_120]
         [Author_182]
         [Author_400]
         [Author_757]
         [Author_742]
         [Author_762]
         [Author_458]
         [Author_699]
         [Author_219]
         [Author906])
     (sexo male))

    ([Author_257] of Autor
     (idAutor "257")
     (nombreAutor "JD Salinger")
     (autoresSimilares
         [Author_536]
         [Author_870]
         [Author_911]
         [Author_342]
         [Author_703]
         [Author_8]
         [Author_288]
         [Author_863]
         [Author_884]
         [Author_666]
         [Author351])
     (sexo male))

    ([Author_258] of Autor
     (idAutor "258")
     (nombreAutor "Charlotte Bront")
     (autoresSimilares
         [Author_683]
         [Author_348]
         [Author_134]
         [Author_255]
         [Author_312]
         [Author_397]
         [Author_226]
         [Author_94]
         [Author_223]
         [Author_183]
         [Author549])
     (sexo female))

    ([Author_259] of Autor
     (idAutor "259")
     (nombreAutor "William Golding")
     (autoresSimilares
         [Author_522]
         [Author_122]
         [Author_476]
         [Author_100]
         [Author_854]
         [Author_914]
         [Author_903]
         [Author_852]
         [Author_114]
         [Author_782]
         [Author_865]
         [Author376])
     (sexo male))

    ([Author_260] of Autor
     (idAutor "260")
     (nombreAutor "F Scott Fitzgerald")
     (autoresSimilares
         [Author_52]
         [Author_536]
         [Author_353]
         [Author_96]
         [Author_191]
         [Author_445]
         [Author_708]
         [Author_0]
         [Author_661]
         [Author_561]
         [Author_29]
         [Author797])
     (sexo male))

    ([Author_261] of Autor
     (idAutor "261")
     (nombreAutor "Harper Lee")
     (autoresSimilares
         [Author_686]
         [Author_553]
         [Author_327]
         [Author_757]
         [Author_906]
         [Author_815]
         [Author_765]
         [Author_666]
         [Author447])
     (sexo female))

    ([Author_262] of Autor
     (idAutor "262")
     (nombreAutor "Ian McEwan")
     (autoresSimilares
         [Author_410]
         [Author_761]
         [Author_530]
         [Author_358]
         [Author_287]
         [Author_332]
         [Author_126]
         [Author_269]
         [Author_860]
         [Author_714]
         [Author_603]
         [Author_596]
         [Author_533]
         [Author_415]
         [Author_504]
         [Author_625]
         [Author_650]
         [Author453])
     (sexo male))

    ([Author_263] of Autor
     (idAutor "263")
     (nombreAutor "Michael Cox")
     (autoresSimilares
         [Author_445]
         [Author_481]
         [Author814])
     (sexo male))

    ([Author_264] of Autor
     (idAutor "264")
     (nombreAutor "Kate Mosse")
     (autoresSimilares
         [Author_851]
         [Author_772]
         [Author_212]
         [Author_135]
         [Author_396]
         [Author_345]
         [Author_279]
         [Author_25]
         [Author_696]
         [Author_652]
         [Author_309]
         [Author_270]
         [Author_386]
         [Author285])
     (sexo male))

    ([Author_265] of Autor
     (idAutor "265")
     (nombreAutor "Arturo Prez-Reverte")
     (autoresSimilares
         [Author_670]
         [Author_72]
         [Author_918]
         [Author_309]
         [Author_464]
         [Author_209]
         [Author_593]
         [Author_311]
         [Author_26]
         [Author_546]
         [Author710])
     (sexo male))

    ([Author_266] of Autor
     (idAutor "266")
     (nombreAutor "Boris Akunin")
     (autoresSimilares
         [Author_622]
         [Author_916]
         [Author155])
     (sexo male))

    ([Author_267] of Autor
     (idAutor "267")
     (nombreAutor "Karen Maitland")
     (autoresSimilares
         [Author_945]
         [Author_921]
         [Author42])
     (sexo female))

    ([Author_268] of Autor
     (idAutor "268")
     (nombreAutor "Umberto Eco")
     (autoresSimilares
         [Author_685]
         [Author_610]
         [Author_775]
         [Author_906]
         [Author_722]
         [Author793])
     (sexo male))

    ([Author_269] of Autor
     (idAutor "269")
     (nombreAutor "Walter Mosley")
     (autoresSimilares
         [Author_242]
         [Author_305]
         [Author_627]
         [Author_468]
         [Author_124]
         [Author_407]
         [Author_5]
         [Author_90]
         [Author_162]
         [Author_252]
         [Author_833]
         [Author_888]
         [Author_525]
         [Author721])
     (sexo male))

    ([Author_270] of Autor
     (idAutor "270")
     (nombreAutor "Shelley Gray")
     (autoresSimilares
         [Author_275]
         [Author_650]
         [Author_78]
         [Author_556]
         [Author_543]
         [Author_37]
         [Author_699]
         [Author_89]
         [Author_733]
         [Author_154]
         [Author_511]
         [Author_386]
         [Author_456]
         [Author_470]
         [Author_79]
         [Author_441]
         [Author_711]
         [Author_189]
         [Author634])
     (sexo male))

    ([Author_271] of Autor
     (idAutor "271")
     (nombreAutor "AS Byatt")
     (autoresSimilares
         [Author_668]
         [Author_218]
         [Author_408]
         [Author_297]
         [Author_721]
         [Author_808]
         [Author_388]
         [Author121])
     (sexo female))

    ([Author_272] of Autor
     (idAutor "272")
     (nombreAutor "Jamie Ford")
     (autoresSimilares
         [Author_599]
         [Author_926]
         [Author_4]
         [Author_855]
         [Author_453]
         [Author_259]
         [Author_165]
         [Author_179]
         [Author574])
     (sexo male))

    ([Author_273] of Autor
     (idAutor "273")
     (nombreAutor "Kate Morton")
     (autoresSimilares
         [Author_545]
         [Author_621]
         [Author_712]
         [Author_632]
         [Author_757]
         [Author_396]
         [Author_165]
         [Author_489]
         [Author_539]
         [Author_912]
         [Author30])
     (sexo female))

    ([Author_274] of Autor
     (idAutor "274")
     (nombreAutor "Sarah Waters")
     (autoresSimilares
         [Author_593]
         [Author_85]
         [Author_899]
         [Author_164]
         [Author_517]
         [Author_395]
         [Author_518]
         [Author_815]
         [Author_484]
         [Author_402]
         [Author_825]
         [Author_786]
         [Author777])
     (sexo female))

    ([Author_275] of Autor
     (idAutor "275")
     (nombreAutor "Matthew Pearl")
     (autoresSimilares
         [Author_8]
         [Author_647]
         [Author_228]
         [Author_783]
         [Author_332]
         [Author_39]
         [Author_174]
         [Author_59]
         [Author_819]
         [Author_674]
         [Author_900]
         [Author_485]
         [Author_296]
         [Author196])
     (sexo male))

    ([Author_276] of Autor
     (idAutor "276")
     (nombreAutor "Robert   Harris")
     (autoresSimilares
         [Author_270]
         [Author_782]
         [Author_836]
         [Author_525]
         [Author_819]
         [Author_220]
         [Author_612]
         [Author_182]
         [Author_76]
         [Author_519]
         [Author_593]
         [Author_313]
         [Author_261]
         [Author419])
     (sexo male))

    ([Author_277] of Autor
     (idAutor "277")
     (nombreAutor "Tom Rob Smith")
     (autoresSimilares
         [Author_466]
         [Author_657]
         [Author_419]
         [Author_128]
         [Author_72]
         [Author_757]
         [Author_670]
         [Author_574]
         [Author543])
     (sexo male))

    ([Author_278] of Autor
     (idAutor "278")
     (nombreAutor "Alan Bradley")
     (autoresSimilares
         [Author_641]
         [Author_907]
         [Author_454]
         [Author_170]
         [Author845])
     (sexo male))

    ([Author_279] of Autor
     (idAutor "279")
     (nombreAutor "Patrick Sskind")
     (autoresSimilares
         [Author_825]
         [Author_727]
         [Author_849]
         [Author_605]
         [Author_876]
         [Author_317]
         [Author_529]
         [Author_313]
         [Author_299]
         [Author_562]
         [Author_814]
         [Author_624]
         [Author_594]
         [Author_143]
         [Author_129]
         [Author_132]
         [Author_336]
         [Author_781]
         [Author_803]
         [Author196])
     (sexo male))

    ([Author_280] of Autor
     (idAutor "280")
     (nombreAutor "Diane Setterfield")
     (autoresSimilares
         [Author_480]
         [Author_39]
         [Author_792]
         [Author_875]
         [Author_245]
         [Author_36]
         [Author_287]
         [Author_259]
         [Author_182]
         [Author_852]
         [Author_803]
         [Author_291]
         [Author_326]
         [Author_647]
         [Author_396]
         [Author_467]
         [Author_393]
         [Author_854]
         [Author_790]
         [Author695])
     (sexo female))

    ([Author_281] of Autor
     (idAutor "281")
     (nombreAutor "Elizabeth Kostova")
     (autoresSimilares
         [Author_271]
         [Author_930]
         [Author_891]
         [Author_617]
         [Author_545]
         [Author_349]
         [Author_425]
         [Author_469]
         [Author_85]
         [Author_146]
         [Author_737]
         [Author_548]
         [Author_196]
         [Author_70]
         [Author_932]
         [Author_650]
         [Author304])
     (sexo female))

    ([Author_282] of Autor
     (idAutor "282")
     (nombreAutor "Jean M Auel")
     (autoresSimilares
         [Author_900]
         [Author_196]
         [Author_191]
         [Author_846]
         [Author_386]
         [Author_778]
         [Author829])
     (sexo female))

    ([Author_283] of Autor
     (idAutor "283")
     (nombreAutor "Max Cummings")
     (autoresSimilares
         [Author_457]
         [Author_669]
         [Author_577]
         [Author_419]
         [Author_924]
         [Author_898]
         [Author_185]
         [Author_67]
         [Author377])
     (sexo male))

    ([Author_284] of Autor
     (idAutor "284")
     (nombreAutor "Robertson Davies")
     (autoresSimilares
         [Author_45]
         [Author_536]
         [Author_421]
         [Author_471]
         [Author_237]
         [Author_143]
         [Author_553]
         [Author_418]
         [Author_315]
         [Author_641]
         [Author_271]
         [Author_875]
         [Author_191]
         [Author_164]
         [Author_616]
         [Author_844]
         [Author_293]
         [Author217])
     (sexo male))

    ([Author_285] of Autor
     (idAutor "285")
     (nombreAutor "Judith Guest")
     (autoresSimilares
         [Author_556]
         [Author_795]
         [Author_708]
         [Author_315]
         [Author811])
     (sexo male))

    ([Author_286] of Autor
     (idAutor "286")
     (nombreAutor "John Updike")
     (autoresSimilares
         [Author_161]
         [Author_64]
         [Author_942]
         [Author_93]
         [Author_837]
         [Author_304]
         [Author_856]
         [Author_362]
         [Author_107]
         [Author_721]
         [Author_426]
         [Author_318]
         [Author_931]
         [Author_667]
         [Author_296]
         [Author474])
     (sexo male))

    ([Author_287] of Autor
     (idAutor "287")
     (nombreAutor "Robert Musil")
     (autoresSimilares
         [Author_763]
         [Author_104]
         [Author_653]
         [Author_323]
         [Author_274]
         [Author_726]
         [Author_85]
         [Author175])
     (sexo male))

    ([Author_288] of Autor
     (idAutor "288")
     (nombreAutor "Dave Eggers")
     (autoresSimilares
         [Author_89]
         [Author_868]
         [Author_149]
         [Author_128]
         [Author_499]
         [Author_751]
         [Author_770]
         [Author_703]
         [Author_893]
         [Author_1]
         [Author329])
     (sexo male))

    ([Author_289] of Autor
     (idAutor "289")
     (nombreAutor "Zadie Smith")
     (autoresSimilares
         [Author145])
     (sexo female))

    ([Author_290] of Autor
     (idAutor "290")
     (nombreAutor "Mark Z Danielewski")
     (autoresSimilares
         [Author_782]
         [Author_604]
         [Author_554]
         [Author_61]
         [Author842])
     (sexo male))

    ([Author_291] of Autor
     (idAutor "291")
     (nombreAutor "Richard Russo")
     (autoresSimilares
         [Author_840]
         [Author_138]
         [Author_208]
         [Author_466]
         [Author_301]
         [Author_596]
         [Author_225]
         [Author_612]
         [Author_366]
         [Author_465]
         [Author_509]
         [Author_944]
         [Author_532]
         [Author_187]
         [Author_374]
         [Author_252]
         [Author_429]
         [Author703])
     (sexo male))

    ([Author_292] of Autor
     (idAutor "292")
     (nombreAutor "Gregory David Roberts")
     (autoresSimilares
         [Author_725]
         [Author_391]
         [Author_599]
         [Author_873]
         [Author_598]
         [Author_651]
         [Author_50]
         [Author_921]
         [Author_748]
         [Author_680]
         [Author843])
     (sexo male))

    ([Author_293] of Autor
     (idAutor "293")
     (nombreAutor "Abraham   Verghese")
     (autoresSimilares
         [Author_898]
         [Author_653]
         [Author_118]
         [Author342])
     (sexo male))

    ([Author_294] of Autor
     (idAutor "294")
     (nombreAutor "Nicole Krauss")
     (autoresSimilares
         [Author_806]
         [Author_285]
         [Author_685]
         [Author_486]
         [Author_547]
         [Author_544]
         [Author_48]
         [Author_765]
         [Author690])
     (sexo female))

    ([Author_295] of Autor
     (idAutor "295")
     (nombreAutor "Jonathan Franzen")
     (autoresSimilares
         [Author_872]
         [Author_231]
         [Author_472]
         [Author_795]
         [Author_914]
         [Author_347]
         [Author_284]
         [Author_924]
         [Author_332]
         [Author_115]
         [Author_920]
         [Author_923]
         [Author_857]
         [Author_705]
         [Author_846]
         [Author_943]
         [Author_240]
         [Author_418]
         [Author_451]
         [Author704])
     (sexo male))

    ([Author_296] of Autor
     (idAutor "296")
     (nombreAutor "David Mitchell")
     (autoresSimilares
         [Author_185]
         [Author_320]
         [Author822])
     (sexo male))

    ([Author_297] of Autor
     (idAutor "297")
     (nombreAutor "Lisa See")
     (autoresSimilares
         [Author_846]
         [Author_580]
         [Author_337]
         [Author_247]
         [Author_944]
         [Author790])
     (sexo male))

    ([Author_298] of Autor
     (idAutor "298")
     (nombreAutor "Michael Chabon")
     (autoresSimilares
         [Author_818]
         [Author_557]
         [Author_558]
         [Author_343]
         [Author_636]
         [Author_851]
         [Author_315]
         [Author_252]
         [Author_450]
         [Author_928]
         [Author_404]
         [Author_502]
         [Author870])
     (sexo male))

    ([Author_299] of Autor
     (idAutor "299")
     (nombreAutor "Ann Patchett")
     (autoresSimilares
         [Author_534]
         [Author_380]
         [Author_82]
         [Author_458]
         [Author_544]
         [Author_119]
         [Author_151]
         [Author389])
     (sexo female))

    ([Author_300] of Autor
     (idAutor "300")
     (nombreAutor "Jeffrey Eugenides")
     (autoresSimilares
         [Author_293]
         [Author_794]
         [Author_528]
         [Author_742]
         [Author_311]
         [Author_855]
         [Author749])
     (sexo male))

    ([Author_301] of Autor
     (idAutor "301")
     (nombreAutor "Gary Jennings")
     (autoresSimilares
         [Author_283]
         [Author_767]
         [Author_361]
         [Author543])
     (sexo male))

    ([Author_302] of Autor
     (idAutor "302")
     (nombreAutor "Michel Faber")
     (autoresSimilares
         [Author_826]
         [Author_33]
         [Author_897]
         [Author_553]
         [Author_421]
         [Author_868]
         [Author_650]
         [Author_617]
         [Author_327]
         [Author_165]
         [Author_223]
         [Author_533]
         [Author_808]
         [Author_648]
         [Author_476]
         [Author_11]
         [Author639])
     (sexo male))

    ([Author_303] of Autor
     (idAutor "303")
     (nombreAutor "James A Michener")
     (autoresSimilares
         [Author_349]
         [Author_361]
         [Author_275]
         [Author_635]
         [Author_765]
         [Author_532]
         [Author_634]
         [Author_463]
         [Author_932]
         [Author_114]
         [Author_218]
         [Author_590]
         [Author_944]
         [Author_21]
         [Author190])
     (sexo male))

    ([Author_304] of Autor
     (idAutor "304")
     (nombreAutor "Bernard Cornwell")
     (autoresSimilares
         [Author_609]
         [Author_216]
         [Author_637]
         [Author_803]
         [Author_899]
         [Author_512]
         [Author_502]
         [Author_591]
         [Author_220]
         [Author_221]
         [Author_356]
         [Author_936]
         [Author36])
     (sexo male))

    ([Author_305] of Autor
     (idAutor "305")
     (nombreAutor "Gore Vidal")
     (autoresSimilares
         [Author_538]
         [Author_824]
         [Author_834]
         [Author_387]
         [Author_303]
         [Author_744]
         [Author_131]
         [Author_513]
         [Author_556]
         [Author_422]
         [Author268])
     (sexo male))

    ([Author_306] of Autor
     (idAutor "306")
     (nombreAutor "MM Kaye")
     (autoresSimilares
         [Author_238]
         [Author_508]
         [Author_861]
         [Author_613]
         [Author_528]
         [Author_883]
         [Author843])
     (sexo female))

    ([Author_307] of Autor
     (idAutor "307")
     (nombreAutor "John Irving")
     (autoresSimilares
         [Author_316]
         [Author_112]
         [Author_358]
         [Author_800]
         [Author_905]
         [Author_440]
         [Author_828]
         [Author_602]
         [Author_935]
         [Author_831]
         [Author_564]
         [Author_816]
         [Author_646]
         [Author_433]
         [Author_207]
         [Author_767]
         [Author_187]
         [Author907])
     (sexo male))

    ([Author_308] of Autor
     (idAutor "308")
     (nombreAutor "Patrick OBrian")
     (autoresSimilares
         [Author_749]
         [Author_817]
         [Author_160]
         [Author_1]
         [Author_828]
         [Author_662]
         [Author_614]
         [Author_462]
         [Author_653]
         [Author_757]
         [Author_677]
         [Author_268]
         [Author_64]
         [Author_164]
         [Author_110]
         [Author_894]
         [Author_471]
         [Author_654]
         [Author_875]
         [Author665])
     (sexo male))

    ([Author_309] of Autor
     (idAutor "309")
     (nombreAutor "Edward Rutherfurd")
     (autoresSimilares
         [Author_819]
         [Author_674]
         [Author_2]
         [Author_347]
         [Author_870]
         [Author_615]
         [Author_575]
         [Author_565]
         [Author_552]
         [Author_255]
         [Author76])
     (sexo male))

    ([Author_310] of Autor
     (idAutor "310")
     (nombreAutor "John Fowles")
     (autoresSimilares
         [Author_227]
         [Author_332]
         [Author_197]
         [Author_338]
         [Author_823]
         [Author_581]
         [Author_740]
         [Author_391]
         [Author_808]
         [Author_881]
         [Author59])
     (sexo male))

    ([Author_311] of Autor
     (idAutor "311")
     (nombreAutor "Kathleen Winsor")
     (autoresSimilares
         [Author_442]
         [Author_415]
         [Author_364]
         [Author_926]
         [Author_478]
         [Author_635]
         [Author_755]
         [Author_570]
         [Author_476]
         [Author_481]
         [Author_408]
         [Author_237]
         [Author_273]
         [Author_806]
         [Author_905]
         [Author_605]
         [Author_807]
         [Author3])
     (sexo female))

    ([Author_312] of Autor
     (idAutor "312")
     (nombreAutor "John Jakes")
     (autoresSimilares
         [Author_865]
         [Author_429]
         [Author_883]
         [Author_870]
         [Author_374]
         [Author_56]
         [Author_264]
         [Author_683]
         [Author_64]
         [Author_729]
         [Author_735]
         [Author_738]
         [Author_187]
         [Author_441]
         [Author_884]
         [Author_75]
         [Author_694]
         [Author102])
     (sexo male))

    ([Author_313] of Autor
     (idAutor "313")
     (nombreAutor "Colleen McCullough")
     (autoresSimilares
         [Author_798]
         [Author_167]
         [Author_774]
         [Author_492]
         [Author_668]
         [Author_551]
         [Author_607]
         [Author_180]
         [Author_213]
         [Author_679]
         [Author_859]
         [Author_803]
         [Author_771]
         [Author_501]
         [Author_626]
         [Author704])
     (sexo female))

    ([Author_314] of Autor
     (idAutor "314")
     (nombreAutor "James Clavell")
     (autoresSimilares
         [Author_805]
         [Author_584]
         [Author_96]
         [Author_385]
         [Author_272]
         [Author_933]
         [Author_244]
         [Author_382]
         [Author_757]
         [Author_412]
         [Author_674]
         [Author546])
     (sexo male))

    ([Author_315] of Autor
     (idAutor "315")
     (nombreAutor "Michelle Moran")
     (autoresSimilares
         [Author_84]
         [Author_845]
         [Author_858]
         [Author_437]
         [Author_449]
         [Author_418]
         [Author_664]
         [Author_166]
         [Author_697]
         [Author_397]
         [Author_203]
         [Author_668]
         [Author_286]
         [Author_355]
         [Author_485]
         [Author_890]
         [Author_229]
         [Author56])
     (sexo female))

    ([Author_316] of Autor
     (idAutor "316")
     (nombreAutor "Sarah Dunant")
     (autoresSimilares
         [Author_715]
         [Author_576]
         [Author_604]
         [Author_757]
         [Author_740]
         [Author_925]
         [Author638])
     (sexo male))

    ([Author_317] of Autor
     (idAutor "317")
     (nombreAutor "Susanna Clarke")
     (autoresSimilares
         [Author_611]
         [Author_199]
         [Author_897]
         [Author_349]
         [Author_27]
         [Author_733]
         [Author_339]
         [Author_6]
         [Author_359]
         [Author_911]
         [Author_677]
         [Author_178]
         [Author109])
     (sexo female))

    ([Author_318] of Autor
     (idAutor "318")
     (nombreAutor "Hilary Mantel")
     (autoresSimilares
         [Author_226]
         [Author_871]
         [Author_732]
         [Author_122]
         [Author_555]
         [Author_901]
         [Author_731]
         [Author_24]
         [Author_660]
         [Author_38]
         [Author_581]
         [Author_562]
         [Author_213]
         [Author_148]
         [Author841])
     (sexo female))

    ([Author_319] of Autor
     (idAutor "319")
     (nombreAutor "Alan Brennert")
     (autoresSimilares
         [Author_434]
         [Author531])
     (sexo male))

    ([Author_320] of Autor
     (idAutor "320")
     (nombreAutor "Irving Stone")
     (autoresSimilares
         [Author_313]
         [Author_95]
         [Author_16]
         [Author_691]
         [Author_817]
         [Author_942]
         [Author_91]
         [Author_943]
         [Author_612]
         [Author_510]
         [Author_216]
         [Author_638]
         [Author_603]
         [Author_282]
         [Author_600]
         [Author340])
     (sexo male))

    ([Author_321] of Autor
     (idAutor "321")
     (nombreAutor "Fannie Flagg")
     (autoresSimilares
         [Author_649]
         [Author_564]
         [Author_806]
         [Author38])
     (sexo male))

    ([Author_322] of Autor
     (idAutor "322")
     (nombreAutor "Anthony Doerr")
     (autoresSimilares
         [Author_220]
         [Author_247]
         [Author_189]
         [Author_743]
         [Author_559]
         [Author_501]
         [Author_376]
         [Author_770]
         [Author_374]
         [Author_261]
         [Author_799]
         [Author_274]
         [Author_687]
         [Author_363]
         [Author_739]
         [Author649])
     (sexo male))

    ([Author_323] of Autor
     (idAutor "323")
     (nombreAutor "Donna Woolfolk Cross")
     (autoresSimilares
         [Author_895]
         [Author_800]
         [Author_816]
         [Author_802]
         [Author_252]
         [Author_511]
         [Author_61]
         [Author_178]
         [Author_615]
         [Author_542]
         [Author_185]
         [Author_678]
         [Author_458]
         [Author_526]
         [Author_583]
         [Author_136]
         [Author731])
     (sexo female))

    ([Author_324] of Autor
     (idAutor "324")
     (nombreAutor "Leon Uris")
     (autoresSimilares
         [Author_635]
         [Author_353]
         [Author_698]
         [Author_644]
         [Author_97]
         [Author_120]
         [Author_871]
         [Author_490]
         [Author219])
     (sexo male))

    ([Author_325] of Autor
     (idAutor "325")
     (nombreAutor "Anya Seton")
     (autoresSimilares
         [Author_119]
         [Author_801]
         [Author_449]
         [Author_641]
         [Author_549]
         [Author_757]
         [Author_40]
         [Author_574]
         [Author_498]
         [Author_787]
         [Author_512]
         [Author_547]
         [Author_382]
         [Author_594]
         [Author_645]
         [Author_771]
         [Author_659]
         [Author751])
     (sexo female))

    ([Author_326] of Autor
     (idAutor "326")
     (nombreAutor "Michael Ondaatje")
     (autoresSimilares
         [Author_291]
         [Author740])
     (sexo male))

    ([Author_327] of Autor
     (idAutor "327")
     (nombreAutor "Robert Graves")
     (autoresSimilares
         [Author_172]
         [Author_722]
         [Author_635]
         [Author_890]
         [Author_291]
         [Author_730]
         [Author270])
     (sexo male))

    ([Author_328] of Autor
     (idAutor "328")
     (nombreAutor "Alexandre Dumas")
     (autoresSimilares
         [Author_132]
         [Author_744]
         [Author_583]
         [Author_79]
         [Author_507]
         [Author_542]
         [Author468])
     (sexo male))

    ([Author_329] of Autor
     (idAutor "329")
     (nombreAutor "Charles Frazier")
     (autoresSimilares
         [Author_171]
         [Author_101]
         [Author_60]
         [Author_606]
         [Author_457]
         [Author_706]
         [Author_819]
         [Author_335]
         [Author_850]
         [Author_517]
         [Author_828]
         [Author_304]
         [Author_622]
         [Author_354]
         [Author_287]
         [Author_926]
         [Author_596]
         [Author_456]
         [Author_511]
         [Author228])
     (sexo male))

    ([Author_330] of Autor
     (idAutor "330")
     (nombreAutor "Larry McMurtry")
     (autoresSimilares
         [Author_173]
         [Author_35]
         [Author_931]
         [Author_352]
         [Author_560]
         [Author_527]
         [Author_73]
         [Author_546]
         [Author_244]
         [Author_734]
         [Author_93]
         [Author_87]
         [Author_844]
         [Author_642]
         [Author_894]
         [Author_601]
         [Author_251]
         [Author_479]
         [Author_201]
         [Author90])
     (sexo male))

    ([Author_331] of Autor
     (idAutor "331")
     (nombreAutor "Anita Diamant")
     (autoresSimilares
         [Author_656]
         [Author_587]
         [Author_349]
         [Author_909]
         [Author_614]
         [Author_182]
         [Author_707]
         [Author_364]
         [Author_187]
         [Author_188]
         [Author_770]
         [Author_384]
         [Author_315]
         [Author_259]
         [Author_71]
         [Author125])
     (sexo female))

    ([Author_332] of Autor
     (idAutor "332")
     (nombreAutor "Miguel de Cervantes Saavedra")
     (autoresSimilares
         [Author_333]
         [Author_817]
         [Author419])
     (sexo male))

    ([Author_333] of Autor
     (idAutor "333")
     (nombreAutor "Harriet Beecher Stowe")
     (autoresSimilares
         [Author_1]
         [Author_472]
         [Author_528]
         [Author_409]
         [Author_239]
         [Author_489]
         [Author_203]
         [Author_608]
         [Author_94]
         [Author_221]
         [Author_867]
         [Author_638]
         [Author_326]
         [Author_297]
         [Author109])
     (sexo male))

    ([Author_334] of Autor
     (idAutor "334")
     (nombreAutor "Erich Maria Remarque")
     (autoresSimilares
         [Author_593]
         [Author_864]
         [Author_151]
         [Author_771]
         [Author_565]
         [Author_353]
         [Author_567]
         [Author_548]
         [Author_319]
         [Author_323]
         [Author_63]
         [Author_13]
         [Author_265]
         [Author_902]
         [Author_355]
         [Author_284]
         [Author726])
     (sexo male))

    ([Author_335] of Autor
     (idAutor "335")
     (nombreAutor "Leo Tolstoy")
     (autoresSimilares
         [Author454])
     (sexo male))

    ([Author_336] of Autor
     (idAutor "336")
     (nombreAutor "Vladimir Nabokov")
     (autoresSimilares
         [Author_598]
         [Author623])
     (sexo male))

    ([Author_337] of Autor
     (idAutor "337")
     (nombreAutor "Joseph Heller")
     (autoresSimilares
         [Author_292]
         [Author_35]
         [Author_605]
         [Author_826]
         [Author829])
     (sexo male))

    ([Author_338] of Autor
     (idAutor "338")
     (nombreAutor "Oscar Wilde")
     (autoresSimilares
         [Author_89]
         [Author_926]
         [Author_727]
         [Author_239]
         [Author_533]
         [Author_214]
         [Author_204]
         [Author_108]
         [Author_897]
         [Author_556]
         [Author_320]
         [Author_164]
         [Author_838]
         [Author_65]
         [Author_182]
         [Author_641]
         [Author_681]
         [Author_413]
         [Author_162]
         [Author588])
     (sexo male))

    ([Author_339] of Autor
     (idAutor "339")
     (nombreAutor "Sherman Alexie")
     (autoresSimilares
         [Author_28]
         [Author_88]
         [Author_886]
         [Author_108]
         [Author_748]
         [Author_122]
         [Author_250]
         [Author_429]
         [Author_448]
         [Author_101]
         [Author_623]
         [Author_841]
         [Author_107]
         [Author_224]
         [Author_156]
         [Author_850]
         [Author943])
     (sexo male))

    ([Author_340] of Autor
     (idAutor "340")
     (nombreAutor "EL Konigsburg")
     (autoresSimilares
         [Author_858]
         [Author_817]
         [Author_721]
         [Author690])
     (sexo female))

    ([Author_341] of Autor
     (idAutor "341")
     (nombreAutor "Ann Brashares")
     (autoresSimilares
         [Author_741]
         [Author_605]
         [Author431])
     (sexo female))

    ([Author_342] of Autor
     (idAutor "342")
     (nombreAutor "Norton Juster")
     (autoresSimilares
         [Author_780]
         [Author_751]
         [Author_482]
         [Author_723]
         [Author_738]
         [Author_344]
         [Author_42]
         [Author_740]
         [Author_87]
         [Author_570]
         [Author291])
     (sexo male))

    ([Author_343] of Autor
     (idAutor "343")
     (nombreAutor "LM Montgomery")
     (autoresSimilares
         [Author_235]
         [Author_816]
         [Author_350]
         [Author_362]
         [Author_316]
         [Author_496]
         [Author_472]
         [Author_120]
         [Author_318]
         [Author_500]
         [Author684])
     (sexo female))

    ([Author_344] of Autor
     (idAutor "344")
     (nombreAutor "Margaret Peterson Haddix")
     (autoresSimilares
         [Author_438]
         [Author_920]
         [Author_769]
         [Author_407]
         [Author_219]
         [Author_616]
         [Author_737]
         [Author_93]
         [Author_578]
         [Author_245]
         [Author_395]
         [Author_493]
         [Author_925]
         [Author_683]
         [Author_373]
         [Author_469]
         [Author_421]
         [Author24])
     (sexo female))

    ([Author_345] of Autor
     (idAutor "345")
     (nombreAutor "Erica Jong")
     (autoresSimilares
         [Author_615]
         [Author_195]
         [Author_37]
         [Author_143]
         [Author_834]
         [Author_595]
         [Author_136]
         [Author_718]
         [Author_920]
         [Author_618]
         [Author_926]
         [Author_69]
         [Author_78]
         [Author325])
     (sexo female))

    ([Author_346] of Autor
     (idAutor "346")
     (nombreAutor "Heinrich Bll")
     (autoresSimilares
         [Author_56]
         [Author_365]
         [Author_291]
         [Author_629]
         [Author_829]
         [Author_23]
         [Author211])
     (sexo male))

    ([Author_347] of Autor
     (idAutor "347")
     (nombreAutor "Peter Straub")
     (autoresSimilares
         [Author_803]
         [Author_737]
         [Author502])
     (sexo male))

    ([Author_348] of Autor
     (idAutor "348")
     (nombreAutor "Sidney Sheldon")
     (autoresSimilares
         [Author_586]
         [Author_319]
         [Author_599]
         [Author_352]
         [Author_298]
         [Author_103]
         [Author_666]
         [Author661])
     (sexo male))

    ([Author_349] of Autor
     (idAutor "349")
     (nombreAutor "Herman Wouk")
     (autoresSimilares
         [Author_35]
         [Author_391]
         [Author_776]
         [Author_783]
         [Author_350]
         [Author_142]
         [Author_262]
         [Author_678]
         [Author_283]
         [Author_46]
         [Author_341]
         [Author21])
     (sexo male))

    ([Author_350] of Autor
     (idAutor "350")
     (nombreAutor "Chaim Potok")
     (autoresSimilares
         [Author_665]
         [Author_23]
         [Author_285]
         [Author_410]
         [Author_818]
         [Author_874]
         [Author_391]
         [Author_237]
         [Author_769]
         [Author_15]
         [Author_888]
         [Author58])
     (sexo male))

    ([Author_351] of Autor
     (idAutor "351")
     (nombreAutor "Arthur C Clarke")
     (autoresSimilares
         [Author_6]
         [Author_532]
         [Author_242]
         [Author_703]
         [Author_687]
         [Author_294]
         [Author_548]
         [Author_376]
         [Author_380]
         [Author_130]
         [Author_721]
         [Author_804]
         [Author_731]
         [Author_520]
         [Author_55]
         [Author_539]
         [Author_881]
         [Author_311]
         [Author199])
     (sexo male))

    ([Author_352] of Autor
     (idAutor "352")
     (nombreAutor "Terry Brooks")
     (autoresSimilares
         [Author_222]
         [Author_363]
         [Author_15]
         [Author_243]
         [Author_414]
         [Author_680]
         [Author_292]
         [Author_18]
         [Author629])
     (sexo male))

    ([Author_353] of Autor
     (idAutor "353")
     (nombreAutor "Wallace Stegner")
     (autoresSimilares
         [Author925])
     (sexo male))

    ([Author_354] of Autor
     (idAutor "354")
     (nombreAutor "Jeffrey Archer")
     (autoresSimilares
         [Author_419]
         [Author_307]
         [Author_551]
         [Author_234]
         [Author_862]
         [Author_411]
         [Author_128]
         [Author_88]
         [Author_322]
         [Author_890]
         [Author_568]
         [Author437])
     (sexo male))

    ([Author_355] of Autor
     (idAutor "355")
     (nombreAutor "Judy Blume")
     (autoresSimilares
         [Author_868]
         [Author_60]
         [Author20])
     (sexo female))

    ([Author_356] of Autor
     (idAutor "356")
     (nombreAutor "James Dickey")
     (autoresSimilares
         [Author_40]
         [Author_328]
         [Author_104]
         [Author_621]
         [Author_687]
         [Author_803]
         [Author_18]
         [Author531])
     (sexo male))

    ([Author_357] of Autor
     (idAutor "357")
     (nombreAutor "Louis Sachar")
     (autoresSimilares
         [Author_597]
         [Author_599]
         [Author_656]
         [Author_505]
         [Author_212]
         [Author_304]
         [Author_506]
         [Author_583]
         [Author_839]
         [Author_806]
         [Author_868]
         [Author_193]
         [Author_890]
         [Author_915]
         [Author_554]
         [Author_823]
         [Author_405]
         [Author_880]
         [Author691])
     (sexo male))

    ([Author_358] of Autor
     (idAutor "358")
     (nombreAutor "Milan Kundera")
     (autoresSimilares
         [Author_90]
         [Author_404]
         [Author_73]
         [Author_386]
         [Author_798]
         [Author_338]
         [Author_808]
         [Author_751]
         [Author_727]
         [Author_313]
         [Author445])
     (sexo male))

    ([Author_359] of Autor
     (idAutor "359")
     (nombreAutor "Thomas Pynchon")
     (autoresSimilares
         [Author_115]
         [Author_339]
         [Author_737]
         [Author_436]
         [Author_867]
         [Author_138]
         [Author_154]
         [Author_303]
         [Author_944]
         [Author_449]
         [Author_512]
         [Author_493]
         [Author_314]
         [Author_769]
         [Author_477]
         [Author_669]
         [Author_749]
         [Author_145]
         [Author_152]
         [Author580])
     (sexo male))

    ([Author_360] of Autor
     (idAutor "360")
     (nombreAutor "Frederick Forsyth")
     (autoresSimilares
         [Author_179]
         [Author_920]
         [Author_87]
         [Author_416]
         [Author_861]
         [Author16])
     (sexo male))

    ([Author_361] of Autor
     (idAutor "361")
     (nombreAutor "Michael Shaara")
     (autoresSimilares
         [Author_486]
         [Author_665]
         [Author_46]
         [Author_866]
         [Author_734]
         [Author_101]
         [Author_533]
         [Author_611]
         [Author_353]
         [Author_270]
         [Author_901]
         [Author_339]
         [Author328])
     (sexo male))

    ([Author_362] of Autor
     (idAutor "362")
     (nombreAutor "EL Doctorow")
     (autoresSimilares
         [Author_328]
         [Author_300]
         [Author_179]
         [Author_889]
         [Author_484]
         [Author_67]
         [Author_109]
         [Author678])
     (sexo male))

    ([Author_363] of Autor
     (idAutor "363")
     (nombreAutor "Iris Murdoch")
     (autoresSimilares
         [Author_711]
         [Author_192]
         [Author_30]
         [Author_537]
         [Author406])
     (sexo female))

    ([Author_364] of Autor
     (idAutor "364")
     (nombreAutor "John le Carr")
     (autoresSimilares
         [Author_415]
         [Author_606]
         [Author_845]
         [Author_416]
         [Author200])
     (sexo male))

    ([Author_365] of Autor
     (idAutor "365")
     (nombreAutor "Robert M Pirsig")
     (autoresSimilares
         [Author_32]
         [Author_487]
         [Author_857]
         [Author_455]
         [Author_472]
         [Author_658]
         [Author_943]
         [Author_158]
         [Author_351]
         [Author_631]
         [Author467])
     (sexo male))

    ([Author_366] of Autor
     (idAutor "366")
     (nombreAutor "William Peter Blatty")
     (autoresSimilares
         [Author_620]
         [Author_87]
         [Author_388]
         [Author_328]
         [Author_76]
         [Author_583]
         [Author_889]
         [Author_363]
         [Author_224]
         [Author_239]
         [Author_48]
         [Author_218]
         [Author_465]
         [Author_435]
         [Author_704]
         [Author_432]
         [Author_341]
         [Author559])
     (sexo male))

    ([Author_367] of Autor
     (idAutor "367")
     (nombreAutor "Hunter S Thompson")
     (autoresSimilares
         [Author_154]
         [Author_486]
         [Author179])
     (sexo male))

    ([Author_368] of Autor
     (idAutor "368")
     (nombreAutor "Sangu Mandanna")
     (autoresSimilares
         [Author_253]
         [Author17])
     (sexo female))

    ([Author_369] of Autor
     (idAutor "369")
     (nombreAutor "Rebecca Gober")
     (autoresSimilares
         [Author_802]
         [Author_800]
         [Author_171]
         [Author_249]
         [Author_691]
         [Author_370]
         [Author_118]
         [Author_306]
         [Author_381]
         [Author_492]
         [Author_285]
         [Author622])
     (sexo female))

    ([Author_370] of Autor
     (idAutor "370")
     (nombreAutor "Myra McEntire")
     (autoresSimilares
         [Author_280]
         [Author_109]
         [Author_623]
         [Author_798]
         [Author_48]
         [Author_845]
         [Author_246]
         [Author_848]
         [Author_739]
         [Author_944]
         [Author_580]
         [Author287])
     (sexo male))

    ([Author_371] of Autor
     (idAutor "371")
     (nombreAutor "Sarah Crossan")
     (autoresSimilares
         [Author_584]
         [Author_761]
         [Author_500]
         [Author_421]
         [Author_26]
         [Author_249]
         [Author900])
     (sexo female))

    ([Author_372] of Autor
     (idAutor "372")
     (nombreAutor "Heather Anastasiu")
     (autoresSimilares
         [Author_506]
         [Author_457]
         [Author_33]
         [Author_51]
         [Author_132]
         [Author_86]
         [Author_798]
         [Author541])
     (sexo female))

    ([Author_373] of Autor
     (idAutor "373")
     (nombreAutor "Susan Dennard")
     (autoresSimilares
         [Author_485]
         [Author_654]
         [Author_346]
         [Author_472]
         [Author_473]
         [Author_622]
         [Author_297]
         [Author_810]
         [Author_860]
         [Author_293]
         [Author_289]
         [Author_494]
         [Author_766]
         [Author_234]
         [Author_777]
         [Author_892]
         [Author210])
     (sexo female))

    ([Author_374] of Autor
     (idAutor "374")
     (nombreAutor "Michael Crichton")
     (autoresSimilares
         [Author160])
     (sexo male))

    ([Author_375] of Autor
     (idAutor "375")
     (nombreAutor "Lawrence Durrell")
     (autoresSimilares
         [Author_246]
         [Author_474]
         [Author_580]
         [Author_86]
         [Author905])
     (sexo male))

    ([Author_376] of Autor
     (idAutor "376")
     (nombreAutor "Patricia A McKillip")
     (autoresSimilares
         [Author_685]
         [Author_705]
         [Author_27]
         [Author_117]
         [Author_285]
         [Author_565]
         [Author_700]
         [Author_697]
         [Author_341]
         [Author_413]
         [Author_762]
         [Author_752]
         [Author_28]
         [Author_160]
         [Author_547]
         [Author_375]
         [Author_321]
         [Author_333]
         [Author10])
     (sexo female))

    ([Author_377] of Autor
     (idAutor "377")
     (nombreAutor "Paul Scott")
     (autoresSimilares
         [Author_717]
         [Author_637]
         [Author_832]
         [Author_510]
         [Author_69]
         [Author_530]
         [Author_583]
         [Author_597]
         [Author_939]
         [Author_93]
         [Author_617]
         [Author_451]
         [Author_376]
         [Author_287]
         [Author_105]
         [Author_229]
         [Author415])
     (sexo male))

    ([Author_378] of Autor
     (idAutor "378")
     (nombreAutor "Brent Weeks")
     (autoresSimilares
         [Author_395]
         [Author_938]
         [Author_915]
         [Author_475]
         [Author_493]
         [Author_318]
         [Author_809]
         [Author_54]
         [Author_622]
         [Author_139]
         [Author_425]
         [Author_434]
         [Author_224]
         [Author_688]
         [Author268])
     (sexo male))

    ([Author_379] of Autor
     (idAutor "379")
     (nombreAutor "Rand Miller")
     (autoresSimilares
         [Author_507]
         [Author_615]
         [Author_673]
         [Author_367]
         [Author_383]
         [Author_77]
         [Author_163]
         [Author_352]
         [Author_442]
         [Author_35]
         [Author_524]
         [Author_422]
         [Author_823]
         [Author_12]
         [Author_653]
         [Author_873]
         [Author_776]
         [Author_378]
         [Author827])
     (sexo male))

    ([Author_380] of Autor
     (idAutor "380")
     (nombreAutor "Mervyn Peake")
     (autoresSimilares
         [Author_268]
         [Author_263]
         [Author442])
     (sexo male))

    ([Author_381] of Autor
     (idAutor "381")
     (nombreAutor "Isaac Asimov")
     (autoresSimilares
         [Author_815]
         [Author_164]
         [Author_763]
         [Author_456]
         [Author_230]
         [Author_53]
         [Author588])
     (sexo male))

    ([Author_382] of Autor
     (idAutor "382")
     (nombreAutor "Franklin W Dixon")
     (autoresSimilares
         [Author_361]
         [Author_205]
         [Author_492]
         [Author_318]
         [Author_89]
         [Author_929]
         [Author_86]
         [Author710])
     (sexo male))

    ([Author_383] of Autor
     (idAutor "383")
     (nombreAutor "Laurie Faria Stolarz")
     (autoresSimilares
         [Author_899]
         [Author_371]
         [Author_106]
         [Author_889]
         [Author_643]
         [Author_140]
         [Author_817]
         [Author_470]
         [Author_607]
         [Author_112]
         [Author_404]
         [Author_833]
         [Author_561]
         [Author_849]
         [Author_451]
         [Author925])
     (sexo female))

    ([Author_384] of Autor
     (idAutor "384")
     (nombreAutor "Terry Goodkind")
     (autoresSimilares
         [Author106])
     (sexo male))

    ([Author_385] of Autor
     (idAutor "385")
     (nombreAutor "Robert Ludlum")
     (autoresSimilares
         [Author_402]
         [Author_915]
         [Author_311]
         [Author_198]
         [Author_490]
         [Author_575]
         [Author_763]
         [Author_42]
         [Author_192]
         [Author_347]
         [Author_768]
         [Author_897]
         [Author_514]
         [Author_787]
         [Author_456]
         [Author_574]
         [Author_303]
         [Author_712]
         [Author813])
     (sexo male))

    ([Author_386] of Autor
     (idAutor "386")
     (nombreAutor "Beverly Cleary")
     (autoresSimilares
         [Author_291]
         [Author_73]
         [Author_740]
         [Author_49]
         [Author_469]
         [Author_206]
         [Author_556]
         [Author_162]
         [Author_361]
         [Author_294]
         [Author_570]
         [Author_873]
         [Author322])
     (sexo female))

    ([Author_387] of Autor
     (idAutor "387")
     (nombreAutor "John Galsworthy")
     (autoresSimilares
         [Author_453]
         [Author_163]
         [Author_939]
         [Author_625]
         [Author_320]
         [Author_932]
         [Author_639]
         [Author_307]
         [Author_644]
         [Author432])
     (sexo male))

    ([Author_388] of Autor
     (idAutor "388")
     (nombreAutor "Roger Zelazny")
     (autoresSimilares
         [Author_92]
         [Author349])
     (sexo male))

    ([Author_389] of Autor
     (idAutor "389")
     (nombreAutor "Amalie Howard")
     (autoresSimilares
         [Author_637]
         [Author_346]
         [Author_622]
         [Author_262]
         [Author_272]
         [Author_814]
         [Author_706]
         [Author_40]
         [Author_718]
         [Author_499]
         [Author_923]
         [Author_39]
         [Author_116]
         [Author_294]
         [Author_179]
         [Author_245]
         [Author647])
     (sexo female))

    ([Author_390] of Autor
     (idAutor "390")
     (nombreAutor "Adrian Mendoza")
     (autoresSimilares
         [Author_473]
         [Author_869]
         [Author_310]
         [Author_606]
         [Author_898]
         [Author_747]
         [Author_822]
         [Author_809]
         [Author_649]
         [Author_599]
         [Author182])
     (sexo male))

    ([Author_391] of Autor
     (idAutor "391")
     (nombreAutor "Cyma Rizwaan Khan")
     (autoresSimilares
         [Author_919]
         [Author_24]
         [Author_732]
         [Author_248]
         [Author_288]
         [Author_385]
         [Author_262]
         [Author_48]
         [Author_860]
         [Author_752]
         [Author_465]
         [Author_474]
         [Author212])
     (sexo male))

    ([Author_392] of Autor
     (idAutor "392")
     (nombreAutor "Sarah Harian")
     (autoresSimilares
         [Author_441]
         [Author_108]
         [Author_265]
         [Author_60]
         [Author_59]
         [Author_590]
         [Author_847]
         [Author_38]
         [Author_163]
         [Author_336]
         [Author_443]
         [Author_309]
         [Author_893]
         [Author_137]
         [Author_675]
         [Author884])
     (sexo female))

    ([Author_393] of Autor
     (idAutor "393")
     (nombreAutor "Whitney G")
     (autoresSimilares
         [Author_468]
         [Author_757]
         [Author_446]
         [Author_680]
         [Author_733]
         [Author_128]
         [Author_570]
         [Author4])
     (sexo female))

    ([Author_394] of Autor
     (idAutor "394")
     (nombreAutor "MSean Coleman")
     (autoresSimilares
         [Author_365]
         [Author_292]
         [Author_433]
         [Author_921]
         [Author_708]
         [Author_750]
         [Author_460]
         [Author82])
     (sexo male))

    ([Author_395] of Autor
     (idAutor "395")
     (nombreAutor "Luca  Rossi")
     (autoresSimilares
         [Author_457]
         [Author291])
     (sexo male))

    ([Author_396] of Autor
     (idAutor "396")
     (nombreAutor "Charity Tinnin")
     (autoresSimilares
         [Author_718]
         [Author_807]
         [Author_494]
         [Author941])
     (sexo female))

    ([Author_397] of Autor
     (idAutor "397")
     (nombreAutor "Theresa Kay")
     (autoresSimilares
         [Author_940]
         [Author_240]
         [Author_111]
         [Author_341]
         [Author_39]
         [Author_123]
         [Author_23]
         [Author_491]
         [Author_536]
         [Author_793]
         [Author_703]
         [Author139])
     (sexo female))

    ([Author_398] of Autor
     (idAutor "398")
     (nombreAutor "Chris Weitz")
     (autoresSimilares
         [Author_668]
         [Author_265]
         [Author_338]
         [Author_162]
         [Author_643]
         [Author_90]
         [Author_481]
         [Author_614]
         [Author_111]
         [Author_247]
         [Author_569]
         [Author_850]
         [Author_871]
         [Author_308]
         [Author884])
     (sexo male))

    ([Author_399] of Autor
     (idAutor "399")
     (nombreAutor "Jessica  Keller")
     (autoresSimilares
         [Author_244]
         [Author_570]
         [Author_677]
         [Author_246]
         [Author_388]
         [Author_935]
         [Author_349]
         [Author_832]
         [Author_836]
         [Author_574]
         [Author_143]
         [Author_303]
         [Author_791]
         [Author_3]
         [Author_498]
         [Author_347]
         [Author_670]
         [Author_400]
         [Author_198]
         [Author851])
     (sexo female))

    ([Author_400] of Autor
     (idAutor "400")
     (nombreAutor "H Paul Honsinger")
     (autoresSimilares
         [Author_192]
         [Author_258]
         [Author_740]
         [Author_862]
         [Author_642]
         [Author_56]
         [Author_122]
         [Author_309]
         [Author_891]
         [Author_408]
         [Author_264]
         [Author_782]
         [Author549])
     (sexo male))

    ([Author_401] of Autor
     (idAutor "401")
     (nombreAutor "Stephanie  Diaz")
     (autoresSimilares
         [Author58])
     (sexo female))

    ([Author_402] of Autor
     (idAutor "402")
     (nombreAutor "Kimberly Afe")
     (autoresSimilares
         [Author_496]
         [Author_427]
         [Author_825]
         [Author_744]
         [Author_569]
         [Author_943]
         [Author_101]
         [Author_121]
         [Author_558]
         [Author_220]
         [Author_170]
         [Author_67]
         [Author_723]
         [Author_127]
         [Author_489]
         [Author_450]
         [Author_114]
         [Author_381]
         [Author_319]
         [Author473])
     (sexo female))

    ([Author_403] of Autor
     (idAutor "403")
     (nombreAutor "MG Buehrlen")
     (autoresSimilares
         [Author_168]
         [Author_298]
         [Author_312]
         [Author_783]
         [Author_95]
         [Author_332]
         [Author_850]
         [Author_269]
         [Author752])
     (sexo female))

    ([Author_404] of Autor
     (idAutor "404")
     (nombreAutor "Blakely Bennett")
     (autoresSimilares
         [Author_193]
         [Author_286]
         [Author_290]
         [Author_236]
         [Author_10]
         [Author_772]
         [Author_58]
         [Author_712]
         [Author_797]
         [Author_355]
         [Author_882]
         [Author_888]
         [Author_593]
         [Author790])
     (sexo male))

    ([Author_405] of Autor
     (idAutor "405")
     (nombreAutor "Lucian Bane")
     (autoresSimilares
         [Author_930]
         [Author_495]
         [Author_198]
         [Author_582]
         [Author46])
     (sexo male))

    ([Author_406] of Autor
     (idAutor "406")
     (nombreAutor "Lindsay Cummings")
     (autoresSimilares
         [Author_381]
         [Author499])
     (sexo female))

    ([Author_407] of Autor
     (idAutor "407")
     (nombreAutor "Sam Crescent")
     (autoresSimilares
         [Author_380]
         [Author_125]
         [Author_443]
         [Author_424]
         [Author_145]
         [Author_348]
         [Author_657]
         [Author_273]
         [Author_225]
         [Author_86]
         [Author_376]
         [Author_188]
         [Author_723]
         [Author_44]
         [Author514])
     (sexo female))

    ([Author_408] of Autor
     (idAutor "408")
     (nombreAutor "Bella Jewel")
     (autoresSimilares
         [Author_90]
         [Author_370]
         [Author_247]
         [Author_344]
         [Author_346]
         [Author_372]
         [Author_49]
         [Author_823]
         [Author819])
     (sexo male))

    ([Author_409] of Autor
     (idAutor "409")
     (nombreAutor "HJ Bellus")
     (autoresSimilares
         [Author_615]
         [Author_9]
         [Author_723]
         [Author_856]
         [Author_283]
         [Author_537]
         [Author_622]
         [Author_666]
         [Author_472]
         [Author_842]
         [Author_571]
         [Author_425]
         [Author_306]
         [Author_649]
         [Author_689]
         [Author_71]
         [Author_881]
         [Author_535]
         [Author_19]
         [Author41])
     (sexo female))

    ([Author_410] of Autor
     (idAutor "410")
     (nombreAutor "CM Stunich")
     (autoresSimilares
         [Author600])
     (sexo female))

    ([Author_411] of Autor
     (idAutor "411")
     (nombreAutor "Stephanie Tyler")
     (autoresSimilares
         [Author_222]
         [Author_917]
         [Author_798]
         [Author_658]
         [Author_155]
         [Author_486]
         [Author_828]
         [Author215])
     (sexo female))

    ([Author_412] of Autor
     (idAutor "412")
     (nombreAutor "Bec Botefuhr")
     (autoresSimilares
         [Author_180]
         [Author_397]
         [Author_143]
         [Author_514]
         [Author_50]
         [Author_820]
         [Author_925]
         [Author_680]
         [Author_192]
         [Author_851]
         [Author_211]
         [Author_418]
         [Author_581]
         [Author_825]
         [Author_479]
         [Author603])
     (sexo male))

    ([Author_413] of Autor
     (idAutor "413")
     (nombreAutor "Kim Jones")
     (autoresSimilares
         [Author_616]
         [Author_379]
         [Author_813]
         [Author_48]
         [Author_925]
         [Author_387]
         [Author_17]
         [Author_694]
         [Author_521]
         [Author_836]
         [Author_913]
         [Author_156]
         [Author_446]
         [Author_212]
         [Author_708]
         [Author_374]
         [Author_87]
         [Author270])
     (sexo female))

    ([Author_414] of Autor
     (idAutor "414")
     (nombreAutor "Phoenyx Slaughter")
     (autoresSimilares
         [Author_829]
         [Author_847]
         [Author_372]
         [Author_940]
         [Author_775]
         [Author_216]
         [Author_94]
         [Author_187]
         [Author_59]
         [Author186])
     (sexo female))

    ([Author_415] of Autor
     (idAutor "415")
     (nombreAutor "Gary Paulsen")
     (autoresSimilares
         [Author_430]
         [Author_472]
         [Author_717]
         [Author_826]
         [Author_381]
         [Author_507]
         [Author_10]
         [Author_808]
         [Author_818]
         [Author_898]
         [Author_271]
         [Author_901]
         [Author_133]
         [Author_12]
         [Author_19]
         [Author_734]
         [Author361])
     (sexo male))

    ([Author_416] of Autor
     (idAutor "416")
     (nombreAutor "William R Forstchen")
     (autoresSimilares
         [Author_457]
         [Author370])
     (sexo male))

    ([Author_417] of Autor
     (idAutor "417")
     (nombreAutor "Louis LAmour")
     (autoresSimilares
         [Author_565]
         [Author_259]
         [Author_269]
         [Author261])
     (sexo male))

    ([Author_418] of Autor
     (idAutor "418")
     (nombreAutor "Alex Haley")
     (autoresSimilares
         [Author_227]
         [Author_665]
         [Author_113]
         [Author_88]
         [Author_919]
         [Author_593]
         [Author56])
     (sexo male))

    ([Author_419] of Autor
     (idAutor "419")
     (nombreAutor "Herman Melville")
     (autoresSimilares
         [Author_169]
         [Author_85]
         [Author_131]
         [Author_629]
         [Author_832]
         [Author_795]
         [Author_530]
         [Author_794]
         [Author_603]
         [Author_630]
         [Author_29]
         [Author695])
     (sexo male))

    ([Author_420] of Autor
     (idAutor "420")
     (nombreAutor "Anna Sewell")
     (autoresSimilares
         [Author_878]
         [Author_159]
         [Author511])
     (sexo female))

    ([Author_421] of Autor
     (idAutor "421")
     (nombreAutor "Dalton Trumbo")
     (autoresSimilares
         [Author_481]
         [Author_8]
         [Author_384]
         [Author_933]
         [Author_285]
         [Author_830]
         [Author_784]
         [Author_332]
         [Author_696]
         [Author596])
     (sexo male))

    ([Author_422] of Autor
     (idAutor "422")
     (nombreAutor "Johann David Wyss")
     (autoresSimilares
         [Author_664]
         [Author_7]
         [Author_294]
         [Author_220]
         [Author_648]
         [Author_931]
         [Author_56]
         [Author_11]
         [Author_47]
         [Author_351]
         [Author_616]
         [Author_655]
         [Author350])
     (sexo male))

    ([Author_423] of Autor
     (idAutor "423")
     (nombreAutor "William Styron")
     (autoresSimilares
         [Author_575]
         [Author_330]
         [Author_297]
         [Author_363]
         [Author_783]
         [Author_526]
         [Author_883]
         [Author_824]
         [Author_154]
         [Author_549]
         [Author_626]
         [Author_324]
         [Author_678]
         [Author_913]
         [Author_228]
         [Author_541]
         [Author_506]
         [Author_185]
         [Author732])
     (sexo male))

    ([Author_424] of Autor
     (idAutor "424")
     (nombreAutor "Daniel Defoe")
     (autoresSimilares
         [Author_494]
         [Author_569]
         [Author_825]
         [Author_156]
         [Author_310]
         [Author_931]
         [Author_460]
         [Author_498]
         [Author_4]
         [Author_529]
         [Author_611]
         [Author_308]
         [Author558])
     (sexo male))

    ([Author_425] of Autor
     (idAutor "425")
     (nombreAutor "Jean Craighead George")
     (autoresSimilares
         [Author_503]
         [Author_471]
         [Author_28]
         [Author_257]
         [Author_797]
         [Author_528]
         [Author_162]
         [Author_754]
         [Author_590]
         [Author_96]
         [Author_614]
         [Author487])
     (sexo female))

    ([Author_426] of Autor
     (idAutor "426")
     (nombreAutor "Scott ODell")
     (autoresSimilares
         [Author521])
     (sexo male))

    ([Author_427] of Autor
     (idAutor "427")
     (nombreAutor "Olivia Cunning")
     (autoresSimilares
         [Author_450]
         [Author_672]
         [Author_15]
         [Author_772]
         [Author_858]
         [Author_593]
         [Author_256]
         [Author_493]
         [Author_406]
         [Author_202]
         [Author_44]
         [Author12])
     (sexo female))

    ([Author_428] of Autor
     (idAutor "428")
     (nombreAutor "Lauren Dane")
     (autoresSimilares
         [Author_615]
         [Author_802]
         [Author_886]
         [Author_113]
         [Author_301]
         [Author_461]
         [Author_118]
         [Author_721]
         [Author_380]
         [Author_786]
         [Author_207]
         [Author276])
     (sexo female))

    ([Author_429] of Autor
     (idAutor "429")
     (nombreAutor "Lorelei James")
     (autoresSimilares
         [Author_919]
         [Author_612]
         [Author_274]
         [Author557])
     (sexo male))

    ([Author_430] of Autor
     (idAutor "430")
     (nombreAutor "William H Armstrong")
     (autoresSimilares
         [Author_514]
         [Author_460]
         [Author_265]
         [Author_666]
         [Author_533]
         [Author_561]
         [Author223])
     (sexo male))

    ([Author_431] of Autor
     (idAutor "431")
     (nombreAutor "Walter Farley")
     (autoresSimilares
         [Author_213]
         [Author_45]
         [Author_535]
         [Author_866]
         [Author_71]
         [Author_609]
         [Author_461]
         [Author_463]
         [Author_420]
         [Author_512]
         [Author_280]
         [Author_103]
         [Author_450]
         [Author_652]
         [Author_731]
         [Author_384]
         [Author_105]
         [Author911])
     (sexo male))

    ([Author_432] of Autor
     (idAutor "432")
     (nombreAutor "Marguerite Henry")
     (autoresSimilares
         [Author_847]
         [Author_913]
         [Author_72]
         [Author_762]
         [Author_817]
         [Author_204]
         [Author_216]
         [Author_782]
         [Author_446]
         [Author_353]
         [Author_200]
         [Author_372]
         [Author583])
     (sexo female))

    ([Author_433] of Autor
     (idAutor "433")
     (nombreAutor "Dick King-Smith")
     (autoresSimilares
         [Author_333]
         [Author_231]
         [Author_215]
         [Author_44]
         [Author_12]
         [Author_768]
         [Author_56]
         [Author_895]
         [Author_522]
         [Author_897]
         [Author_116]
         [Author_528]
         [Author_482]
         [Author_680]
         [Author_843]
         [Author_237]
         [Author_775]
         [Author_414]
         [Author_715]
         [Author677])
     (sexo male))

    ([Author_434] of Autor
     (idAutor "434")
     (nombreAutor "John Reynolds Gardiner")
     (autoresSimilares
         [Author630])
     (sexo male))

    ([Author_435] of Autor
     (idAutor "435")
     (nombreAutor "Rudyard Kipling")
     (autoresSimilares
         [Author358])
     (sexo male))

    ([Author_436] of Autor
     (idAutor "436")
     (nombreAutor "W Bruce Cameron")
     (autoresSimilares
         [Author_488]
         [Author_159]
         [Author_175]
         [Author_378]
         [Author_726]
         [Author_13]
         [Author_81]
         [Author_739]
         [Author_52]
         [Author_502]
         [Author_705]
         [Author_729]
         [Author_611]
         [Author_528]
         [Author_269]
         [Author_182]
         [Author192])
     (sexo female))

    ([Author_437] of Autor
     (idAutor "437")
     (nombreAutor "Marjorie Kinnan Rawlings")
     (autoresSimilares
         [Author_232]
         [Author_282]
         [Author_102]
         [Author_144]
         [Author_499]
         [Author_377]
         [Author_691]
         [Author_326]
         [Author25])
     (sexo male))

    ([Author_438] of Autor
     (idAutor "438")
     (nombreAutor "Tad Williams")
     (autoresSimilares
         [Author_150]
         [Author_604]
         [Author_102]
         [Author_522]
         [Author_266]
         [Author_44]
         [Author_232]
         [Author_259]
         [Author_766]
         [Author_137]
         [Author_688]
         [Author360])
     (sexo male))

    ([Author_439] of Autor
     (idAutor "439")
     (nombreAutor "Phyllis Reynolds Naylor")
     (autoresSimilares
         [Author_462]
         [Author_160]
         [Author_716]
         [Author_472]
         [Author_669]
         [Author_377]
         [Author_301]
         [Author_410]
         [Author797])
     (sexo female))

    ([Author_440] of Autor
     (idAutor "440")
     (nombreAutor "Fred Gipson")
     (autoresSimilares
         [Author_437]
         [Author_497]
         [Author_70]
         [Author_736]
         [Author_699]
         [Author_155]
         [Author_144]
         [Author799])
     (sexo male))

    ([Author_441] of Autor
     (idAutor "441")
     (nombreAutor "Kate DiCamillo")
     (autoresSimilares
         [Author_853]
         [Author_191]
         [Author_546]
         [Author_84]
         [Author_568]
         [Author_542]
         [Author_866]
         [Author_690]
         [Author_444]
         [Author_197]
         [Author_395]
         [Author_608]
         [Author_150]
         [Author663])
     (sexo female))

    ([Author_442] of Autor
     (idAutor "442")
     (nombreAutor "Sheila Burnford")
     (autoresSimilares
         [Author_148]
         [Author_285]
         [Author_830]
         [Author_220]
         [Author_32]
         [Author_524]
         [Author_134]
         [Author_0]
         [Author_375]
         [Author_381]
         [Author_893]
         [Author_333]
         [Author_364]
         [Author_400]
         [Author_25]
         [Author_374]
         [Author_409]
         [Author661])
     (sexo female))

    ([Author_443] of Autor
     (idAutor "443")
     (nombreAutor "Kenneth Grahame")
     (autoresSimilares
         [Author_515]
         [Author_285]
         [Author_788]
         [Author_299]
         [Author_823]
         [Author_772]
         [Author_592]
         [Author_642]
         [Author340])
     (sexo male))

    ([Author_444] of Autor
     (idAutor "444")
     (nombreAutor "Wilson Rawls")
     (autoresSimilares
         [Author_853]
         [Author_568]
         [Author_605]
         [Author_447]
         [Author667])
     (sexo male))

    ([Author_445] of Autor
     (idAutor "445")
     (nombreAutor "Andrzej Sapkowski")
     (autoresSimilares
         [Author_190]
         [Author_613]
         [Author_43]
         [Author_496]
         [Author_47]
         [Author_546]
         [Author_830]
         [Author_884]
         [Author_228]
         [Author_353]
         [Author_12]
         [Author_198]
         [Author_102]
         [Author_701]
         [Author_20]
         [Author_275]
         [Author_240]
         [Author_589]
         [Author147])
     (sexo male))

    ([Author_446] of Autor
     (idAutor "446")
     (nombreAutor "LE Modesitt Jr")
     (autoresSimilares
         [Author_637]
         [Author_731]
         [Author_662]
         [Author_877]
         [Author_870]
         [Author_552]
         [Author_734]
         [Author_388]
         [Author_254]
         [Author_736]
         [Author_828]
         [Author678])
     (sexo male))

    ([Author_447] of Autor
     (idAutor "447")
     (nombreAutor "Michael   Kramer")
     (autoresSimilares
         [Author315])
     (sexo male))

    ([Author_448] of Autor
     (idAutor "448")
     (nombreAutor "Marilynne Robinson")
     (autoresSimilares
         [Author930])
     (sexo male))

    ([Author_449] of Autor
     (idAutor "449")
     (nombreAutor "Philip Jos Farmer")
     (autoresSimilares
         [Author_778]
         [Author_672]
         [Author_539]
         [Author_199]
         [Author_720]
         [Author_677]
         [Author_51]
         [Author_58]
         [Author_549]
         [Author_719]
         [Author_178]
         [Author_902]
         [Author504])
     (sexo male))

    ([Author_450] of Autor
     (idAutor "450")
     (nombreAutor "Gene Wolfe")
     (autoresSimilares
         [Author_122]
         [Author_107]
         [Author_502]
         [Author_940]
         [Author_98]
         [Author_738]
         [Author_371]
         [Author_585]
         [Author_188]
         [Author_810]
         [Author_351]
         [Author_681]
         [Author_509]
         [Author_766]
         [Author553])
     (sexo male))

    ([Author_451] of Autor
     (idAutor "451")
     (nombreAutor "Lois McMaster Bujold")
     (autoresSimilares
         [Author_850]
         [Author_891]
         [Author_37]
         [Author_641]
         [Author_885]
         [Author_550]
         [Author_502]
         [Author_645]
         [Author_223]
         [Author_284]
         [Author_500]
         [Author747])
     (sexo female))

    ([Author_452] of Autor
     (idAutor "452")
     (nombreAutor "Richard K Morgan")
     (autoresSimilares
         [Author_603]
         [Author_943]
         [Author_735]
         [Author_801]
         [Author_895]
         [Author94])
     (sexo male))

    ([Author_453] of Autor
     (idAutor "453")
     (nombreAutor "Iain M Banks")
     (autoresSimilares
         [Author_510]
         [Author_309]
         [Author_706]
         [Author_508]
         [Author_439]
         [Author_463]
         [Author_808]
         [Author_585]
         [Author_813]
         [Author_53]
         [Author_269]
         [Author_195]
         [Author_214]
         [Author_654]
         [Author143])
     (sexo male))

    ([Author_454] of Autor
     (idAutor "454")
     (nombreAutor "Frederik Pohl")
     (autoresSimilares
         [Author_871]
         [Author_942]
         [Author_712]
         [Author_935]
         [Author_237]
         [Author641])
     (sexo male))

    ([Author_455] of Autor
     (idAutor "455")
     (nombreAutor "Connie Willis")
     (autoresSimilares
         [Author_724]
         [Author_576]
         [Author_146]
         [Author_372]
         [Author_375]
         [Author_448]
         [Author_863]
         [Author_443]
         [Author_807]
         [Author_864]
         [Author_682]
         [Author_737]
         [Author_858]
         [Author_518]
         [Author_93]
         [Author_151]
         [Author_253]
         [Author692])
     (sexo female))

    ([Author_456] of Autor
     (idAutor "456")
     (nombreAutor "Edwin A Abbott")
     (autoresSimilares
         [Author_241]
         [Author_354]
         [Author_196]
         [Author_121]
         [Author_389]
         [Author368])
     (sexo male))

    ([Author_457] of Autor
     (idAutor "457")
     (nombreAutor "Vernor Vinge")
     (autoresSimilares
         [Author_746]
         [Author_212]
         [Author_500]
         [Author_925]
         [Author_235]
         [Author_858]
         [Author_469]
         [Author_652]
         [Author21])
     (sexo male))

    ([Author_458] of Autor
     (idAutor "458")
     (nombreAutor "Kim Stanley Robinson")
     (autoresSimilares
         [Author_428]
         [Author_706]
         [Author_612]
         [Author_205]
         [Author_170]
         [Author_526]
         [Author_860]
         [Author_871]
         [Author_794]
         [Author_377]
         [Author823])
     (sexo male))

    ([Author_459] of Autor
     (idAutor "459")
     (nombreAutor "Stanisaw Lem")
     (autoresSimilares
         [Author_629]
         [Author_879]
         [Author_898]
         [Author_377]
         [Author_224]
         [Author_497]
         [Author_541]
         [Author_922]
         [Author297])
     (sexo male))

    ([Author_460] of Autor
     (idAutor "460")
     (nombreAutor "Jules Verne")
     (autoresSimilares
         [Author_12]
         [Author_310]
         [Author_605]
         [Author_529]
         [Author_165]
         [Author_418]
         [Author_194]
         [Author_788]
         [Author_704]
         [Author_532]
         [Author_2]
         [Author625])
     (sexo male))

    ([Author_461] of Autor
     (idAutor "461")
     (nombreAutor "Alfred Bester")
     (autoresSimilares
         [Author_426]
         [Author_928]
         [Author_573]
         [Author_499]
         [Author_905]
         [Author_35]
         [Author_217]
         [Author_72]
         [Author_348]
         [Author_536]
         [Author_685]
         [Author_533]
         [Author_490]
         [Author_142]
         [Author_597]
         [Author_350]
         [Author_939]
         [Author_663]
         [Author524])
     (sexo male))

    ([Author_462] of Autor
     (idAutor "462")
     (nombreAutor "Mary Doria Russell")
     (autoresSimilares
         [Author546])
     (sexo female))

    ([Author_463] of Autor
     (idAutor "463")
     (nombreAutor "Carl Sagan")
     (autoresSimilares
         [Author_405]
         [Author_111]
         [Author_367]
         [Author_14]
         [Author_584]
         [Author_565]
         [Author_702]
         [Author_38]
         [Author_265]
         [Author417])
     (sexo male))

    ([Author_464] of Autor
     (idAutor "464")
     (nombreAutor "John Scalzi")
     (autoresSimilares
         [Author_124]
         [Author_477]
         [Author_676]
         [Author_652]
         [Author_629]
         [Author_76]
         [Author_286]
         [Author_621]
         [Author_764]
         [Author_581]
         [Author_450]
         [Author_393]
         [Author_679]
         [Author_140]
         [Author_545]
         [Author_862]
         [Author_693]
         [Author_734]
         [Author_848]
         [Author942])
     (sexo male))

    ([Author_465] of Autor
     (idAutor "465")
     (nombreAutor "RD Ronald")
     (autoresSimilares
         [Author_360]
         [Author_876]
         [Author_233]
         [Author_505]
         [Author_723]
         [Author_15]
         [Author_200]
         [Author_904]
         [Author_259]
         [Author_324]
         [Author_158]
         [Author_503]
         [Author16])
     (sexo male))

    ([Author_466] of Autor
     (idAutor "466")
     (nombreAutor "Misty Mount")
     (autoresSimilares
         [Author_606]
         [Author_458]
         [Author_412]
         [Author_727]
         [Author_231]
         [Author_465]
         [Author_767]
         [Author_311]
         [Author_150]
         [Author_798]
         [Author_708]
         [Author664])
     (sexo female))

    ([Author_467] of Autor
     (idAutor "467")
     (nombreAutor "Diamante Lavendar")
     (autoresSimilares
         [Author_868]
         [Author_915]
         [Author_271]
         [Author_309]
         [Author_640]
         [Author388])
     (sexo male))

    ([Author_468] of Autor
     (idAutor "468")
     (nombreAutor "Robert Evert")
     (autoresSimilares
         [Author_832]
         [Author_588]
         [Author_300]
         [Author_295]
         [Author_856]
         [Author_862]
         [Author_113]
         [Author_197]
         [Author_598]
         [Author_790]
         [Author_175]
         [Author_111]
         [Author_129]
         [Author_20]
         [Author_324]
         [Author_784]
         [Author_826]
         [Author142])
     (sexo male))

    ([Author_469] of Autor
     (idAutor "469")
     (nombreAutor "Diana   Forbes")
     (autoresSimilares
         [Author_718]
         [Author_78]
         [Author_882]
         [Author_289]
         [Author_325]
         [Author_533]
         [Author_226]
         [Author_773]
         [Author_863]
         [Author_68]
         [Author_894]
         [Author803])
     (sexo female))

    ([Author_470] of Autor
     (idAutor "470")
     (nombreAutor "NK Jemisin")
     (autoresSimilares
         [Author_53]
         [Author_41]
         [Author_579]
         [Author_339]
         [Author791])
     (sexo male))

    ([Author_471] of Autor
     (idAutor "471")
     (nombreAutor "Francisco X Stork")
     (autoresSimilares
         [Author838])
     (sexo male))

    ([Author_472] of Autor
     (idAutor "472")
     (nombreAutor "Samantha Durante")
     (autoresSimilares
         [Author_869]
         [Author_115]
         [Author_582]
         [Author_505]
         [Author_7]
         [Author_221]
         [Author_914]
         [Author302])
     (sexo female))

    ([Author_473] of Autor
     (idAutor "473")
     (nombreAutor "Lindsay Buroker")
     (autoresSimilares
         [Author_568]
         [Author_764]
         [Author_669]
         [Author_878]
         [Author_352]
         [Author_399]
         [Author_927]
         [Author_180]
         [Author137])
     (sexo male))

    ([Author_474] of Autor
     (idAutor "474")
     (nombreAutor "Anne Osterlund")
     (autoresSimilares
         [Author_408]
         [Author_375]
         [Author_169]
         [Author_838]
         [Author_270]
         [Author_633]
         [Author_480]
         [Author_711]
         [Author_326]
         [Author_138]
         [Author_677]
         [Author_797]
         [Author_256]
         [Author_312]
         [Author_839]
         [Author_517]
         [Author_195]
         [Author299])
     (sexo female))

    ([Author_475] of Autor
     (idAutor "475")
     (nombreAutor "Julianna Baggott")
     (autoresSimilares
         [Author_577]
         [Author_492]
         [Author_336]
         [Author_464]
         [Author_682]
         [Author_401]
         [Author_657]
         [Author_321]
         [Author_923]
         [Author_728]
         [Author_93]
         [Author_50]
         [Author_272]
         [Author_764]
         [Author_460]
         [Author_538]
         [Author_53]
         [Author_619]
         [Author703])
     (sexo female))

    ([Author_476] of Autor
     (idAutor "476")
     (nombreAutor "Mercedes Lackey")
     (autoresSimilares
         [Author_412]
         [Author_667]
         [Author608])
     (sexo female))

    ([Author_477] of Autor
     (idAutor "477")
     (nombreAutor "Emma McLaughlin")
     (autoresSimilares
         [Author_483]
         [Author_138]
         [Author_740]
         [Author643])
     (sexo male))

    ([Author_478] of Autor
     (idAutor "478")
     (nombreAutor "Andre Dubus III")
     (autoresSimilares
         [Author_666]
         [Author_588]
         [Author_895]
         [Author_178]
         [Author_153]
         [Author307])
     (sexo male))

    ([Author_479] of Autor
     (idAutor "479")
     (nombreAutor "Erich Segal")
     (autoresSimilares
         [Author_298]
         [Author_486]
         [Author_315]
         [Author_503]
         [Author_190]
         [Author_70]
         [Author_482]
         [Author_907]
         [Author_510]
         [Author453])
     (sexo male))

    ([Author_480] of Autor
     (idAutor "480")
     (nombreAutor "Anita Shreve")
     (autoresSimilares
         [Author_77]
         [Author_251]
         [Author_866]
         [Author_791]
         [Author_157]
         [Author_371]
         [Author_63]
         [Author_459]
         [Author127])
     (sexo female))

    ([Author_481] of Autor
     (idAutor "481")
     (nombreAutor "Annie Proulx")
     (autoresSimilares
         [Author_189]
         [Author_324]
         [Author_452]
         [Author_780]
         [Author_566]
         [Author_627]
         [Author_159]
         [Author_589]
         [Author_304]
         [Author_623]
         [Author567])
     (sexo female))

    ([Author_482] of Autor
     (idAutor "482")
     (nombreAutor "Winston Groom")
     (autoresSimilares
         [Author_15]
         [Author_135]
         [Author_624]
         [Author_865]
         [Author_722]
         [Author_331]
         [Author_400]
         [Author22])
     (sexo male))

    ([Author_483] of Autor
     (idAutor "483")
     (nombreAutor "Gregory Maguire")
     (autoresSimilares
         [Author_680]
         [Author_550]
         [Author_911]
         [Author_758]
         [Author_943]
         [Author_817]
         [Author_530]
         [Author_208]
         [Author_907]
         [Author_130]
         [Author700])
     (sexo male))

    ([Author_484] of Autor
     (idAutor "484")
     (nombreAutor "Sandra Cisneros")
     (autoresSimilares
         [Author_448]
         [Author_45]
         [Author_115]
         [Author_503]
         [Author_258]
         [Author_314]
         [Author_814]
         [Author_41]
         [Author_342]
         [Author_447]
         [Author_842]
         [Author_50]
         [Author_577]
         [Author_158]
         [Author_869]
         [Author_126]
         [Author516])
     (sexo female))

    ([Author_485] of Autor
     (idAutor "485")
     (nombreAutor "Stephen Crane")
     (autoresSimilares
         [Author_715]
         [Author_693]
         [Author_583]
         [Author_631]
         [Author_767]
         [Author_794]
         [Author_86]
         [Author_846]
         [Author847])
     (sexo male))

    ([Author_486] of Autor
     (idAutor "486")
     (nombreAutor "Candace Bushnell")
     (autoresSimilares
         [Author_701]
         [Author_551]
         [Author_552]
         [Author_815]
         [Author_754]
         [Author_270]
         [Author_87]
         [Author_712]
         [Author414])
     (sexo male))

    ([Author_487] of Autor
     (idAutor "487")
     (nombreAutor "Virginia Woolf")
     (autoresSimilares
         [Author_241]
         [Author_807]
         [Author_927]
         [Author_179]
         [Author_505]
         [Author_116]
         [Author_787]
         [Author_894]
         [Author_768]
         [Author_201]
         [Author_583]
         [Author_786]
         [Author726])
     (sexo female))

    ([Author_488] of Autor
     (idAutor "488")
     (nombreAutor "James Joyce")
     (autoresSimilares
         [Author_325]
         [Author_607]
         [Author_6]
         [Author_91]
         [Author_454]
         [Author_227]
         [Author_140]
         [Author_121]
         [Author_159]
         [Author_495]
         [Author_196]
         [Author_743]
         [Author_663]
         [Author_502]
         [Author_384]
         [Author_408]
         [Author_595]
         [Author179])
     (sexo male))

    ([Author_489] of Autor
     (idAutor "489")
     (nombreAutor "Tim OBrien")
     (autoresSimilares
         [Author_411]
         [Author_326]
         [Author_503]
         [Author_98]
         [Author_829]
         [Author_55]
         [Author_452]
         [Author_205]
         [Author_834]
         [Author_510]
         [Author_352]
         [Author68])
     (sexo male))

    ([Author_490] of Autor
     (idAutor "490")
     (nombreAutor "William Faulkner")
     (autoresSimilares
         [Author_605]
         [Author_612]
         [Author_847]
         [Author_565]
         [Author_269]
         [Author_696]
         [Author_806]
         [Author_140]
         [Author_719]
         [Author_193]
         [Author_113]
         [Author_61]
         [Author_385]
         [Author_768]
         [Author_783]
         [Author213])
     (sexo male))

    ([Author_491] of Autor
     (idAutor "491")
     (nombreAutor "John Kennedy Toole")
     (autoresSimilares
         [Author_870]
         [Author_567]
         [Author_136]
         [Author_887]
         [Author_783]
         [Author_722]
         [Author_468]
         [Author_404]
         [Author_885]
         [Author_352]
         [Author_522]
         [Author548])
     (sexo male))

    ([Author_492] of Autor
     (idAutor "492")
     (nombreAutor "Pearl S Buck")
     (autoresSimilares
         [Author_41]
         [Author_615]
         [Author_237]
         [Author_459]
         [Author_175]
         [Author_789]
         [Author_176]
         [Author_924]
         [Author_341]
         [Author_447]
         [Author_874]
         [Author_644]
         [Author_550]
         [Author_518]
         [Author_920]
         [Author_567]
         [Author_647]
         [Author_258]
         [Author_629]
         [Author210])
     (sexo female))

    ([Author_493] of Autor
     (idAutor "493")
     (nombreAutor "Jack Kerouac")
     (autoresSimilares
         [Author941])
     (sexo male))

    ([Author_494] of Autor
     (idAutor "494")
     (nombreAutor "Steven Brust")
     (autoresSimilares
         [Author_99]
         [Author_450]
         [Author_380]
         [Author_163]
         [Author_76]
         [Author_184]
         [Author_510]
         [Author_118]
         [Author_578]
         [Author_571]
         [Author_117]
         [Author_799]
         [Author_295]
         [Author699])
     (sexo male))

    ([Author_495] of Autor
     (idAutor "495")
     (nombreAutor "Joe Abercrombie")
     (autoresSimilares
         [Author_32]
         [Author_698]
         [Author_910]
         [Author464])
     (sexo male))

    ([Author_496] of Autor
     (idAutor "496")
     (nombreAutor "Michael J Sullivan")
     (autoresSimilares
         [Author_239]
         [Author_609]
         [Author_360]
         [Author_762]
         [Author_942]
         [Author_263]
         [Author_59]
         [Author_266]
         [Author_786]
         [Author_584]
         [Author_707]
         [Author637])
     (sexo male))

    ([Author_497] of Autor
     (idAutor "497")
     (nombreAutor "Elizabeth Haydon")
     (autoresSimilares
         [Author_878]
         [Author_622]
         [Author760])
     (sexo male))

    ([Author_498] of Autor
     (idAutor "498")
     (nombreAutor "Raymond E Feist")
     (autoresSimilares
         [Author_601]
         [Author_854]
         [Author_738]
         [Author_130]
         [Author_618]
         [Author_400]
         [Author1])
     (sexo male))

    ([Author_499] of Autor
     (idAutor "499")
     (nombreAutor "Margaret Weis")
     (autoresSimilares
         [Author_828]
         [Author_693]
         [Author_400]
         [Author_164]
         [Author_789]
         [Author_297]
         [Author_653]
         [Author_435]
         [Author_938]
         [Author414])
     (sexo male))

    ([Author_500] of Autor
     (idAutor "500")
     (nombreAutor "Mark  Lawrence")
     (autoresSimilares
         [Author_60]
         [Author_912]
         [Author_144]
         [Author_183]
         [Author_639]
         [Author_866]
         [Author_926]
         [Author_203]
         [Author_764]
         [Author734])
     (sexo male))

    ([Author_501] of Autor
     (idAutor "501")
     (nombreAutor "Lian Hearn")
     (autoresSimilares
         [Author_151]
         [Author_887]
         [Author466])
     (sexo male))

    ([Author_502] of Autor
     (idAutor "502")
     (nombreAutor "Piers Anthony")
     (autoresSimilares
         [Author_865]
         [Author_308]
         [Author702])
     (sexo male))

    ([Author_503] of Autor
     (idAutor "503")
     (nombreAutor "Elizabeth Moon")
     (autoresSimilares
         [Author_57]
         [Author_232]
         [Author_85]
         [Author_358]
         [Author_203]
         [Author_476]
         [Author126])
     (sexo male))

    ([Author_504] of Autor
     (idAutor "504")
     (nombreAutor "Michael Moorcock")
     (autoresSimilares
         [Author_194]
         [Author_383]
         [Author_23]
         [Author_79]
         [Author_336]
         [Author_3]
         [Author590])
     (sexo male))

    ([Author_505] of Autor
     (idAutor "505")
     (nombreAutor "Glen Cook")
     (autoresSimilares
         [Author_633]
         [Author_167]
         [Author_860]
         [Author_859]
         [Author_758]
         [Author_817]
         [Author641])
     (sexo male))

    ([Author_506] of Autor
     (idAutor "506")
     (nombreAutor "Robin Hobb")
     (autoresSimilares
         [Author669])
     (sexo female))

    ([Author_507] of Autor
     (idAutor "507")
     (nombreAutor "Stephen R Donaldson")
     (autoresSimilares
         [Author_912]
         [Author_567]
         [Author814])
     (sexo male))

    ([Author_508] of Autor
     (idAutor "508")
     (nombreAutor "Peter V Brett")
     (autoresSimilares
         [Author_13]
         [Author79])
     (sexo male))

    ([Author_509] of Autor
     (idAutor "509")
     (nombreAutor "Steven Erikson")
     (autoresSimilares
         [Author_214]
         [Author_261]
         [Author_801]
         [Author_522]
         [Author_656]
         [Author_406]
         [Author_342]
         [Author_396]
         [Author_899]
         [Author_564]
         [Author_476]
         [Author_631]
         [Author386])
     (sexo male))

    ([Author_510] of Autor
     (idAutor "510")
     (nombreAutor "Scott Lynch")
     (autoresSimilares
         [Author_37]
         [Author_643]
         [Author_860]
         [Author_868]
         [Author324])
     (sexo male))

    ([Author_511] of Autor
     (idAutor "511")
     (nombreAutor "Raine Miller")
     (autoresSimilares
         [Author_439]
         [Author_863]
         [Author_641]
         [Author_667]
         [Author_547]
         [Author_472]
         [Author_818]
         [Author_897]
         [Author_538]
         [Author_22]
         [Author_58]
         [Author_654]
         [Author_122]
         [Author_798]
         [Author77])
     (sexo female))

    ([Author_512] of Autor
     (idAutor "512")
     (nombreAutor "Frank Herbert")
     (autoresSimilares
         [Author_583]
         [Author_885]
         [Author_366]
         [Author719])
     (sexo male))

    ([Author_513] of Autor
     (idAutor "513")
     (nombreAutor "Maeve Binchy")
     (autoresSimilares
         [Author_52]
         [Author_377]
         [Author_37]
         [Author_747]
         [Author_814]
         [Author_437]
         [Author_589]
         [Author497])
     (sexo female))

    ([Author_514] of Autor
     (idAutor "514")
     (nombreAutor "Jim Thompson")
     (autoresSimilares
         [Author_497]
         [Author_863]
         [Author827])
     (sexo male))

    ([Author_515] of Autor
     (idAutor "515")
     (nombreAutor "Katharine Kerr")
     (autoresSimilares
         [Author_345]
         [Author_262]
         [Author_586]
         [Author_873]
         [Author_169]
         [Author_932]
         [Author820])
     (sexo female))

    ([Author_516] of Autor
     (idAutor "516")
     (nombreAutor "Irvine Welsh")
     (autoresSimilares
         [Author_372]
         [Author573])
     (sexo male))

    ([Author_517] of Autor
     (idAutor "517")
     (nombreAutor "W Somerset Maugham")
     (autoresSimilares
         [Author_99]
         [Author_360]
         [Author_32]
         [Author_880]
         [Author_438]
         [Author_824]
         [Author_50]
         [Author_915]
         [Author480])
     (sexo male))

    ([Author_518] of Autor
     (idAutor "518")
     (nombreAutor "Michael Cunningham")
     (autoresSimilares
         [Author_810]
         [Author_867]
         [Author_363]
         [Author_301]
         [Author_715]
         [Author514])
     (sexo male))

    ([Author_519] of Autor
     (idAutor "519")
     (nombreAutor "Christopher Priest")
     (autoresSimilares
         [Author_371]
         [Author_387]
         [Author_283]
         [Author_29]
         [Author_636]
         [Author_571]
         [Author_105]
         [Author_869]
         [Author_540]
         [Author_738]
         [Author_361]
         [Author_386]
         [Author_412]
         [Author717])
     (sexo male))

    ([Author_520] of Autor
     (idAutor "520")
     (nombreAutor "Robert James Waller")
     (autoresSimilares
         [Author_866]
         [Author_522]
         [Author715])
     (sexo male))

    ([Author_521] of Autor
     (idAutor "521")
     (nombreAutor "Ian Fleming")
     (autoresSimilares
         [Author_76]
         [Author476])
     (sexo male))

    ([Author_522] of Autor
     (idAutor "522")
     (nombreAutor "Karen Joy Fowler")
     (autoresSimilares
         [Author_59]
         [Author_439]
         [Author_760]
         [Author_854]
         [Author419])
     (sexo male))

    ([Author_523] of Autor
     (idAutor "523")
     (nombreAutor "Nick Hornby")
     (autoresSimilares
         [Author_645]
         [Author_807]
         [Author_220]
         [Author_114]
         [Author_49]
         [Author_945]
         [Author_848]
         [Author_810]
         [Author448])
     (sexo male))

    ([Author_524] of Autor
     (idAutor "524")
     (nombreAutor "Bret Easton Ellis")
     (autoresSimilares
         [Author_442]
         [Author_171]
         [Author_699]
         [Author_411]
         [Author_515]
         [Author_496]
         [Author_797]
         [Author_461]
         [Author_402]
         [Author_656]
         [Author_944]
         [Author_406]
         [Author_569]
         [Author_847]
         [Author_476]
         [Author_291]
         [Author_735]
         [Author237])
     (sexo male))

    ([Author_525] of Autor
     (idAutor "525")
     (nombreAutor "Gaston Leroux")
     (autoresSimilares
         [Author_433]
         [Author_395]
         [Author388])
     (sexo male))

    ([Author_526] of Autor
     (idAutor "526")
     (nombreAutor "James Fenimore Cooper")
     (autoresSimilares
         [Author_638]
         [Author505])
     (sexo male))

    ([Author_527] of Autor
     (idAutor "527")
     (nombreAutor "Thomas   Harris")
     (autoresSimilares
         [Author_615]
         [Author_484]
         [Author_789]
         [Author_524]
         [Author_190]
         [Author_411]
         [Author_938]
         [Author_396]
         [Author_857]
         [Author_811]
         [Author_708]
         [Author201])
     (sexo male))

    ([Author_528] of Autor
     (idAutor "528")
     (nombreAutor "Peter Benchley")
     (autoresSimilares
         [Author_924]
         [Author_491]
         [Author_480]
         [Author_897]
         [Author73])
     (sexo male))

    ([Author_529] of Autor
     (idAutor "529")
     (nombreAutor "Jeff Lindsay")
     (autoresSimilares
         [Author_882]
         [Author_275]
         [Author_350]
         [Author_244]
         [Author_107]
         [Author_784]
         [Author_54]
         [Author_493]
         [Author780])
     (sexo male))

    ([Author_530] of Autor
     (idAutor "530")
     (nombreAutor "Robert E Howard")
     (autoresSimilares
         [Author_686]
         [Author_142]
         [Author_353]
         [Author_737]
         [Author_312]
         [Author_879]
         [Author447])
     (sexo male))

    ([Author_531] of Autor
     (idAutor "531")
     (nombreAutor "David Gemmell")
     (autoresSimilares
         [Author_857]
         [Author_748]
         [Author_757]
         [Author_768]
         [Author56])
     (sexo male))

    ([Author_532] of Autor
     (idAutor "532")
     (nombreAutor "Janet B  Taylor")
     (autoresSimilares
         [Author_20]
         [Author_624]
         [Author_306]
         [Author_688]
         [Author_409]
         [Author_197]
         [Author_650]
         [Author_507]
         [Author_651]
         [Author_475]
         [Author_589]
         [Author_478]
         [Author_298]
         [Author_794]
         [Author_703]
         [Author_5]
         [Author_342]
         [Author133])
     (sexo female))

    ([Author_533] of Autor
     (idAutor "533")
     (nombreAutor "Tiffany Reisz")
     (autoresSimilares
         [Author_351]
         [Author_734]
         [Author_73]
         [Author_370]
         [Author_400]
         [Author_714]
         [Author_644]
         [Author_852]
         [Author_517]
         [Author_868]
         [Author_41]
         [Author_261]
         [Author_48]
         [Author_692]
         [Author384])
     (sexo female))

    ([Author_534] of Autor
     (idAutor "534")
     (nombreAutor "HM Ward")
     (autoresSimilares
         [Author_790]
         [Author_841]
         [Author_220]
         [Author_494]
         [Author_597]
         [Author_223]
         [Author_333]
         [Author_865]
         [Author_379]
         [Author_610]
         [Author_195]
         [Author803])
     (sexo female))

    ([Author_535] of Autor
     (idAutor "535")
     (nombreAutor "M Pierce")
     (autoresSimilares
         [Author_387]
         [Author_34]
         [Author_741]
         [Author_427]
         [Author_719]
         [Author_588]
         [Author_24]
         [Author_235]
         [Author_412]
         [Author_765]
         [Author826])
     (sexo male))

    ([Author_536] of Autor
     (idAutor "536")
     (nombreAutor "Laura Wiess")
     (autoresSimilares
         [Author_646]
         [Author_9]
         [Author_332]
         [Author_361]
         [Author_800]
         [Author_592]
         [Author_178]
         [Author_586]
         [Author_806]
         [Author_369]
         [Author_804]
         [Author_157]
         [Author216])
     (sexo female))

    ([Author_537] of Autor
     (idAutor "537")
     (nombreAutor "Carolyn Mackler")
     (autoresSimilares
         [Author_736]
         [Author49])
     (sexo female))

    ([Author_538] of Autor
     (idAutor "538")
     (nombreAutor "Natasha Friend")
     (autoresSimilares
         [Author_305]
         [Author_515]
         [Author_402]
         [Author_648]
         [Author_450]
         [Author_683]
         [Author_502]
         [Author_475]
         [Author_630]
         [Author_808]
         [Author_267]
         [Author_691]
         [Author_584]
         [Author100])
     (sexo female))

    ([Author_539] of Autor
     (idAutor "539")
     (nombreAutor "Elmore Leonard")
     (autoresSimilares
         [Author_507]
         [Author774])
     (sexo male))

    ([Author_540] of Autor
     (idAutor "540")
     (nombreAutor "Mary Higgins Clark")
     (autoresSimilares
         [Author_225]
         [Author_890]
         [Author_358]
         [Author_728]
         [Author444])
     (sexo female))

    ([Author_541] of Autor
     (idAutor "541")
     (nombreAutor "Dorothy L Sayers")
     (autoresSimilares
         [Author_378]
         [Author_182]
         [Author_534]
         [Author_336]
         [Author_439]
         [Author_830]
         [Author_335]
         [Author_386]
         [Author_507]
         [Author_829]
         [Author_910]
         [Author_284]
         [Author624])
     (sexo female))

    ([Author_542] of Autor
     (idAutor "542")
     (nombreAutor "Faye Kellerman")
     (autoresSimilares
         [Author247])
     (sexo female))

    ([Author_543] of Autor
     (idAutor "543")
     (nombreAutor "James M Cain")
     (autoresSimilares
         [Author_105]
         [Author_730]
         [Author_305]
         [Author_337]
         [Author_196]
         [Author_378]
         [Author_509]
         [Author_396]
         [Author_383]
         [Author_855]
         [Author452])
     (sexo male))

    ([Author_544] of Autor
     (idAutor "544")
     (nombreAutor "Donna Tartt")
     (autoresSimilares
         [Author_673]
         [Author_943]
         [Author_630]
         [Author_884]
         [Author689])
     (sexo female))

    ([Author_545] of Autor
     (idAutor "545")
     (nombreAutor "John Sandford")
     (autoresSimilares
         [Author_627]
         [Author_445]
         [Author_293]
         [Author_905]
         [Author_734]
         [Author_45]
         [Author_939]
         [Author_532]
         [Author_0]
         [Author_258]
         [Author_755]
         [Author_331]
         [Author_387]
         [Author_579]
         [Author_334]
         [Author_140]
         [Author361])
     (sexo male))

    ([Author_546] of Autor
     (idAutor "546")
     (nombreAutor "David Guterson")
     (autoresSimilares
         [Author742])
     (sexo male))

    ([Author_547] of Autor
     (idAutor "547")
     (nombreAutor "Michael Connelly")
     (autoresSimilares
         [Author_11]
         [Author_297]
         [Author_56]
         [Author_826]
         [Author_902]
         [Author_699]
         [Author_385]
         [Author_346]
         [Author_546]
         [Author_816]
         [Author_274]
         [Author_77]
         [Author_437]
         [Author_777]
         [Author632])
     (sexo male))

    ([Author_548] of Autor
     (idAutor "548")
     (nombreAutor "Dashiell Hammett")
     (autoresSimilares
         [Author_348]
         [Author_126]
         [Author_336]
         [Author_594]
         [Author_831]
         [Author284])
     (sexo male))

    ([Author_549] of Autor
     (idAutor "549")
     (nombreAutor "Elizabeth  George")
     (autoresSimilares
         [Author_101]
         [Author_517]
         [Author_97]
         [Author_828]
         [Author_226]
         [Author_174]
         [Author_849]
         [Author_829]
         [Author_594]
         [Author_300]
         [Author_800]
         [Author_87]
         [Author_427]
         [Author_583]
         [Author_404]
         [Author_855]
         [Author_222]
         [Author_661]
         [Author_278]
         [Author114])
     (sexo female))

    ([Author_550] of Autor
     (idAutor "550")
     (nombreAutor "Patricia Highsmith")
     (autoresSimilares
         [Author_242]
         [Author_772]
         [Author_575]
         [Author_372]
         [Author_153]
         [Author_869]
         [Author_200]
         [Author_328]
         [Author_544]
         [Author_854]
         [Author_269]
         [Author_472]
         [Author_504]
         [Author_612]
         [Author_703]
         [Author526])
     (sexo female))

    ([Author_551] of Autor
     (idAutor "551")
     (nombreAutor "Martin Cruz Smith")
     (autoresSimilares
         [Author_772]
         [Author_690]
         [Author_412]
         [Author_39]
         [Author_343]
         [Author_110]
         [Author_333]
         [Author_382]
         [Author_907]
         [Author_359]
         [Author_480]
         [Author_505]
         [Author853])
     (sexo male))

    ([Author_552] of Autor
     (idAutor "552")
     (nombreAutor "Peter Heg")
     (autoresSimilares
         [Author_893]
         [Author_487]
         [Author_291]
         [Author_606]
         [Author_483]
         [Author_852]
         [Author_672]
         [Author_767]
         [Author_209]
         [Author_780]
         [Author_197]
         [Author_941]
         [Author_652]
         [Author_486]
         [Author16])
     (sexo male))

    ([Author_553] of Autor
     (idAutor "553")
     (nombreAutor "John Grisham")
     (autoresSimilares
         [Author_740]
         [Author_306]
         [Author_50]
         [Author_673]
         [Author_258]
         [Author_627]
         [Author_894]
         [Author_443]
         [Author_802]
         [Author_411]
         [Author_437]
         [Author_193]
         [Author_651]
         [Author_861]
         [Author_500]
         [Author_883]
         [Author723])
     (sexo male))

    ([Author_554] of Autor
     (idAutor "554")
     (nombreAutor "Sue Grafton")
     (autoresSimilares
         [Author_317]
         [Author_475]
         [Author_254]
         [Author_23]
         [Author_470]
         [Author_899]
         [Author_452]
         [Author_270]
         [Author_417]
         [Author_433]
         [Author_802]
         [Author616])
     (sexo female))

    ([Author_555] of Autor
     (idAutor "555")
     (nombreAutor "Robert Louis Stevenson")
     (autoresSimilares
         [Author_620]
         [Author_396]
         [Author_112]
         [Author_766]
         [Author_875]
         [Author_61]
         [Author_625]
         [Author_252]
         [Author755])
     (sexo male))

    ([Author_556] of Autor
     (idAutor "556")
     (nombreAutor "Scott Turow")
     (autoresSimilares
         [Author_86]
         [Author_902]
         [Author_534]
         [Author_754]
         [Author_291]
         [Author_832]
         [Author_258]
         [Author_596]
         [Author_3]
         [Author_663]
         [Author_103]
         [Author_901]
         [Author_340]
         [Author_495]
         [Author_680]
         [Author276])
     (sexo male))

    ([Author_557] of Autor
     (idAutor "557")
     (nombreAutor "Raymond Chandler")
     (autoresSimilares
         [Author511])
     (sexo male))

    ([Author_558] of Autor
     (idAutor "558")
     (nombreAutor "Dennis Lehane")
     (autoresSimilares
         [Author_157]
         [Author_262]
         [Author_533]
         [Author_793]
         [Author_591]
         [Author_54]
         [Author_708]
         [Author_634]
         [Author_359]
         [Author_109]
         [Author_119]
         [Author902])
     (sexo male))

    ([Author_559] of Autor
     (idAutor "559")
     (nombreAutor "Mario Puzo")
     (autoresSimilares
         [Author_66]
         [Author_503]
         [Author_276]
         [Author_434]
         [Author_75]
         [Author_679]
         [Author_188]
         [Author_779]
         [Author_613]
         [Author_915]
         [Author_42]
         [Author457])
     (sexo male))

    ([Author_560] of Autor
     (idAutor "560")
     (nombreAutor "Megan McCafferty")
     (autoresSimilares
         [Author_481]
         [Author_184]
         [Author_270]
         [Author_729]
         [Author_399]
         [Author_93]
         [Author_114]
         [Author_459]
         [Author_943]
         [Author_141]
         [Author_654]
         [Author_536]
         [Author_689]
         [Author_48]
         [Author_123]
         [Author598])
     (sexo male))

    ([Author_561] of Autor
     (idAutor "561")
     (nombreAutor "RJ Palacio")
     (autoresSimilares
         [Author_728]
         [Author_330]
         [Author_247]
         [Author_718]
         [Author_530]
         [Author_321]
         [Author_930]
         [Author_451]
         [Author_93]
         [Author_909]
         [Author_761]
         [Author_764]
         [Author_881]
         [Author_55]
         [Author_563]
         [Author_770]
         [Author_121]
         [Author115])
     (sexo female))

    ([Author_562] of Autor
     (idAutor "562")
     (nombreAutor "Ned Vizzini")
     (autoresSimilares
         [Author_181]
         [Author_741]
         [Author_250]
         [Author_456]
         [Author_323]
         [Author263])
     (sexo male))

    ([Author_563] of Autor
     (idAutor "563")
     (nombreAutor "Chad Harbach")
     (autoresSimilares
         [Author_290]
         [Author616])
     (sexo male))

    ([Author_564] of Autor
     (idAutor "564")
     (nombreAutor "Chimamanda Ngozi Adichie")
     (autoresSimilares
         [Author_721]
         [Author507])
     (sexo female))

    ([Author_565] of Autor
     (idAutor "565")
     (nombreAutor "Adam Mansbach")
     (autoresSimilares
         [Author347])
     (sexo male))

    ([Author_566] of Autor
     (idAutor "566")
     (nombreAutor "Julian Barnes")
     (autoresSimilares
         [Author_620]
         [Author_916]
         [Author_915]
         [Author_518]
         [Author_789]
         [Author_234]
         [Author_438]
         [Author149])
     (sexo male))

    ([Author_567] of Autor
     (idAutor "567")
     (nombreAutor "SJ Watson")
     (autoresSimilares
         [Author_722]
         [Author_131]
         [Author_527]
         [Author_768]
         [Author_422]
         [Author_239]
         [Author144])
     (sexo male))

    ([Author_568] of Autor
     (idAutor "568")
     (nombreAutor "Jennifer Egan")
     (autoresSimilares
         [Author_758]
         [Author_741]
         [Author_707]
         [Author_795]
         [Author_145]
         [Author177])
     (sexo female))

    ([Author_569] of Autor
     (idAutor "569")
     (nombreAutor "Fredrik Backman")
     (autoresSimilares
         [Author_259]
         [Author_149]
         [Author_152]
         [Author209])
     (sexo male))

    ([Author_570] of Autor
     (idAutor "570")
     (nombreAutor "Robert Galbraith")
     (autoresSimilares
         [Author_71]
         [Author_259]
         [Author_800]
         [Author_888]
         [Author_316]
         [Author_747]
         [Author_827]
         [Author_900]
         [Author_158]
         [Author_289]
         [Author_129]
         [Author_7]
         [Author_831]
         [Author_405]
         [Author_746]
         [Author718])
     (sexo female))

    ([Author_571] of Autor
     (idAutor "571")
     (nombreAutor "Graeme Simsion")
     (autoresSimilares
         [Author_712]
         [Author_888]
         [Author_345]
         [Author_423]
         [Author_611]
         [Author_383]
         [Author_253]
         [Author685])
     (sexo male))

    ([Author_572] of Autor
     (idAutor "572")
     (nombreAutor "Paula Hawkins")
     (autoresSimilares
         [Author_594]
         [Author_327]
         [Author_344]
         [Author_519]
         [Author_447]
         [Author_222]
         [Author_357]
         [Author_573]
         [Author189])
     (sexo male))

    ([Author_573] of Autor
     (idAutor "573")
     (nombreAutor "Jonathan Swift")
     (autoresSimilares
         [Author_891]
         [Author_2]
         [Author17])
     (sexo male))

    ([Author_574] of Autor
     (idAutor "574")
     (nombreAutor "DH Lawrence")
     (autoresSimilares
         [Author_838]
         [Author_464]
         [Author_337]
         [Author_694]
         [Author_72]
         [Author_394]
         [Author_165]
         [Author485])
     (sexo male))

    ([Author_575] of Autor
     (idAutor "575")
     (nombreAutor "Marcel Proust")
     (autoresSimilares
         [Author_716]
         [Author_93]
         [Author_841]
         [Author_301]
         [Author_51]
         [Author673])
     (sexo male))

    ([Author_576] of Autor
     (idAutor "576")
     (nombreAutor "William Makepeace Thackeray")
     (autoresSimilares
         [Author_694]
         [Author_435]
         [Author_344]
         [Author_894]
         [Author_567]
         [Author_400]
         [Author_761]
         [Author_692]
         [Author_749]
         [Author_110]
         [Author_154]
         [Author_865]
         [Author420])
     (sexo male))

    ([Author_577] of Autor
     (idAutor "577")
     (nombreAutor "William S Burroughs")
     (autoresSimilares
         [Author_31]
         [Author_806]
         [Author_454]
         [Author855])
     (sexo male))

    ([Author_578] of Autor
     (idAutor "578")
     (nombreAutor "Jostein Gaarder")
     (autoresSimilares
         [Author_256]
         [Author_115]
         [Author_622]
         [Author_723]
         [Author_532]
         [Author_843]
         [Author_898]
         [Author271])
     (sexo male))

    ([Author_579] of Autor
     (idAutor "579")
     (nombreAutor "David Foster Wallace")
     (autoresSimilares
         [Author_856]
         [Author_842]
         [Author_85]
         [Author_410]
         [Author_800]
         [Author_778]
         [Author_375]
         [Author_194]
         [Author_876]
         [Author_197]
         [Author_922]
         [Author_841]
         [Author_689]
         [Author_456]
         [Author815])
     (sexo male))

    ([Author_580] of Autor
     (idAutor "580")
     (nombreAutor "Tim LaHaye")
     (autoresSimilares
         [Author_149]
         [Author542])
     (sexo male))

    ([Author_581] of Autor
     (idAutor "581")
     (nombreAutor "Billie Letts")
     (autoresSimilares
         [Author_129]
         [Author_847]
         [Author_110]
         [Author_838]
         [Author_187]
         [Author_151]
         [Author_884]
         [Author366])
     (sexo male))

    ([Author_582] of Autor
     (idAutor "582")
     (nombreAutor "Cecelia Ahern")
     (autoresSimilares
         [Author_376]
         [Author_29]
         [Author_75]
         [Author_205]
         [Author_912]
         [Author_330]
         [Author_19]
         [Author_237]
         [Author_467]
         [Author_168]
         [Author_262]
         [Author_22]
         [Author_99]
         [Author527])
     (sexo female))

    ([Author_583] of Autor
     (idAutor "583")
     (nombreAutor "Rebecca Wells")
     (autoresSimilares
         [Author_450]
         [Author_325]
         [Author_178]
         [Author_900]
         [Author_371]
         [Author771])
     (sexo female))

    ([Author_584] of Autor
     (idAutor "584")
     (nombreAutor "Gertrude Chandler Warner")
     (autoresSimilares
         [Author_557]
         [Author_701]
         [Author_491]
         [Author_529]
         [Author_490]
         [Author_228]
         [Author_342]
         [Author_181]
         [Author_257]
         [Author_250]
         [Author_628]
         [Author_600]
         [Author_246]
         [Author_62]
         [Author_733]
         [Author_456]
         [Author816])
     (sexo female))

    ([Author_585] of Autor
     (idAutor "585")
     (nombreAutor "Aesop")
     (autoresSimilares
         [Author_902]
         [Author_336]
         [Author_211]
         [Author_458]
         [Author_409]
         [Author_337]
         [Author_700]
         [Author_408]
         [Author_493]
         [Author_611]
         [Author_16]
         [Author_50]
         [Author42])
     (sexo male))

    ([Author_586] of Autor
     (idAutor "586")
     (nombreAutor "Pat Conroy")
     (autoresSimilares
         [Author_657]
         [Author209])
     (sexo male))

    ([Author_587] of Autor
     (idAutor "587")
     (nombreAutor "Nicki Elson")
     (autoresSimilares
         [Author_620]
         [Author_333]
         [Author_39]
         [Author_832]
         [Author_926]
         [Author_429]
         [Author_607]
         [Author439])
     (sexo female))

    ([Author_588] of Autor
     (idAutor "588")
     (nombreAutor "Edith Wharton")
     (autoresSimilares
         [Author_778]
         [Author_693]
         [Author_92]
         [Author_501]
         [Author_367]
         [Author_420]
         [Author434])
     (sexo female))

    ([Author_589] of Autor
     (idAutor "589")
     (nombreAutor "Boris Pasternak")
     (autoresSimilares
         [Author_360]
         [Author378])
     (sexo male))

    ([Author_590] of Autor
     (idAutor "590")
     (nombreAutor "EM Forster")
     (autoresSimilares
         [Author_558]
         [Author_481]
         [Author_164]
         [Author_828]
         [Author_99]
         [Author_310]
         [Author_646]
         [Author_6]
         [Author_435]
         [Author_837]
         [Author_305]
         [Author_618]
         [Author_9]
         [Author_138]
         [Author_14]
         [Author_381]
         [Author_885]
         [Author_390]
         [Author_49]
         [Author453])
     (sexo male))

    ([Author_591] of Autor
     (idAutor "591")
     (nombreAutor "Francine Rivers")
     (autoresSimilares
         [Author_267]
         [Author_172]
         [Author798])
     (sexo female))

    ([Author_592] of Autor
     (idAutor "592")
     (nombreAutor "Elizabeth Gaskell")
     (autoresSimilares
         [Author_767]
         [Author_911]
         [Author_567]
         [Author_359]
         [Author_370]
         [Author_522]
         [Author_605]
         [Author_459]
         [Author_704]
         [Author_515]
         [Author_473]
         [Author923])
     (sexo female))

    ([Author_593] of Autor
     (idAutor "593")
     (nombreAutor "Jess Walter")
     (autoresSimilares
         [Author_348]
         [Author_156]
         [Author_235]
         [Author_921]
         [Author_10]
         [Author_653]
         [Author_838]
         [Author_208]
         [Author_139]
         [Author_690]
         [Author_740]
         [Author_76]
         [Author_553]
         [Author331])
     (sexo male))

    ([Author_594] of Autor
     (idAutor "594")
     (nombreAutor "Rachel Joyce")
     (autoresSimilares
         [Author_283]
         [Author_587]
         [Author_727]
         [Author_895]
         [Author_891]
         [Author_617]
         [Author_108]
         [Author_824]
         [Author_399]
         [Author_689]
         [Author_4]
         [Author_284]
         [Author_212]
         [Author_335]
         [Author_74]
         [Author_225]
         [Author_362]
         [Author_316]
         [Author_923]
         [Author324])
     (sexo female))

    ([Author_595] of Autor
     (idAutor "595")
     (nombreAutor "Adam Johnson")
     (autoresSimilares
         [Author_110]
         [Author_625]
         [Author_375]
         [Author_500]
         [Author_584]
         [Author_594]
         [Author_875]
         [Author_701]
         [Author_107]
         [Author_30]
         [Author_138]
         [Author_943]
         [Author_742]
         [Author_651]
         [Author_739]
         [Author378])
     (sexo male))

    ([Author_596] of Autor
     (idAutor "596")
     (nombreAutor "Carol Rifka Brunt")
     (autoresSimilares
         [Author_881]
         [Author_377]
         [Author_868]
         [Author_381]
         [Author_852]
         [Author_783]
         [Author_449]
         [Author_722]
         [Author_21]
         [Author_899]
         [Author533])
     (sexo male))

    ([Author_597] of Autor
     (idAutor "597")
     (nombreAutor "William Landay")
     (autoresSimilares
         [Author_732]
         [Author_682]
         [Author_300]
         [Author_801]
         [Author_711]
         [Author_581]
         [Author_464]
         [Author_645]
         [Author_802]
         [Author_881]
         [Author_428]
         [Author_688]
         [Author_521]
         [Author_83]
         [Author_589]
         [Author_585]
         [Author_860]
         [Author_607]
         [Author151])
     (sexo male))

    ([Author_598] of Autor
     (idAutor "598")
     (nombreAutor "Thomas Rockwell")
     (autoresSimilares
         [Author_228]
         [Author_266]
         [Author_510]
         [Author_745]
         [Author_523]
         [Author888])
     (sexo male))

    ([Author_599] of Autor
     (idAutor "599")
     (nombreAutor "VC Andrews")
     (autoresSimilares
         [Author_858]
         [Author_683]
         [Author_120]
         [Author_787]
         [Author_662]
         [Author_134]
         [Author_590]
         [Author_571]
         [Author770])
     (sexo female))

    ([Author_600] of Autor
     (idAutor "600")
     (nombreAutor "Betty MacDonald")
     (autoresSimilares
         [Author_608]
         [Author_279]
         [Author_584]
         [Author_331]
         [Author_638]
         [Author_564]
         [Author588])
     (sexo female))

    ([Author_601] of Autor
     (idAutor "601")
     (nombreAutor "Louise Fitzhugh")
     (autoresSimilares
         [Author_107]
         [Author_271]
         [Author_475]
         [Author_312]
         [Author_778]
         [Author_333]
         [Author_73]
         [Author_166]
         [Author_887]
         [Author_7]
         [Author_222]
         [Author_243]
         [Author_860]
         [Author47])
     (sexo female))

    ([Author_602] of Autor
     (idAutor "602")
     (nombreAutor "Alexandra Duncan")
     (autoresSimilares
         [Author_341]
         [Author_59]
         [Author_83]
         [Author871])
     (sexo female))

    ([Author_603] of Autor
     (idAutor "603")
     (nombreAutor "Claudia Gabel")
     (autoresSimilares
         [Author_430]
         [Author_940]
         [Author_67]
         [Author_574]
         [Author_519]
         [Author_612]
         [Author_207]
         [Author_108]
         [Author_790]
         [Author_756]
         [Author_20]
         [Author_453]
         [Author_582]
         [Author_794]
         [Author703])
     (sexo male))

    ([Author_604] of Autor
     (idAutor "604")
     (nombreAutor "Mindee Arnett")
     (autoresSimilares
         [Author_92]
         [Author_334]
         [Author_254]
         [Author_328]
         [Author_452]
         [Author_125]
         [Author_381]
         [Author202])
     (sexo male))

    ([Author_605] of Autor
     (idAutor "605")
     (nombreAutor "Joelle Charbonneau")
     (autoresSimilares
         [Author_585]
         [Author544])
     (sexo male))

    ([Author_606] of Autor
     (idAutor "606")
     (nombreAutor "Lionel Shriver")
     (autoresSimilares
         [Author_475]
         [Author_26]
         [Author_503]
         [Author_394]
         [Author369])
     (sexo male))

    ([Author_607] of Autor
     (idAutor "607")
     (nombreAutor "Leif Enger")
     (autoresSimilares
         [Author_393]
         [Author_889]
         [Author_364]
         [Author_501]
         [Author_293]
         [Author_825]
         [Author_80]
         [Author_936]
         [Author_807]
         [Author_171]
         [Author126])
     (sexo male))

    ([Author_608] of Autor
     (idAutor "608")
     (nombreAutor "")
     (autoresSimilares
         [Author_547]
         [Author_643]
         [Author_562]
         [Author_667]
         [Author_255]
         [Author_814]
         [Author_283]
         [Author_863]
         [Author_363]
         [Author_356]
         [Author_709]
         [Author_873]
         [Author486])
     (sexo male))

    ([Author_609] of Autor
     (idAutor "609")
     (nombreAutor "Chris Cleave")
     (autoresSimilares
         [Author_243]
         [Author_570]
         [Author_832]
         [Author_298]
         [Author_395]
         [Author_893]
         [Author_136]
         [Author_745]
         [Author342])
     (sexo male))

    ([Author_610] of Autor
     (idAutor "610")
     (nombreAutor "Lisa Genova")
     (autoresSimilares
         [Author_323]
         [Author_139]
         [Author_278]
         [Author_701]
         [Author_846]
         [Author_567]
         [Author_449]
         [Author_407]
         [Author_594]
         [Author_819]
         [Author_222]
         [Author_872]
         [Author_322]
         [Author_287]
         [Author_483]
         [Author_65]
         [Author_576]
         [Author_923]
         [Author856])
     (sexo female))

    ([Author_611] of Autor
     (idAutor "611")
     (nombreAutor "Julia Karr")
     (autoresSimilares
         [Author_346]
         [Author_902]
         [Author_399]
         [Author7])
     (sexo male))

    ([Author_612] of Autor
     (idAutor "612")
     (nombreAutor "Julie Cross")
     (autoresSimilares
         [Author_37]
         [Author_286]
         [Author_658]
         [Author_673]
         [Author_158]
         [Author_733]
         [Author_1]
         [Author_177]
         [Author_168]
         [Author_602]
         [Author67])
     (sexo female))

    ([Author_613] of Autor
     (idAutor "613")
     (nombreAutor "Mike Mullin")
     (autoresSimilares
         [Author_68]
         [Author_923]
         [Author_456]
         [Author_55]
         [Author_740]
         [Author_97]
         [Author_61]
         [Author_105]
         [Author_191]
         [Author_732]
         [Author_197]
         [Author567])
     (sexo male))

    ([Author_614] of Autor
     (idAutor "614")
     (nombreAutor "Suzanne Weyn")
     (autoresSimilares
         [Author_754]
         [Author_578]
         [Author_134]
         [Author_280]
         [Author_190]
         [Author_288]
         [Author_115]
         [Author_884]
         [Author_565]
         [Author153])
     (sexo female))

    ([Author_615] of Autor
     (idAutor "615")
     (nombreAutor "John Marsden")
     (autoresSimilares
         [Author_290]
         [Author_739]
         [Author_850]
         [Author265])
     (sexo male))

    ([Author_616] of Autor
     (idAutor "616")
     (nombreAutor "Gemma Malley")
     (autoresSimilares
         [Author_486]
         [Author_131]
         [Author485])
     (sexo male))

    ([Author_617] of Autor
     (idAutor "617")
     (nombreAutor "Lissa Price")
     (autoresSimilares
         [Author_175]
         [Author_384]
         [Author_487]
         [Author_26]
         [Author_604]
         [Author_499]
         [Author433])
     (sexo female))

    ([Author_618] of Autor
     (idAutor "618")
     (nombreAutor "Beth Kery")
     (autoresSimilares
         [Author_811]
         [Author_96]
         [Author_749]
         [Author_200]
         [Author_706]
         [Author863])
     (sexo female))

    ([Author_619] of Autor
     (idAutor "619")
     (nombreAutor "Shayla Black")
     (autoresSimilares
         [Author_355]
         [Author_814]
         [Author_883]
         [Author_657]
         [Author_280]
         [Author220])
     (sexo female))

    ([Author_620] of Autor
     (idAutor "620")
     (nombreAutor "Selena Kitt")
     (autoresSimilares
         [Author_917]
         [Author_330]
         [Author_790]
         [Author_585]
         [Author_110]
         [Author_404]
         [Author_788]
         [Author_691]
         [Author_698]
         [Author_212]
         [Author_587]
         [Author_571]
         [Author_811]
         [Author914])
     (sexo female))

    ([Author_621] of Autor
     (idAutor "621")
     (nombreAutor "Megan Hart")
     (autoresSimilares
         [Author_95]
         [Author_296]
         [Author_919]
         [Author_211]
         [Author_382]
         [Author658])
     (sexo male))

    ([Author_622] of Autor
     (idAutor "622")
     (nombreAutor "Laurelin Paige")
     (autoresSimilares
         [Author_861]
         [Author_626]
         [Author747])
     (sexo female))

    ([Author_623] of Autor
     (idAutor "623")
     (nombreAutor "Barbara Elsborg")
     (autoresSimilares
         [Author_91]
         [Author_109]
         [Author_396]
         [Author_270]
         [Author_749]
         [Author_420]
         [Author_125]
         [Author_135]
         [Author490])
     (sexo female))

    ([Author_624] of Autor
     (idAutor "624")
     (nombreAutor "Teresa Mummert")
     (autoresSimilares
         [Author_570]
         [Author_932]
         [Author_823]
         [Author_835]
         [Author_694]
         [Author_400]
         [Author_845]
         [Author_839]
         [Author_156]
         [Author_155]
         [Author_776]
         [Author_584]
         [Author_415]
         [Author_270]
         [Author_363]
         [Author_675]
         [Author149])
     (sexo female))

    ([Author_625] of Autor
     (idAutor "625")
     (nombreAutor "J Kenner")
     (autoresSimilares
         [Author_243]
         [Author_514]
         [Author_560]
         [Author_765]
         [Author_894]
         [Author_782]
         [Author_753]
         [Author_552]
         [Author_427]
         [Author_767]
         [Author_8]
         [Author_171]
         [Author_884]
         [Author_206]
         [Author_646]
         [Author_133]
         [Author_643]
         [Author_280]
         [Author_724]
         [Author703])
     (sexo female))

    ([Author_626] of Autor
     (idAutor "626")
     (nombreAutor "Cherise Sinclair")
     (autoresSimilares
         [Author_877]
         [Author_784]
         [Author_796]
         [Author230])
     (sexo female))

    ([Author_627] of Autor
     (idAutor "627")
     (nombreAutor "Georgia Cates")
     (autoresSimilares
         [Author_178]
         [Author_664]
         [Author_356]
         [Author_28]
         [Author_488]
         [Author_842]
         [Author_855]
         [Author_853]
         [Author749])
     (sexo male))

    ([Author_628] of Autor
     (idAutor "628")
     (nombreAutor "Tymber Dalton")
     (autoresSimilares
         [Author_347]
         [Author_246]
         [Author_722]
         [Author_756]
         [Author_262]
         [Author_343]
         [Author_670]
         [Author_414]
         [Author_570]
         [Author_8]
         [Author_432]
         [Author_349]
         [Author_315]
         [Author_285]
         [Author_264]
         [Author37])
     (sexo female))

    ([Author_629] of Autor
     (idAutor "629")
     (nombreAutor "Kallypso Masters")
     (autoresSimilares
         [Author_724]
         [Author_810]
         [Author_275]
         [Author_926]
         [Author_142]
         [Author_887]
         [Author_849]
         [Author_362]
         [Author_714]
         [Author_94]
         [Author_384]
         [Author282])
     (sexo female))

    ([Author_630] of Autor
     (idAutor "630")
     (nombreAutor "Georges Bataille")
     (autoresSimilares
         [Author_271]
         [Author_13]
         [Author_783]
         [Author_691]
         [Author_252]
         [Author_410]
         [Author_272]
         [Author_553]
         [Author_695]
         [Author_902]
         [Author_494]
         [Author_264]
         [Author_889]
         [Author_511]
         [Author_263]
         [Author_203]
         [Author_915]
         [Author762])
     (sexo male))

    ([Author_631] of Autor
     (idAutor "631")
     (nombreAutor "Charles Stross")
     (autoresSimilares
         [Author_282]
         [Author_713]
         [Author_866]
         [Author_903]
         [Author_91]
         [Author_504]
         [Author_409]
         [Author_226]
         [Author_429]
         [Author_556]
         [Author_248]
         [Author_1]
         [Author_303]
         [Author_535]
         [Author636])
     (sexo male))

    ([Author_632] of Autor
     (idAutor "632")
     (nombreAutor "Richard Atwater")
     (autoresSimilares
         [Author_167]
         [Author_468]
         [Author_256]
         [Author_426]
         [Author_832]
         [Author_354]
         [Author_820]
         [Author_630]
         [Author_393]
         [Author644])
     (sexo male))

    ([Author_633] of Autor
     (idAutor "633")
     (nombreAutor "Blake Charlton")
     (autoresSimilares
         [Author_87]
         [Author_127]
         [Author_318]
         [Author_269]
         [Author_406]
         [Author_522]
         [Author_228]
         [Author_675]
         [Author_69]
         [Author_657]
         [Author_430]
         [Author_471]
         [Author_711]
         [Author_170]
         [Author_898]
         [Author_268]
         [Author_492]
         [Author_558]
         [Author821])
     (sexo male))

    ([Author_634] of Autor
     (idAutor "634")
     (nombreAutor "David Farland")
     (autoresSimilares
         [Author_933]
         [Author_205]
         [Author_554]
         [Author_457]
         [Author_307]
         [Author784])
     (sexo male))

    ([Author_635] of Autor
     (idAutor "635")
     (nombreAutor "David Estes")
     (autoresSimilares
         [Author_879]
         [Author662])
     (sexo male))

    ([Author_636] of Autor
     (idAutor "636")
     (nombreAutor "Sara  King")
     (autoresSimilares
         [Author_909]
         [Author_640]
         [Author_295]
         [Author_19]
         [Author_653]
         [Author_549]
         [Author_286]
         [Author_315]
         [Author_296]
         [Author_343]
         [Author_414]
         [Author_507]
         [Author823])
     (sexo male))

    ([Author_637] of Autor
     (idAutor "637")
     (nombreAutor "Ian McDonald")
     (autoresSimilares
         [Author_312]
         [Author_786]
         [Author_274]
         [Author_278]
         [Author_291]
         [Author_310]
         [Author_904]
         [Author_863]
         [Author_711]
         [Author_784]
         [Author_730]
         [Author_925]
         [Author_504]
         [Author_531]
         [Author_540]
         [Author_502]
         [Author_296]
         [Author_450]
         [Author_18]
         [Author298])
     (sexo male))

    ([Author_638] of Autor
     (idAutor "638")
     (nombreAutor "Neal Asher")
     (autoresSimilares
         [Author_486]
         [Author_20]
         [Author_766]
         [Author_847]
         [Author_764]
         [Author_508]
         [Author_877]
         [Author_909]
         [Author_681]
         [Author_390]
         [Author_819]
         [Author_353]
         [Author_841]
         [Author_700]
         [Author_395]
         [Author886])
     (sexo male))

    ([Author_639] of Autor
     (idAutor "639")
     (nombreAutor "Robert J Sawyer")
     (autoresSimilares
         [Author_451]
         [Author_879]
         [Author_843]
         [Author_869]
         [Author_395]
         [Author_120]
         [Author_431]
         [Author_346]
         [Author_582]
         [Author_900]
         [Author_219]
         [Author_681]
         [Author_735]
         [Author_287]
         [Author_566]
         [Author337])
     (sexo male))

    ([Author_640] of Autor
     (idAutor "640")
     (nombreAutor "Nick Harkaway")
     (autoresSimilares
         [Author_79]
         [Author_8]
         [Author_229]
         [Author_793]
         [Author_133]
         [Author_408]
         [Author_190]
         [Author_495]
         [Author_929]
         [Author_137]
         [Author_763]
         [Author_91]
         [Author_525]
         [Author_852]
         [Author_380]
         [Author_362]
         [Author_748]
         [Author_804]
         [Author383])
     (sexo male))

    ([Author_641] of Autor
     (idAutor "641")
     (nombreAutor "Becky Chambers")
     (autoresSimilares
         [Author_791]
         [Author_689]
         [Author_213]
         [Author555])
     (sexo male))

    ([Author_642] of Autor
     (idAutor "642")
     (nombreAutor "Peter F Hamilton")
     (autoresSimilares
         [Author_818]
         [Author_233]
         [Author_214]
         [Author_315]
         [Author_518]
         [Author_29]
         [Author_522]
         [Author_479]
         [Author_719]
         [Author_669]
         [Author_943]
         [Author_368]
         [Author_507]
         [Author_421]
         [Author_155]
         [Author562])
     (sexo male))

    ([Author_643] of Autor
     (idAutor "643")
     (nombreAutor "Cherie Priest")
     (autoresSimilares
         [Author_760]
         [Author_100]
         [Author_679]
         [Author_315]
         [Author_183]
         [Author_697]
         [Author_810]
         [Author_681]
         [Author_796]
         [Author_458]
         [Author_831]
         [Author_253]
         [Author_172]
         [Author_14]
         [Author_433]
         [Author_112]
         [Author_61]
         [Author_234]
         [Author712])
     (sexo female))

    ([Author_644] of Autor
     (idAutor "644")
     (nombreAutor "Alastair Reynolds")
     (autoresSimilares
         [Author_302]
         [Author234])
     (sexo male))

    ([Author_645] of Autor
     (idAutor "645")
     (nombreAutor "Ramez Naam")
     (autoresSimilares
         [Author_183]
         [Author_940]
         [Author_300]
         [Author_838]
         [Author_27]
         [Author_215]
         [Author_48]
         [Author_268]
         [Author_547]
         [Author_685]
         [Author_160]
         [Author_237]
         [Author_891]
         [Author_428]
         [Author_434]
         [Author_618]
         [Author_379]
         [Author_926]
         [Author799])
     (sexo male))

    ([Author_646] of Autor
     (idAutor "646")
     (nombreAutor "Peter Clines")
     (autoresSimilares
         [Author_388]
         [Author_675]
         [Author_4]
         [Author_926]
         [Author_291]
         [Author_635]
         [Author_378]
         [Author_162]
         [Author_410]
         [Author_687]
         [Author_510]
         [Author_38]
         [Author_424]
         [Author_439]
         [Author_169]
         [Author96])
     (sexo male))

    ([Author_647] of Autor
     (idAutor "647")
     (nombreAutor "MR Carey")
     (autoresSimilares
         [Author_376]
         [Author_194]
         [Author_73]
         [Author356])
     (sexo male))

    ([Author_648] of Autor
     (idAutor "648")
     (nombreAutor "Daniel Suarez")
     (autoresSimilares
         [Author_343]
         [Author_738]
         [Author_79]
         [Author_80]
         [Author_498]
         [Author_153]
         [Author_397]
         [Author_829]
         [Author_763]
         [Author_636]
         [Author_294]
         [Author_143]
         [Author_112]
         [Author_353]
         [Author_723]
         [Author_889]
         [Author_458]
         [Author732])
     (sexo male))

    ([Author_649] of Autor
     (idAutor "649")
     (nombreAutor "Daniel H Wilson")
     (autoresSimilares
         [Author_811]
         [Author_920]
         [Author_354]
         [Author_705]
         [Author_68]
         [Author_677]
         [Author_295]
         [Author_369]
         [Author_564]
         [Author_940]
         [Author_277]
         [Author_512]
         [Author_765]
         [Author_7]
         [Author_566]
         [Author868])
     (sexo male))

    ([Author_650] of Autor
     (idAutor "650")
     (nombreAutor "Jeff VanderMeer")
     (autoresSimilares
         [Author_641]
         [Author_52]
         [Author_474]
         [Author_842]
         [Author_556]
         [Author_233]
         [Author_20]
         [Author_521]
         [Author_698]
         [Author_833]
         [Author_172]
         [Author_913]
         [Author_105]
         [Author317])
     (sexo male))

    ([Author_651] of Autor
     (idAutor "651")
     (nombreAutor "Hannu Rajaniemi")
     (autoresSimilares
         [Author_264]
         [Author_17]
         [Author_332]
         [Author_151]
         [Author_103]
         [Author296])
     (sexo male))

    ([Author_652] of Autor
     (idAutor "652")
     (nombreAutor "China Miville")
     (autoresSimilares
         [Author_882]
         [Author_635]
         [Author_104]
         [Author_571]
         [Author_195]
         [Author_788]
         [Author_797]
         [Author_339]
         [Author_812]
         [Author_389]
         [Author_599]
         [Author_608]
         [Author_115]
         [Author806])
     (sexo male))

    ([Author_653] of Autor
     (idAutor "653")
     (nombreAutor "Liu Cixin")
     (autoresSimilares
         [Author_322]
         [Author_77]
         [Author_53]
         [Author_614]
         [Author_356]
         [Author_203]
         [Author_608]
         [Author_879]
         [Author_746]
         [Author_368]
         [Author_243]
         [Author_940]
         [Author102])
     (sexo male))

    ([Author_654] of Autor
     (idAutor "654")
     (nombreAutor "Peter Watts")
     (autoresSimilares
         [Author_432]
         [Author_914]
         [Author_412]
         [Author_636]
         [Author_334]
         [Author_20]
         [Author_223]
         [Author_201]
         [Author_107]
         [Author_701]
         [Author_549]
         [Author_893]
         [Author_40]
         [Author_907]
         [Author_882]
         [Author_681]
         [Author_259]
         [Author_322]
         [Author162])
     (sexo male))

    ([Author_655] of Autor
     (idAutor "655")
     (nombreAutor "Robert Charles Wilson")
     (autoresSimilares
         [Author_14]
         [Author_480]
         [Author_400]
         [Author_372]
         [Author_228]
         [Author_475]
         [Author_640]
         [Author_569]
         [Author_280]
         [Author_935]
         [Author753])
     (sexo male))

    ([Author_656] of Autor
     (idAutor "656")
     (nombreAutor "Ann Leckie")
     (autoresSimilares
         [Author_515]
         [Author_686]
         [Author_13]
         [Author_239]
         [Author_673]
         [Author_871]
         [Author_448]
         [Author_309]
         [Author51])
     (sexo male))

    ([Author_657] of Autor
     (idAutor "657")
     (nombreAutor "Dorothy Allison")
     (autoresSimilares
         [Author_901]
         [Author_751]
         [Author_892]
         [Author644])
     (sexo male))

    ([Author_658] of Autor
     (idAutor "658")
     (nombreAutor "Hubert Selby Jr")
     (autoresSimilares
         [Author_657]
         [Author_187]
         [Author_487]
         [Author_252]
         [Author_931]
         [Author25])
     (sexo male))

    ([Author_659] of Autor
     (idAutor "659")
     (nombreAutor "Jay Anson")
     (autoresSimilares
         [Author_776]
         [Author_754]
         [Author_399]
         [Author_911]
         [Author_832]
         [Author_583]
         [Author_187]
         [Author_104]
         [Author_700]
         [Author_410]
         [Author639])
     (sexo male))

    ([Author_660] of Autor
     (idAutor "660")
     (nombreAutor "AM Homes")
     (autoresSimilares
         [Author_725]
         [Author_110]
         [Author_365]
         [Author_523]
         [Author_348]
         [Author_683]
         [Author_99]
         [Author_19]
         [Author515])
     (sexo female))

    ([Author_661] of Autor
     (idAutor "661")
     (nombreAutor "Jerzy Kosiski")
     (autoresSimilares
         [Author_573]
         [Author_470]
         [Author_416]
         [Author_49]
         [Author_482]
         [Author_342]
         [Author_484]
         [Author_662]
         [Author_293]
         [Author_6]
         [Author_706]
         [Author_778]
         [Author_787]
         [Author_110]
         [Author_37]
         [Author_548]
         [Author_550]
         [Author869])
     (sexo male))

    ([Author_662] of Autor
     (idAutor "662")
     (nombreAutor "Katherine Dunn")
     (autoresSimilares
         [Author_600]
         [Author_401]
         [Author_286]
         [Author_63]
         [Author373])
     (sexo female))

    ([Author_663] of Autor
     (idAutor "663")
     (nombreAutor "Marquis de Sade")
     (autoresSimilares
         [Author_24]
         [Author_248]
         [Author_383]
         [Author_795]
         [Author_900]
         [Author_488]
         [Author_653]
         [Author_808]
         [Author_314]
         [Author_701]
         [Author_39]
         [Author_413]
         [Author215])
     (sexo male))

    ([Author_664] of Autor
     (idAutor "664")
     (nombreAutor "Jack Ketchum")
     (autoresSimilares
         [Author_545]
         [Author_229]
         [Author_905]
         [Author_29]
         [Author_916]
         [Author111])
     (sexo male))

    ([Author_665] of Autor
     (idAutor "665")
     (nombreAutor "Iain Banks")
     (autoresSimilares
         [Author_538]
         [Author_918]
         [Author_165]
         [Author_795]
         [Author_537]
         [Author_210]
         [Author_310]
         [Author_409]
         [Author_127]
         [Author188])
     (sexo male))

    ([Author_666] of Autor
     (idAutor "666")
     (nombreAutor "Jennifer  McMahon")
     (autoresSimilares
         [Author_582]
         [Author_392]
         [Author_6]
         [Author_501]
         [Author_698]
         [Author_164]
         [Author_579]
         [Author_325]
         [Author_559]
         [Author_458]
         [Author_173]
         [Author_945]
         [Author_118]
         [Author_385]
         [Author_184]
         [Author_626]
         [Author_524]
         [Author_669]
         [Author63])
     (sexo male))

    ([Author_667] of Autor
     (idAutor "667")
     (nombreAutor "Rachel Simon")
     (autoresSimilares
         [Author_64]
         [Author_746]
         [Author_630]
         [Author_890]
         [Author_304]
         [Author_357]
         [Author_179]
         [Author_457]
         [Author_882]
         [Author_156]
         [Author_328]
         [Author_154]
         [Author_896]
         [Author_747]
         [Author_429]
         [Author_189]
         [Author_935]
         [Author_430]
         [Author692])
     (sexo female))

    ([Author_668] of Autor
     (idAutor "668")
     (nombreAutor "David Nicholls")
     (autoresSimilares
         [Author_882]
         [Author_99]
         [Author_368]
         [Author_219]
         [Author307])
     (sexo male))

    ([Author_669] of Autor
     (idAutor "669")
     (nombreAutor "Paula McLain")
     (autoresSimilares
         [Author_803]
         [Author_217]
         [Author_656]
         [Author_584]
         [Author_420]
         [Author213])
     (sexo female))

    ([Author_670] of Autor
     (idAutor "670")
     (nombreAutor "Elana Johnson")
     (autoresSimilares
         [Author_497]
         [Author_467]
         [Author353])
     (sexo male))

    ([Author_671] of Autor
     (idAutor "671")
     (nombreAutor "Alexandra Monir")
     (autoresSimilares
         [Author_281]
         [Author_542]
         [Author_430]
         [Author121])
     (sexo female))

    ([Author_672] of Autor
     (idAutor "672")
     (nombreAutor "Gwen Cole")
     (autoresSimilares
         [Author_871]
         [Author_701]
         [Author_896]
         [Author_814]
         [Author_564]
         [Author_649]
         [Author_324]
         [Author_386]
         [Author_75]
         [Author_583]
         [Author_271]
         [Author_6]
         [Author_109]
         [Author644])
     (sexo female))

    ([Author_673] of Autor
     (idAutor "673")
     (nombreAutor "Tristina Wright")
     (autoresSimilares
         [Author_477]
         [Author333])
     (sexo female))

    ([Author_674] of Autor
     (idAutor "674")
     (nombreAutor "Kat Falls")
     (autoresSimilares
         [Author_706]
         [Author_909]
         [Author_817]
         [Author_515]
         [Author_138]
         [Author_691]
         [Author_661]
         [Author_345]
         [Author_400]
         [Author616])
     (sexo female))

    ([Author_675] of Autor
     (idAutor "675")
     (nombreAutor "Amy Mason Doan")
     (autoresSimilares
         [Author_461]
         [Author_173]
         [Author_388]
         [Author_286]
         [Author_712]
         [Author_53]
         [Author_144]
         [Author_120]
         [Author_324]
         [Author_748]
         [Author_849]
         [Author_673]
         [Author393])
     (sexo female))

    ([Author_676] of Autor
     (idAutor "676")
     (nombreAutor "R Scott Bakker")
     (autoresSimilares
         [Author_220]
         [Author_213]
         [Author_824]
         [Author_470]
         [Author_98]
         [Author_92]
         [Author_549]
         [Author_376]
         [Author_929]
         [Author_724]
         [Author_485]
         [Author_191]
         [Author_193]
         [Author_277]
         [Author_141]
         [Author_79]
         [Author_81]
         [Author_280]
         [Author_815]
         [Author320])
     (sexo male))

    ([Author_677] of Autor
     (idAutor "677")
     (nombreAutor "Lev Grossman")
     (autoresSimilares
         [Author_612]
         [Author_907]
         [Author_918]
         [Author_686]
         [Author550])
     (sexo male))

    ([Author_678] of Autor
     (idAutor "678")
     (nombreAutor "Catherynne M Valente")
     (autoresSimilares
         [Author_456]
         [Author_861]
         [Author_869]
         [Author_164]
         [Author_115]
         [Author_508]
         [Author_439]
         [Author_910]
         [Author_605]
         [Author_840]
         [Author_79]
         [Author_113]
         [Author_775]
         [Author_341]
         [Author_512]
         [Author_852]
         [Author_941]
         [Author_273]
         [Author278])
     (sexo female))

    ([Author_679] of Autor
     (idAutor "679")
     (nombreAutor "Pamela Dean")
     (autoresSimilares
         [Author_358]
         [Author_359]
         [Author_750]
         [Author_251]
         [Author_504]
         [Author_450]
         [Author_33]
         [Author_815]
         [Author_721]
         [Author_277]
         [Author_585]
         [Author_56]
         [Author_501]
         [Author_314]
         [Author_348]
         [Author736])
     (sexo male))

    ([Author_680] of Autor
     (idAutor "680")
     (nombreAutor "John Connolly")
     (autoresSimilares
         [Author_265]
         [Author_223]
         [Author_433]
         [Author_896]
         [Author_558]
         [Author_787]
         [Author_833]
         [Author_201]
         [Author_843]
         [Author_853]
         [Author_159]
         [Author_387]
         [Author_452]
         [Author_869]
         [Author_365]
         [Author102])
     (sexo male))

    ([Author_681] of Autor
     (idAutor "681")
     (nombreAutor "Carl Hiaasen")
     (autoresSimilares
         [Author_83]
         [Author_625]
         [Author_462]
         [Author_626]
         [Author619])
     (sexo male))

    ([Author_682] of Autor
     (idAutor "682")
     (nombreAutor "PG Wodehouse")
     (autoresSimilares
         [Author_8]
         [Author_701]
         [Author_416]
         [Author_395]
         [Author_310]
         [Author_684]
         [Author_234]
         [Author_507]
         [Author_69]
         [Author_204]
         [Author_455]
         [Author_14]
         [Author_217]
         [Author_748]
         [Author_253]
         [Author_775]
         [Author_35]
         [Author_616]
         [Author849])
     (sexo male))

    ([Author_683] of Autor
     (idAutor "683")
     (nombreAutor "Paige Singleton")
     (autoresSimilares
         [Author_785]
         [Author_668]
         [Author_187]
         [Author_666]
         [Author_780]
         [Author_502]
         [Author_769]
         [Author730])
     (sexo male))

    ([Author_684] of Autor
     (idAutor "684")
     (nombreAutor "Tim Vicary")
     (autoresSimilares
         [Author_311]
         [Author_525]
         [Author_358]
         [Author_188]
         [Author_110]
         [Author_501]
         [Author_529]
         [Author_125]
         [Author_818]
         [Author_913]
         [Author_140]
         [Author_880]
         [Author_800]
         [Author_230]
         [Author_277]
         [Author_382]
         [Author_743]
         [Author799])
     (sexo male))

    ([Author_685] of Autor
     (idAutor "685")
     (nombreAutor "Ginny Bryce")
     (autoresSimilares
         [Author_526]
         [Author_53]
         [Author_513]
         [Author_93]
         [Author_8]
         [Author_801]
         [Author_430]
         [Author_551]
         [Author_703]
         [Author_432]
         [Author_668]
         [Author_67]
         [Author_584]
         [Author_418]
         [Author_101]
         [Author_573]
         [Author_68]
         [Author_373]
         [Author_752]
         [Author181])
     (sexo male))

    ([Author_686] of Autor
     (idAutor "686")
     (nombreAutor "Jinx Schwartz")
     (autoresSimilares
         [Author_833]
         [Author_370]
         [Author_90]
         [Author_386]
         [Author166])
     (sexo female))

    ([Author_687] of Autor
     (idAutor "687")
     (nombreAutor "Iain Parke")
     (autoresSimilares
         [Author_235]
         [Author_165]
         [Author_314]
         [Author_682]
         [Author_486]
         [Author_395]
         [Author786])
     (sexo male))

    ([Author_688] of Autor
     (idAutor "688")
     (nombreAutor "Peter Watson Jenkins")
     (autoresSimilares
         [Author_421]
         [Author_579]
         [Author_481]
         [Author_476]
         [Author_41]
         [Author_458]
         [Author_626]
         [Author_849]
         [Author_79]
         [Author_511]
         [Author_83]
         [Author_365]
         [Author22])
     (sexo male))

    ([Author_689] of Autor
     (idAutor "689")
     (nombreAutor "David Prosser")
     (autoresSimilares
         [Author_274]
         [Author833])
     (sexo male))

    ([Author_690] of Autor
     (idAutor "690")
     (nombreAutor "Tyler Chase")
     (autoresSimilares
         [Author_166]
         [Author_737]
         [Author_606]
         [Author_936]
         [Author_812]
         [Author_545]
         [Author_327]
         [Author_265]
         [Author_183]
         [Author_382]
         [Author_157]
         [Author_298]
         [Author_881]
         [Author_529]
         [Author_680]
         [Author568])
     (sexo male))

    ([Author_691] of Autor
     (idAutor "691")
     (nombreAutor "Patricia H Graham")
     (autoresSimilares
         [Author_207]
         [Author_123]
         [Author_911]
         [Author_88]
         [Author_190]
         [Author_943]
         [Author49])
     (sexo female))

    ([Author_692] of Autor
     (idAutor "692")
     (nombreAutor "Carlyle Labuschagne")
     (autoresSimilares
         [Author_289]
         [Author_573]
         [Author_154]
         [Author_738]
         [Author_525]
         [Author_198]
         [Author_535]
         [Author_256]
         [Author_527]
         [Author_829]
         [Author817])
     (sexo female))

    ([Author_693] of Autor
     (idAutor "693")
     (nombreAutor "Tamara Ireland Stone")
     (autoresSimilares
         [Author_132]
         [Author_934]
         [Author852])
     (sexo female))

    ([Author_694] of Autor
     (idAutor "694")
     (nombreAutor "Kate Hawkings")
     (autoresSimilares
         [Author_876]
         [Author_129]
         [Author_848]
         [Author_886]
         [Author_83]
         [Author_29]
         [Author465])
     (sexo male))

    ([Author_695] of Autor
     (idAutor "695")
     (nombreAutor "Jay Kristoff")
     (autoresSimilares
         [Author_230]
         [Author_880]
         [Author_575]
         [Author_928]
         [Author_619]
         [Author_886]
         [Author_608]
         [Author_502]
         [Author_476]
         [Author_512]
         [Author_265]
         [Author_410]
         [Author_4]
         [Author_163]
         [Author_758]
         [Author_361]
         [Author501])
     (sexo male))

    ([Author_696] of Autor
     (idAutor "696")
     (nombreAutor "Suzanne Lazear")
     (autoresSimilares
         [Author_179]
         [Author_99]
         [Author317])
     (sexo female))

    ([Author_697] of Autor
     (idAutor "697")
     (nombreAutor "Galaxy Craze")
     (autoresSimilares
         [Author_518]
         [Author926])
     (sexo female))

    ([Author_698] of Autor
     (idAutor "698")
     (nombreAutor "Trisha Wolfe")
     (autoresSimilares
         [Author_85]
         [Author_479]
         [Author243])
     (sexo female))

    ([Author_699] of Autor
     (idAutor "699")
     (nombreAutor "Susanne Winnacker")
     (autoresSimilares
         [Author_584]
         [Author_390]
         [Author_898]
         [Author_76]
         [Author_933]
         [Author_353]
         [Author_932]
         [Author_373]
         [Author_101]
         [Author_578]
         [Author_854]
         [Author674])
     (sexo female))

    ([Author_700] of Autor
     (idAutor "700")
     (nombreAutor "Melissa  West")
     (autoresSimilares
         [Author_780]
         [Author568])
     (sexo female))

    ([Author_701] of Autor
     (idAutor "701")
     (nombreAutor "Claire Merle")
     (autoresSimilares
         [Author_228]
         [Author_165]
         [Author_517]
         [Author567])
     (sexo female))

    ([Author_702] of Autor
     (idAutor "702")
     (nombreAutor "Jennifer Bosworth")
     (autoresSimilares
         [Author380])
     (sexo female))

    ([Author_703] of Autor
     (idAutor "703")
     (nombreAutor "Tom Clancy")
     (autoresSimilares
         [Author_549]
         [Author_351]
         [Author_397]
         [Author_243]
         [Author_100]
         [Author_205]
         [Author_360]
         [Author_589]
         [Author_544]
         [Author690])
     (sexo male))

    ([Author_704] of Autor
     (idAutor "704")
     (nombreAutor "Dean Koontz")
     (autoresSimilares
         [Author_368]
         [Author_396]
         [Author_511]
         [Author_698]
         [Author_342]
         [Author_835]
         [Author_206]
         [Author_687]
         [Author_188]
         [Author_241]
         [Author_633]
         [Author_221]
         [Author_288]
         [Author_267]
         [Author_157]
         [Author_789]
         [Author_352]
         [Author_345]
         [Author332])
     (sexo male))

    ([Author_705] of Autor
     (idAutor "705")
     (nombreAutor "Woody Allen")
     (autoresSimilares
         [Author_926]
         [Author_483]
         [Author_829]
         [Author_104]
         [Author_194]
         [Author842])
     (sexo male))

    ([Author_706] of Autor
     (idAutor "706")
     (nombreAutor "Kingsley Amis")
     (autoresSimilares
         [Author_204]
         [Author_224]
         [Author_421]
         [Author_770]
         [Author_771]
         [Author_842]
         [Author_496]
         [Author_69]
         [Author700])
     (sexo male))

    ([Author_707] of Autor
     (idAutor "707")
     (nombreAutor "Edward Gorey")
     (autoresSimilares
         [Author_212]
         [Author_240]
         [Author_192]
         [Author_471]
         [Author_21]
         [Author_367]
         [Author_401]
         [Author_703]
         [Author_915]
         [Author_435]
         [Author_181]
         [Author_43]
         [Author_271]
         [Author_855]
         [Author_566]
         [Author_398]
         [Author634])
     (sexo male))

    ([Author_708] of Autor
     (idAutor "708")
     (nombreAutor "Jonas Jonasson")
     (autoresSimilares
         [Author_493]
         [Author_786]
         [Author_645]
         [Author_672]
         [Author_400]
         [Author_777]
         [Author_332]
         [Author_933]
         [Author_742]
         [Author_665]
         [Author_13]
         [Author_603]
         [Author_233]
         [Author_643]
         [Author_859]
         [Author_357]
         [Author_346]
         [Author_556]
         [Author241])
     (sexo male))

    ([Author_709] of Autor
     (idAutor "709")
     (nombreAutor "Lance Carbuncle")
     (autoresSimilares
         [Author_825]
         [Author_220]
         [Author_824]
         [Author_177]
         [Author_547]
         [Author_505]
         [Author_259]
         [Author_630]
         [Author_37]
         [Author566])
     (sexo male))

    ([Author_710] of Autor
     (idAutor "710")
     (nombreAutor "Stella Gibbons")
     (autoresSimilares
         [Author_945]
         [Author_601]
         [Author_816]
         [Author_750]
         [Author_472]
         [Author_146]
         [Author_157]
         [Author_875]
         [Author43])
     (sexo male))

    ([Author_711] of Autor
     (idAutor "711")
     (nombreAutor "Voltaire")
     (autoresSimilares
         [Author835])
     (sexo male))

    ([Author_712] of Autor
     (idAutor "712")
     (nombreAutor "Jerome K Jerome")
     (autoresSimilares
         [Author_208]
         [Author_496]
         [Author_89]
         [Author_699]
         [Author_716]
         [Author_757]
         [Author_13]
         [Author_26]
         [Author_637]
         [Author181])
     (sexo male))

    ([Author_713] of Autor
     (idAutor "713")
     (nombreAutor "Caitlin Kittredge")
     (autoresSimilares
         [Author_520]
         [Author_27]
         [Author_621]
         [Author_469]
         [Author_265]
         [Author_625]
         [Author_779]
         [Author_104]
         [Author_945]
         [Author_236]
         [Author_608]
         [Author_202]
         [Author248])
     (sexo female))

    ([Author_714] of Autor
     (idAutor "714")
     (nombreAutor "Thomas Mann")
     (autoresSimilares
         [Author_781]
         [Author647])
     (sexo male))

    ([Author_715] of Autor
     (idAutor "715")
     (nombreAutor "Vikram Seth")
     (autoresSimilares
         [Author630])
     (sexo male))

    ([Author_716] of Autor
     (idAutor "716")
     (nombreAutor "Rohinton Mistry")
     (autoresSimilares
         [Author_326]
         [Author_173]
         [Author_370]
         [Author_831]
         [Author_907]
         [Author422])
     (sexo male))

    ([Author_717] of Autor
     (idAutor "717")
     (nombreAutor "George Eliot")
     (autoresSimilares
         [Author_774]
         [Author_528]
         [Author_90]
         [Author_287]
         [Author_365]
         [Author_99]
         [Author_795]
         [Author_841]
         [Author_888]
         [Author_476]
         [Author_572]
         [Author_302]
         [Author868])
     (sexo female))

    ([Author_718] of Autor
     (idAutor "718")
     (nombreAutor "Robert Jackson Bennett")
     (autoresSimilares
         [Author_173]
         [Author_778]
         [Author_187]
         [Author_938]
         [Author_624]
         [Author_130]
         [Author786])
     (sexo male))

    ([Author_719] of Autor
     (idAutor "719")
     (nombreAutor "Lorrie Moore")
     (autoresSimilares
         [Author_10]
         [Author_274]
         [Author_878]
         [Author372])
     (sexo female))

    ([Author_720] of Autor
     (idAutor "720")
     (nombreAutor "Ted Dekker")
     (autoresSimilares
         [Author_943]
         [Author_888]
         [Author697])
     (sexo male))

    ([Author_721] of Autor
     (idAutor "721")
     (nombreAutor "Dan Chaon")
     (autoresSimilares
         [Author_612]
         [Author_655]
         [Author_531]
         [Author_714]
         [Author_209]
         [Author_676]
         [Author_704]
         [Author_434]
         [Author_475]
         [Author_699]
         [Author_130]
         [Author_275]
         [Author_906]
         [Author895])
     (sexo male))

    ([Author_722] of Autor
     (idAutor "722")
     (nombreAutor "Heather Gudenkauf")
     (autoresSimilares
         [Author_785]
         [Author_848]
         [Author_363]
         [Author_426]
         [Author_34]
         [Author_224]
         [Author_227]
         [Author_588]
         [Author_662]
         [Author_404]
         [Author_923]
         [Author_257]
         [Author_462]
         [Author_732]
         [Author684])
     (sexo male))

    ([Author_723] of Autor
     (idAutor "723")
     (nombreAutor "Colm Tibn")
     (autoresSimilares
         [Author293])
     (sexo male))

    ([Author_724] of Autor
     (idAutor "724")
     (nombreAutor "David Cristofano")
     (autoresSimilares
         [Author_920]
         [Author421])
     (sexo male))

    ([Author_725] of Autor
     (idAutor "725")
     (nombreAutor "Jonathan Tropper")
     (autoresSimilares
         [Author_343]
         [Author_904]
         [Author_262]
         [Author_364]
         [Author_644]
         [Author_24]
         [Author_171]
         [Author_19]
         [Author_322]
         [Author_44]
         [Author_199]
         [Author_632]
         [Author_260]
         [Author310])
     (sexo male))

    ([Author_726] of Autor
     (idAutor "726")
     (nombreAutor "Robert Goolrick")
     (autoresSimilares
         [Author_748]
         [Author_340]
         [Author_440]
         [Author_255]
         [Author_30]
         [Author_859]
         [Author_357]
         [Author_831]
         [Author_612]
         [Author_611]
         [Author_626]
         [Author_505]
         [Author_853]
         [Author_642]
         [Author_47]
         [Author_526]
         [Author_436]
         [Author_780]
         [Author_651]
         [Author122])
     (sexo male))

    ([Author_727] of Autor
     (idAutor "727")
     (nombreAutor "Colum McCann")
     (autoresSimilares
         [Author_553]
         [Author_698]
         [Author_837]
         [Author_591]
         [Author_914]
         [Author_22]
         [Author_187]
         [Author_91]
         [Author_306]
         [Author_273]
         [Author_851]
         [Author_573]
         [Author_315]
         [Author_296]
         [Author_113]
         [Author_101]
         [Author_68]
         [Author_598]
         [Author_378]
         [Author445])
     (sexo male))

    ([Author_728] of Autor
     (idAutor "728")
     (nombreAutor "Katherine Howe")
     (autoresSimilares
         [Author_235]
         [Author_124]
         [Author_835]
         [Author_624]
         [Author_170]
         [Author_806]
         [Author660])
     (sexo female))

    ([Author_729] of Autor
     (idAutor "729")
     (nombreAutor "V Kelly")
     (autoresSimilares
         [Author_706]
         [Author_514]
         [Author_136]
         [Author_863]
         [Author_339]
         [Author_287]
         [Author_223]
         [Author942])
     (sexo male))

    ([Author_730] of Autor
     (idAutor "730")
     (nombreAutor "Johann Wolfgang von Goethe")
     (autoresSimilares
         [Author_160]
         [Author_454]
         [Author_422]
         [Author_789]
         [Author_25]
         [Author_568]
         [Author_105]
         [Author_534]
         [Author_216]
         [Author_829]
         [Author_558]
         [Author_124]
         [Author_129]
         [Author_346]
         [Author_655]
         [Author_634]
         [Author_155]
         [Author465])
     (sexo male))

    ([Author_731] of Autor
     (idAutor "731")
     (nombreAutor "Ivan Turgenev")
     (autoresSimilares
         [Author_25]
         [Author_125]
         [Author_621]
         [Author_13]
         [Author_584]
         [Author_451]
         [Author_562]
         [Author_488]
         [Author_380]
         [Author_557]
         [Author439])
     (sexo male))

    ([Author_732] of Autor
     (idAutor "732")
     (nombreAutor "Honor de Balzac")
     (autoresSimilares
         [Author_831]
         [Author_137]
         [Author511])
     (sexo male))

    ([Author_733] of Autor
     (idAutor "733")
     (nombreAutor "Knut Hamsun")
     (autoresSimilares
         [Author_367]
         [Author777])
     (sexo male))

    ([Author_734] of Autor
     (idAutor "734")
     (nombreAutor "Henry James")
     (autoresSimilares
         [Author_909]
         [Author_91]
         [Author_764]
         [Author_799]
         [Author_188]
         [Author_258]
         [Author_284]
         [Author_431]
         [Author_309]
         [Author_601]
         [Author_35]
         [Author470])
     (sexo male))

    ([Author_735] of Autor
     (idAutor "735")
     (nombreAutor "Nikolai Gogol")
     (autoresSimilares
         [Author_148]
         [Author_500]
         [Author_819]
         [Author_915]
         [Author_44]
         [Author_825]
         [Author_333]
         [Author_343]
         [Author_683]
         [Author_842]
         [Author_574]
         [Author_750]
         [Author_396]
         [Author934])
     (sexo male))

    ([Author_736] of Autor
     (idAutor "736")
     (nombreAutor "Stendhal")
     (autoresSimilares
         [Author_410]
         [Author_729]
         [Author709])
     (sexo male))

    ([Author_737] of Autor
     (idAutor "737")
     (nombreAutor "Kate Chopin")
     (autoresSimilares
         [Author_816]
         [Author_340]
         [Author_922]
         [Author_711]
         [Author_75]
         [Author_624]
         [Author_627]
         [Author_212]
         [Author157])
     (sexo female))

    ([Author_738] of Autor
     (idAutor "738")
     (nombreAutor "Anne Bront")
     (autoresSimilares
         [Author_502]
         [Author_515]
         [Author_224]
         [Author_930]
         [Author_533]
         [Author_281]
         [Author_395]
         [Author_287]
         [Author_586]
         [Author_485]
         [Author_398]
         [Author705])
     (sexo female))

    ([Author_739] of Autor
     (idAutor "739")
     (nombreAutor "Ali Marsman")
     (autoresSimilares
         [Author_317]
         [Author_692]
         [Author_328]
         [Author_440]
         [Author_414]
         [Author_301]
         [Author_53]
         [Author_848]
         [Author_908]
         [Author_906]
         [Author_620]
         [Author_396]
         [Author926])
     (sexo female))

    ([Author_740] of Autor
     (idAutor "740")
     (nombreAutor "Lane Robins")
     (autoresSimilares
         [Author_878]
         [Author_794]
         [Author_227]
         [Author_761]
         [Author709])
     (sexo female))

    ([Author_741] of Autor
     (idAutor "741")
     (nombreAutor "Deborah ONeill Cordes")
     (autoresSimilares
         [Author_909]
         [Author_5]
         [Author_532]
         [Author_320]
         [Author_349]
         [Author44])
     (sexo female))

    ([Author_742] of Autor
     (idAutor "742")
     (nombreAutor "Kevin Brockmeier")
     (autoresSimilares
         [Author_452]
         [Author_265]
         [Author_229]
         [Author596])
     (sexo male))

    ([Author_743] of Autor
     (idAutor "743")
     (nombreAutor "Alexander Key")
     (autoresSimilares
         [Author_803]
         [Author_907]
         [Author_704]
         [Author_797]
         [Author_919]
         [Author_481]
         [Author_751]
         [Author_490]
         [Author_872]
         [Author_184]
         [Author_875]
         [Author_758]
         [Author_323]
         [Author_396]
         [Author_125]
         [Author_21]
         [Author_182]
         [Author_355]
         [Author716])
     (sexo male))

    ([Author_744] of Autor
     (idAutor "744")
     (nombreAutor "Jim Harrison")
     (autoresSimilares
         [Author_636]
         [Author_250]
         [Author_386]
         [Author_639]
         [Author_163]
         [Author_931]
         [Author_869]
         [Author_498]
         [Author_148]
         [Author_165]
         [Author_915]
         [Author_629]
         [Author_51]
         [Author_706]
         [Author_607]
         [Author749])
     (sexo male))

    ([Author_745] of Autor
     (idAutor "745")
     (nombreAutor "Catherine Ryan Hyde")
     (autoresSimilares
         [Author_880]
         [Author_682]
         [Author_845]
         [Author_214]
         [Author_579]
         [Author_873]
         [Author_73]
         [Author338])
     (sexo male))

    ([Author_746] of Autor
     (idAutor "746")
     (nombreAutor "Kji Suzuki")
     (autoresSimilares
         [Author_245]
         [Author_498]
         [Author_885]
         [Author_360]
         [Author_539]
         [Author2])
     (sexo male))

    ([Author_747] of Autor
     (idAutor "747")
     (nombreAutor "Anne Fine")
     (autoresSimilares
         [Author_633]
         [Author_149]
         [Author_15]
         [Author_891]
         [Author_512]
         [Author_358]
         [Author_239]
         [Author_609]
         [Author_764]
         [Author_35]
         [Author315])
     (sexo female))

    ([Author_748] of Autor
     (idAutor "748")
     (nombreAutor "Christianna Brand")
     (autoresSimilares
         [Author_190]
         [Author_87]
         [Author_854]
         [Author_473]
         [Author_912]
         [Author_589]
         [Author_114]
         [Author256])
     (sexo female))

    ([Author_749] of Autor
     (idAutor "749")
     (nombreAutor "NH Kleinbaum")
     (autoresSimilares
         [Author_372]
         [Author_82]
         [Author_874]
         [Author_98]
         [Author463])
     (sexo male))

    ([Author_750] of Autor
     (idAutor "750")
     (nombreAutor "Felix Salten")
     (autoresSimilares
         [Author_326]
         [Author_9]
         [Author_496]
         [Author_183]
         [Author_605]
         [Author432])
     (sexo male))

    ([Author_751] of Autor
     (idAutor "751")
     (nombreAutor "Nicole Snooki Polizzi")
     (autoresSimilares
         [Author_102]
         [Author_224]
         [Author_899]
         [Author_742]
         [Author_832]
         [Author_647]
         [Author_504]
         [Author398])
     (sexo female))

    ([Author_752] of Autor
     (idAutor "752")
     (nombreAutor "Cecily von Ziegesar")
     (autoresSimilares
         [Author_648]
         [Author_179]
         [Author_340]
         [Author_421]
         [Author_22]
         [Author_694]
         [Author_8]
         [Author_592]
         [Author_331]
         [Author_319]
         [Author_491]
         [Author_73]
         [Author_363]
         [Author_681]
         [Author_160]
         [Author_894]
         [Author_519]
         [Author_383]
         [Author_744]
         [Author669])
     (sexo female))

    ([Author_753] of Autor
     (idAutor "753")
     (nombreAutor "GS Jennsen")
     (autoresSimilares
         [Author_312]
         [Author_631]
         [Author_495]
         [Author_588]
         [Author_358]
         [Author_217]
         [Author_527]
         [Author_909]
         [Author_518]
         [Author_468]
         [Author_449]
         [Author_276]
         [Author_336]
         [Author_326]
         [Author_97]
         [Author570])
     (sexo female))

    ([Author_754] of Autor
     (idAutor "754")
     (nombreAutor "Kenneth Jarrett Singleton")
     (autoresSimilares
         [Author_643]
         [Author_699]
         [Author_658]
         [Author818])
     (sexo male))

    ([Author_755] of Autor
     (idAutor "755")
     (nombreAutor "Anita Loos")
     (autoresSimilares
         [Author_309]
         [Author_740]
         [Author_536]
         [Author_539]
         [Author_406]
         [Author_202]
         [Author389])
     (sexo female))

    ([Author_756] of Autor
     (idAutor "756")
     (nombreAutor "Julie Cantrell")
     (autoresSimilares
         [Author_397]
         [Author_378]
         [Author_120]
         [Author_112]
         [Author_693]
         [Author_398]
         [Author_495]
         [Author_761]
         [Author_589]
         [Author96])
     (sexo female))

    ([Author_757] of Autor
     (idAutor "757")
     (nombreAutor "Cristiane Serruya")
     (autoresSimilares
         [Author_534]
         [Author507])
     (sexo female))

    ([Author_758] of Autor
     (idAutor "758")
     (nombreAutor "Ceri London")
     (autoresSimilares
         [Author_23]
         [Author_272]
         [Author_191]
         [Author_31]
         [Author_740]
         [Author_145]
         [Author_274]
         [Author_451]
         [Author_638]
         [Author_161]
         [Author_361]
         [Author_656]
         [Author_684]
         [Author732])
     (sexo male))

    ([Author_759] of Autor
     (idAutor "759")
     (nombreAutor "Sherry Jones")
     (autoresSimilares
         [Author_694]
         [Author_565]
         [Author_282]
         [Author241])
     (sexo female))

    ([Author_760] of Autor
     (idAutor "760")
     (nombreAutor "Terri Giuliano Long")
     (autoresSimilares
         [Author_469]
         [Author_822]
         [Author_918]
         [Author_869]
         [Author_936]
         [Author570])
     (sexo female))

    ([Author_761] of Autor
     (idAutor "761")
     (nombreAutor "Andrew Seaward")
     (autoresSimilares
         [Author_88]
         [Author_30]
         [Author_598]
         [Author_0]
         [Author_923]
         [Author_684]
         [Author_630]
         [Author_751]
         [Author_741]
         [Author934])
     (sexo male))

    ([Author_762] of Autor
     (idAutor "762")
     (nombreAutor "James Herbert")
     (autoresSimilares
         [Author_846]
         [Author_579]
         [Author_124]
         [Author_295]
         [Author_938]
         [Author_497]
         [Author_513]
         [Author695])
     (sexo male))

    ([Author_763] of Autor
     (idAutor "763")
     (nombreAutor "Clive Barker")
     (autoresSimilares
         [Author_773]
         [Author78])
     (sexo male))

    ([Author_764] of Autor
     (idAutor "764")
     (nombreAutor "Dean R Koontz")
     (autoresSimilares
         [Author_456]
         [Author_616]
         [Author_491]
         [Author_324]
         [Author_776]
         [Author_165]
         [Author_250]
         [Author_186]
         [Author_141]
         [Author_578]
         [Author_798]
         [Author_603]
         [Author742])
     (sexo male))

    ([Author_765] of Autor
     (idAutor "765")
     (nombreAutor "Thomas Tryon")
     (autoresSimilares
         [Author_540]
         [Author_452]
         [Author_141]
         [Author_15]
         [Author_358]
         [Author_78]
         [Author_71]
         [Author_462]
         [Author_836]
         [Author_892]
         [Author_472]
         [Author_115]
         [Author_332]
         [Author_659]
         [Author_704]
         [Author_851]
         [Author_430]
         [Author861])
     (sexo male))

    ([Author_766] of Autor
     (idAutor "766")
     (nombreAutor "Susan Hill")
     (autoresSimilares
         [Author_872]
         [Author_189]
         [Author_827]
         [Author_134]
         [Author_114]
         [Author_901]
         [Author_497]
         [Author_504]
         [Author_759]
         [Author_202]
         [Author_814]
         [Author_651]
         [Author_826]
         [Author_188]
         [Author_47]
         [Author_509]
         [Author929])
     (sexo female))

    ([Author_767] of Autor
     (idAutor "767")
     (nombreAutor "Ira Levin")
     (autoresSimilares
         [Author_861]
         [Author778])
     (sexo male))

    ([Author_768] of Autor
     (idAutor "768")
     (nombreAutor "David Seltzer")
     (autoresSimilares
         [Author_119]
         [Author_430]
         [Author_938]
         [Author_719]
         [Author_243]
         [Author221])
     (sexo male))

    ([Author_769] of Autor
     (idAutor "769")
     (nombreAutor "Scott B Smith")
     (autoresSimilares
         [Author_42]
         [Author_834]
         [Author_65]
         [Author_316]
         [Author_558]
         [Author_238]
         [Author_20]
         [Author_612]
         [Author_155]
         [Author_799]
         [Author_450]
         [Author_261]
         [Author_505]
         [Author_635]
         [Author_633]
         [Author_867]
         [Author_554]
         [Author_50]
         [Author936])
     (sexo male))

    ([Author_770] of Autor
     (idAutor "770")
     (nombreAutor "Shirley Jackson")
     (autoresSimilares
         [Author_714]
         [Author_691]
         [Author_685]
         [Author153])
     (sexo female))

    ([Author_771] of Autor
     (idAutor "771")
     (nombreAutor "Nnedi Okorafor")
     (autoresSimilares
         [Author_484]
         [Author_588]
         [Author_399]
         [Author_273]
         [Author297])
     (sexo female))

    ([Author_772] of Autor
     (idAutor "772")
     (nombreAutor "Anna  Quinn")
     (autoresSimilares
         [Author_352]
         [Author_750]
         [Author626])
     (sexo male))

    ([Author_773] of Autor
     (idAutor "773")
     (nombreAutor "Eldonna Edwards")
     (autoresSimilares
         [Author_356]
         [Author_776]
         [Author_544]
         [Author_405]
         [Author_719]
         [Author_123]
         [Author_937]
         [Author_891]
         [Author_276]
         [Author_775]
         [Author_262]
         [Author_944]
         [Author_354]
         [Author_762]
         [Author_340]
         [Author677])
     (sexo female))

    ([Author_774] of Autor
     (idAutor "774")
     (nombreAutor "Suanne Schafer")
     (autoresSimilares
         [Author_23]
         [Author_360]
         [Author_858]
         [Author121])
     (sexo female))

    ([Author_775] of Autor
     (idAutor "775")
     (nombreAutor "Lyndsay Ely")
     (autoresSimilares
         [Author_891]
         [Author_405]
         [Author_716]
         [Author_706]
         [Author_601]
         [Author_318]
         [Author_900]
         [Author923])
     (sexo male))

    ([Author_776] of Autor
     (idAutor "776")
     (nombreAutor "Clarissa Goenawan")
     (autoresSimilares
         [Author_565]
         [Author_188]
         [Author_224]
         [Author_850]
         [Author_13]
         [Author_521]
         [Author_4]
         [Author_699]
         [Author_852]
         [Author_558]
         [Author_770]
         [Author_75]
         [Author350])
     (sexo female))

    ([Author_777] of Autor
     (idAutor "777")
     (nombreAutor "Kimmery Martin")
     (autoresSimilares
         [Author_679]
         [Author_909]
         [Author_691]
         [Author_27]
         [Author_859]
         [Author_420]
         [Author727])
     (sexo female))

    ([Author_778] of Autor
     (idAutor "778")
     (nombreAutor "Shay Savage")
     (autoresSimilares
         [Author_422]
         [Author_345]
         [Author_734]
         [Author_915]
         [Author_529]
         [Author_414]
         [Author_447]
         [Author_149]
         [Author_325]
         [Author_656]
         [Author_80]
         [Author_730]
         [Author_748]
         [Author_480]
         [Author_363]
         [Author_893]
         [Author_779]
         [Author_674]
         [Author819])
     (sexo female))

    ([Author_779] of Autor
     (idAutor "779")
     (nombreAutor "Jake Furie Lapin")
     (autoresSimilares
         [Author_811]
         [Author_394]
         [Author_704]
         [Author_688]
         [Author_670]
         [Author207])
     (sexo male))

    ([Author_780] of Autor
     (idAutor "780")
     (nombreAutor "Amin Maalouf")
     (autoresSimilares
         [Author_454]
         [Author_9]
         [Author_287]
         [Author_872]
         [Author_762]
         [Author_507]
         [Author_782]
         [Author_473]
         [Author702])
     (sexo male))

    ([Author_781] of Autor
     (idAutor "781")
     (nombreAutor "")
     (autoresSimilares
         [Author_475]
         [Author_500]
         [Author_761]
         [Author_329]
         [Author_155]
         [Author_377]
         [Author_282]
         [Author_491]
         [Author_829]
         [Author_504]
         [Author_807]
         [Author_702]
         [Author_100]
         [Author515])
     (sexo male))

    ([Author_782] of Autor
     (idAutor "782")
     (nombreAutor "")
     (autoresSimilares
         [Author_700]
         [Author_701]
         [Author_834]
         [Author_860]
         [Author_589]
         [Author_597]
         [Author_41]
         [Author_237]
         [Author_298]
         [Author_343]
         [Author_423]
         [Author_789]
         [Author_239]
         [Author_851]
         [Author_811]
         [Author_37]
         [Author_621]
         [Author_932]
         [Author170])
     (sexo male))

    ([Author_783] of Autor
     (idAutor "783")
     (nombreAutor "")
     (autoresSimilares
         [Author_766]
         [Author_575]
         [Author_376]
         [Author_341]
         [Author_286]
         [Author_689]
         [Author_103]
         [Author_287]
         [Author_808]
         [Author428])
     (sexo male))

    ([Author_784] of Autor
     (idAutor "784")
     (nombreAutor "Naguib Mahfouz")
     (autoresSimilares
         [Author_17]
         [Author_16]
         [Author_407]
         [Author_691]
         [Author_836]
         [Author_901]
         [Author_415]
         [Author729])
     (sexo male))

    ([Author_785] of Autor
     (idAutor "785")
     (nombreAutor "Alaa Al Aswany")
     (autoresSimilares
         [Author_272]
         [Author_304]
         [Author_18]
         [Author_483]
         [Author_709]
         [Author_602]
         [Author_467]
         [Author_661]
         [Author_663]
         [Author_891]
         [Author641])
     (sexo male))

    ([Author_786] of Autor
     (idAutor "786")
     (nombreAutor "Tayeb Salih")
     (autoresSimilares
         [Author_15]
         [Author_365]
         [Author_751]
         [Author_72]
         [Author_339]
         [Author_245]
         [Author_489]
         [Author_931]
         [Author_909]
         [Author_580]
         [Author_290]
         [Author_178]
         [Author_92]
         [Author_25]
         [Author_588]
         [Author881])
     (sexo male))

    ([Author_787] of Autor
     (idAutor "787")
     (nombreAutor "")
     (autoresSimilares
         [Author_929]
         [Author_245]
         [Author_557]
         [Author_458]
         [Author_469]
         [Author_431]
         [Author503])
     (sexo male))

    ([Author_788] of Autor
     (idAutor "788")
     (nombreAutor "Dawn  Robertson")
     (autoresSimilares
         [Author_920]
         [Author_130]
         [Author_649]
         [Author_38]
         [Author_132]
         [Author_806]
         [Author59])
     (sexo female))

    ([Author_789] of Autor
     (idAutor "789")
     (nombreAutor "Dodie Smith")
     (autoresSimilares
         [Author_131]
         [Author_26]
         [Author_943]
         [Author_912]
         [Author_587]
         [Author_608]
         [Author35])
     (sexo female))

    ([Author_790] of Autor
     (idAutor "790")
     (nombreAutor "Marge Piercy")
     (autoresSimilares
         [Author_120]
         [Author_538]
         [Author_390]
         [Author_336]
         [Author_27]
         [Author_615]
         [Author_424]
         [Author_356]
         [Author_477]
         [Author_681]
         [Author_318]
         [Author_452]
         [Author_552]
         [Author_444]
         [Author_723]
         [Author_176]
         [Author_360]
         [Author_88]
         [Author475])
     (sexo female))

    ([Author_791] of Autor
     (idAutor "791")
     (nombreAutor "Lorna Landvik")
     (autoresSimilares
         [Author_646]
         [Author_557]
         [Author_869]
         [Author_725]
         [Author_275]
         [Author_852]
         [Author_884]
         [Author_308]
         [Author_238]
         [Author_462]
         [Author_129]
         [Author_419]
         [Author_750]
         [Author_386]
         [Author_795]
         [Author_640]
         [Author_296]
         [Author_474]
         [Author377])
     (sexo female))

    ([Author_792] of Autor
     (idAutor "792")
     (nombreAutor "Lisa Lutz")
     (autoresSimilares
         [Author102])
     (sexo female))

    ([Author_793] of Autor
     (idAutor "793")
     (nombreAutor "Arkady Strugatsky")
     (autoresSimilares
         [Author_0]
         [Author_188]
         [Author_667]
         [Author290])
     (sexo male))

    ([Author_794] of Autor
     (idAutor "794")
     (nombreAutor "Clifford D Simak")
     (autoresSimilares
         [Author_144]
         [Author474])
     (sexo male))

    ([Author_795] of Autor
     (idAutor "795")
     (nombreAutor "Edgar Rice Burroughs")
     (autoresSimilares
         [Author_796]
         [Author508])
     (sexo male))

    ([Author_796] of Autor
     (idAutor "796")
     (nombreAutor "Upton Sinclair")
     (autoresSimilares
         [Author_64]
         [Author_114]
         [Author_740]
         [Author_509]
         [Author_172]
         [Author_916]
         [Author_611]
         [Author_157]
         [Author_813]
         [Author_875]
         [Author_524]
         [Author_671]
         [Author_208]
         [Author_495]
         [Author103])
     (sexo male))

    ([Author_797] of Autor
     (idAutor "797")
     (nombreAutor "Marian Keyes")
     (autoresSimilares
         [Author_120]
         [Author_151]
         [Author_171]
         [Author_619]
         [Author_121]
         [Author_90]
         [Author_889]
         [Author_336]
         [Author_86]
         [Author_788]
         [Author_653]
         [Author_343]
         [Author_539]
         [Author_286]
         [Author143])
     (sexo female))

    ([Author_798] of Autor
     (idAutor "798")
     (nombreAutor "Plum Sykes")
     (autoresSimilares
         [Author_134]
         [Author_523]
         [Author_139]
         [Author_55]
         [Author_597]
         [Author_193]
         [Author_234]
         [Author_328]
         [Author_419]
         [Author_33]
         [Author_377]
         [Author_826]
         [Author_926]
         [Author_96]
         [Author_94]
         [Author71])
     (sexo male))

    ([Author_799] of Autor
     (idAutor "799")
     (nombreAutor "Shanna Swendson")
     (autoresSimilares
         [Author_897]
         [Author_381]
         [Author_690]
         [Author_42]
         [Author_392]
         [Author_203]
         [Author_700]
         [Author_63]
         [Author_132]
         [Author_517]
         [Author_735]
         [Author_592]
         [Author_71]
         [Author_108]
         [Author_879]
         [Author27])
     (sexo female))

    ([Author_800] of Autor
     (idAutor "800")
     (nombreAutor "Hester Browne")
     (autoresSimilares
         [Author_254]
         [Author_357]
         [Author_900]
         [Author_808]
         [Author_343]
         [Author_375]
         [Author188])
     (sexo male))

    ([Author_801] of Autor
     (idAutor "801")
     (nombreAutor "Jane Green")
     (autoresSimilares
         [Author_315]
         [Author_0]
         [Author_181]
         [Author_462]
         [Author_54]
         [Author114])
     (sexo female))

    ([Author_802] of Autor
     (idAutor "802")
     (nombreAutor "Gemma Burgess")
     (autoresSimilares
         [Author_667]
         [Author_337]
         [Author_866]
         [Author_765]
         [Author_73]
         [Author_697]
         [Author_529]
         [Author586])
     (sexo male))

    ([Author_803] of Autor
     (idAutor "803")
     (nombreAutor "Morgan ONeill")
     (autoresSimilares
         [Author_622]
         [Author_281]
         [Author_401]
         [Author_207]
         [Author_574]
         [Author_590]
         [Author_398]
         [Author_53]
         [Author_707]
         [Author_786]
         [Author_353]
         [Author_600]
         [Author_177]
         [Author_653]
         [Author_659]
         [Author_525]
         [Author_931]
         [Author_680]
         [Author623])
     (sexo male))

    ([Author_804] of Autor
     (idAutor "804")
     (nombreAutor "Flix J Palma")
     (autoresSimilares
         [Author_291]
         [Author_585]
         [Author_780]
         [Author_300]
         [Author_492]
         [Author_200]
         [Author_356]
         [Author_458]
         [Author_450]
         [Author404])
     (sexo male))

    ([Author_805] of Autor
     (idAutor "805")
     (nombreAutor "Rysa Walker")
     (autoresSimilares
         [Author_673]
         [Author_207]
         [Author_132]
         [Author591])
     (sexo female))

    ([Author_806] of Autor
     (idAutor "806")
     (nombreAutor "Stephen Baxter")
     (autoresSimilares
         [Author_155]
         [Author_511]
         [Author_370]
         [Author_157]
         [Author_47]
         [Author_812]
         [Author_736]
         [Author_407]
         [Author_41]
         [Author_230]
         [Author_48]
         [Author_347]
         [Author_844]
         [Author_42]
         [Author_693]
         [Author_486]
         [Author_9]
         [Author371])
     (sexo male))

    ([Author_807] of Autor
     (idAutor "807")
     (nombreAutor "Dinah Lee Kng")
     (autoresSimilares
         [Author_448]
         [Author_714]
         [Author_873]
         [Author_487]
         [Author_366]
         [Author574])
     (sexo male))

    ([Author_808] of Autor
     (idAutor "808")
     (nombreAutor "Harry Turtledove")
     (autoresSimilares
         [Author_435]
         [Author_918]
         [Author424])
     (sexo male))

    ([Author_809] of Autor
     (idAutor "809")
     (nombreAutor "Poul Anderson")
     (autoresSimilares
         [Author_454]
         [Author_333]
         [Author_580]
         [Author_259]
         [Author_491]
         [Author_88]
         [Author_945]
         [Author_289]
         [Author_843]
         [Author_282]
         [Author_198]
         [Author_661]
         [Author_515]
         [Author_86]
         [Author_406]
         [Author_903]
         [Author_546]
         [Author_505]
         [Author_110]
         [Author446])
     (sexo male))

    ([Author_810] of Autor
     (idAutor "810")
     (nombreAutor "L Sprague de Camp")
     (autoresSimilares
         [Author_336]
         [Author_743]
         [Author_281]
         [Author_475]
         [Author_560]
         [Author_26]
         [Author_364]
         [Author_20]
         [Author_572]
         [Author_150]
         [Author_879]
         [Author_881]
         [Author_285]
         [Author_115]
         [Author_313]
         [Author590])
     (sexo male))

    ([Author_811] of Autor
     (idAutor "811")
     (nombreAutor "Alan Lightman")
     (autoresSimilares
         [Author_25]
         [Author_275]
         [Author_562]
         [Author_132]
         [Author_775]
         [Author_239]
         [Author_17]
         [Author_942]
         [Author_682]
         [Author_754]
         [Author510])
     (sexo male))

    ([Author_812] of Autor
     (idAutor "812")
     (nombreAutor "Jodi Taylor")
     (autoresSimilares
         [Author15])
     (sexo female))

    ([Author_813] of Autor
     (idAutor "813")
     (nombreAutor "Mike Chen")
     (autoresSimilares
         [Author_126]
         [Author_492]
         [Author_745]
         [Author_253]
         [Author_53]
         [Author_201]
         [Author_441]
         [Author_585]
         [Author_645]
         [Author_558]
         [Author656])
     (sexo male))

    ([Author_814] of Autor
     (idAutor "814")
     (nombreAutor "Stephen R Lawhead")
     (autoresSimilares
         [Author_2]
         [Author_106]
         [Author_214]
         [Author_606]
         [Author_751]
         [Author672])
     (sexo male))

    ([Author_815] of Autor
     (idAutor "815")
     (nombreAutor "Harlan Ellison")
     (autoresSimilares
         [Author_567]
         [Author_166]
         [Author_200]
         [Author_240]
         [Author_85]
         [Author_876]
         [Author_238]
         [Author928])
     (sexo male))

    ([Author_816] of Autor
     (idAutor "816")
     (nombreAutor "Kage Baker")
     (autoresSimilares
         [Author_209]
         [Author_850]
         [Author_492]
         [Author_271]
         [Author_867]
         [Author_428]
         [Author_854]
         [Author_831]
         [Author_503]
         [Author_126]
         [Author885])
     (sexo male))

    ([Author_817] of Autor
     (idAutor "817")
     (nombreAutor "SM Stirling")
     (autoresSimilares
         [Author_572]
         [Author_861]
         [Author_458]
         [Author_451]
         [Author_686]
         [Author_463]
         [Author_26]
         [Author_929]
         [Author_254]
         [Author_768]
         [Author_636]
         [Author_590]
         [Author_52]
         [Author_728]
         [Author_348]
         [Author_627]
         [Author605])
     (sexo male))

    ([Author_818] of Autor
     (idAutor "818")
     (nombreAutor "Gregory Benford")
     (autoresSimilares
         [Author_163]
         [Author_24]
         [Author_575]
         [Author_358]
         [Author_859]
         [Author_806]
         [Author_464]
         [Author378])
     (sexo male))

    ([Author_819] of Autor
     (idAutor "819")
     (nombreAutor "Eric Flint")
     (autoresSimilares
         [Author_929]
         [Author_445]
         [Author_789]
         [Author_427]
         [Author_881]
         [Author_637]
         [Author_679]
         [Author_501]
         [Author_267]
         [Author_903]
         [Author_138]
         [Author_852]
         [Author_248]
         [Author_671]
         [Author389])
     (sexo male))

    ([Author_820] of Autor
     (idAutor "820")
     (nombreAutor "Rebecca Stead")
     (autoresSimilares
         [Author_390]
         [Author_119]
         [Author872])
     (sexo male))

    ([Author_821] of Autor
     (idAutor "821")
     (nombreAutor "Jack Finney")
     (autoresSimilares
         [Author_777]
         [Author_693]
         [Author_945]
         [Author_3]
         [Author_804]
         [Author_264]
         [Author_639]
         [Author_133]
         [Author_557]
         [Author_868]
         [Author_644]
         [Author_613]
         [Author_928]
         [Author_817]
         [Author_831]
         [Author880])
     (sexo male))

    ([Author_822] of Autor
     (idAutor "822")
     (nombreAutor "Claire North")
     (autoresSimilares
         [Author_615]
         [Author_351]
         [Author_693]
         [Author_62]
         [Author480])
     (sexo female))

    ([Author_823] of Autor
     (idAutor "823")
     (nombreAutor "Marlys Millhiser")
     (autoresSimilares
         [Author_694]
         [Author_911]
         [Author_69]
         [Author438])
     (sexo female))

    ([Author_824] of Autor
     (idAutor "824")
     (nombreAutor "Ken Grimwood")
     (autoresSimilares
         [Author_505]
         [Author_63]
         [Author_185]
         [Author_602]
         [Author_691]
         [Author_324]
         [Author_2]
         [Author_135]
         [Author_697]
         [Author_116]
         [Author542])
     (sexo male))

    ([Author_825] of Autor
     (idAutor "825")
     (nombreAutor "Alexandra Ripley")
     (autoresSimilares
         [Author_404]
         [Author_888]
         [Author_740]
         [Author_909]
         [Author799])
     (sexo female))

    ([Author_826] of Autor
     (idAutor "826")
     (nombreAutor "Melissa Foster")
     (autoresSimilares
         [Author_814]
         [Author_606]
         [Author_130]
         [Author_889]
         [Author_856]
         [Author_216]
         [Author_526]
         [Author_415]
         [Author_237]
         [Author_885]
         [Author_454]
         [Author_207]
         [Author_187]
         [Author_938]
         [Author_942]
         [Author289])
     (sexo female))

    ([Author_827] of Autor
     (idAutor "827")
     (nombreAutor "Tammy Robinson")
     (autoresSimilares
         [Author_273]
         [Author_3]
         [Author_85]
         [Author_530]
         [Author_585]
         [Author_199]
         [Author_410]
         [Author_411]
         [Author_855]
         [Author_914]
         [Author_443]
         [Author_547]
         [Author_665]
         [Author_932]
         [Author_943]
         [Author_75]
         [Author48])
     (sexo female))

    ([Author_828] of Autor
     (idAutor "828")
     (nombreAutor "Andrew E Kaufman")
     (autoresSimilares
         [Author_814]
         [Author_40]
         [Author_907]
         [Author_566]
         [Author_746]
         [Author_327]
         [Author_286]
         [Author672])
     (sexo male))

    ([Author_829] of Autor
     (idAutor "829")
     (nombreAutor "Thom  Stark")
     (autoresSimilares
         [Author_30]
         [Author_314]
         [Author_442]
         [Author_590]
         [Author_567]
         [Author_110]
         [Author_741]
         [Author_93]
         [Author_423]
         [Author_827]
         [Author_672]
         [Author_289]
         [Author446])
     (sexo male))

    ([Author_830] of Autor
     (idAutor "830")
     (nombreAutor "Sara Furlong Burr")
     (autoresSimilares
         [Author_865]
         [Author_503]
         [Author_433]
         [Author_310]
         [Author497])
     (sexo female))

    ([Author_831] of Autor
     (idAutor "831")
     (nombreAutor "Chris   Rose")
     (autoresSimilares
         [Author_356]
         [Author_892]
         [Author_659]
         [Author_77]
         [Author_694]
         [Author_523]
         [Author_757]
         [Author_730]
         [Author675])
     (sexo female))

    ([Author_832] of Autor
     (idAutor "832")
     (nombreAutor "Heide Goody")
     (autoresSimilares
         [Author_117]
         [Author_868]
         [Author_153]
         [Author_316]
         [Author_660]
         [Author_793]
         [Author800])
     (sexo male))

    ([Author_833] of Autor
     (idAutor "833")
     (nombreAutor "Karen Luellen")
     (autoresSimilares
         [Author_40]
         [Author_763]
         [Author_520]
         [Author_411]
         [Author_638]
         [Author_911]
         [Author_576]
         [Author130])
     (sexo female))

    ([Author_834] of Autor
     (idAutor "834")
     (nombreAutor "Liane Moriarty")
     (autoresSimilares
         [Author_590]
         [Author_208]
         [Author_15]
         [Author_154]
         [Author_4]
         [Author_776]
         [Author_458]
         [Author_266]
         [Author_655]
         [Author_568]
         [Author_301]
         [Author_370]
         [Author139])
     (sexo female))

    ([Author_835] of Autor
     (idAutor "835")
     (nombreAutor "Nelson DeMille")
     (autoresSimilares
         [Author_678]
         [Author_15]
         [Author336])
     (sexo male))

    ([Author_836] of Autor
     (idAutor "836")
     (nombreAutor "Ted Bernal Guevara")
     (autoresSimilares
         [Author_468]
         [Author_388]
         [Author_423]
         [Author_437]
         [Author579])
     (sexo male))

    ([Author_837] of Autor
     (idAutor "837")
     (nombreAutor "David Baldacci")
     (autoresSimilares
         [Author_9]
         [Author_498]
         [Author_183]
         [Author_136]
         [Author_323]
         [Author68])
     (sexo male))

    ([Author_838] of Autor
     (idAutor "838")
     (nombreAutor "William Diehl")
     (autoresSimilares
         [Author_383]
         [Author_644]
         [Author_606]
         [Author_556]
         [Author_608]
         [Author_339]
         [Author54])
     (sexo male))

    ([Author_839] of Autor
     (idAutor "839")
     (nombreAutor "Alexa Donne")
     (autoresSimilares
         [Author_580]
         [Author_398]
         [Author_400]
         [Author_920]
         [Author_349]
         [Author_73]
         [Author_224]
         [Author_753]
         [Author_894]
         [Author_65]
         [Author_786]
         [Author_844]
         [Author_888]
         [Author_249]
         [Author800])
     (sexo male))

    ([Author_840] of Autor
     (idAutor "840")
     (nombreAutor "Tony Perez-Giese")
     (autoresSimilares
         [Author_833]
         [Author609])
     (sexo male))

    ([Author_841] of Autor
     (idAutor "841")
     (nombreAutor "Cindy Spencer Pape")
     (autoresSimilares
         [Author_182]
         [Author_807]
         [Author_144]
         [Author_822]
         [Author_545]
         [Author_838]
         [Author_233]
         [Author_513]
         [Author_435]
         [Author_819]
         [Author_22]
         [Author_9]
         [Author829])
     (sexo female))

    ([Author_842] of Autor
     (idAutor "842")
     (nombreAutor "Catherine Bybee")
     (autoresSimilares
         [Author_550]
         [Author_40]
         [Author_472]
         [Author_605]
         [Author_178]
         [Author_126]
         [Author_607]
         [Author_136]
         [Author_270]
         [Author_211]
         [Author_722]
         [Author_47]
         [Author_15]
         [Author_29]
         [Author_121]
         [Author_422]
         [Author_115]
         [Author_664]
         [Author_201]
         [Author480])
     (sexo female))

    ([Author_843] of Autor
     (idAutor "843")
     (nombreAutor "Jo Barrett")
     (autoresSimilares
         [Author_926]
         [Author624])
     (sexo female))

    ([Author_844] of Autor
     (idAutor "844")
     (nombreAutor "Caroline B Cooney")
     (autoresSimilares
         [Author_896]
         [Author_66]
         [Author_412]
         [Author_284]
         [Author_762]
         [Author209])
     (sexo female))

    ([Author_845] of Autor
     (idAutor "845")
     (nombreAutor "Sandra Hill")
     (autoresSimilares
         [Author_854]
         [Author_26]
         [Author_258]
         [Author_407]
         [Author_189]
         [Author_806]
         [Author_939]
         [Author_668]
         [Author_712]
         [Author_246]
         [Author_610]
         [Author176])
     (sexo female))

    ([Author_846] of Autor
     (idAutor "846")
     (nombreAutor "Tammy Tate")
     (autoresSimilares
         [Author_529]
         [Author_815]
         [Author_395]
         [Author_87]
         [Author_48]
         [Author718])
     (sexo female))

    ([Author_847] of Autor
     (idAutor "847")
     (nombreAutor "Brenda Joyce")
     (autoresSimilares
         [Author_763]
         [Author_307]
         [Author_472]
         [Author_481]
         [Author_465]
         [Author_478]
         [Author_630]
         [Author_687]
         [Author_83]
         [Author_413]
         [Author_225]
         [Author_189]
         [Author_84]
         [Author239])
     (sexo female))

    ([Author_848] of Autor
     (idAutor "848")
     (nombreAutor "Laura Hunsaker")
     (autoresSimilares
         [Author_394]
         [Author_729]
         [Author82])
     (sexo male))

    ([Author_849] of Autor
     (idAutor "849")
     (nombreAutor "Suzanne Frank")
     (autoresSimilares
         [Author_738]
         [Author_675]
         [Author_845]
         [Author_166]
         [Author_257]
         [Author_790]
         [Author36])
     (sexo female))

    ([Author_850] of Autor
     (idAutor "850")
     (nombreAutor "Anita Clenney")
     (autoresSimilares
         [Author_844]
         [Author_151]
         [Author_521]
         [Author_587]
         [Author_863]
         [Author_656]
         [Author_814]
         [Author_471]
         [Author_143]
         [Author404])
     (sexo female))

    ([Author_851] of Autor
     (idAutor "851")
     (nombreAutor "Shelly Thacker")
     (autoresSimilares
         [Author_410]
         [Author103])
     (sexo female))

    ([Author_852] of Autor
     (idAutor "852")
     (nombreAutor "Linda Lael Miller")
     (autoresSimilares
         [Author_141]
         [Author_197]
         [Author_442]
         [Author_638]
         [Author_241]
         [Author_559]
         [Author_108]
         [Author315])
     (sexo female))

    ([Author_853] of Autor
     (idAutor "853")
     (nombreAutor "June Kramin")
     (autoresSimilares
         [Author_386]
         [Author_520]
         [Author_234]
         [Author_24]
         [Author830])
     (sexo female))

    ([Author_854] of Autor
     (idAutor "854")
     (nombreAutor "Lisa Tawn Bergren")
     (autoresSimilares
         [Author_393]
         [Author_7]
         [Author_116]
         [Author_669]
         [Author_649]
         [Author_240]
         [Author_814]
         [Author_856]
         [Author_351]
         [Author_146]
         [Author_877]
         [Author_413]
         [Author85])
     (sexo male))

    ([Author_855] of Autor
     (idAutor "855")
     (nombreAutor "Jane Goodger")
     (autoresSimilares
         [Author_863]
         [Author_862]
         [Author583])
     (sexo male))

    ([Author_856] of Autor
     (idAutor "856")
     (nombreAutor "Monique Martin")
     (autoresSimilares
         [Author_22]
         [Author_893]
         [Author_731]
         [Author_215]
         [Author_666]
         [Author_891]
         [Author_239]
         [Author_672]
         [Author_119]
         [Author_934]
         [Author_928]
         [Author_253]
         [Author_280]
         [Author_650]
         [Author_62]
         [Author8])
     (sexo female))

    ([Author_857] of Autor
     (idAutor "857")
     (nombreAutor "Beatriz Williams")
     (autoresSimilares
         [Author_132]
         [Author_492]
         [Author_818]
         [Author_381]
         [Author_544]
         [Author_604]
         [Author488])
     (sexo male))

    ([Author_858] of Autor
     (idAutor "858")
     (nombreAutor "Katherine Lowry Logan")
     (autoresSimilares
         [Author_364]
         [Author_394]
         [Author_516]
         [Author_155]
         [Author_131]
         [Author_883]
         [Author_465]
         [Author_735]
         [Author_226]
         [Author_401]
         [Author_725]
         [Author_701]
         [Author587])
     (sexo female))

    ([Author_859] of Autor
     (idAutor "859")
     (nombreAutor "Constance ODay-Flannery")
     (autoresSimilares
         [Author_285]
         [Author_315]
         [Author_18]
         [Author_739]
         [Author_583]
         [Author772])
     (sexo female))

    ([Author_860] of Autor
     (idAutor "860")
     (nombreAutor "Teresa Medeiros")
     (autoresSimilares
         [Author_54]
         [Author_625]
         [Author_510]
         [Author_227]
         [Author_877]
         [Author_370]
         [Author_132]
         [Author_737]
         [Author_945]
         [Author_545]
         [Author721])
     (sexo female))

    ([Author_861] of Autor
     (idAutor "861")
     (nombreAutor "Melissa Mayhue")
     (autoresSimilares
         [Author_626]
         [Author_254]
         [Author_938]
         [Author_362]
         [Author_231]
         [Author_567]
         [Author_377]
         [Author_635]
         [Author_523]
         [Author_122]
         [Author646])
     (sexo female))

    ([Author_862] of Autor
     (idAutor "862")
     (nombreAutor "Arundhati Roy")
     (autoresSimilares
         [Author_192]
         [Author_528]
         [Author_23]
         [Author_315]
         [Author_209]
         [Author_183]
         [Author_273]
         [Author_695]
         [Author_538]
         [Author_522]
         [Author_445]
         [Author_99]
         [Author_51]
         [Author_412]
         [Author_205]
         [Author_200]
         [Author902])
     (sexo female))

    ([Author_863] of Autor
     (idAutor "863")
     (nombreAutor "Flannery OConnor")
     (autoresSimilares
         [Author_137]
         [Author_900]
         [Author_305]
         [Author_500]
         [Author_653]
         [Author_910]
         [Author_316]
         [Author_382]
         [Author_586]
         [Author113])
     (sexo female))

    ([Author_864] of Autor
     (idAutor "864")
     (nombreAutor "Carson McCullers")
     (autoresSimilares
         [Author571])
     (sexo female))

    ([Author_865] of Autor
     (idAutor "865")
     (nombreAutor "Audrey Grey")
     (autoresSimilares
         [Author_396]
         [Author_472]
         [Author_616]
         [Author_850]
         [Author_246]
         [Author_332]
         [Author_709]
         [Author_919]
         [Author_386]
         [Author_324]
         [Author_1]
         [Author566])
     (sexo male))

    ([Author_866] of Autor
     (idAutor "866")
     (nombreAutor "Mary Brown")
     (autoresSimilares
         [Author_268]
         [Author_73]
         [Author291])
     (sexo male))

    ([Author_867] of Autor
     (idAutor "867")
     (nombreAutor "Gwendolyn Field")
     (autoresSimilares
         [Author_790]
         [Author_698]
         [Author_733]
         [Author_814]
         [Author884])
     (sexo male))

    ([Author_868] of Autor
     (idAutor "868")
     (nombreAutor "Abi Ketner")
     (autoresSimilares
         [Author_787]
         [Author_316]
         [Author_620]
         [Author_622]
         [Author_350]
         [Author_402]
         [Author_61]
         [Author_78]
         [Author204])
     (sexo female))

    ([Author_869] of Autor
     (idAutor "869")
     (nombreAutor "Magda Alexander")
     (autoresSimilares
         [Author_326]
         [Author925])
     (sexo male))

    ([Author_870] of Autor
     (idAutor "870")
     (nombreAutor "KI Lynn")
     (autoresSimilares
         [Author351])
     (sexo female))

    ([Author_871] of Autor
     (idAutor "871")
     (nombreAutor "Daniel Silva")
     (autoresSimilares
         [Author_90]
         [Author_390]
         [Author_785]
         [Author_269]
         [Author_203]
         [Author_857]
         [Author_34]
         [Author_692]
         [Author_701]
         [Author_205]
         [Author_662]
         [Author_869]
         [Author_370]
         [Author_82]
         [Author_47]
         [Author_632]
         [Author_897]
         [Author149])
     (sexo male))

    ([Author_872] of Autor
     (idAutor "872")
     (nombreAutor "Trevanian")
     (autoresSimilares
         [Author_551]
         [Author_735]
         [Author_51]
         [Author_405]
         [Author_751]
         [Author_709]
         [Author_871]
         [Author_627]
         [Author_465]
         [Author_476]
         [Author_213]
         [Author_10]
         [Author_459]
         [Author_506]
         [Author942])
     (sexo male))

    ([Author_873] of Autor
     (idAutor "873")
     (nombreAutor "Lawrence Block")
     (autoresSimilares
         [Author_390]
         [Author_600]
         [Author_490]
         [Author_547]
         [Author_933]
         [Author_34]
         [Author_90]
         [Author_821]
         [Author_883]
         [Author_630]
         [Author_488]
         [Author_691]
         [Author_423]
         [Author_710]
         [Author_287]
         [Author_812]
         [Author_807]
         [Author_244]
         [Author_365]
         [Author288])
     (sexo male))

    ([Author_874] of Autor
     (idAutor "874")
     (nombreAutor "Barry Eisler")
     (autoresSimilares
         [Author_295]
         [Author_610]
         [Author_801]
         [Author_851]
         [Author_298]
         [Author_155]
         [Author250])
     (sexo male))

    ([Author_875] of Autor
     (idAutor "875")
     (nombreAutor "Colson Whitehead")
     (autoresSimilares
         [Author_450]
         [Author_578]
         [Author_929]
         [Author_219]
         [Author_757]
         [Author544])
     (sexo male))

    ([Author_876] of Autor
     (idAutor "876")
     (nombreAutor "Isaac Marion")
     (autoresSimilares
         [Author_35]
         [Author_402]
         [Author606])
     (sexo male))

    ([Author_877] of Autor
     (idAutor "877")
     (nombreAutor "Peter Golden")
     (autoresSimilares
         [Author_396]
         [Author_668]
         [Author_881]
         [Author_544]
         [Author_687]
         [Author_847]
         [Author_151]
         [Author_98]
         [Author_372]
         [Author73])
     (sexo male))

    ([Author_878] of Autor
     (idAutor "878")
     (nombreAutor "Cynthia B Ainsworthe")
     (autoresSimilares
         [Author_684]
         [Author_785]
         [Author_691]
         [Author459])
     (sexo female))

    ([Author_879] of Autor
     (idAutor "879")
     (nombreAutor "Janet E Morris")
     (autoresSimilares
         [Author_294]
         [Author_524]
         [Author_371]
         [Author_592]
         [Author_441]
         [Author_712]
         [Author_96]
         [Author_242]
         [Author_414]
         [Author_540]
         [Author_162]
         [Author927])
     (sexo female))

    ([Author_880] of Autor
     (idAutor "880")
     (nombreAutor "Joan W Blos")
     (autoresSimilares
         [Author_469]
         [Author_747]
         [Author_686]
         [Author_252]
         [Author_540]
         [Author_70]
         [Author_911]
         [Author936])
     (sexo male))

    ([Author_881] of Autor
     (idAutor "881")
     (nombreAutor "Bianca Sommerland")
     (autoresSimilares
         [Author_707]
         [Author_558]
         [Author_774]
         [Author_657]
         [Author_864]
         [Author_73]
         [Author_554]
         [Author_654]
         [Author_570]
         [Author_494]
         [Author_540]
         [Author_330]
         [Author_584]
         [Author_350]
         [Author_458]
         [Author_536]
         [Author_192]
         [Author_444]
         [Author_201]
         [Author172])
     (sexo female))

    ([Author_882] of Autor
     (idAutor "882")
     (nombreAutor "Julieanne Lynch")
     (autoresSimilares
         [Author_203]
         [Author_5]
         [Author_831]
         [Author_602]
         [Author_65]
         [Author_660]
         [Author_363]
         [Author_836]
         [Author485])
     (sexo female))

    ([Author_883] of Autor
     (idAutor "883")
     (nombreAutor "Vina Jackson")
     (autoresSimilares
         [Author_828]
         [Author_560]
         [Author_571]
         [Author_835]
         [Author_396]
         [Author_664]
         [Author_675]
         [Author763])
     (sexo male))

    ([Author_884] of Autor
     (idAutor "884")
     (nombreAutor "Ashley S Clancy")
     (autoresSimilares
         [Author_104]
         [Author_32]
         [Author_24]
         [Author_654]
         [Author_784]
         [Author_52]
         [Author_416]
         [Author_619]
         [Author_346]
         [Author_579]
         [Author_692]
         [Author_162]
         [Author_15]
         [Author_302]
         [Author_290]
         [Author_718]
         [Author_708]
         [Author_857]
         [Author660])
     (sexo male))

    ([Author_885] of Autor
     (idAutor "885")
     (nombreAutor "Skye Warren")
     (autoresSimilares
         [Author_483]
         [Author_102]
         [Author_434]
         [Author_445]
         [Author_585]
         [Author_890]
         [Author_5]
         [Author554])
     (sexo male))

    ([Author_886] of Autor
     (idAutor "886")
     (nombreAutor "Annabel Joseph")
     (autoresSimilares
         [Author_361]
         [Author159])
     (sexo female))

    ([Author_887] of Autor
     (idAutor "887")
     (nombreAutor "Nina  Levine")
     (autoresSimilares
         [Author_465]
         [Author_546]
         [Author_618]
         [Author_406]
         [Author_585]
         [Author_679]
         [Author_126]
         [Author_8]
         [Author_18]
         [Author_492]
         [Author_220]
         [Author_586]
         [Author_510]
         [Author_900]
         [Author_179]
         [Author_921]
         [Author_587]
         [Author_402]
         [Author_647]
         [Author535])
     (sexo female))

    ([Author_888] of Autor
     (idAutor "888")
     (nombreAutor "Claire Thompson")
     (autoresSimilares
         [Author_389]
         [Author_899]
         [Author_582]
         [Author_740]
         [Author_751]
         [Author_855]
         [Author_252]
         [Author_656]
         [Author_919]
         [Author_274]
         [Author_655]
         [Author_87]
         [Author_859]
         [Author_154]
         [Author_778]
         [Author227])
     (sexo female))

    ([Author_889] of Autor
     (idAutor "889")
     (nombreAutor "Varian Krylov")
     (autoresSimilares
         [Author_257]
         [Author_522]
         [Author_12]
         [Author_618]
         [Author_191]
         [Author_782]
         [Author_107]
         [Author_222]
         [Author_40]
         [Author198])
     (sexo male))

    ([Author_890] of Autor
     (idAutor "890")
     (nombreAutor "Nina Lane")
     (autoresSimilares
         [Author_731]
         [Author_810]
         [Author_780]
         [Author_670]
         [Author_712]
         [Author_124]
         [Author_619]
         [Author_910]
         [Author_371]
         [Author_666]
         [Author_356]
         [Author_792]
         [Author_434]
         [Author_58]
         [Author_431]
         [Author_909]
         [Author_365]
         [Author_528]
         [Author_874]
         [Author200])
     (sexo female))

    ([Author_891] of Autor
     (idAutor "891")
     (nombreAutor "Scott Hildreth")
     (autoresSimilares
         [Author284])
     (sexo male))

    ([Author_892] of Autor
     (idAutor "892")
     (nombreAutor "CD Reiss")
     (autoresSimilares
         [Author_871]
         [Author_481]
         [Author_774]
         [Author_739]
         [Author_643]
         [Author_230]
         [Author_40]
         [Author_545]
         [Author_299]
         [Author_699]
         [Author_813]
         [Author_766]
         [Author_528]
         [Author_390]
         [Author_805]
         [Author_572]
         [Author_376]
         [Author_160]
         [Author_926]
         [Author405])
     (sexo female))

    ([Author_893] of Autor
     (idAutor "893")
     (nombreAutor "CP Mandara")
     (autoresSimilares
         [Author_870]
         [Author_721]
         [Author_37]
         [Author_283]
         [Author_797]
         [Author_26]
         [Author_818]
         [Author_883]
         [Author_48]
         [Author_871]
         [Author_21]
         [Author_337]
         [Author_679]
         [Author251])
     (sexo female))

    ([Author_894] of Autor
     (idAutor "894")
     (nombreAutor "Samantha Blair")
     (autoresSimilares
         [Author_885]
         [Author_826]
         [Author_73]
         [Author_716]
         [Author_474]
         [Author_387]
         [Author_291]
         [Author_229]
         [Author_469]
         [Author_620]
         [Author_899]
         [Author_311]
         [Author_916]
         [Author_58]
         [Author_426]
         [Author_37]
         [Author_612]
         [Author_190]
         [Author593])
     (sexo female))

    ([Author_895] of Autor
     (idAutor "895")
     (nombreAutor "Shashi Tharoor")
     (autoresSimilares
         [Author_697]
         [Author_5]
         [Author_39]
         [Author_298]
         [Author_210]
         [Author863])
     (sexo male))

    ([Author_896] of Autor
     (idAutor "896")
     (nombreAutor "Cari Silverwood")
     (autoresSimilares
         [Author420])
     (sexo female))

    ([Author_897] of Autor
     (idAutor "897")
     (nombreAutor "Jessie B Tyson")
     (autoresSimilares
         [Author_925]
         [Author_677]
         [Author_660]
         [Author_443]
         [Author_942]
         [Author839])
     (sexo female))

    ([Author_898] of Autor
     (idAutor "898")
     (nombreAutor "AN Roquelaure")
     (autoresSimilares
         [Author_281]
         [Author_198]
         [Author_407]
         [Author_462]
         [Author_161]
         [Author_42]
         [Author_580]
         [Author_311]
         [Author587])
     (sexo male))

    ([Author_899] of Autor
     (idAutor "899")
     (nombreAutor "Joanna Wylde")
     (autoresSimilares
         [Author_236]
         [Author_637]
         [Author_803]
         [Author_847]
         [Author382])
     (sexo female))

    ([Author_900] of Autor
     (idAutor "900")
     (nombreAutor "Cara McKenna")
     (autoresSimilares
         [Author_445]
         [Author_368]
         [Author_122]
         [Author_712]
         [Author_631]
         [Author_251]
         [Author_891]
         [Author_600]
         [Author_688]
         [Author_709]
         [Author_379]
         [Author_474]
         [Author_131]
         [Author_540]
         [Author_18]
         [Author_45]
         [Author_566]
         [Author245])
     (sexo female))

    ([Author_901] of Autor
     (idAutor "901")
     (nombreAutor "Anthony  Bryan")
     (autoresSimilares
         [Author_480]
         [Author_626]
         [Author_793]
         [Author_319]
         [Author_943]
         [Author_780]
         [Author_359]
         [Author_469]
         [Author_293]
         [Author_82]
         [Author_622]
         [Author_502]
         [Author_428]
         [Author645])
     (sexo male))

    ([Author_902] of Autor
     (idAutor "902")
     (nombreAutor "Patrick Ness")
     (autoresSimilares
         [Author_462]
         [Author_187]
         [Author_318]
         [Author_385]
         [Author_607]
         [Author_551]
         [Author_331]
         [Author_518]
         [Author_9]
         [Author_262]
         [Author_759]
         [Author_503]
         [Author255])
     (sexo male))

    ([Author_903] of Autor
     (idAutor "903")
     (nombreAutor "")
     (autoresSimilares
         [Author_626]
         [Author_609]
         [Author_578]
         [Author_791]
         [Author_817]
         [Author_153]
         [Author_928]
         [Author_226]
         [Author_909]
         [Author_359]
         [Author_135]
         [Author_29]
         [Author_812]
         [Author_283]
         [Author_222]
         [Author69])
     (sexo male))

    ([Author_904] of Autor
     (idAutor "904")
     (nombreAutor "Gail Giles")
     (autoresSimilares
         [Author_640]
         [Author_839]
         [Author_170]
         [Author_466]
         [Author_823]
         [Author_706]
         [Author841])
     (sexo female))

    ([Author_905] of Autor
     (idAutor "905")
     (nombreAutor "")
     (autoresSimilares
         [Author_726]
         [Author_241]
         [Author_245]
         [Author_224]
         [Author_112]
         [Author_98]
         [Author_568]
         [Author_490]
         [Author_662]
         [Author_36]
         [Author_296]
         [Author910])
     (sexo male))

    ([Author_906] of Autor
     (idAutor "906")
     (nombreAutor "Kahlil Gibran")
     (autoresSimilares
         [Author_672]
         [Author_455]
         [Author_413]
         [Author_842]
         [Author_728]
         [Author_365]
         [Author_871]
         [Author_152]
         [Author_165]
         [Author2])
     (sexo male))

    ([Author_907] of Autor
     (idAutor "907")
     (nombreAutor "Carrie Ryan")
     (autoresSimilares
         [Author265])
     (sexo female))

    ([Author_908] of Autor
     (idAutor "908")
     (nombreAutor "Elif Shafak")
     (autoresSimilares
         [Author_145]
         [Author_344]
         [Author_937]
         [Author_770]
         [Author_241]
         [Author_132]
         [Author_477]
         [Author_895]
         [Author_227]
         [Author_750]
         [Author_639]
         [Author_726]
         [Author_868]
         [Author_897]
         [Author_69]
         [Author683])
     (sexo female))

    ([Author_909] of Autor
     (idAutor "909")
     (nombreAutor "Danielle Rohr")
     (autoresSimilares
         [Author_477]
         [Author_805]
         [Author_315]
         [Author_925]
         [Author_379]
         [Author_242]
         [Author414])
     (sexo male))

    ([Author_910] of Autor
     (idAutor "910")
     (nombreAutor "Jodi Ellen Malpas")
     (autoresSimilares
         [Author_456]
         [Author_293]
         [Author_558]
         [Author_233]
         [Author_25]
         [Author_806]
         [Author_236]
         [Author_620]
         [Author_118]
         [Author_231]
         [Author_903]
         [Author_79]
         [Author_871]
         [Author_600]
         [Author692])
     (sexo female))

    ([Author_911] of Autor
     (idAutor "911")
     (nombreAutor "Christina Lauren")
     (autoresSimilares
         [Author_140]
         [Author_737]
         [Author_894]
         [Author_230]
         [Author_121]
         [Author_461]
         [Author_288]
         [Author_333]
         [Author_273]
         [Author_526]
         [Author_753]
         [Author_163]
         [Author_815]
         [Author_630]
         [Author635])
     (sexo male))

    ([Author_912] of Autor
     (idAutor "912")
     (nombreAutor "Dhan Gopal Mukerji")
     (autoresSimilares
         [Author83])
     (sexo male))

    ([Author_913] of Autor
     (idAutor "913")
     (nombreAutor "Erin Entrada Kelly")
     (autoresSimilares
         [Author_806]
         [Author_334]
         [Author_284]
         [Author_744]
         [Author_513]
         [Author_794]
         [Author_246]
         [Author_549]
         [Author_286]
         [Author_839]
         [Author_817]
         [Author504])
     (sexo male))

    ([Author_914] of Autor
     (idAutor "914")
     (nombreAutor "Joseph Krumgold")
     (autoresSimilares
         [Author_740]
         [Author_762]
         [Author_586]
         [Author_355]
         [Author_342]
         [Author_125]
         [Author_389]
         [Author_674]
         [Author_431]
         [Author_239]
         [Author_95]
         [Author_92]
         [Author_663]
         [Author_525]
         [Author_77]
         [Author722])
     (sexo male))

    ([Author_915] of Autor
     (idAutor "915")
     (nombreAutor "Lynne Rae Perkins")
     (autoresSimilares
         [Author_680]
         [Author_39]
         [Author_791]
         [Author_51]
         [Author_518]
         [Author_506]
         [Author_232]
         [Author_702]
         [Author_852]
         [Author_115]
         [Author_614]
         [Author_145]
         [Author_776]
         [Author_83]
         [Author_509]
         [Author_16]
         [Author_846]
         [Author_379]
         [Author_745]
         [Author735])
     (sexo female))

    ([Author_916] of Autor
     (idAutor "916")
     (nombreAutor "Elizabeth Yates")
     (autoresSimilares
         [Author_585]
         [Author_478]
         [Author_514]
         [Author_314]
         [Author_539]
         [Author_324]
         [Author_222]
         [Author_461]
         [Author_884]
         [Author_689]
         [Author_322]
         [Author_659]
         [Author908])
     (sexo female))

    ([Author_917] of Autor
     (idAutor "917")
     (nombreAutor "Elizabeth Enright")
     (autoresSimilares
         [Author_55]
         [Author_863]
         [Author_509]
         [Author_890]
         [Author_65]
         [Author_130]
         [Author_642]
         [Author_189]
         [Author_924]
         [Author_637]
         [Author479])
     (sexo female))

    ([Author_918] of Autor
     (idAutor "918")
     (nombreAutor "Elizabeth Foreman Lewis")
     (autoresSimilares
         [Author_776]
         [Author_377]
         [Author_921]
         [Author_508]
         [Author_153]
         [Author_595]
         [Author_887]
         [Author_715]
         [Author181])
     (sexo male))

    ([Author_919] of Autor
     (idAutor "919")
     (nombreAutor "Emily Cheney Neville")
     (autoresSimilares
         [Author_367]
         [Author_593]
         [Author_430]
         [Author_149]
         [Author_658]
         [Author_599]
         [Author_204]
         [Author_258]
         [Author_376]
         [Author_239]
         [Author_920]
         [Author_207]
         [Author_373]
         [Author319])
     (sexo female))

    ([Author_920] of Autor
     (idAutor "920")
     (nombreAutor "Maia Wojciechowska")
     (autoresSimilares
         [Author_160]
         [Author_424]
         [Author_448]
         [Author622])
     (sexo female))

    ([Author_921] of Autor
     (idAutor "921")
     (nombreAutor "Kate Seredy")
     (autoresSimilares
         [Author_721]
         [Author_491]
         [Author_478]
         [Author_217]
         [Author_466]
         [Author_588]
         [Author_648]
         [Author698])
     (sexo female))

    ([Author_922] of Autor
     (idAutor "922")
     (nombreAutor "Elizabeth Coatsworth")
     (autoresSimilares
         [Author_824]
         [Author_449]
         [Author_357]
         [Author_676]
         [Author_557]
         [Author_163]
         [Author_384]
         [Author_539]
         [Author_724]
         [Author_409]
         [Author_239]
         [Author_860]
         [Author_167]
         [Author_798]
         [Author_245]
         [Author_823]
         [Author_819]
         [Author_64]
         [Author_663]
         [Author480])
     (sexo female))

    ([Author_923] of Autor
     (idAutor "923")
     (nombreAutor "Virginia Sorensen")
     (autoresSimilares
         [Author_584]
         [Author_158]
         [Author_109]
         [Author_377]
         [Author507])
     (sexo female))

    ([Author_924] of Autor
     (idAutor "924")
     (nombreAutor "Eleanor Estes")
     (autoresSimilares
         [Author_205]
         [Author_685]
         [Author_12]
         [Author_334]
         [Author_513]
         [Author805])
     (sexo female))

    ([Author_925] of Autor
     (idAutor "925")
     (nombreAutor "Elizabeth Gray Vining")
     (autoresSimilares
         [Author_405]
         [Author_411]
         [Author_474]
         [Author_645]
         [Author_839]
         [Author871])
     (sexo female))

    ([Author_926] of Autor
     (idAutor "926")
     (nombreAutor "Eric P Kelly")
     (autoresSimilares
         [Author_802]
         [Author_407]
         [Author_702]
         [Author_432]
         [Author_197]
         [Author_23]
         [Author_79]
         [Author_770]
         [Author_234]
         [Author_54]
         [Author_560]
         [Author_426]
         [Author_846]
         [Author_478]
         [Author_840]
         [Author_301]
         [Author_887]
         [Author874])
     (sexo male))

    ([Author_927] of Autor
     (idAutor "927")
     (nombreAutor "Betsy Byars")
     (autoresSimilares
         [Author_936]
         [Author_708]
         [Author_7]
         [Author_10]
         [Author_128]
         [Author_547]
         [Author_494]
         [Author_351]
         [Author_613]
         [Author_673]
         [Author_105]
         [Author_722]
         [Author_853]
         [Author_173]
         [Author_170]
         [Author_542]
         [Author_836]
         [Author_858]
         [Author_677]
         [Author876])
     (sexo female))

    ([Author_928] of Autor
     (idAutor "928")
     (nombreAutor "Cynthia Rylant")
     (autoresSimilares
         [Author_685]
         [Author_24]
         [Author_132]
         [Author_775]
         [Author_694]
         [Author_315]
         [Author_733]
         [Author_703]
         [Author_917]
         [Author_810]
         [Author_901]
         [Author737])
     (sexo female))

    ([Author_929] of Autor
     (idAutor "929")
     (nombreAutor "Robert Lawson")
     (autoresSimilares
         [Author_74]
         [Author_394]
         [Author_115]
         [Author_867]
         [Author_108]
         [Author_272]
         [Author_779]
         [Author_899]
         [Author_506]
         [Author_501]
         [Author_182]
         [Author_233]
         [Author_619]
         [Author_292]
         [Author_192]
         [Author_837]
         [Author_858]
         [Author_601]
         [Author_38]
         [Author20])
     (sexo male))

    ([Author_930] of Autor
     (idAutor "930")
     (nombreAutor "Elizabeth Borton de Trevio")
     (autoresSimilares
         [Author_438]
         [Author_461]
         [Author_321]
         [Author_10]
         [Author_342]
         [Author_74]
         [Author_364]
         [Author_675]
         [Author_660]
         [Author_326]
         [Author_601]
         [Author_742]
         [Author584])
     (sexo female))

    ([Author_931] of Autor
     (idAutor "931")
     (nombreAutor "Jeanne Birdsall")
     (autoresSimilares
         [Author_95]
         [Author_890]
         [Author_431]
         [Author_133]
         [Author_534]
         [Author_170]
         [Author_877]
         [Author_485]
         [Author_405]
         [Author_317]
         [Author386])
     (sexo female))

    ([Author_932] of Autor
     (idAutor "932")
     (nombreAutor "Edward Bloor")
     (autoresSimilares
         [Author_893]
         [Author_271]
         [Author_934]
         [Author_567]
         [Author580])
     (sexo male))

    ([Author_933] of Autor
     (idAutor "933")
     (nombreAutor "Rachel Field")
     (autoresSimilares
         [Author_5]
         [Author246])
     (sexo female))

    ([Author_934] of Autor
     (idAutor "934")
     (nombreAutor "Lois Lowry")
     (autoresSimilares
         [Author_0]
         [Author_90]
         [Author_486]
         [Author_340]
         [Author_106]
         [Author_921]
         [Author_497]
         [Author_95]
         [Author_350]
         [Author_401]
         [Author_694]
         [Author_598]
         [Author_919]
         [Author_499]
         [Author85])
     (sexo male))

    ([Author_935] of Autor
     (idAutor "935")
     (nombreAutor "Armstrong Sperry")
     (autoresSimilares
         [Author_215]
         [Author_50]
         [Author_386]
         [Author_627]
         [Author_877]
         [Author_374]
         [Author_692]
         [Author_586]
         [Author_555]
         [Author_11]
         [Author_495]
         [Author_119]
         [Author332])
     (sexo male))

    ([Author_936] of Autor
     (idAutor "936")
     (nombreAutor "Irene Hunt")
     (autoresSimilares
         [Author_613]
         [Author_653]
         [Author_416]
         [Author_126]
         [Author_773]
         [Author_204]
         [Author645])
     (sexo female))

    ([Author_937] of Autor
     (idAutor "937")
     (nombreAutor "Meindert DeJong")
     (autoresSimilares
         [Author_405]
         [Author_96]
         [Author_21]
         [Author_270]
         [Author_260]
         [Author_684]
         [Author_785]
         [Author_905]
         [Author_227]
         [Author_360]
         [Author781])
     (sexo male))

    ([Author_938] of Autor
     (idAutor "938")
     (nombreAutor "Marguerite de Angeli")
     (autoresSimilares
         [Author_725]
         [Author_45]
         [Author818])
     (sexo female))

    ([Author_939] of Autor
     (idAutor "939")
     (nombreAutor "Rodman Philbrick")
     (autoresSimilares
         [Author_388]
         [Author_383]
         [Author_323]
         [Author_403]
         [Author_687]
         [Author_606]
         [Author_615]
         [Author_847]
         [Author_826]
         [Author79])
     (sexo male))

    ([Author_940] of Autor
     (idAutor "940")
     (nombreAutor "Jean Lee Latham")
     (autoresSimilares
         [Author_908]
         [Author_47]
         [Author_481]
         [Author_863]
         [Author_751]
         [Author_65]
         [Author_847]
         [Author_428]
         [Author_767]
         [Author_86]
         [Author_450]
         [Author204])
     (sexo female))

    ([Author_941] of Autor
     (idAutor "941")
     (nombreAutor "Cynthia Voigt")
     (autoresSimilares
         [Author_546]
         [Author_824]
         [Author_230]
         [Author_314]
         [Author_87]
         [Author_498]
         [Author_522]
         [Author_381]
         [Author_132]
         [Author_607]
         [Author_694]
         [Author_592]
         [Author_243]
         [Author_242]
         [Author_408]
         [Author_922]
         [Author_218]
         [Author493])
     (sexo male))

    ([Author_942] of Autor
     (idAutor "942")
     (nombreAutor "Sid Fleischman")
     (autoresSimilares
         [Author_937]
         [Author_321]
         [Author_288]
         [Author_365]
         [Author_707]
         [Author_293]
         [Author_790]
         [Author_318]
         [Author_633]
         [Author_219]
         [Author_502]
         [Author_176]
         [Author_750]
         [Author_400]
         [Author310])
     (sexo male))

    ([Author_943] of Autor
     (idAutor "943")
     (nombreAutor "William Pne du Bois")
     (autoresSimilares
         [Author_506]
         [Author_537]
         [Author_2]
         [Author_733]
         [Author_700]
         [Author_476]
         [Author_732]
         [Author304])
     (sexo male))

    ([Author_944] of Autor
     (idAutor "944")
     (nombreAutor "Katherine Applegate")
     (autoresSimilares
         [Author_338]
         [Author_909]
         [Author_217]
         [Author_516]
         [Author_794]
         [Author_461]
         [Author_776]
         [Author_234]
         [Author_672]
         [Author_351]
         [Author_896]
         [Author_24]
         [Author_539]
         [Author_452]
         [Author_171]
         [Author_941]
         [Author182])
     (sexo female))

    ([Author_945] of Autor
     (idAutor "945")
     (nombreAutor "Esther Forbes")
     (autoresSimilares
         [Author_239]
         [Author_434]
         [Author940])
     (sexo female))

    ([Genres_0] of Genero
     (idGenero "0")
     (nombreGenero "Fiction"))

    ([Genres_1] of Genero
     (idGenero "1")
     (generosSimilares [Genres_0])
     (nombreGenero "Mystery"))

    ([Genres_2] of Genero
     (idGenero "2")
     (generosSimilares [Genres_1])
     (nombreGenero "Magical Realism"))

    ([Genres_3] of Genero
     (idGenero "3")
     (generosSimilares [Genres_2])
     (nombreGenero "Young Adult"))

    ([Genres_4] of Genero
     (idGenero "4")
     (generosSimilares [Genres_3])
     (nombreGenero "Science Fiction"))

    ([Genres_5] of Genero
     (idGenero "5")
     (generosSimilares [Genres_4])
     (nombreGenero "Classics"))

    ([Genres_6] of Genero
     (idGenero "6")
     (generosSimilares [Genres_5])
     (nombreGenero "Romance"))

    ([Genres_7] of Genero
     (idGenero "7")
     (generosSimilares [Genres_6])
     (nombreGenero "Adult Fiction"))

    ([Genres_8] of Genero
     (idGenero "8")
     (generosSimilares [Genres_7])
     (nombreGenero "Apocalyptic"))

    ([Genres_9] of Genero
     (idGenero "9")
     (generosSimilares [Genres_8])
     (nombreGenero "Horror"))

    ([Genres_10] of Genero
     (idGenero "10")
     (generosSimilares [Genres_9])
     (nombreGenero "Fantasy"))

    ([Genres_11] of Genero
     (idGenero "11")
     (generosSimilares [Genres_10])
     (nombreGenero "Contemporary"))

    ([Genres_12] of Genero
     (idGenero "12")
     (generosSimilares [Genres_11])
     (nombreGenero "Womens Fiction"))

    ([Genres_13] of Genero
     (idGenero "13")
     (generosSimilares [Genres_12])
     (nombreGenero "Historical"))

    ([Genres_14] of Genero
     (idGenero "14")
     (generosSimilares [Genres_13])
     (nombreGenero "Humor"))

    ([Genres_15] of Genero
     (idGenero "15")
     (generosSimilares [Genres_14])
     (nombreGenero "Cultural"))

    ([Genres_16] of Genero
     (idGenero "16")
     (generosSimilares [Genres_15])
     (nombreGenero "Literature"))

    ([Genres_17] of Genero
     (idGenero "17")
     (generosSimilares [Genres_16])
     (nombreGenero "Short Stories"))

    ([Genres_18] of Genero
     (idGenero "18")
     (generosSimilares [Genres_17])
     (nombreGenero "New York"))

    ([Genres_19] of Genero
     (idGenero "19")
     (generosSimilares [Genres_18])
     (nombreGenero "Animals"))

    ([Genres_20] of Genero
     (idGenero "20")
     (generosSimilares [Genres_19])
     (nombreGenero "Novels"))

    ([Genres_21] of Genero
     (idGenero "21")
     (generosSimilares [Genres_20])
     (nombreGenero "Realistic Fiction"))

    ([Genres_22] of Genero
     (idGenero "22")
     (generosSimilares [Genres_21])
     (nombreGenero "Childrens"))

    ([Genres_23] of Genero
     (idGenero "23")
     (generosSimilares [Genres_22])
     (nombreGenero "Sports"))

    ([Genres_24] of Genero
     (idGenero "24")
     (generosSimilares [Genres_23])
     (nombreGenero "Christian"))

    ([Genres_25] of Genero
     (idGenero "25")
     (generosSimilares [Genres_24])
     (nombreGenero "Christian Fiction"))

    ([Genres_26] of Genero
     (idGenero "26")
     (generosSimilares [Genres_25])
     (nombreGenero "War"))

    ([Genres_27] of Genero
     (idGenero "27")
     (generosSimilares [Genres_26])
     (nombreGenero "Feminism"))

    ([Genres_28] of Genero
     (idGenero "28")
     (generosSimilares [Genres_27])
     (nombreGenero "European Literature"))

    ([Genres_29] of Genero
     (idGenero "29")
     (generosSimilares [Genres_28])
     (nombreGenero "Thriller"))

    ([Genres_30] of Genero
     (idGenero "30")
     (generosSimilares [Genres_29])
     (nombreGenero "Philosophy"))

    ([Genres_31] of Genero
     (idGenero "31")
     (generosSimilares [Genres_30])
     (nombreGenero "New Adult"))

    ([Genres_32] of Genero
     (idGenero "32")
     (generosSimilares [Genres_31])
     (nombreGenero "Space"))

    ([Genres_33] of Genero
     (idGenero "33")
     (generosSimilares [Genres_32])
     (nombreGenero "Erotica"))

    ([Genres_34] of Genero
     (idGenero "34")
     (generosSimilares [Genres_33])
     (nombreGenero "Westerns"))

    ([Genres_35] of Genero
     (idGenero "35")
     (generosSimilares [Genres_34])
     (nombreGenero "Adventure"))

    ([Genres_36] of Genero
     (idGenero "36")
     (generosSimilares [Genres_35])
     (nombreGenero "Music"))

    ([Genres_37] of Genero
     (idGenero "37")
     (generosSimilares [Genres_36])
     (nombreGenero "Sports and Games"))

    ([Genres_38] of Genero
     (idGenero "38")
     (generosSimilares [Genres_37])
     (nombreGenero "American"))

    ([Genres_39] of Genero
     (idGenero "39")
     (generosSimilares [Genres_38])
     (nombreGenero "See top shelves…"))

    ([Genres_40] of Genero
     (idGenero "40")
     (generosSimilares [Genres_39])
     (nombreGenero "Lgbt"))

    ([Genres_41] of Genero
     (idGenero "41")
     (generosSimilares [Genres_40])
     (nombreGenero "Food and Drink"))

    ([Genres_42] of Genero
     (idGenero "42")
     (generosSimilares [Genres_41])
     (nombreGenero "Plays"))

    ([Genres_43] of Genero
     (idGenero "43")
     (generosSimilares [Genres_42])
     (nombreGenero "Media Tie In"))

    ([Genres_44] of Genero
     (idGenero "44")
     (generosSimilares [Genres_43])
     (nombreGenero "Suspense"))

    ([Genres_45] of Genero
     (idGenero "45")
     (generosSimilares [Genres_44])
     (nombreGenero "Dark"))

    ([Genres_46] of Genero
     (idGenero "46")
     (generosSimilares [Genres_45])
     (nombreGenero "Northern Africa"))

    ([Genres_47] of Genero
     (idGenero "47")
     (generosSimilares [Genres_46])
     (nombreGenero "Travel"))

    ([Recomendations_0] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_0]))

    ([Recomendations_1] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_1]))

    ([Recomendations_2] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_2]))

    ([Recomendations_3] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_3]))

    ([Recomendations_4] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_4]))

    ([Recomendations_5] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_5]))

    ([Recomendations_6] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_6]))

    ([Recomendations_7] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_7]))

    ([Recomendations_8] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_8]))

    ([Recomendations_9] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_9]))

    ([Recomendations_10] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_10]))

    ([Recomendations_11] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_11]))

    ([Recomendations_12] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_12]))

    ([Recomendations_13] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_13]))

    ([Recomendations_14] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_14]))

    ([Recomendations_15] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_15]))

    ([Recomendations_16] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_16]))

    ([Recomendations_17] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_17]))

    ([Recomendations_18] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_18]))

    ([Recomendations_19] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_19]))

    ([Recomendations_20] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_20]))

    ([Recomendations_21] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_21]))

    ([Recomendations_22] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_22]))

    ([Recomendations_23] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_23]))

    ([Recomendations_24] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_24]))

    ([Recomendations_25] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_25]))

    ([Recomendations_26] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_26]))

    ([Recomendations_27] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_27]))

    ([Recomendations_28] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_28]))

    ([Recomendations_29] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_29]))

    ([Recomendations_30] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_30]))

    ([Recomendations_31] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_31]))

    ([Recomendations_32] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_32]))

    ([Recomendations_33] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_33]))

    ([Recomendations_34] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_34]))

    ([Recomendations_35] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_35]))

    ([Recomendations_36] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_36]))

    ([Recomendations_37] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_37]))

    ([Recomendations_38] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_38]))

    ([Recomendations_39] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_39]))

    ([Recomendations_40] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_40]))

    ([Recomendations_41] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_41]))

    ([Recomendations_42] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_42]))

    ([Recomendations_43] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_43]))

    ([Recomendations_44] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_44]))

    ([Recomendations_45] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_45]))

    ([Recomendations_46] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_46]))

    ([Recomendations_47] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_47]))

    ([Recomendations_48] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_48]))

    ([Recomendations_49] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_49]))

    ([Recomendations_50] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_50]))

    ([Recomendations_51] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_51]))

    ([Recomendations_52] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_52]))

    ([Recomendations_53] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_53]))

    ([Recomendations_54] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_54]))

    ([Recomendations_55] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_55]))

    ([Recomendations_56] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_56]))

    ([Recomendations_57] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_57]))

    ([Recomendations_58] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_58]))

    ([Recomendations_59] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_59]))

    ([Recomendations_60] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_60]))

    ([Recomendations_61] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_61]))

    ([Recomendations_62] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_62]))

    ([Recomendations_63] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_63]))

    ([Recomendations_64] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_64]))

    ([Recomendations_65] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_65]))

    ([Recomendations_66] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_66]))

    ([Recomendations_67] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_67]))

    ([Recomendations_68] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_68]))

    ([Recomendations_69] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_69]))

    ([Recomendations_70] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_70]))

    ([Recomendations_71] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_71]))

    ([Recomendations_72] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_72]))

    ([Recomendations_73] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_73]))

    ([Recomendations_74] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_74]))

    ([Recomendations_75] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_75]))

    ([Recomendations_76] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_76]))

    ([Recomendations_77] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_77]))

    ([Recomendations_78] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_78]))

    ([Recomendations_79] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_79]))

    ([Recomendations_80] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_80]))

    ([Recomendations_81] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_81]))

    ([Recomendations_82] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_82]))

    ([Recomendations_83] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_83]))

    ([Recomendations_84] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_84]))

    ([Recomendations_85] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_85]))

    ([Recomendations_86] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_86]))

    ([Recomendations_87] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_87]))

    ([Recomendations_88] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_88]))

    ([Recomendations_89] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_89]))

    ([Recomendations_90] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_90]))

    ([Recomendations_91] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_91]))

    ([Recomendations_92] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_92]))

    ([Recomendations_93] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_93]))

    ([Recomendations_94] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_94]))

    ([Recomendations_95] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_95]))

    ([Recomendations_96] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_96]))

    ([Recomendations_97] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_97]))

    ([Recomendations_98] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_98]))

    ([Recomendations_99] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_99]))

    ([Recomendations_100] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_100]))

    ([Recomendations_101] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_101]))

    ([Recomendations_102] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_102]))

    ([Recomendations_103] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_103]))

    ([Recomendations_104] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_104]))

    ([Recomendations_105] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_105]))

    ([Recomendations_106] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_106]))

    ([Recomendations_107] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_107]))

    ([Recomendations_108] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_108]))

    ([Recomendations_109] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_109]))

    ([Recomendations_110] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_110]))

    ([Recomendations_111] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_111]))

    ([Recomendations_112] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_112]))

    ([Recomendations_113] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_113]))

    ([Recomendations_114] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_114]))

    ([Recomendations_115] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_115]))

    ([Recomendations_116] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_116]))

    ([Recomendations_117] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_117]))

    ([Recomendations_118] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_118]))

    ([Recomendations_119] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_119]))

    ([Recomendations_120] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_120]))

    ([Recomendations_121] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_121]))

    ([Recomendations_122] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_122]))

    ([Recomendations_123] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_123]))

    ([Recomendations_124] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_124]))

    ([Recomendations_125] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_125]))

    ([Recomendations_126] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_126]))

    ([Recomendations_127] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_127]))

    ([Recomendations_128] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_128]))

    ([Recomendations_129] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_129]))

    ([Recomendations_130] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_130]))

    ([Recomendations_131] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_131]))

    ([Recomendations_132] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_132]))

    ([Recomendations_133] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_133]))

    ([Recomendations_134] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_134]))

    ([Recomendations_135] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_135]))

    ([Recomendations_136] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_136]))

    ([Recomendations_137] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_137]))

    ([Recomendations_138] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_138]))

    ([Recomendations_139] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_139]))

    ([Recomendations_140] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_140]))

    ([Recomendations_141] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_141]))

    ([Recomendations_142] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_142]))

    ([Recomendations_143] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_143]))

    ([Recomendations_144] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_144]))

    ([Recomendations_145] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_145]))

    ([Recomendations_146] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_146]))

    ([Recomendations_147] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_147]))

    ([Recomendations_148] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_148]))

    ([Recomendations_149] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_149]))

    ([Recomendations_150] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_150]))

    ([Recomendations_151] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_151]))

    ([Recomendations_152] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_152]))

    ([Recomendations_153] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_153]))

    ([Recomendations_154] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_154]))

    ([Recomendations_155] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_155]))

    ([Recomendations_156] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_156]))

    ([Recomendations_157] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_157]))

    ([Recomendations_158] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_158]))

    ([Recomendations_159] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_159]))

    ([Recomendations_160] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_160]))

    ([Recomendations_161] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_161]))

    ([Recomendations_162] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_162]))

    ([Recomendations_163] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_163]))

    ([Recomendations_164] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_164]))

    ([Recomendations_165] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_165]))

    ([Recomendations_166] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_166]))

    ([Recomendations_167] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_167]))

    ([Recomendations_168] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_168]))

    ([Recomendations_169] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_169]))

    ([Recomendations_170] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_170]))

    ([Recomendations_171] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_171]))

    ([Recomendations_172] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_172]))

    ([Recomendations_173] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_173]))

    ([Recomendations_174] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_174]))

    ([Recomendations_175] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_175]))

    ([Recomendations_176] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_176]))

    ([Recomendations_177] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_177]))

    ([Recomendations_178] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_178]))

    ([Recomendations_179] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_179]))

    ([Recomendations_180] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_180]))

    ([Recomendations_181] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_181]))

    ([Recomendations_182] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_182]))

    ([Recomendations_183] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_183]))

    ([Recomendations_184] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_184]))

    ([Recomendations_185] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_185]))

    ([Recomendations_186] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_186]))

    ([Recomendations_187] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_187]))

    ([Recomendations_188] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_188]))

    ([Recomendations_189] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_189]))

    ([Recomendations_190] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_190]))

    ([Recomendations_191] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_191]))

    ([Recomendations_192] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_192]))

    ([Recomendations_193] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_193]))

    ([Recomendations_194] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_194]))

    ([Recomendations_195] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_195]))

    ([Recomendations_196] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_196]))

    ([Recomendations_197] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_197]))

    ([Recomendations_198] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_198]))

    ([Recomendations_199] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_199]))

    ([Recomendations_200] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_200]))

    ([Recomendations_201] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_201]))

    ([Recomendations_202] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_202]))

    ([Recomendations_203] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_203]))

    ([Recomendations_204] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_204]))

    ([Recomendations_205] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_205]))

    ([Recomendations_206] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_206]))

    ([Recomendations_207] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_207]))

    ([Recomendations_208] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_208]))

    ([Recomendations_209] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_209]))

    ([Recomendations_210] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_210]))

    ([Recomendations_211] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_211]))

    ([Recomendations_212] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_212]))

    ([Recomendations_213] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_213]))

    ([Recomendations_214] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_214]))

    ([Recomendations_215] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_215]))

    ([Recomendations_216] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_216]))

    ([Recomendations_217] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_217]))

    ([Recomendations_218] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_218]))

    ([Recomendations_219] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_219]))

    ([Recomendations_220] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_220]))

    ([Recomendations_221] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_221]))

    ([Recomendations_222] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_222]))

    ([Recomendations_223] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_223]))

    ([Recomendations_224] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_224]))

    ([Recomendations_225] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_225]))

    ([Recomendations_226] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_226]))

    ([Recomendations_227] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_227]))

    ([Recomendations_228] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_228]))

    ([Recomendations_229] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_229]))

    ([Recomendations_230] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_230]))

    ([Recomendations_231] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_231]))

    ([Recomendations_232] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_232]))

    ([Recomendations_233] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_233]))

    ([Recomendations_234] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_234]))

    ([Recomendations_235] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_235]))

    ([Recomendations_236] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_236]))

    ([Recomendations_237] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_237]))

    ([Recomendations_238] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_238]))

    ([Recomendations_239] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_239]))

    ([Recomendations_240] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_240]))

    ([Recomendations_241] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_241]))

    ([Recomendations_242] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_242]))

    ([Recomendations_243] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_243]))

    ([Recomendations_244] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_244]))

    ([Recomendations_245] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_245]))

    ([Recomendations_246] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_246]))

    ([Recomendations_247] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_247]))

    ([Recomendations_248] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_248]))

    ([Recomendations_249] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_249]))

    ([Recomendations_250] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_250]))

    ([Recomendations_251] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_251]))

    ([Recomendations_252] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_252]))

    ([Recomendations_253] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_253]))

    ([Recomendations_254] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_254]))

    ([Recomendations_255] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_255]))

    ([Recomendations_256] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_256]))

    ([Recomendations_257] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_257]))

    ([Recomendations_258] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_258]))

    ([Recomendations_259] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_259]))

    ([Recomendations_260] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_260]))

    ([Recomendations_261] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_261]))

    ([Recomendations_262] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_262]))

    ([Recomendations_263] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_263]))

    ([Recomendations_264] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_264]))

    ([Recomendations_265] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_265]))

    ([Recomendations_266] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_266]))

    ([Recomendations_267] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_267]))

    ([Recomendations_268] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_268]))

    ([Recomendations_269] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_269]))

    ([Recomendations_270] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_270]))

    ([Recomendations_271] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_271]))

    ([Recomendations_272] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_272]))

    ([Recomendations_273] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_273]))

    ([Recomendations_274] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_274]))

    ([Recomendations_275] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_275]))

    ([Recomendations_276] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_276]))

    ([Recomendations_277] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_277]))

    ([Recomendations_278] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_278]))

    ([Recomendations_279] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_279]))

    ([Recomendations_280] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_280]))

    ([Recomendations_281] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_281]))

    ([Recomendations_282] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_282]))

    ([Recomendations_283] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_283]))

    ([Recomendations_284] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_284]))

    ([Recomendations_285] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_285]))

    ([Recomendations_286] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_286]))

    ([Recomendations_287] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_287]))

    ([Recomendations_288] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_288]))

    ([Recomendations_289] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_289]))

    ([Recomendations_290] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_290]))

    ([Recomendations_291] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_291]))

    ([Recomendations_292] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_292]))

    ([Recomendations_293] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_293]))

    ([Recomendations_294] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_294]))

    ([Recomendations_295] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_295]))

    ([Recomendations_296] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_296]))

    ([Recomendations_297] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_297]))

    ([Recomendations_298] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_298]))

    ([Recomendations_299] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_299]))

    ([Recomendations_300] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_300]))

    ([Recomendations_301] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_301]))

    ([Recomendations_302] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_302]))

    ([Recomendations_303] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_303]))

    ([Recomendations_304] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_304]))

    ([Recomendations_305] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_305]))

    ([Recomendations_306] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_306]))

    ([Recomendations_307] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_307]))

    ([Recomendations_308] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_308]))

    ([Recomendations_309] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_309]))

    ([Recomendations_310] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_310]))

    ([Recomendations_311] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_311]))

    ([Recomendations_312] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_312]))

    ([Recomendations_313] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_313]))

    ([Recomendations_314] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_314]))

    ([Recomendations_315] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_315]))

    ([Recomendations_316] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_316]))

    ([Recomendations_317] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_317]))

    ([Recomendations_318] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_318]))

    ([Recomendations_319] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_319]))

    ([Recomendations_320] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_320]))

    ([Recomendations_321] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_321]))

    ([Recomendations_322] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_322]))

    ([Recomendations_323] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_323]))

    ([Recomendations_324] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_324]))

    ([Recomendations_325] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_325]))

    ([Recomendations_326] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_326]))

    ([Recomendations_327] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_327]))

    ([Recomendations_328] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_328]))

    ([Recomendations_329] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_329]))

    ([Recomendations_330] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_330]))

    ([Recomendations_331] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_331]))

    ([Recomendations_332] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_332]))

    ([Recomendations_333] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_333]))

    ([Recomendations_334] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_334]))

    ([Recomendations_335] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_335]))

    ([Recomendations_336] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_336]))

    ([Recomendations_337] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_337]))

    ([Recomendations_338] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_338]))

    ([Recomendations_339] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_339]))

    ([Recomendations_340] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_340]))

    ([Recomendations_341] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_341]))

    ([Recomendations_342] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_342]))

    ([Recomendations_343] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_343]))

    ([Recomendations_344] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_344]))

    ([Recomendations_345] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_345]))

    ([Recomendations_346] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_346]))

    ([Recomendations_347] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_347]))

    ([Recomendations_348] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_348]))

    ([Recomendations_349] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_349]))

    ([Recomendations_350] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_350]))

    ([Recomendations_351] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_351]))

    ([Recomendations_352] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_352]))

    ([Recomendations_353] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_353]))

    ([Recomendations_354] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_354]))

    ([Recomendations_355] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_355]))

    ([Recomendations_356] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_356]))

    ([Recomendations_357] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_357]))

    ([Recomendations_358] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_358]))

    ([Recomendations_359] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_359]))

    ([Recomendations_360] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_360]))

    ([Recomendations_361] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_361]))

    ([Recomendations_362] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_362]))

    ([Recomendations_363] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_363]))

    ([Recomendations_364] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_364]))

    ([Recomendations_365] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_365]))

    ([Recomendations_366] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_366]))

    ([Recomendations_367] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_367]))

    ([Recomendations_368] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_368]))

    ([Recomendations_369] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_369]))

    ([Recomendations_370] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_370]))

    ([Recomendations_371] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_371]))

    ([Recomendations_372] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_372]))

    ([Recomendations_373] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_373]))

    ([Recomendations_374] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_374]))

    ([Recomendations_375] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_375]))

    ([Recomendations_376] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_376]))

    ([Recomendations_377] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_377]))

    ([Recomendations_378] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_378]))

    ([Recomendations_379] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_379]))

    ([Recomendations_380] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_380]))

    ([Recomendations_381] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_381]))

    ([Recomendations_382] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_382]))

    ([Recomendations_383] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_383]))

    ([Recomendations_384] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_384]))

    ([Recomendations_385] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_385]))

    ([Recomendations_386] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_386]))

    ([Recomendations_387] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_387]))

    ([Recomendations_388] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_388]))

    ([Recomendations_389] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_389]))

    ([Recomendations_390] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_390]))

    ([Recomendations_391] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_391]))

    ([Recomendations_392] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_392]))

    ([Recomendations_393] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_393]))

    ([Recomendations_394] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_394]))

    ([Recomendations_395] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_395]))

    ([Recomendations_396] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_396]))

    ([Recomendations_397] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_397]))

    ([Recomendations_398] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_398]))

    ([Recomendations_399] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_399]))

    ([Recomendations_400] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_400]))

    ([Recomendations_401] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_401]))

    ([Recomendations_402] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_402]))

    ([Recomendations_403] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_403]))

    ([Recomendations_404] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_404]))

    ([Recomendations_405] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_405]))

    ([Recomendations_406] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_406]))

    ([Recomendations_407] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_407]))

    ([Recomendations_408] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_408]))

    ([Recomendations_409] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_409]))

    ([Recomendations_410] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_410]))

    ([Recomendations_411] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_411]))

    ([Recomendations_412] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_412]))

    ([Recomendations_413] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_413]))

    ([Recomendations_414] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_414]))

    ([Recomendations_415] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_415]))

    ([Recomendations_416] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_416]))

    ([Recomendations_417] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_417]))

    ([Recomendations_418] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_418]))

    ([Recomendations_419] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_419]))

    ([Recomendations_420] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_420]))

    ([Recomendations_421] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_421]))

    ([Recomendations_422] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_422]))

    ([Recomendations_423] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_423]))

    ([Recomendations_424] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_424]))

    ([Recomendations_425] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_425]))

    ([Recomendations_426] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_426]))

    ([Recomendations_427] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_427]))

    ([Recomendations_428] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_428]))

    ([Recomendations_429] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_429]))

    ([Recomendations_430] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_430]))

    ([Recomendations_431] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_431]))

    ([Recomendations_432] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_432]))

    ([Recomendations_433] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_433]))

    ([Recomendations_434] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_434]))

    ([Recomendations_435] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_435]))

    ([Recomendations_436] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_436]))

    ([Recomendations_437] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_437]))

    ([Recomendations_438] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_438]))

    ([Recomendations_439] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_439]))

    ([Recomendations_440] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_440]))

    ([Recomendations_441] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_441]))

    ([Recomendations_442] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_442]))

    ([Recomendations_443] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_443]))

    ([Recomendations_444] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_444]))

    ([Recomendations_445] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_445]))

    ([Recomendations_446] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_446]))

    ([Recomendations_447] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_447]))

    ([Recomendations_448] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_448]))

    ([Recomendations_449] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_449]))

    ([Recomendations_450] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_450]))

    ([Recomendations_451] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_451]))

    ([Recomendations_452] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_452]))

    ([Recomendations_453] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_453]))

    ([Recomendations_454] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_454]))

    ([Recomendations_455] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_455]))

    ([Recomendations_456] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_456]))

    ([Recomendations_457] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_457]))

    ([Recomendations_458] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_458]))

    ([Recomendations_459] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_459]))

    ([Recomendations_460] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_460]))

    ([Recomendations_461] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_461]))

    ([Recomendations_462] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_462]))

    ([Recomendations_463] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_463]))

    ([Recomendations_464] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_464]))

    ([Recomendations_465] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_465]))

    ([Recomendations_466] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_466]))

    ([Recomendations_467] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_467]))

    ([Recomendations_468] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_468]))

    ([Recomendations_469] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_469]))

    ([Recomendations_470] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_470]))

    ([Recomendations_471] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_471]))

    ([Recomendations_472] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_472]))

    ([Recomendations_473] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_473]))

    ([Recomendations_474] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_474]))

    ([Recomendations_475] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_475]))

    ([Recomendations_476] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_476]))

    ([Recomendations_477] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_477]))

    ([Recomendations_478] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_478]))

    ([Recomendations_479] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_479]))

    ([Recomendations_480] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_480]))

    ([Recomendations_481] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_481]))

    ([Recomendations_482] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_482]))

    ([Recomendations_483] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_483]))

    ([Recomendations_484] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_484]))

    ([Recomendations_485] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_485]))

    ([Recomendations_486] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_486]))

    ([Recomendations_487] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_487]))

    ([Recomendations_488] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_488]))

    ([Recomendations_489] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_489]))

    ([Recomendations_490] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_490]))

    ([Recomendations_491] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_491]))

    ([Recomendations_492] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_492]))

    ([Recomendations_493] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_493]))

    ([Recomendations_494] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_494]))

    ([Recomendations_495] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_495]))

    ([Recomendations_496] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_496]))

    ([Recomendations_497] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_497]))

    ([Recomendations_498] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_498]))

    ([Recomendations_499] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_499]))

    ([Recomendations_500] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_500]))

    ([Recomendations_501] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_501]))

    ([Recomendations_502] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_502]))

    ([Recomendations_503] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_503]))

    ([Recomendations_504] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_504]))

    ([Recomendations_505] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_505]))

    ([Recomendations_506] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_506]))

    ([Recomendations_507] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_507]))

    ([Recomendations_508] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_508]))

    ([Recomendations_509] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_509]))

    ([Recomendations_510] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_510]))

    ([Recomendations_511] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_511]))

    ([Recomendations_512] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_512]))

    ([Recomendations_513] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_513]))

    ([Recomendations_514] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_514]))

    ([Recomendations_515] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_515]))

    ([Recomendations_516] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_516]))

    ([Recomendations_517] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_517]))

    ([Recomendations_518] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_518]))

    ([Recomendations_519] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_519]))

    ([Recomendations_520] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_520]))

    ([Recomendations_521] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_521]))

    ([Recomendations_522] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_522]))

    ([Recomendations_523] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_523]))

    ([Recomendations_524] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_524]))

    ([Recomendations_525] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_525]))

    ([Recomendations_526] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_526]))

    ([Recomendations_527] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_527]))

    ([Recomendations_528] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_528]))

    ([Recomendations_529] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_529]))

    ([Recomendations_530] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_530]))

    ([Recomendations_531] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_531]))

    ([Recomendations_532] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_532]))

    ([Recomendations_533] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_533]))

    ([Recomendations_534] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_534]))

    ([Recomendations_535] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_535]))

    ([Recomendations_536] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_536]))

    ([Recomendations_537] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_537]))

    ([Recomendations_538] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_538]))

    ([Recomendations_539] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_539]))

    ([Recomendations_540] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_540]))

    ([Recomendations_541] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_541]))

    ([Recomendations_542] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_542]))

    ([Recomendations_543] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_543]))

    ([Recomendations_544] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_544]))

    ([Recomendations_545] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_545]))

    ([Recomendations_546] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_546]))

    ([Recomendations_547] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_547]))

    ([Recomendations_548] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_548]))

    ([Recomendations_549] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_549]))

    ([Recomendations_550] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_550]))

    ([Recomendations_551] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_551]))

    ([Recomendations_552] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_552]))

    ([Recomendations_553] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_553]))

    ([Recomendations_554] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_554]))

    ([Recomendations_555] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_555]))

    ([Recomendations_556] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_556]))

    ([Recomendations_557] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_557]))

    ([Recomendations_558] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_558]))

    ([Recomendations_559] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_559]))

    ([Recomendations_560] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_560]))

    ([Recomendations_561] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_561]))

    ([Recomendations_562] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_562]))

    ([Recomendations_563] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_563]))

    ([Recomendations_564] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_564]))

    ([Recomendations_565] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_565]))

    ([Recomendations_566] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_566]))

    ([Recomendations_567] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_567]))

    ([Recomendations_568] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_568]))

    ([Recomendations_569] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_569]))

    ([Recomendations_570] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_570]))

    ([Recomendations_571] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_571]))

    ([Recomendations_572] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_572]))

    ([Recomendations_573] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_573]))

    ([Recomendations_574] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_574]))

    ([Recomendations_575] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_575]))

    ([Recomendations_576] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_576]))

    ([Recomendations_577] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_577]))

    ([Recomendations_578] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_578]))

    ([Recomendations_579] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_579]))

    ([Recomendations_580] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_580]))

    ([Recomendations_581] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_581]))

    ([Recomendations_582] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_582]))

    ([Recomendations_583] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_583]))

    ([Recomendations_584] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_584]))

    ([Recomendations_585] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_585]))

    ([Recomendations_586] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_586]))

    ([Recomendations_587] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_587]))

    ([Recomendations_588] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_588]))

    ([Recomendations_589] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_589]))

    ([Recomendations_590] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_590]))

    ([Recomendations_591] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_591]))

    ([Recomendations_592] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_592]))

    ([Recomendations_593] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_593]))

    ([Recomendations_594] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_594]))

    ([Recomendations_595] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_595]))

    ([Recomendations_596] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_596]))

    ([Recomendations_597] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_597]))

    ([Recomendations_598] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_598]))

    ([Recomendations_599] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_599]))

    ([Recomendations_600] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_600]))

    ([Recomendations_601] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_601]))

    ([Recomendations_602] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_602]))

    ([Recomendations_603] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_603]))

    ([Recomendations_604] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_604]))

    ([Recomendations_605] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_605]))

    ([Recomendations_606] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_606]))

    ([Recomendations_607] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_607]))

    ([Recomendations_608] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_608]))

    ([Recomendations_609] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_609]))

    ([Recomendations_610] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_610]))

    ([Recomendations_611] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_611]))

    ([Recomendations_612] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_612]))

    ([Recomendations_613] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_613]))

    ([Recomendations_614] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_614]))

    ([Recomendations_615] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_615]))

    ([Recomendations_616] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_616]))

    ([Recomendations_617] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_617]))

    ([Recomendations_618] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_618]))

    ([Recomendations_619] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_619]))

    ([Recomendations_620] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_620]))

    ([Recomendations_621] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_621]))

    ([Recomendations_622] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_622]))

    ([Recomendations_623] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_623]))

    ([Recomendations_624] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_624]))

    ([Recomendations_625] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_625]))

    ([Recomendations_626] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_626]))

    ([Recomendations_627] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_627]))

    ([Recomendations_628] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_628]))

    ([Recomendations_629] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_629]))

    ([Recomendations_630] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_630]))

    ([Recomendations_631] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_631]))

    ([Recomendations_632] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_632]))

    ([Recomendations_633] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_633]))

    ([Recomendations_634] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_634]))

    ([Recomendations_635] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_635]))

    ([Recomendations_636] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_636]))

    ([Recomendations_637] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_637]))

    ([Recomendations_638] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_638]))

    ([Recomendations_639] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_639]))

    ([Recomendations_640] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_640]))

    ([Recomendations_641] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_641]))

    ([Recomendations_642] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_642]))

    ([Recomendations_643] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_643]))

    ([Recomendations_644] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_644]))

    ([Recomendations_645] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_645]))

    ([Recomendations_646] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_646]))

    ([Recomendations_647] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_647]))

    ([Recomendations_648] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_648]))

    ([Recomendations_649] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_649]))

    ([Recomendations_650] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_650]))

    ([Recomendations_651] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_651]))

    ([Recomendations_652] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_652]))

    ([Recomendations_653] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_653]))

    ([Recomendations_654] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_654]))

    ([Recomendations_655] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_655]))

    ([Recomendations_656] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_656]))

    ([Recomendations_657] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_657]))

    ([Recomendations_658] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_658]))

    ([Recomendations_659] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_659]))

    ([Recomendations_660] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_660]))

    ([Recomendations_661] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_661]))

    ([Recomendations_662] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_662]))

    ([Recomendations_663] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_663]))

    ([Recomendations_664] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_664]))

    ([Recomendations_665] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_665]))

    ([Recomendations_666] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_666]))

    ([Recomendations_667] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_667]))

    ([Recomendations_668] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_668]))

    ([Recomendations_669] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_669]))

    ([Recomendations_670] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_670]))

    ([Recomendations_671] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_671]))

    ([Recomendations_672] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_672]))

    ([Recomendations_673] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_673]))

    ([Recomendations_674] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_674]))

    ([Recomendations_675] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_675]))

    ([Recomendations_676] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_676]))

    ([Recomendations_677] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_677]))

    ([Recomendations_678] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_678]))

    ([Recomendations_679] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_679]))

    ([Recomendations_680] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_680]))

    ([Recomendations_681] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_681]))

    ([Recomendations_682] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_682]))

    ([Recomendations_683] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_683]))

    ([Recomendations_684] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_684]))

    ([Recomendations_685] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_685]))

    ([Recomendations_686] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_686]))

    ([Recomendations_687] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_687]))

    ([Recomendations_688] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_688]))

    ([Recomendations_689] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_689]))

    ([Recomendations_690] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_690]))

    ([Recomendations_691] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_691]))

    ([Recomendations_692] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_692]))

    ([Recomendations_693] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_693]))

    ([Recomendations_694] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_694]))

    ([Recomendations_695] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_695]))

    ([Recomendations_696] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_696]))

    ([Recomendations_697] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_697]))

    ([Recomendations_698] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_698]))

    ([Recomendations_699] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_699]))

    ([Recomendations_700] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_700]))

    ([Recomendations_701] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_701]))

    ([Recomendations_702] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_702]))

    ([Recomendations_703] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_703]))

    ([Recomendations_704] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_704]))

    ([Recomendations_705] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_705]))

    ([Recomendations_706] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_706]))

    ([Recomendations_707] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_707]))

    ([Recomendations_708] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_708]))

    ([Recomendations_709] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_709]))

    ([Recomendations_710] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_710]))

    ([Recomendations_711] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_711]))

    ([Recomendations_712] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_712]))

    ([Recomendations_713] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_713]))

    ([Recomendations_714] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_714]))

    ([Recomendations_715] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_715]))

    ([Recomendations_716] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_716]))

    ([Recomendations_717] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_717]))

    ([Recomendations_718] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_718]))

    ([Recomendations_719] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_719]))

    ([Recomendations_720] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_720]))

    ([Recomendations_721] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_721]))

    ([Recomendations_722] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_722]))

    ([Recomendations_723] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_723]))

    ([Recomendations_724] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_724]))

    ([Recomendations_725] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_725]))

    ([Recomendations_726] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_726]))

    ([Recomendations_727] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_727]))

    ([Recomendations_728] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_728]))

    ([Recomendations_729] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_729]))

    ([Recomendations_730] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_730]))

    ([Recomendations_731] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_731]))

    ([Recomendations_732] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_732]))

    ([Recomendations_733] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_733]))

    ([Recomendations_734] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_734]))

    ([Recomendations_735] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_735]))

    ([Recomendations_736] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_736]))

    ([Recomendations_737] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_737]))

    ([Recomendations_738] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_738]))

    ([Recomendations_739] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_739]))

    ([Recomendations_740] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_740]))

    ([Recomendations_741] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_741]))

    ([Recomendations_742] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_742]))

    ([Recomendations_743] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_743]))

    ([Recomendations_744] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_744]))

    ([Recomendations_745] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_745]))

    ([Recomendations_746] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_746]))

    ([Recomendations_747] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_747]))

    ([Recomendations_748] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_748]))

    ([Recomendations_749] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_749]))

    ([Recomendations_750] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_750]))

    ([Recomendations_751] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_751]))

    ([Recomendations_752] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_752]))

    ([Recomendations_753] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_753]))

    ([Recomendations_754] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_754]))

    ([Recomendations_755] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_755]))

    ([Recomendations_756] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_756]))

    ([Recomendations_757] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_757]))

    ([Recomendations_758] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_758]))

    ([Recomendations_759] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_759]))

    ([Recomendations_760] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_760]))

    ([Recomendations_761] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_761]))

    ([Recomendations_762] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_762]))

    ([Recomendations_763] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_763]))

    ([Recomendations_764] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_764]))

    ([Recomendations_765] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_765]))

    ([Recomendations_766] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_766]))

    ([Recomendations_767] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_767]))

    ([Recomendations_768] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_768]))

    ([Recomendations_769] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_769]))

    ([Recomendations_770] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_770]))

    ([Recomendations_771] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_771]))

    ([Recomendations_772] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_772]))

    ([Recomendations_773] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_773]))

    ([Recomendations_774] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_774]))

    ([Recomendations_775] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_775]))

    ([Recomendations_776] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_776]))

    ([Recomendations_777] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_777]))

    ([Recomendations_778] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_778]))

    ([Recomendations_779] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_779]))

    ([Recomendations_780] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_780]))

    ([Recomendations_781] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_781]))

    ([Recomendations_782] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_782]))

    ([Recomendations_783] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_783]))

    ([Recomendations_784] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_784]))

    ([Recomendations_785] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_785]))

    ([Recomendations_786] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_786]))

    ([Recomendations_787] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_787]))

    ([Recomendations_788] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_788]))

    ([Recomendations_789] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_789]))

    ([Recomendations_790] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_790]))

    ([Recomendations_791] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_791]))

    ([Recomendations_792] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_792]))

    ([Recomendations_793] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_793]))

    ([Recomendations_794] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_794]))

    ([Recomendations_795] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_795]))

    ([Recomendations_796] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_796]))

    ([Recomendations_797] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_797]))

    ([Recomendations_798] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_798]))

    ([Recomendations_799] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_799]))

    ([Recomendations_800] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_800]))

    ([Recomendations_801] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_801]))

    ([Recomendations_802] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_802]))

    ([Recomendations_803] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_803]))

    ([Recomendations_804] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_804]))

    ([Recomendations_805] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_805]))

    ([Recomendations_806] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_806]))

    ([Recomendations_807] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_807]))

    ([Recomendations_808] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_808]))

    ([Recomendations_809] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_809]))

    ([Recomendations_810] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_810]))

    ([Recomendations_811] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_811]))

    ([Recomendations_812] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_812]))

    ([Recomendations_813] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_813]))

    ([Recomendations_814] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_814]))

    ([Recomendations_815] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_815]))

    ([Recomendations_816] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_816]))

    ([Recomendations_817] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_817]))

    ([Recomendations_818] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_818]))

    ([Recomendations_819] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_819]))

    ([Recomendations_820] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_820]))

    ([Recomendations_821] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_821]))

    ([Recomendations_822] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_822]))

    ([Recomendations_823] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_823]))

    ([Recomendations_824] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_824]))

    ([Recomendations_825] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_825]))

    ([Recomendations_826] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_826]))

    ([Recomendations_827] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_827]))

    ([Recomendations_828] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_828]))

    ([Recomendations_829] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_829]))

    ([Recomendations_830] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_830]))

    ([Recomendations_831] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_831]))

    ([Recomendations_832] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_832]))

    ([Recomendations_833] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_833]))

    ([Recomendations_834] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_834]))

    ([Recomendations_835] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_835]))

    ([Recomendations_836] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_836]))

    ([Recomendations_837] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_837]))

    ([Recomendations_838] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_838]))

    ([Recomendations_839] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_839]))

    ([Recomendations_840] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_840]))

    ([Recomendations_841] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_841]))

    ([Recomendations_842] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_842]))

    ([Recomendations_843] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_843]))

    ([Recomendations_844] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_844]))

    ([Recomendations_845] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_845]))

    ([Recomendations_846] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_846]))

    ([Recomendations_847] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_847]))

    ([Recomendations_848] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_848]))

    ([Recomendations_849] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_849]))

    ([Recomendations_850] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_850]))

    ([Recomendations_851] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_851]))

    ([Recomendations_852] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_852]))

    ([Recomendations_853] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_853]))

    ([Recomendations_854] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_854]))

    ([Recomendations_855] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_855]))

    ([Recomendations_856] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_856]))

    ([Recomendations_857] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_857]))

    ([Recomendations_858] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_858]))

    ([Recomendations_859] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_859]))

    ([Recomendations_860] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_860]))

    ([Recomendations_861] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_861]))

    ([Recomendations_862] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_862]))

    ([Recomendations_863] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_863]))

    ([Recomendations_864] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_864]))

    ([Recomendations_865] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_865]))

    ([Recomendations_866] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_866]))

    ([Recomendations_867] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_867]))

    ([Recomendations_868] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_868]))

    ([Recomendations_869] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_869]))

    ([Recomendations_870] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_870]))

    ([Recomendations_871] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_871]))

    ([Recomendations_872] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_872]))

    ([Recomendations_873] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_873]))

    ([Recomendations_874] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_874]))

    ([Recomendations_875] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_875]))

    ([Recomendations_876] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_876]))

    ([Recomendations_877] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_877]))

    ([Recomendations_878] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_878]))

    ([Recomendations_879] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_879]))

    ([Recomendations_880] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_880]))

    ([Recomendations_881] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_881]))

    ([Recomendations_882] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_882]))

    ([Recomendations_883] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_883]))

    ([Recomendations_884] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_884]))

    ([Recomendations_885] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_885]))

    ([Recomendations_886] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_886]))

    ([Recomendations_887] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_887]))

    ([Recomendations_888] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_888]))

    ([Recomendations_889] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_889]))

    ([Recomendations_890] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_890]))

    ([Recomendations_891] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_891]))

    ([Recomendations_892] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_892]))

    ([Recomendations_893] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_893]))

    ([Recomendations_894] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_894]))

    ([Recomendations_895] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_895]))

    ([Recomendations_896] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_896]))

    ([Recomendations_897] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_897]))

    ([Recomendations_898] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_898]))

    ([Recomendations_899] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_899]))

    ([Recomendations_900] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_900]))

    ([Recomendations_901] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_901]))

    ([Recomendations_902] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_902]))

    ([Recomendations_903] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_903]))

    ([Recomendations_904] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_904]))

    ([Recomendations_905] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_905]))

    ([Recomendations_906] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_906]))

    ([Recomendations_907] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_907]))

    ([Recomendations_908] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_908]))

    ([Recomendations_909] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_909]))

    ([Recomendations_910] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_910]))

    ([Recomendations_911] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_911]))

    ([Recomendations_912] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_912]))

    ([Recomendations_913] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_913]))

    ([Recomendations_914] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_914]))

    ([Recomendations_915] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_915]))

    ([Recomendations_916] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_916]))

    ([Recomendations_917] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_917]))

    ([Recomendations_918] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_918]))

    ([Recomendations_919] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_919]))

    ([Recomendations_920] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_920]))

    ([Recomendations_921] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_921]))

    ([Recomendations_922] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_922]))

    ([Recomendations_923] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_923]))

    ([Recomendations_924] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_924]))

    ([Recomendations_925] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_925]))

    ([Recomendations_926] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_926]))

    ([Recomendations_927] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_927]))

    ([Recomendations_928] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_928]))

    ([Recomendations_929] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_929]))

    ([Recomendations_930] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_930]))

    ([Recomendations_931] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_931]))

    ([Recomendations_932] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_932]))

    ([Recomendations_933] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_933]))

    ([Recomendations_934] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_934]))

    ([Recomendations_935] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_935]))

    ([Recomendations_936] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_936]))

    ([Recomendations_937] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_937]))

    ([Recomendations_938] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_938]))

    ([Recomendations_939] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_939]))

    ([Recomendations_940] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_940]))

    ([Recomendations_941] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_941]))

    ([Recomendations_942] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_942]))

    ([Recomendations_943] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_943]))

    ([Recomendations_944] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_944]))

    ([Recomendations_945] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_945]))

    ([Recomendations_946] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_946]))

    ([Recomendations_947] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_947]))

    ([Recomendations_948] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_948]))

    ([Recomendations_949] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_949]))

    ([Recomendations_950] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_950]))

    ([Recomendations_951] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_951]))

    ([Recomendations_952] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_952]))

    ([Recomendations_953] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_953]))

    ([Recomendations_954] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_954]))

    ([Recomendations_955] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_955]))

    ([Recomendations_956] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_956]))

    ([Recomendations_957] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_957]))

    ([Recomendations_958] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_958]))

    ([Recomendations_959] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_959]))

    ([Recomendations_960] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_960]))

    ([Recomendations_961] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_961]))

    ([Recomendations_962] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_962]))

    ([Recomendations_963] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_963]))

    ([Recomendations_964] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_964]))

    ([Recomendations_965] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_965]))

    ([Recomendations_966] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_966]))

    ([Recomendations_967] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_967]))

    ([Recomendations_968] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_968]))

    ([Recomendations_969] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_969]))

    ([Recomendations_970] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_970]))

    ([Recomendations_971] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_971]))

    ([Recomendations_972] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_972]))

    ([Recomendations_973] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_973]))

    ([Recomendations_974] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_974]))

    ([Recomendations_975] of Recomendacion
     (gradoRecomendacion 0)
     (libro [Book_975]))

    ([Profile_0] of Perfil
     (generosRecomendados
         [Genres_9])
     (psicologico A)
     (rangoEdad Infantil))

    ([Profile_1] of Perfil
     (generosRecomendados
         [Genres_27]
         [Genres_9]
         [Genres_3]
         [Genres_16]
         [Genres_14])
     (psicologico A)
     (rangoEdad Juvenil))

    ([Profile_2] of Perfil
     (generosRecomendados
         [Genres_32]
         [Genres_5]
         [Genres_18]
         [Genres_10]
         [Genres_46]
         [Genres_16]
         [Genres_24])
     (psicologico A)
     (rangoEdad Adulto))

    ([Profile_3] of Perfil
     (generosRecomendados
         [Genres_7]
         [Genres_4]
         [Genres_16]
         [Genres_11]
         [Genres_5]
         [Genres_38])
     (psicologico B)
     (rangoEdad Infantil))

    ([Profile_4] of Perfil
     (generosRecomendados
         [Genres_22]
         [Genres_18]
         [Genres_23]
         [Genres_27]
         [Genres_42])
     (psicologico B)
     (rangoEdad Juvenil))

    ([Profile_5] of Perfil
     (generosRecomendados
         [Genres_6]
         [Genres_26]
         [Genres_12]
         [Genres_8]
         [Genres_33]
         [Genres_18]
         [Genres_19]
         [Genres_37]
         [Genres_31])
     (psicologico B)
     (rangoEdad Adulto))

    ([Profile_6] of Perfil
     (generosRecomendados
         [Genres_15]
         [Genres_36]
         [Genres_14]
         [Genres_3]
         [Genres_17]
         [Genres_12]
         [Genres_39])
     (psicologico C)
     (rangoEdad Infantil))

    ([Profile_7] of Perfil
     (generosRecomendados
         [Genres_27]
         [Genres_30]
         [Genres_29]
         [Genres_3]
         [Genres_45]
         [Genres_25]
         [Genres_32])
     (psicologico C)
     (rangoEdad Juvenil))

    ([Profile_8] of Perfil
     (generosRecomendados
         [Genres_38]
         [Genres_29])
     (psicologico C)
     (rangoEdad Adulto))

    ([Profile_9] of Perfil
     (generosRecomendados
         [Genres_44]
         [Genres_22]
         [Genres_18]
         [Genres_43]
         [Genres_25]
         [Genres_5]
         [Genres_14]
         [Genres_41])
     (psicologico D)
     (rangoEdad Infantil))

    ([Profile_10] of Perfil
     (generosRecomendados
         [Genres_23]
         [Genres_34]
         [Genres_30]
         [Genres_16]
         [Genres_42]
         [Genres_18]
         [Genres_7])
     (psicologico D)
     (rangoEdad Juvenil))

    ([Profile_11] of Perfil
     (generosRecomendados
         [Genres_25]
         [Genres_37])
     (psicologico D)
     (rangoEdad Adulto))
)

;;;-----------------------------------------------------------------------------
;;;--------------------------------TEMPLATES------------------------------------
;;;-----------------------------------------------------------------------------

(deftemplate Lector
    (slot edad (type INTEGER) (default -1))
    (slot perfilPaciente (type INSTANCE) (allowed-classes Perfil))
)

(deftemplate autorFavorito
    (slot autor (type INSTANCE) (allowed-classes Autor))
)
(deftemplate autorNegativo
    (slot autor (type INSTANCE) (allowed-classes Autor))
)

(deftemplate generoFavorito
    (slot genero (type INSTANCE) (allowed-classes Genero))
)
(deftemplate generoNegativo
    (slot genero (type INSTANCE) (allowed-classes Genero))
)

(deftemplate libroFavorito
    (slot libro (type INSTANCE) (allowed-classes Libro))
)
(deftemplate libroNegativo
    (slot libro (type INSTANCE) (allowed-classes Libro))
)

(deftemplate solucionFinal
    (slot posicion (type INTEGER))
    (slot recomendacion (type INSTANCE) (allowed-classes Recomendacion))
)

;;;-----------------------------------------------------------------------------
;;;--------------------------------FUNCIONES------------------------------------
;;;-----------------------------------------------------------------------------

;;; Funcion para hacer una pregunta general
(deffunction pregunta-general (?pregunta)
	(format t "%s" ?pregunta)
	(bind ?respuesta (read))
	?respuesta
)

;;; Funcion para hacer una pregunta con respuesta en un rango dado
(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi)
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
		(format t "�%s? [%d, %d] " ?pregunta ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	?respuesta
)

;;; Funcion para hacer una pregunta con un conjunto definido de valores de repuesta
(deffunction pregunta-lista (?pregunta $?valores_posibles)
	(format t "%s" ?pregunta)
	(bind ?resposta (readline))
	(bind ?res (str-explode ?resposta))
	?res
)

(deffunction rango-edad (?edad)
    (if (< ?edad 12)
        then (bind ?rest Infantil)
        else ( if(< ?edad 26)
            then (bind ?rest Juvenil)
            else (bind ?rest Adulto)
        )
    )
    ?rest
)

(deffunction sumaScoreLibros (?books ?score)
    (foreach ?book ?books
        (bind ?ranking
            (nth$ 1
                (find-instance
                    ((?inst Recomendacion))
                    (eq ?book ?inst:libro)
                )
            )
        )
        (switch ?score
            (case 100 then (bind ?just "Es un libro de género recomendado a gente de tu perfil."))
            (case 50 then (bind ?just "Es un libro de género similar al recomendado a gente de tu perfil."))
            (case 60 then (bind ?just "Es un libro escrito por un de tus autores favoritos."))
            (case 70 then (bind ?just "Es un libro de un género favorito tuyo."))
            (case 20 then (bind ?just "Es un libro de un género similar a tus favoritos."))
            (case 10 then (bind ?just "Es un libro del mismo género que el de un libro favorito tuyo."))
            (case 2 then (bind ?just "Es un libro de un género similar al de un libro de tus favoritos."))
            (case 15 then (bind ?just "Es un libro de un autor similar a uno de tus autores favoritos."))
        )
        (send ?ranking put-gradoRecomendacion (+ (send ?ranking get-gradoRecomendacion) ?score))
        (bind ?jr (send ?ranking get-justificaciones))
        (if (and (> ?score 0) (not (member$ ?just ?jr)))
            then
                 (slot-insert$ ?ranking justificaciones 1 ?just)
        )
    )
)

(deffunction propagar-generos (?listaGeneros ?scoreGenero ?scoreGenerosSimilares)
    (foreach ?g ?listaGeneros
        (bind ?libros
            (find-all-instances ((?l Libro))
                (member$ ?g ?l:generos)
            )
        )
        (sumaScoreLibros ?libros ?scoreGenero)
        (foreach ?gs (send ?g get-generosSimilares)
            (bind ?librosSimilares
                (find-all-instances ((?ls Libro))
                    (member$ ?gs (send ?ls get-generos))
                )
            )
            (sumaScoreLibros ?librosSimilares ?scoreGenerosSimilares)
        )
    )
)

(deffunction propagar-autores (?autor ?scoreAutor ?scoreAutoresSimilares)
    (bind ?libros
        (find-all-instances ((?l Libro))
            (eq ?autor ?l:autor)
        )
    )
    (sumaScoreLibros ?libros ?scoreAutor)
    (foreach ?a (send ?autor get-autoresSimilares)
        (bind ?librosSimilares
            (find-all-instances ((?ls Libro))
                (eq ?a ?ls:autor)
            )
        )
        (sumaScoreLibros ?librosSimilares ?scoreAutoresSimilares)
    )
)

(deffunction criteriaRecomByMaxScore(?r1 ?r2)
    (< (send ?r1 get-gradoRecomendacion) (send ?r2 get-gradoRecomendacion))
)

;;;-----------------------------------------------------------------------------
;;;---------------------------------MENSAJES------------------------------------
;;;-----------------------------------------------------------------------------

(defmessage-handler Autor print primary ()
    (printout t "Autor: " ?self:nombreAutor crlf)
)

(defmessage-handler Libro print primary ()
    (printout t "Libro: " ?self:titulo crlf)
    (send ?self:autor print)
    (printout t "Encuentra más información aquí: " ?self:url crlf)
)

(defmessage-handler Recomendacion print primary ()
    (send ?self:libro print)
    (printout t "Puntuación: " ?self:gradoRecomendacion crlf)
    (printout t "Por que te recomendamos este libro:")
    (bind $?just ?self:justificaciones)
	(if (eq (length$ ?just) 0) then (printout t "No hay preferencias dadas por ti" crlf)
		else (printout t crlf)
			(loop-for-count (?i 1 (length$ ?just)) do
				(printout t " --> "(nth$ ?i ?just) crlf)
			)
	)
	(printout t crlf)
	(printout t "---------------------------------------------------" crlf)
)


;;;-----------------------------------------------------------------------------
;;;----------------------------------REGLAS-------------------------------------
;;;-----------------------------------------------------------------------------

(defmodule MAIN
    (export ?ALL)
)

(defrule initialRule "regla inicial"
	(initial-fact)
	=>
	(printout t crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "------ Sistema de Recomendacion de Libros de la FIB -----" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t crlf)
    (assert (Lector))
	(focus preguntas)
)

(defmodule preguntas
    (import MAIN ?ALL)
    (export ?ALL)
)

(defrule preguntar-edad "pregunta la edad"
    ?l <- (Lector (edad ?e))
    (test (not (and (eq (type ?e) INTEGER) (> ?e 0))))
    =>
    (bind ?edad (pregunta-general "Cuantos años tienes? "))
    (retract ?l)
    (assert (Lector (edad ?edad)))
    (if (not (and (eq (type ?edad) INTEGER) (> ?edad 0)))
        then
        (printout t "Edad incorrecta. Vuelve a intentar con un entero positivo." crlf)
    )
)

(defrule preguntar-perfil "pregunta perfil psicologico"
    ?l <- (Lector (edad ?e))
    (test (and (eq (type ?e) INTEGER) (> ?e 0)))
    (not (perfilDefinido))
    =>
    (printout t "Perfiles psicológicos: " crlf)
    (printout t "A" crlf)
    (printout t "B" crlf)
    (printout t "C" crlf)
    (printout t "D" crlf)
    (bind ?psicologico (pregunta-general "Indica tu perfil psicológico: "))
    (if (member$ (sym-cat ?psicologico) (create$ A B C D))
        then
            (bind ?rango (rango-edad ?e))
            (bind ?p (find-instance ((?inst Perfil))
             (and (eq ?inst:psicologico (sym-cat ?psicologico)) (eq ?inst:rangoEdad ?rango))))
            (modify ?l (perfilPaciente (nth$ 1 ?p)))
            (assert (perfilDefinido))
        else
            (printout t "Perfil psicológico no válido." crlf)
            (retract ?l)
            (assert (Lector (edad ?e)))
    )
)

(defrule pregunta-autor-favorito "pregunta al usuario autores favoritos"
    (not (autoresFavoritosDefinidos))
    (perfilDefinido)
    =>
    (bind ?autorIds (pregunta-lista "Si tienes autores favoritos indica sus id separados por espacios: "))
    (foreach ?a ?autorIds
        (bind ?autor (nth$ 1 (find-instance ((?inst Autor)) (eq (str-cat ?a) ?inst:idAutor))))
        (if (neq ?autor nil)
            then (assert (autorNegativo (autor ?autor)))
        )
    )
    (assert (autoresFavoritosDefinidos))
)

(defrule pregunta-autor-negativo "pregunta al usuario autores negativos"
    (not (autoresNegativosDefinidos))
    (perfilDefinido)
    =>
    (bind ?autorIds (pregunta-lista "Si tienes autores que no te gustan indica sus id separados por espacios: "))
    (foreach ?a ?autorIds
        (bind ?autor (nth$ 1 (find-instance ((?inst Autor)) (eq (str-cat ?a) ?inst:idAutor))))
        (if (neq ?autor nil)
            then (assert (autorNegativo (autor ?autor)))
        )
    )
    (assert (autoresNegativosDefinidos))
)

(defrule pregunta-genero-favorito "pregunta al usuario generos favoritos"
    (not (generosFavoritosDefinidos))
    (perfilDefinido)
    =>
    (bind ?generoIds (pregunta-lista "Si tienes generos favoritos indica sus id separados por espacios: "))
    (foreach ?g ?generoIds
        (bind ?genero (nth$ 1 (find-instance ((?inst Genero)) (eq (str-cat ?g) ?inst:idGenero))))
        (if (neq ?genero nil)
            then (assert (generoNegativo (genero ?genero)))
        )
    )
    (assert (generosFavoritosDefinidos))
)

(defrule pregunta-genero-negativo "pregunta al usuario generos negativos"
    (not (generosNegativosDefinidos))
    (perfilDefinido)
    =>
    (bind ?generoIds (pregunta-lista "Si tienes generos que no te gustan indica sus id separados por espacios: "))
    (foreach ?g ?generoIds
        (bind ?genero (nth$ 1 (find-instance ((?inst Genero)) (eq (str-cat ?g) ?inst:idGenero))))
        (if (neq ?genero nil)
            then (assert (generoNegativo (genero ?genero)))
        )
    )
    (assert (generosNegativosDefinidos))
)

(defrule pregunta-libro-favorito "pregunta al usuario libros favoritos"
    (not (librosFavoritosDefinidos))
    (perfilDefinido)
    =>
    (bind ?libroIds (pregunta-lista "Si tienes libros favoritos indica sus id separados por espacios: "))
    (foreach ?l ?libroIds
        (bind ?libro (nth$ 1 (find-instance ((?inst Libro)) (eq (str-cat ?l) ?inst:idLibro))))
        (if (neq ?libro nil)
            then (assert (libroFavorito (libro ?libro)))
        )
    )
    (assert (librosFavoritosDefinidos))
)

(defrule pregunta-libro-negativo "pregunta al usuario libros negativos"
    (not (librosNegativosDefinidos))
    (perfilDefinido)
    =>
    (bind ?libroIds (pregunta-lista "Si tienes libros que no te gustan indica sus id separados por espacios: "))
    (foreach ?l ?libroIds
        (bind ?libro (nth$ 1 (find-instance ((?inst Libro)) (eq (str-cat ?l) ?inst:idLibro))))
        (if (neq ?libro nil)
            then (assert (libroFavorito (libro ?libro)))
        )
    )
    (assert (librosNegativosDefinidos))
)

(defrule preguntasAcabadas
    (perfilDefinido)
    (autoresFavoritosDefinidos)
    (autoresNegativosDefinidos)
    (generosFavoritosDefinidos)
    (generosNegativosDefinidos)
    (librosFavoritosDefinidos)
    (librosNegativosDefinidos)
    =>
    (focus inferir_datos)
)

(defmodule inferir_datos
    (import MAIN ?ALL)
    (import preguntas ?ALL)
    (export ?ALL)
)

(defrule propaga-genero-perfil
    (Lector (perfilPaciente ?p))
    =>
    (propagar-generos (send ?p get-generosRecomendados) 100 50)
    (assert (perfilPropagado))
)

(defrule propaga-autores-favoritos
    ?a <- (autorFavorito (autor ?af))
    =>
    (propagar-autores ?af 60 15)
    (retract ?a)
)

(defrule propaga-autores-negativos
    ?a <- (autorNegativo (autor ?an))
    =>
    (propagar-autores ?an -1000 -12)
    (retract ?a)
)

(defrule propaga-generos-favoritos
    ?g <- (generoFavorito (genero ?gf))
    =>
    (propagar-generos (create$ ?gf) 70 20)
    (retract ?g)
)

(defrule propaga-generos-negativos
    ?g <- (generoNegativo (genero ?gn))
    =>
    (propagar-generos (create$ ?gn) -1000 -20)
    (retract ?g)
)

(defrule propaga-libros-favoritos
    ?l <- (libroFavorito (libro ?lf))
    =>
    (bind ?ranking
        (nth$ 1
            (find-instance
                ((?inst Recomendacion))
                (eq ?lf ?inst:libro)
            )
        )
    )
    (send ?ranking put-gradoRecomendacion (- (send ?ranking get-gradoRecomendacion) 1000))
    (propagar-generos (send ?lf get-generos) 10 2)
    (retract ?l)
)

(defrule propaga-libros-negativos
    ?l <- (libroNegativo (libro ?ln))
    =>
    (bind ?ranking
        (nth$ 1
            (find-instance
                ((?inst Recomendacion))
                (eq ?ln ?inst:libro)
            )
        )
    )
    (send ?ranking put-gradoRecomendacion (- (send ?ranking get-gradoRecomendacion) 1000))
    (propagar-generos (send ?ln get-generos) -10 -2)
    (retract ?l)
)

(defrule seleccion-resultados
    (perfilPropagado)
    (not (autorFavorito (autor ?a)))
    (not (autorNegativo (autor ?a)))
    (not (generoFavorito (genero ?g)))
    (not (generoNegativo (genero ?g)))
    (not (libroFavorito (libro ?l)))
    (not (libroNegativo (libro ?l)))
    =>
    (bind ?allRecomendaciones (find-all-instances ((?r Recomendacion)) TRUE))
    (bind ?sortedRecoms (sort criteriaRecomByMaxScore ?allRecomendaciones))
    (printout t "" crlf)
    (printout t "===================================================" crlf)
    (printout t "RECOMENDACIONES" crlf)
    (printout t "" crlf)
    (loop-for-count (?i 1 3) do
        (send (nth$ ?i ?sortedRecoms) print)
    )
    (printout t "" crlf)
)
