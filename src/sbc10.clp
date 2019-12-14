; Sat Dec 14 16:57:27 CET 2019
;
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
     (is-a USER)
     (role abstract)
     (single-slot nombreGenero
          (type STRING)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (multislot generosSimilares
          (type INSTANCE)
;+        (allowed-classes Genero)
          (create-accessor read-write))
     (single-slot idLibro
          (type STRING)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (multislot justificacionesSistema
          (type STRING)
          (create-accessor read-write))
     (single-slot nPag
          (type INTEGER)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (single-slot titulo
          (type STRING)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (single-slot sexo
          (type SYMBOL)
          (allowed-values male female)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (single-slot gradoRecomendacion
          (type INTEGER)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (multislot justificacionesUsuario
          (type STRING)
          (create-accessor read-write))
     (single-slot psicologico
          (type SYMBOL)
          (allowed-values A B C D)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (single-slot terminal
          (type SYMBOL)
          (allowed-values FALSE TRUE)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (single-slot autor
          (type INSTANCE)
;+        (allowed-classes Autor)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (single-slot curable
          (type SYMBOL)
          (allowed-values FALSE TRUE)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (single-slot url
          (type STRING)
;+        (cardinality 0 1)
          (create-accessor read-write))
     (single-slot libro
          (type INSTANCE)
;+        (allowed-classes Libro)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (single-slot nombreAutor
          (type STRING)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (single-slot idAutor
          (type STRING)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (multislot generos
          (type INSTANCE)
;+        (allowed-classes Genero)
          (create-accessor read-write))
     (single-slot rangoEdad
          (type SYMBOL)
          (allowed-values Infantil Juvenil Adulto)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (single-slot publicacion
          (type INTEGER)
;+        (cardinality 1 1)
          (create-accessor read-write)))

(defclass Libro
     (is-a USER)
     (role concrete)
     (single-slot nPag
          (type INTEGER)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (single-slot url
          (type STRING)
;+        (cardinality 0 1)
          (create-accessor read-write))
     (multislot generos
          (type INSTANCE)
;+        (allowed-classes Genero)
          (create-accessor read-write))
     (single-slot idLibro
          (type STRING)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (single-slot autor
          (type INSTANCE)
;+        (allowed-classes Autor)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (single-slot titulo
          (type STRING)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (single-slot publicacion
          (type INTEGER)
;+        (cardinality 1 1)
          (create-accessor read-write)))

(defclass Genero
     (is-a USER)
     (role concrete)
     (single-slot nombreGenero
          (type STRING)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (multislot generosSimilares
          (type INSTANCE)
;+        (allowed-classes Genero)
          (create-accessor read-write)))

(defclass Autor
     (is-a USER)
     (role concrete)
     (single-slot sexo
          (type SYMBOL)
          (allowed-values male female)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (single-slot nombreAutor
          (type STRING)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (single-slot idAutor
          (type STRING)
;+        (cardinality 1 1)
          (create-accessor read-write)))

(defclass Perfil
     (is-a USER)
     (role concrete)
     (single-slot rangoEdad
          (type SYMBOL)
          (allowed-values Infantil Juvenil Adulto)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (single-slot psicologico
          (type SYMBOL)
          (allowed-values A B C D)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (single-slot terminal
          (type SYMBOL)
          (allowed-values FALSE TRUE)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (single-slot curable
          (type SYMBOL)
          (allowed-values FALSE TRUE)
;+        (cardinality 1 1)
          (create-accessor read-write)))

(defclass Recomendacion
     (is-a USER)
     (role concrete)
     (single-slot libro
          (type INSTANCE)
;+        (allowed-classes Libro)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (multislot justificacionesSistema
          (type STRING)
          (create-accessor read-write))
     (single-slot gradoRecomendacion
          (type INTEGER)
;+        (cardinality 1 1)
          (create-accessor read-write))
     (multislot justificacionesUsuario
          (type STRING)
          (create-accessor read-write)))

(definstances Instancies
     ([Book_0] of Libro
      (autor [Author_0])
      (generos
          [Genres_0]
          [Genres_1])
      (idLibro "2429135")
      (nPag 465)
      (publicacion 2005)
      (url "https://www.goodreads.com/book/show/2429135.The_Girl_with_the_Dragon_Tattoo")
      (titulo "The Girl with the Dragon Tattoo"))

     ([Book_1] of Libro
      (autor [Author_1])
      (generos
          [Genres_0]
          [Genres_2])
      (idLibro "382975")
      (nPag 438)
      (publicacion 1970)
      (url "https://www.goodreads.com/book/show/382975.The_Obscene_Bird_of_Night")
      (titulo "The Obscene Bird of Night"))

     ([Book_2] of Libro
      (autor [Author_2])
      (generos
          [Genres_3]
          [Genres_4])
      (idLibro "7260188")
      (nPag 392)
      (publicacion 2010)
      (url "https://www.goodreads.com/book/show/7260188-mockingjay")
      (titulo "Mockingjay"))

     ([Book_3] of Libro
      (autor [Author_3])
      (generos
          [Genres_0]
          [Genres_5])
      (idLibro "5130")
      (nPag 354)
      (publicacion 1962)
      (url "https://www.goodreads.com/book/show/5130.Island")
      (titulo "Island"))

     ([Book_4] of Libro
      (autor [Author_4])
      (generos
          [Genres_6]
          [Genres_4])
      (idLibro "20927491")
      (nPag 109)
      (publicacion 2014)
      (url "https://www.goodreads.com/book/show/20927491-1-27")
      (titulo "1/27: An ICoS Anthology"))

     ([Book_5] of Libro
      (autor [Author_5])
      (generos
          [Genres_6]
          [Genres_4])
      (idLibro "20803627")
      (nPag 171)
      (publicacion 2014)
      (url "https://www.goodreads.com/book/show/20803627-forget-me-not")
      (titulo "Forget Me Not"))

     ([Book_6] of Libro
      (autor [Author_6])
      (generos
          [Genres_6]
          [Genres_7])
      (idLibro "17305049")
      (nPag 688)
      (publicacion 2014)
      (url "https://www.goodreads.com/book/show/17305049-ethan")
      (titulo "Ethan"))

     ([Book_7] of Libro
      (autor [Author_7])
      (generos
          [Genres_3]
          [Genres_4])
      (idLibro "7059135")
      (nPag 320)
      (publicacion 2010)
      (url "https://www.goodreads.com/book/show/7059135-inside-out")
      (titulo "Inside Out"))

     ([Book_8] of Libro
      (autor [Author_8])
      (generos
          [Genres_4]
          [Genres_0])
      (idLibro "104344")
      (nPag 315)
      (publicacion 1987)
      (url "https://www.goodreads.com/book/show/104344.The_Gate_to_Women_s_Country")
      (titulo "The Gate to Women's Country"))

     ([Book_9] of Libro
      (autor [Author_9])
      (generos
          [Genres_4]
          [Genres_0])
      (idLibro "350")
      (nPag 528)
      (publicacion 1961)
      (url "https://www.goodreads.com/book/show/350.Stranger_in_a_Strange_Land")
      (titulo "Stranger in a Strange Land"))

     ([Author_0] of Autor
      (idAutor "706255")
      (nombreAutor "Stieg Larsson")
      (sexo male))

     ([Author_1] of Autor
      (idAutor "37871")
      (nombreAutor "José Donoso")
      (sexo male))

     ([Author_2] of Autor
      (idAutor "153394")
      (nombreAutor "Suzanne Collins")
      (sexo female))

     ([Author_3] of Autor
      (idAutor "3487")
      (nombreAutor "Aldous Huxley")
      (sexo male))

     ([Author_4] of Autor
      (idAutor "5821204")
      (nombreAutor "Ais")
      (sexo male))

     ([Author_5] of Autor
      (idAutor "268722")
      (nombreAutor "Jordan Castillo Price")
      (sexo female))

     ([Author_6] of Autor
      (idAutor "4318269")
      (nombreAutor "Nicole Edwards")
      (sexo female))

     ([Author_7] of Autor
      (idAutor "445303")
      (nombreAutor "Maria V. Snyder")
      (sexo female))

     ([Author_8] of Autor
      (idAutor "20560")
      (nombreAutor "Sheri S. Tepper")
      (sexo female))

     ([Author_9] of Autor
      (idAutor "205")
      (nombreAutor "Robert A. Heinlein")
      (sexo male))

     ([Genres_0] of Genero
      (nombreGenero "Fiction"))

     ([Genres_1] of Genero
      (generosSimilares [Genres_0])
      (nombreGenero "Mystery"))

     ([Genres_2] of Genero
      (generosSimilares [Genres_1])
      (nombreGenero "Magical Realism"))

     ([Genres_3] of Genero
      (generosSimilares [Genres_2])
      (nombreGenero "Young Adult"))

     ([Genres_4] of Genero
      (generosSimilares [Genres_3])
      (nombreGenero "Science Fiction"))

     ([Genres_5] of Genero
      (generosSimilares [Genres_4])
      (nombreGenero "Classics"))

     ([Genres_6] of Genero
      (generosSimilares [Genres_5])
      (nombreGenero "Romance"))

     ([Genres_7] of Genero
      (generosSimilares [Genres_6])
      (nombreGenero "Adult Fiction"))

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

     ([Profile_0] of Perfil

      (curable TRUE)
      (psicologico A)
      (rangoEdad Infantil)
      (terminal TRUE))

     ([Profile_1] of Perfil

      (curable TRUE)
      (psicologico A)
      (rangoEdad Infantil)
      (terminal FALSE))

     ([Profile_2] of Perfil

      (curable TRUE)
      (psicologico A)
      (rangoEdad Joven)
      (terminal TRUE))

     ([Profile_3] of Perfil

      (curable TRUE)
      (psicologico A)
      (rangoEdad Joven)
      (terminal FALSE))

     ([Profile_4] of Perfil

      (curable TRUE)
      (psicologico A)
      (rangoEdad Adulto)
      (terminal TRUE))

     ([Profile_5] of Perfil

      (curable TRUE)
      (psicologico A)
      (rangoEdad Adulto)
      (terminal FALSE))

     ([Profile_6] of Perfil

      (curable TRUE)
      (psicologico B)
      (rangoEdad Infantil)
      (terminal TRUE))

     ([Profile_7] of Perfil

      (curable TRUE)
      (psicologico B)
      (rangoEdad Infantil)
      (terminal FALSE))

     ([Profile_8] of Perfil

      (curable TRUE)
      (psicologico B)
      (rangoEdad Joven)
      (terminal TRUE))

     ([Profile_9] of Perfil

      (curable TRUE)
      (psicologico B)
      (rangoEdad Joven)
      (terminal FALSE))

     ([Profile_10] of Perfil

      (curable TRUE)
      (psicologico B)
      (rangoEdad Adulto)
      (terminal TRUE))

     ([Profile_11] of Perfil

      (curable TRUE)
      (psicologico B)
      (rangoEdad Adulto)
      (terminal FALSE))

     ([Profile_12] of Perfil

      (curable TRUE)
      (psicologico C)
      (rangoEdad Infantil)
      (terminal TRUE))

     ([Profile_13] of Perfil

      (curable TRUE)
      (psicologico C)
      (rangoEdad Infantil)
      (terminal FALSE))

     ([Profile_14] of Perfil

      (curable TRUE)
      (psicologico C)
      (rangoEdad Joven)
      (terminal TRUE))

     ([Profile_15] of Perfil

      (curable TRUE)
      (psicologico C)
      (rangoEdad Joven)
      (terminal FALSE))

     ([Profile_16] of Perfil

      (curable TRUE)
      (psicologico C)
      (rangoEdad Adulto)
      (terminal TRUE))

     ([Profile_17] of Perfil

      (curable TRUE)
      (psicologico C)
      (rangoEdad Adulto)
      (terminal FALSE))

     ([Profile_18] of Perfil

      (curable TRUE)
      (psicologico D)
      (rangoEdad Infantil)
      (terminal TRUE))

     ([Profile_19] of Perfil

      (curable TRUE)
      (psicologico D)
      (rangoEdad Infantil)
      (terminal FALSE))

     ([Profile_20] of Perfil

      (curable TRUE)
      (psicologico D)
      (rangoEdad Joven)
      (terminal TRUE))

     ([Profile_21] of Perfil

      (curable TRUE)
      (psicologico D)
      (rangoEdad Joven)
      (terminal FALSE))

     ([Profile_22] of Perfil

      (curable TRUE)
      (psicologico D)
      (rangoEdad Adulto)
      (terminal TRUE))

     ([Profile_23] of Perfil

      (curable TRUE)
      (psicologico D)
      (rangoEdad Adulto)
      (terminal FALSE))

     ([Profile_24] of Perfil

      (curable FALSE)
      (psicologico A)
      (rangoEdad Infantil)
      (terminal TRUE))

     ([Profile_25] of Perfil

      (curable FALSE)
      (psicologico A)
      (rangoEdad Infantil)
      (terminal FALSE))

     ([Profile_26] of Perfil

      (curable FALSE)
      (psicologico A)
      (rangoEdad Joven)
      (terminal TRUE))

     ([Profile_27] of Perfil

      (curable FALSE)
      (psicologico A)
      (rangoEdad Joven)
      (terminal FALSE))

     ([Profile_28] of Perfil

      (curable FALSE)
      (psicologico A)
      (rangoEdad Adulto)
      (terminal TRUE))

     ([Profile_29] of Perfil

      (curable FALSE)
      (psicologico A)
      (rangoEdad Adulto)
      (terminal FALSE))

     ([Profile_30] of Perfil

      (curable FALSE)
      (psicologico B)
      (rangoEdad Infantil)
      (terminal TRUE))

     ([Profile_31] of Perfil

      (curable FALSE)
      (psicologico B)
      (rangoEdad Infantil)
      (terminal FALSE))

     ([Profile_32] of Perfil

      (curable FALSE)
      (psicologico B)
      (rangoEdad Joven)
      (terminal TRUE))

     ([Profile_33] of Perfil

      (curable FALSE)
      (psicologico B)
      (rangoEdad Joven)
      (terminal FALSE))

     ([Profile_34] of Perfil

      (curable FALSE)
      (psicologico B)
      (rangoEdad Adulto)
      (terminal TRUE))

     ([Profile_35] of Perfil

      (curable FALSE)
      (psicologico B)
      (rangoEdad Adulto)
      (terminal FALSE))

     ([Profile_36] of Perfil

      (curable FALSE)
      (psicologico C)
      (rangoEdad Infantil)
      (terminal TRUE))

     ([Profile_37] of Perfil

      (curable FALSE)
      (psicologico C)
      (rangoEdad Infantil)
      (terminal FALSE))

     ([Profile_38] of Perfil

      (curable FALSE)
      (psicologico C)
      (rangoEdad Joven)
      (terminal TRUE))

     ([Profile_39] of Perfil

      (curable FALSE)
      (psicologico C)
      (rangoEdad Joven)
      (terminal FALSE))

     ([Profile_40] of Perfil

      (curable FALSE)
      (psicologico C)
      (rangoEdad Adulto)
      (terminal TRUE))

     ([Profile_41] of Perfil

      (curable FALSE)
      (psicologico C)
      (rangoEdad Adulto)
      (terminal FALSE))

     ([Profile_42] of Perfil

      (curable FALSE)
      (psicologico D)
      (rangoEdad Infantil)
      (terminal TRUE))

     ([Profile_43] of Perfil

      (curable FALSE)
      (psicologico D)
      (rangoEdad Infantil)
      (terminal FALSE))

     ([Profile_44] of Perfil

      (curable FALSE)
      (psicologico D)
      (rangoEdad Joven)
      (terminal TRUE))

     ([Profile_45] of Perfil

      (curable FALSE)
      (psicologico D)
      (rangoEdad Joven)
      (terminal FALSE))

     ([Profile_46] of Perfil

      (curable FALSE)
      (psicologico D)
      (rangoEdad Adulto)
      (terminal TRUE))

     ([Profile_47] of Perfil

      (curable FALSE)
      (psicologico D)
      (rangoEdad Adulto)
      (terminal FALSE))
)

;;;-----------------------------------------------------------------------------
;;;--------------------------------TEMPLATES------------------------------------
;;;-----------------------------------------------------------------------------

(deftemplate Lector
    (slot edad (type INTEGER))
    (slot perfilPaciente (type INSTANCE) (allowed-classes Perfil))
    (multislot generosFavoritos (type INSTANCE) (allowed-classes Genero))
    (multislot generosNegativos (type INSTANCE) (allowed-classes Genero))
    (multislot librosFavoritos (type INSTANCE) (allowed-classes Libro))
    (multislot librosNegativos (type INSTANCE) (allowed-classes Libro))
    (multislot autoresFavoritos (type INSTANCE) (allowed-classes Autor))
    (multislot autoresNegativos (type INSTANCE) (allowed-classes Autor))
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
    (bind $?justf ?self:justificacionesUsuario)
	(if (eq (length$ ?justf) 0) then (printout t "No hay preferencias dadas por ti" crlf)
		else (printout t crlf)
			(loop-for-count (?i 1 (length$ ?justf)) do
				(printout t " --> "(nth$ ?i ?justf) ". " crlf)
			)
	)
	(printout t crlf)
	(printout t " Informacion inferida por el Sistema: " )
	(bind $?justf ?self:justificacionS)
	(if (eq (length$ ?justf) 0) then (printout t "No se ha echo inferencia" crlf)
		else (printout t crlf)
			(loop-for-count (?i 1 (length$ ?justf)) do
				(printout t " --> "(nth$ ?i ?justf) ". " crlf)
			)
	)
	(printout t crlf)
	(printout t "---------------------------------------------------" crlf)
)

;;;-----------------------------------------------------------------------------
;;;----------------------------------REGLAS-------------------------------------
;;;-----------------------------------------------------------------------------

(defrule retorna_instancies
    (not retorna_instancies ok)
    =>
    (bind ?lista_instancias (find-all-instances ((?instancia Libro)) TRUE))
    (assert retorna_instancies ok)
)
