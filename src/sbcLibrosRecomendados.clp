(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot Titulo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot apellidos
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot ISBN
;+		(comment "Intenational serialized book number")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot horasLecturaSemanales
;+		(comment "dedicación semanal del usuario a la lectura")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot categorias
		(type INSTANCE)
;+		(allowed-classes SubGenero)
		(create-accessor read-write))
	(single-slot horasEscrituraSemanales
;+		(comment "tiempo que dedica")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot subGeneros
		(type INSTANCE)
;+		(allowed-classes)
		(create-accessor read-write))
	(multislot subGenero
		(type INSTANCE)
;+		(allowed-classes SubGenero)
		(create-accessor read-write))
	(single-slot sexo
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot mail
;+		(comment "primary key")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot categoria
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot autor
		(type INSTANCE)
;+		(allowed-classes Escritor)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot intervaloLectura
;+		(comment "tiempo medio que el usuario dedica a leer sin interrupción (minutos)")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot fechaNacimiento
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot esGenero
		(type INSTANCE)
;+		(allowed-classes Genero)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot genero
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot paginas
;+		(comment "numero de paginas totales del libro")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot KB_307601_Class25
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot email
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot haEscrito
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Libro
	(is-a USER)
	(role concrete)
	(single-slot paginas
;+		(comment "numero de paginas totales del libro")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot categorias
		(type INSTANCE)
;+		(allowed-classes SubGenero)
		(create-accessor read-write))
	(single-slot autor
		(type INSTANCE)
;+		(allowed-classes Escritor)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Titulo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ISBN
;+		(comment "Intenational serialized book number")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Genero
	(is-a USER)
	(role concrete)
	(single-slot genero
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot subGenero
		(type INSTANCE)
;+		(allowed-classes SubGenero)
		(create-accessor read-write)))

(defclass Persona
	(is-a USER)
	(role abstract)
	(single-slot sexo
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot fechaNacimiento
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot apellidos
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Lector "representación de los lectores en el sistema"
	(is-a Persona)
	(role concrete)
	(single-slot horasLecturaSemanales
;+		(comment "dedicación semanal del usuario a la lectura")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot intervaloLectura
;+		(comment "tiempo medio que el usuario dedica a leer sin interrupción (minutos)")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot email
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Escritor
	(is-a Persona)
	(role concrete)
	(multislot haEscrito
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass SubGenero
	(is-a USER)
	(role concrete)
	(single-slot categoria
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot esGenero
		(type INSTANCE)
;+		(allowed-classes Genero)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(definstances instancies
	([KB_307601_Class28] of  Lector

		(apellidos "de los palotes")
		(email "pepito@gmail.com")
		(fechaNacimiento "24/11/2019")
		(horasLecturaSemanales 40)
		(intervaloLectura 2)
		(nombre "Pepito")
		(sexo FALSE))

	([KB_307601_Class29] of  Escritor

		(apellidos "Geroge Walton")
		(fechaNacimiento "14/06/1944")
		(haEscrito [KB_307601_Class30])
		(nombre "Lucas Jr")
		(sexo TRUE))

	([KB_307601_Class30] of  Libro

		(autor [KB_307601_Class29])
		(categorias
			[KB_307601_Class32]
			[KB_307601_Class33])
		(ISBN "978-84-9173-683-7")
		(paginas 200)
		(Titulo "Una nueva esperanza"))

	([KB_307601_Class31] of  Libro

		(autor [KB_307601_Class29])
		(categorias
			[KB_307601_Class32]
			[KB_307601_Class33])
		(ISBN "978-84-9173-799-5")
		(paginas 192)
		(Titulo "El retorno del Jedi"))

	([KB_307601_Class32] of  SubGenero

		(categoria "espacial")
		(esGenero [KB_307601_Class34]))

	([KB_307601_Class33] of  SubGenero

		(categoria "futurista")
		(esGenero [KB_307601_Class34]))

	([KB_307601_Class34] of  Genero

		(genero "ciencia ficción")
		(subGenero
			[KB_307601_Class32]
			[KB_307601_Class33]))
)


(defmodule MAIN (export ?ALL))

(defrule start "primera regla"
	(initial-fact)
	=>
	(printout t crlf)
	(printout t "------------------------------------------------" crlf)
	(printout t "------ Sistema de Recomendacion de Libros ------" crlf)
	(printout t "------------------------------------------------" crlf)
	(printout t crlf)
	(assert (nuevo_lector))
)
