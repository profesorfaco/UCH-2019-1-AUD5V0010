# p5.js → Clase 3 → jueves 27 de marzo

[p5.js](https://p5js.org/es/get-started/) es una biblioteca de JavaScript. Todo lo revisado [la clase recién pasada](https://github.com/profesorfaco/AUD5V0010-2019/tree/master/clase-02#p5js--clase-2--jueves-20-de-marzo) respecto de el uso de datos en JavaScript aplica en p5.js:

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

