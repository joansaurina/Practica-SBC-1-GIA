;;; ---------------------------------------------------------
;;; onto_4.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology onto_4.ttl
;;; :Date 18/10/2023 09:38:16

(defclass Genero
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Subgenero
    (is-a Genero)
    (role concrete)
    (pattern-match reactive)
    (slot subgenero_de
        (type INSTANCE)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Lector
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot autor
        (type INSTANCE)
        (create-accessor read-write))
    (slot genero
        (type INSTANCE)
        (create-accessor read-write))
    (slot subgenero
        (type INSTANCE)
        (create-accessor read-write))
    (slot lugar
        (type STRING)
        (create-accessor read-write))
    (slot minutos_lectura_diarios
        (type INTEGER)
        (create-accessor read-write))
    (slot modas
        (type SYMBOL)
        (create-accessor read-write))
    (slot momento
        (type STRING)
        (create-accessor read-write))
    (slot se_fija_valoraciones
        (type SYMBOL)
        (create-accessor read-write))
    (slot tiempo_diario
        (type INTEGER)
        (create-accessor read-write))
    (slot tiempo_lectura
        (type INTEGER)
        (create-accessor read-write))
    (slot tiempo_total
        (type INTEGER)
        (create-accessor read-write))
    (slot edad
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Usuario
    (is-a Lector)
    (role concrete)
    (pattern-match reactive)
    (slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Usuario_pasado
    (is-a Lector)
    (role concrete)
    (pattern-match reactive)
    (slot libro_leido
        (type INSTANCE)
        (create-accessor read-write))
    (slot puntuacion
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Sugerencia
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot nombre_libro
        (type INSTANCE)
        (create-accessor read-write))
    (slot argumento
        (type STRING)
        (create-accessor read-write))
    (slot calificacion
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Autor
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot escribe_genero
        (type INSTANCE)
        (create-accessor read-write))
    (slot escribe_subgenero
        (type INSTANCE)
        (create-accessor read-write))
    ;;; complejidad estilo del autor
    (slot complejidad_estilo
        (type STRING)
        (create-accessor read-write))
    (slot estranjero
        (type SYMBOL)
        (create-accessor read-write))
    ;;; media de la fecha de publicacion de los libros escritos por el autor
    (slot media_fecha_publicacion
        (type FLOAT)
        (create-accessor read-write))
    ;;; media de las paginas de los libros del autor
    (slot media_paginas
        (type FLOAT)
        (create-accessor read-write))
    ;;; media de la valoración de los libros de un autor
    (slot media_valoracion
        (type FLOAT)
        (create-accessor read-write))
    (slot complejidad_escritura
        (type FLOAT)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
    (slot popularidad
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Libro
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot subgenero_de
        (type INSTANCE)
        (create-accessor read-write))
    (slot escrito_por
        (type INSTANCE)
        (create-accessor read-write))
    (slot genero_de
        (type INSTANCE)
        (create-accessor read-write))
    ;;; numero de personajes
    (slot complejidad
        (type INTEGER)
        (create-accessor read-write))
    (slot estilo
        (type STRING)
        (create-accessor read-write))
    (slot paginas
        (type INTEGER)
        (create-accessor read-write))
    ;;; año de publicación
    (slot publicacion
        (type INTEGER)
        (create-accessor read-write))
    (slot publico
        (type STRING)
        (create-accessor read-write))
    (slot valoracion
        (type FLOAT)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
    (slot popularidad
        (type INTEGER)
        (create-accessor read-write))
)

