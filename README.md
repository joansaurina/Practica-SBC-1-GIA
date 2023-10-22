# Práctica 1 - SBC-GIA

## Miembros del grupo:
* Joan Saurina i Ricós
* Sergi Tomàs Martínez
* Asal Mehrabi
* Esteban Gatein

## Descripción del proyecto:
Implementación de un sistema basado en reglas para recomendar libros. La implementación del sistema funciona con el programario CLIPS y el conocimiento del sistema se basa en el sistema de ontologías de Protégé.

## Incluye los siguientes archivos:
* REPORT.pdf: fichero con la memoria del trabajo
* Ontologia: directorio que contiene la ontología
  * onto.ttl: ontología en formato turtle (leíble por Protégé)
  * onto.clp: ontología en formato CLIPS
  * onto.pdf: gráfico de la ontología
* Generador: directorio que contiene los ficheros de datos y de generación de instancias de CLIPS
  * autors.csv:
  * llibres.csv:
  * authots_on_cluster.csv:
  * open_library.ipynb:
  * author_clustering.ipynb:
  * python_to_clips.ipynb:
  * usuarios_antiguos.ipynb:
* Main: directorio que contiene el programa principal
  * classes.clp:
  * instances.clp:
  * prototipo.clp: SISTEMA DE RECOMENDACIÓN DE LIBROS
 
## Requisitos:
- Python 3.x (necesario en caso de querer usar el generador de datos)
- Jupyter Notebook (necesario en caso de querer usar el generador de datos)
- CLIPS

## Instrucciones de uso:
1. Abrir una terminal de CLIPS con el entorno basado en el directorio MAIN
2. Ejecutar secuencialmente los siguientes comandos:
  * (clear)
  * (load "prototipo.clp")
  * (reset)
  * (run)
