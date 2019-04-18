# Processing → Clase 5 → jueves 18 de abril

Hoy comenzaremos a trabajar con Processing. Para ello es necesario tener instalada su última versión: [Processing 3](https://processing.org/download/)

Varias cosas de las que ya vimos en p5.js pueden ser aplicadas en Processing. Pero no olvides: 

- p5.js es una biblioteca de [JavaScript](https://es.wikipedia.org/wiki/JavaScript), que reinterpreta a Processing.

- Processing está basado en [Java](https://es.wikipedia.org/wiki/Java_(lenguaje_de_programación))

Al tener esa base, una de las diferencias que no se pueden olvidar: Cambia la manera de declarar las variables. En JavaScript es muy sencillo crear variables, porque a todo evento se usa una única palabra reservada (`var`). En Processing, corresponde especificar qué tipo de dato contendrá la variable al momento de crearla, sea a nivel global o local. 

| Tipo de dato                                               | var    | ejemplo        | 
|:-----------------------------------------------------------|:------:|:---------------|
| Cuando la variable contiene un número entero               | int    | int a = 10;    |
| Cuando la variable contiene un número flotante             | float  | float a = 1.1; |
| Cuando la variable contiene un caracter                    | char   | char a = 'A';  |
| Cuando la variable contiene una secuencia de caracteres    | String | String a = "Ayayay" |
| Cuando la variable contiene un arreglo de números enteros  | int[]  | int[] a = { 10 , 20 , 30 }  |

Esta diferencia nos acompañará en la exploración de Arduino (donde también corresponde declarar las variables con una palabra reservada al tipo de dato que le corresponda contener).

- - - - - - - - - - - -  - -

También habría que considerar que **Processing** se ha presentado desde sus inicios como: 

- un [lenguaje](https://processing.org/reference/) que sirve de introducción a la programación; 

- una [IDE](https://processing.org/reference/environment/) (Integrated Development Environment) que puedes [descargar](https://processing.org/download/); y

- una [comunidad](https://processing.org/overview/).

**Esta condición didáctica y colaborativa, nos entrega una IDE con algunas funciones que pueden permitirnos avanzar rápido en su exploración:** 

- el *shortcut*: Crtl (PC) o cmd (Mac) + ⇧ Shift + F**, con el que puedes buscar referencias para las palabras reservadas del lenguaje (a lo mismo se llega con botón Ayuda → Buscar en la referencia). 

- el *shortcut*: Crtl (PC) o cmd (Mac) + T, con el que ordenas el código (a lo que se llega en con el menú en Editar →  Autoformato).

- el modo "Tweak", que se inicia con el *shortcut*: Crtl (PC) o cmd (Mac) + ⇧ Shift + T**, con el que se ejecuta el código escrito y te permite ajustes en "tiempo real". 

- una serie de ejemplos que se abren con el *shortcut*: Crtl (PC) o cmd (Mac) + ⇧ Shift + O**.

- - - - - - - - - - - -  - -

Al programar en Processing generamos *Sketches*. Esto viene a reforzar la idea didáctica: son bocetos, pruebas… y así vamos aprendiendo sobre programación. Y la base de todo *sketch* de Processing es: 

```
void setup() {
  size(400,400);
}
void draw() {
}
```

### Referencias

https://github.com/processing/processing/wiki/Changes-in-3.0
