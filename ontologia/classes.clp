;;; ---------------------------------------------------------------------
;;; Proyecto: Sistema de Recomendación de Libros
;;; Asignatura: Sistemas Basados en el Conocimiento (SBC)
;;; Grado: Inteligencia Artificial
;;; Universidad: Universitat Politècnica de Catalunya (UPC)
;;; 
;;; Fecha: [Fecha de Creación o Entrega del Proyecto]
;;; 
;;; Autores:
;;;     - NombreAutor1 <CorreoElectronico1@dominio.com>
;;;     - NombreAutor2 <CorreoElectronico2@dominio.com>
;;;     - NombreAutor3 <CorreoElectronico3@dominio.com>
;;;     - NombreAutor4 <CorreoElectronico4@dominio.com>
;;; 
;;; Descripción:
;;; Este sistema de recomendación de libros está diseñado para proporcionar 
;;; sugerencias de lectura personalizadas a los usuarios, basadas en diversas 
;;; características e intereses proporcionados.
;;; ---------------------------------------------------------------------


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
    (slot complejidad
        (type INTEGER) 
        (create-accessor read-write))
    (slot popularidad
        (type INTEGER)
        (create-accessor read-write))
    (multislot ha_escrito
        (type INSTANCE)                   
        (create-accessor read-write))
    (slot media_paginas
        (type INTEGER)
        (create-accessor read-write))
    (slot media_valoracion
        (type INTEGER)
        (create-accessor read-write))
    (slot media_fecha_publicacion
        (type INTEGER)
        (create-accessor read-write))
    (slot nombre_autor
        (type STRING)
        (create-accessor read-write))
)

(defclass Usuario
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot genero
        (type INSTANCE)
        (create-accessor read-write))
    (multislot subgenero           
        (type INSTANCE)
        (create-accessor read-write))
    (slot autor
        (type INSTANCE)
        (create-accessor read-write))
    (slot tiempo_total
        (type INTEGER)
        (create-accessor read-write))
    (slot lugar
        (type STRING)
        (create-accessor read-write))
    (slot momento
        (type STRING)
        (create-accessor read-write))
    (slot popularidad
        (type STRING)
        (create-accessor read-write))
    (slot se_fija_valoraciones
        (type SYMBOL)
        (create-accessor read-write))
    (slot minuts_lectura_diarios
        (type INTEGER)
        (create-accessor read-write))
    (slot edad
        (type INTEGER)                          
        (create-accessor read-write))
)

(defclass Genero
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot nombre_genero
        (type STRING)
        (create-accessor read-write))
    (multislot supergenero_de
        (type INSTANCE)
        (create-accessor read-write))
    (multislot autores_genero
        (type INSTANCE)
        (create-accessor read-write)) ;;; NOVA
    (multislot libros_genero
        (type INSTANCE)
        (create-accessor read-write)) ;;; NOVA
)

(defclass Subgenero
    (is-a Genero)
    (role concrete)
    (pattern-match reactive)
    (slot subgenero_de
        (type INSTANCE)
        (create-accessor read-write))
    (slot nombre_subgenero
        (type STRING)
        (create-accessor read-write))
    (multislot autores_subgenero
        (type INSTANCE)
        (create-accessor read-write)) ;;; NOVA
    (multislot libros_subgenero
        (type INSTANCE)
        (create-accessor read-write)) ;;; NOVA
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
    (slot subgenero_de
        (type INSTANCE)
        (create-accessor read-write))
    (slot publicacion
        (type INTEGER)
        (create-accessor read-write))
    (slot valoracion
        (type STRING)
        (create-accessor read-write))
    (slot nombre_libro
        (type STRING)
        (create-accessor read-write))
    (slot paginas
        (type INTEGER)
        (create-accessor read-write))
    (slot popularidad
        (type STRING)
        (create-accessor read-write))
    (slot complejidad
        (type STRING)
        (create-accessor read-write))
    (slot publico
        (type STRING)                       
        (create-accessor read-write))
    (slot estilo 
        (type STRING)                     
        (create-accessor read-write))
)
