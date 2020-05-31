# **Trabajo Práctico Bioinformática 2020**

## Integrantes
- Mariano De Luca
- Leila Feiguin
- Julian Goldfarb
- Victoria Lippolis
- Gonzalo Rochlin

## **Ejercicio 1**
### Ejecución
Una vez instalado `Perl` y `BioPerl`, ejecutar el siguiente script:
```
perl Ex1.pm 
```
Es necesario que el archivo `park2.gb` se encuentre en el directorio `/data/inputs/`.

### Descripción
1. Se abre el archivo de entrada `park2.gb` y se crea el archivo en modo escritura `park2.fas`.
2. Interpreta el primero con el formato de `GenBank` y el segundo con `FASTA`.
3. Se transcribe la subsecuencia y el resultado se escribe en el archivo de salida.
4. El resultado del script es la creación de un archivo en formato fasta con la secuencia de aminoácidos perteneciente a la traducción de la cadena de nucleótidos.

## **Ejercicio 2**
### Ejecución - **De forma remota**
Ejecutar el siguiente script:
```
perl Ex2.pm 
```
Es necesario que el archivo `park2.fas` se haya generado en el ejercicio anterior en la carpeta `/data/outputs/`.


### Ejecución - **De forma local**
Descargar la base de datos de [ESTE LINK](ftp://ftp.ncbi.nlm.nih.gov/blast/db/FASTA/swissprot.gz) y descomprimirla en el directorio `/db/`.
Luego correr el siguiente comando sobre el archivo swissprot
```
ncbi-blast-2.3.0+/bin/makeblastdb
```

Por último, ejecutar el siguiente script:
```
perl Ex2-local.pm 
```
Es necesario que el archivo `park2.fas` se haya generado en el ejercicio anterior en la carpeta `/data/outputs/`.

### Descripción
1. Se abre en modo lectura el archivo `park2.fas` generado en el `Ejercicio 1`.
2. Se transcribe la secuencia generada en el mismo al tipo `BLAST`.
3. Se almacena el resultado obtenido en el archivo `report.blast` ubicado en la carpeta `/data/outputs/`.

## **Ejercicio 3**
### Ejecución
> Este ejercicio no requiere ejecución.

### Descripción
1. La descripción se encuentra en el informe adjunto.