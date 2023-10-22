;;; ---------------------------------------------------------
;;; onto_2.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology onto_2.ttl
;;; :Date 10/10/2023 09:30:36

(defclass Persona
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot edad
        (type INTEGER)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Autor
    (is-a Persona)
    (role concrete)
    (pattern-match reactive)
    (slot escribe_sobre
        (type INSTANCE)
        (create-accessor read-write))
    (slot estranjero
        (type SYMBOL)
        (create-accessor read-write))
    (slot complejidad_escritura
        (type STRING)
        (create-accessor read-write))
    (slot popularidad
        (type STRING)
        (create-accessor read-write))
)

(defclass Cliente
    (is-a Persona)
    (role concrete)
    (pattern-match reactive)
    (multislot le_gusta
        (type INSTANCE)
        (create-accessor read-write))
    (slot autor_concret
        (type SYMBOL)
        (create-accessor read-write))
    (slot autor_estranjero
        (type SYMBOL)
        (create-accessor read-write))
    (slot frecuencia
        (type STRING)
        (create-accessor read-write))
    (slot lugar
        (type STRING)
        (create-accessor read-write))
    (slot momento
        (type STRING)
        (create-accessor read-write))
    (slot popularidad_libros_que_lee
        (type STRING)
        (create-accessor read-write))
    (slot se_fija_en_modas
        (type SYMBOL)
        (create-accessor read-write))
    (slot se_fija_en_valoraciones
        (type SYMBOL)
        (create-accessor read-write))
    (slot minuts_lectura_setmanals
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Género
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Subgénero
    (is-a Género)
    (role concrete)
    (pattern-match reactive)
    (slot subgenero_de
        (type INSTANCE)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Libro
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot comprado_por
        (type INSTANCE)
        (create-accessor read-write))
    (slot escrito_por
        (type INSTANCE)
        (create-accessor read-write))
    (slot genero_de
        (type INSTANCE)
        (create-accessor read-write))
    (slot publicacion
        (type STRING)
        (create-accessor read-write))
    (slot valoracion
        (type STRING)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
    (slot numero_paginas
        (type INTEGER)
        (create-accessor read-write))
    (slot popularidad
        (type STRING)
        (create-accessor read-write))
)

(definstances instances
    ([ai] of Subgénero
         (subgenero_de  [ciencia_ficcio])
         (nombre  "Artificial Intelligence")
    )

    ([asal] of Cliente
         (le_gusta  [esteban] [gay_fiction])
         (minuts_lectura_setmanals  1)
         (edad  20)
         (nombre  "Asal")
    )

    ([chatGPT] of Autor
         (escribe_sobre  [ai])
         (complejidad_escritura  "media")
         (popularidad  "alta")
         (edad  2)
         (nombre  "chatGPT")
    )

    ([ciencia_ficcio] of Género
         (nombre  "Ciencia Ficcio")
    )

    ([epic_fantasy] of Subgénero
         (subgenero_de  [fantasy])
         (nombre  "Epic Fantasy")
    )

    ([esteban] of Autor
         (escribe_sobre  [gay_fiction])
         (complejidad_escritura  "baja")
         (popularidad  "baja")
         (edad  20)
         (nombre  "Esteban")
    )

    ([fantasy] of Género
         (nombre  "Fantasy")
    )

    ([gay_fiction] of Subgénero
         (subgenero_de  [romance])
         (nombre  "Gay Fiction")
    )

    ([george_martin] of Autor
         (escribe_sobre  [epic_fantasy])
         (complejidad_escritura  "baja")
         (popularidad  "alta")
         (edad  64)
         (nombre  "George Martin")
    )

    ([got] of Libro
         (genero_de  [epic_fantasy])
         (nombre  "Game of Thrones")
         (numero_paginas  564)
    )

    ([historia_esteban] of Libro
         (comprado_por  [asal])
         (escrito_por  [esteban])
         (genero_de  [gay_fiction])
         (nombre  "Historia Esteban")
         (numero_paginas  1543)
    )

    ([i_robot] of Libro
         (genero_de  [ai])
         (nombre  "I, robot")
         (numero_paginas  125)
         (popularidad  "alta")
    )

    ([romance] of Género
         (nombre  "Romance")
    )

    ([serg] of Cliente
         (le_gusta  [epic_fantasy] [got])
         (minuts_lectura_setmanals  50)
         (edad  20)
         (nombre  "Serg")
    )

)
