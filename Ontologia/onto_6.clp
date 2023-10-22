;;; ---------------------------------------------------------
;;; onto_6.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology onto_6.ttl
;;; :Date 22/10/2023 13:20:42

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
    (slot decada
        (type INTEGER)
        (create-accessor read-write))
    (slot lugar
        (type STRING)
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
    (slot me_gusto
        (type INTEGER)
        (create-accessor read-write))
)

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
)

(defclass Sugerencia
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot argumento
        (type STRING)
        (create-accessor read-write))
    (slot calificacion
        (type FLOAT)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Autor
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot escribe_subgenero
        (type INSTANCE)
        (create-accessor read-write))
    (slot cluster
        (type STRING)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
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
        (type FLOAT)
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

