# Enteniendo_Gabrielas_code

El objetivo es revisar el código de Gabirela, reeestructurarlo e ir revisando en la tésis a qué se dedica cada parte del código, de modo de entender los fenómenos físicos involucrados y ver cómo ella los afronta con un código eficiente.

Parto de la base de que el código de Gabriela anda sin problemas. Luego de cada tarea tengo que correr el código y ver que se llegue a lo mismo que el resultado inicial. Descubrí que Borland y VScode llegan a los mismos resultados inicialmente, pero al cabo de un tiempo difieren. No sé si es un problema del IDE, del compilador o de qué... así que a partir de ahora voy a programar en Borland.




Para compilar:
g++ -S ecdiff.cpp FUNCIONS.cpp PSULSOAR.cpp Rkqc.cpp Rkutta4.cpp sbsl.cpp 
g++ -c ecdiff.cpp FUNCIONS.cpp PSULSOAR.cpp Rkqc.cpp Rkutta4.cpp sbsl.cpp 
g++ -o test.exe ecdiff.o FUNCIONS.o PSULSOAR.o Rkqc.o Rkutta4.o sbsl.o
test.exe


Tareas:
- [x] Los numeritos de Borland son distintos a los que yo llego. Copié exactamente el código de Borland y no llego a los mismos resultados. Llego a los mismos nros inicialemtne pero luego de un tiempo el código deja de andar. Me voy a poner a programar en Borland...no me queda otra.
- [ ] Ver cómo relaciona los arhcivos entre sí.
- [ ] Intentar no tener que declarar todas las funciones en cada archivo, sino hacerlo con un header para ser más prolijos
- [ ] Ir a FUNCIONS.cpp e intentar entender qué hace cada función, agregando los comentarios que considere necesarios.
- [ ] Reorganizar las funciones de FUNCIONS.cpp en varios archivos. Fijarse que no haya problemas de importación de código
- [ ] Hacer lo mismo en ecdiff y PSUSULSO (parámetros)
- [ ]



Tareas completadas:
- [x] Copiar el código de Gabriela de Borland e intentar correrlo. Recuerdo que no se podía correr, seguro voy a tener que cambiar algunos headers. La info. al respecto se debe encontrar en alguno de los tests que hice al inicio de la maestría para correr su código
Tuve que cambiar los headers
#include<iostream.h> to #include<iostream>
#include <fstream.h> to #include <fstream> 
#include <iomanip.h> to #include <iomanip>
Comenté include <vcl.h>
cambié void main() a int main() y agregué un return 0; al final
Agregué using namespace std; para que reconozca la variable ofstream.
En la línea 249 cambié
long double *electra=new long double[lambdapuntos+1];
por
long double *electra=new long double[int(lambdapuntos)+1];
dado que la variable lambdapuntos está definida como double inicialmente.




