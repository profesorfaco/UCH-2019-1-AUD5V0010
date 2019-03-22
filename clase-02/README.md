# p5.js → Clase 2 → jueves 20 de marzo

### Datos

Los datos en JavaScript son contenidos por las [variables](https://es.wikipedia.org/wiki/Variable_(programaci%C3%B3n)). La naturaleza del dato a ser contenido exige un cuidado especial.

Por ejemplo, si el dato a ser contenido por la variable es numérico –sea número entero o decimal–, corresponde escribir:

```var nombre = 123;```

Si el contenido de la variable fuera textual –como cadena de caracteres o *string*–, corresponde escribirlo entre comillas:

```var nombre = "Palabra o palabras";```

Las palabras están entre comillas, los números no; habría que poner atención a un caso que parece estar justo al medio de ambos, pero se trata de un tipo de dato distinto de ambas opciones, se trata del [booleano](https://es.wikipedia.org/wiki/Tipo_de_dato_l%C3%B3gico), que solo admite dos posibilidades: `true` o `false`: 

```var nombre = false;```

Sin olvidar las consideraciones recién mencionadas, podemos avanzar a la variables que contienen un arreglo –array–, que exigen el uso de paréntesis de corchete o cuadrado, y elementos separados por coma: 

```var nombre = [123, "Palabra o Palabras", false];```

Se puede consultar por cada elemento de un arreglo indicando la posición que tenga. Así, por ejemplo, se puede escribir `nombre[0]`para obtener `123`, porque la primera posición en un arreglo es identificada con ese número, y las demás con los sucesivos, o sea, el elemento de segunda posición en un arreglo se obtiene de `nombre[1]`.

Una variable también puede contener un objeto, en este caso usamos paréntesis de llave, y en su interior tenemos pares donde uno denomina y otro es denominado, separados por coma entre ellos:

```var nombre = {dad:"Homer", mom:"Marge", children:["Bart", "Lisa", "Maggie"]}```

Cuando usamos un objeto, podemos pedir cada elemento denominado por su denominador. Así, por ejemplo `nombre.dad` entregaría a `Homer`. Y podemos hacer combinaciones de objetos con arreglos; por ejemplo `nombre.children[1]` entregaría a `Lisa`.

Inspirados en esta notación de objetos en JavaScript nace [JSON](http://json.org/json-es.html), un formato ligero de intercambio de datos que ha devenido en un formato de texto completamente independiente que puede ser analizado, generado, transformado y procesado en distintos lenguajes (ActionScript, [C](https://es.wikipedia.org/wiki/C_(lenguaje_de_programaci%C3%B3n)), C++, C#, ColdFusion, Common Lisp, Delphi, E, Eiffel, Java, [JavaScript](https://es.wikipedia.org/wiki/JavaScript), ML, Objective-C, Objective CAML, Perl, [PHP](https://es.wikipedia.org/wiki/PHP), [Python](https://es.wikipedia.org/wiki/Python), Rebol, [Ruby](https://es.wikipedia.org/wiki/Ruby), Lua, Visual FoxPro).

Si convertimos el ejemplo del objeto de Los Simpsons a JSON, tenemos:

```
{
  "dad":"Homer", 
  "mom":"Marge", 
  "children":["Bart", "Lisa", "Maggie"]
}
```

Puede notarse que, a diferencia del objeto, en JSON el denominador siempre lleva comillas.

Como hablamos de un formato ligero de intercambio de datos, corresponde sumar un apartado que se refiera a las API, el CSV y el XML:

**1. [API](https://es.wikipedia.org/wiki/Interfaz_de_programaci%C3%B3n_de_aplicaciones) es un conjunto de funciones, procedimientos y subrutinas** que pueden ser utilizadas para programar una aplicación que accede a otra aplicación (la sigla API significa interfaz de programación de aplicaciones). Las API que nos interesan en este apartado son las que entregan datos en formato JSON, y entre ellas podemos mencionar a [Weather API](https://openweathermap.org/api), [Mindicador](https://mindicador.cl/), [DataChile](https://es.datachile.io/about/api).

**2. [CSV](https://es.wikipedia.org/wiki/Valores_separados_por_comas) son documentos que simplifican las tablas de una hoja de cálculo** (Excel), donde columnas y filas se reemplazan, respectivamente, por comas y saltos de línea.

Por ejemplo, en nuestra hoja de cálculo podríamos tener los siguientes datos:  


| planet        | diameter      | rotation  |
|:------------- |:------------- |:--------- |
| Mercurio      | 4878          | 58.6667   |
| Venus         | 12100         | 243       |
| Tierra        | 12756         | 1         |
| Marte         | 6787          | 1.03      |
| Júpiter       | 142984        | 0.414     |
| Saturno       | 120536        | 0.426     |
| Urano         | 51108         | 0.718     |
| Neptuno       | 49538         | 0.6745    |

Cuando esta tabla se hace CSV, queda de la siguiente manera:   

```
planet, diameter, rotation
Mercurio, 4878, 58.6667
Venus, 12100, 243
Tierra, 12756, 1
Marte, 6787, 1.03
Júpiter, 142984, 0.414
Saturno, 120536, 0.426
Urano, 51108, 0.718
Neptuno, 49538, 0.6745
```

**3. [XML](https://es.wikipedia.org/wiki/Extensible_Markup_Language) es un lenguaje de marcado (Markup Language) como HTML (HyperText Markup Language), pero extensible (eXtensible)**. Esta última característica hace que su propósito descriptivo ofrezca mayor alcance, permitiéndonos compartir datos como:

```
<root>
   <dad>Homer</dad>
   <mom>Marge</mom>
   <children>
      <element>Bart</element>
      <element>Lisa</element>
      <element>Maggie</element>
   </children>
</root>

```

El ejemplo replica a lo que ya vimos en JSON, y esto no es casual: La popularidad de JSON le ha hecho mucha sobra al uso de XML.

### p5.js 

[p5.js](https://p5js.org/es/get-started/) es una biblioteca de JavaScript creada para hacer la programación accesible a artistas, diseñadores, educadores y principiantes. 

Al tratarse de una biblioteca de JavaScript, todo lo dicho anteriormente sobre las variables aplica en p5.js:

```
<script>
var a = 123;
var b = "Palabra o palabras";
var c = false;
var d = [123, "Palabra o Palabras", false];
var e = {dad:"Homer", mom:"Marge", children:["Bart", "Lisa", "Maggie"]};

function setup() {
	createCanvas(100, 100);
	print(a);
	noLoop;
}
function draw() {
	text(e.children[0], 20, 20);
}
</script>
```

Además, esta biblioteca nos permite tomar datos que sean intercambiados vía [JSON](https://p5js.org/reference/#/p5/loadJSON), [CSV](https://p5js.org/reference/#/p5/loadTable) y [XML](https://p5js.org/reference/#/p5/loadXML). En todos los casos se recomienda crear una variable global, fuera de todo contexto, para asignarle su contenido dentro de una función de pre-carga. 

JSON (JavaScript Object Notation)

```
<script>

var data;

function preload() {
	data = loadJSON("…");
}

function setup() {
	… 
}
function draw() {
	…
}
</script>
```

CSV (Comma Separated Values)

```
<script>

var data;

function preload() {
	data = loadTable("…", "csv", "header");
}

function setup() {
	… 
}
function draw() {
	…
}
</script>
```

XML (eXtensible Markup Language)

```
<script>

var data;

function preload() {
	data = loadXML("…");
}

function setup() {
	… 
}
function draw() {
	…
}
</script>
```

Lo que hace p5.js con loadJSON, loadTable y loadXML es leer los datos y asignarlos a la variable al modo que corresponda, sean números, cadenas de caracteres, booleanos, arreglos u objetos.

Podrás encontrar otras maneras de tomar datos externos en p5.js en [las referencias, bajo el título de IO](https://p5js.org/reference/#group-IO).

#### Referencias

- [Introducción a Datos - Pablo H. Paladino](https://visualizacionuc.github.io/introduccion-datos/)

- [Working with data en YouTube - The Coding Train (Daniel Shiffman)](https://www.youtube.com/playlist?list=PLRqwX-V7Uu6a-SQiI4RtIwuOrLJGnel0r)

- Para validar el JSON: https://jsonlint.com/

- Para poner en línea el JSON ya validado: http://myjson.com/

- Para comenzar a explorar p5.js con su editor en línea: https://editor.p5js.org/
