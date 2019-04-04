# Processing → Clase 5 → jueves 11 de abril

Hoy comenzaremos a trabajar con Processing. Para ello es necesario que tengas instalada la última versión en tu computador: [Processing 3](https://processing.org/download/)

Varias cosas de las que ya vimos en p5.js pueden ser aplicadas en Processing. Pero no corresponde olvidar: 

- p5.js es una biblioteca de [JavaScript](https://es.wikipedia.org/wiki/JavaScript)

- Processing está basado en [Java](https://es.wikipedia.org/wiki/Java_(lenguaje_de_programación))

Además, **Processing** se ha presentado desde sus inicios como: 

- un [lenguaje](https://processing.org/reference/) que sirve de introducción a la programación; 

- una [IDE](https://processing.org/reference/environment/) (Integrated Development Environment) que puedes [descargar](https://processing.org/download/); y

- una [comunidad](https://processing.org/overview/).

Como se trata de un lenguaje de introducción que trabaja con su propia IDE, puedes avanzar rápido en su exploración si es que recuerdas el *shortcut*: Crtl + Shift + F, con el que puedes buscar referencias para las palabras reservadas del lenguaje (a lo mismo se llega con botón Ayuda → Buscar en la referencia). Además, cuando estés escribiendo, puedes ordenar el *sketch* con otro *shortcut*: Crtl + T (a lo que se llega en con el menú en Editar →  Autoformato).

En este caso, al programa no le llamaremos *script* como lo hacíamos en el contexto de una biblioteca de JavaScritp. En processing le llamaremos *sketch*, porque se trata de un boceto.

La base de todo *sketch* de Processing es: 

```
void setup() {
  size(400,400);
}
void draw() {
}

```
