;;; ---------------------------------------------------------
;;; onto_1.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology onto_1.ttl
;;; :Date 03/10/2023 09:35:22

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
    (slot minuts_lectura_setmanals
        (type INTEGER)
        (create-accessor read-write))
    (slot temporada_deseedada_lectura_semanas
        (type STRING)
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