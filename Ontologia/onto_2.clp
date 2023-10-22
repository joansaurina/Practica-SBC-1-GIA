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

