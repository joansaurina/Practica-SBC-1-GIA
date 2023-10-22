;;; ---------------------------------------------------------
;;; onto_4.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology onto_4.ttl
;;; :Date 15/10/2023 16:56:40

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
        (type STRING)
        (create-accessor read-write))
    (slot edad
        (type INTEGER)
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
        (type INTEGER)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
    (slot popularidad
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Usuario
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot le_gusta
        (type INSTANCE)
        (create-accessor read-write))
    (slot autor_concret
        (type SYMBOL)
        (create-accessor read-write))
    (slot autor_estranjero
        (type SYMBOL)
        (create-accessor read-write))
    (slot frecuencia
        (type INTEGER)
        (create-accessor read-write))
    (slot lugar
        (type STRING)
        (create-accessor read-write))
    (slot minutos_lectura_diarios
        (type INTEGER)
        (create-accessor read-write))
    (slot momento
        (type STRING)
        (create-accessor read-write))
    (slot se_fija_en_modas
        (type SYMBOL)
        (create-accessor read-write))
    (slot se_fija_en_valoraciones
        (type SYMBOL)
        (create-accessor read-write))
    (slot edad
        (type INTEGER)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
    (slot popularidad
        (type INTEGER)
        (create-accessor read-write))
)

(definstances instances
    ([ai] of Subgenero
         (subgenero_de  [ciencia_ficcio])
         (nombre  "Artificial Intelligence")
    )

    ([asal] of Usuario
         (le_gusta  [esteban] [gay_fiction])
         (edad  20)
         (nombre  "Asal")
    )

    ([chatGPT] of Autor
         (complejidad_escritura  "media")
         (edad  2)
         (nombre  "chatGPT")
         (popularidad  "alta")
    )

    ([ciencia_ficcio] of Genero
         (nombre  "Ciencia Ficcio")
    )

    ([epic_fantasy] of Subgenero
         (subgenero_de  [fantasy])
         (nombre  "Epic Fantasy")
    )

    ([esteban] of Autor
         (complejidad_escritura  "baja")
         (edad  20)
         (nombre  "Esteban")
         (popularidad  "baja")
    )

    ([fantasy] of Genero
         (nombre  "Fantasy")
    )

    ([gay_fiction] of Subgenero
         (subgenero_de  [romance])
         (nombre  "Gay Fiction")
    )

    ([george_martin] of Autor
         (complejidad_escritura  "baja")
         (edad  64)
         (nombre  "George Martin")
         (popularidad  "alta")
    )

    ([got] of Libro
         (genero_de  [epic_fantasy])
         (nombre  "Game of Thrones")
    )

    ([historia_esteban] of Libro
         (escrito_por  [esteban])
         (genero_de  [gay_fiction])
         (nombre  "Historia Esteban")
    )

    ([i_robot] of Libro
         (genero_de  [ai])
         (nombre  "I, robot")
         (popularidad  "alta")
    )

    ([romance] of Genero
         (nombre  "Romance")
    )

    ([serg] of Usuario
         (le_gusta  [epic_fantasy] [got])
         (edad  20)
         (nombre  "Serg")
    )

)
