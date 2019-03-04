# p5.js → Clase 1 → jueves 14 de marzo

### Conceptos básicos de programación en web

#### Introducción

[p5.js](https://p5js.org/es/) es una [biblioteca de JavaScript](https://es.wikipedia.org/wiki/Biblioteca_de_JavaScript), que reinterpreta a [Processing](https://processing.org/) en función de la web actual. 

Esta biblioteca fue creada por [Lauren McCarthy](http://lauren-mccarthy.com/) y es desarrollada por una comunidad de colaboradores, con apoyo de [Processing Foundation](https://processingfoundation.org/) y [NYU ITP](https://forms.tisch.nyu.edu/page/s/itp-landing). Entre los colaboradores hay 2 chilenos, que se han encargado de la traducción de referencia y tutoriales al castellano; ellos son: [Guillermo Montecinos](https://twitter.com/guillermolooped) y [Aarón Montoya-Moraga](https://twitter.com/montoyamoraga)

En términos generales, para sacarle el mejor provecho a una [biblioteca de JavaScript](https://es.wikipedia.org/wiki/Biblioteca_de_JavaScript), necesitamos conocer [Javascript](https://developer.mozilla.org/es/docs/Learn/Getting_started_with_the_web/JavaScript_basics#%C2%BFQu%C3%A9_es_JavaScript_realmente) (mientras más conozcamos de este lenguaje de programación, mejor). También necesitamos conocer HTML y CSS. 

#### HTML

HTML es HyperText Markup Language. Su bloque constructivo más básico es el elemento. Cada elemento se escribe, generalmente, entre etiquetas que pueden o no contener atributos:

```<etiqueta atributo="valor">contenido</etiqueta>```

#### CSS

CSS es Cascading Style Sheets. Su bloque constructivo más básico es la regla. Cada regla se inicia con su(s) selector(es), para luego contener, entre paréntesis de llave, determinadas propiedades: 

```selector{propiedad:valor;}```

#### JavaScript

Con JavaScript se pueden escribir programas que serán ejecutados en un navegador web. Estos programas pueden ser incluidos o vinculados a una página web a modo de script, entre etiquetas `<script>…</script>`. 

En un programa de JS podemos encontrar código y datos; código es la parte que permite redactar instrucciones. La parte de datos es la que permite almacenar información con la que podríamos condicionar las instrucciones. Así, por ejemplo, podemos escribir: 

```
<script>
  var d = new Date();
  var h = d.getHours();
  var saludo;
  if ((h >= 6) && (h < 12)) { 
    saludo = "buenos días"
  } else if ((h >= 12) && (h < 20)) {
    saludo = "buenas tardes"
  } else { 
    saludo = "buenas noches"
  }
  document.write(saludo);
  // Para otros despliegues del saludo, ver https://www.w3schools.com/js/js_output.asp  
</script>
```

En este ejemplo de JS se crea una variable `d`, a la que se le encarga almacenar [la fecha](https://developer.mozilla.org/es/docs/Web/JavaScript/Referencia/Objetos_globales/Date) en la que una página web es visualizada. Luego, a una variable `h` se le encargar almacenar [solo la hora](https://developer.mozilla.org/es/docs/Web/JavaScript/Referencia/Objetos_globales/Date/getHours) en tal fecha. Después se crea una variable con el nombre `saludo`, en la que no se almacenan datos de forma inmediata. Mediante [condiciones](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/if...else) (`if (…){…}`, `else if (…){…}`, `else{…}`) se le encargará a la variable `saludo` almacenar la cadena de caracteres que corresponda a la hora en que se visualiza la página web. Finalmente, se escribe el valor correspondiente del `saludo`.

El mismo programa puede ser escrito en un documento aparte, con extensión `.js`. Si a este programa le llamamos `saludo.js` y lo dejamos en la misma carpeta que contiene una página web, podríamos vincularlo escribiendo: `<script src="saludo.js"></script>`. Dentro del documento no tenemos que incluir las etiquetas `<script>…</script>`. 

Como JS es un lenguaje de programación que comenzamos a explorar, es recomendable tener a mano algún ayudamemoria: 

- [JS CheatSheet](https://htmlcheatsheet.com/js/)

- [WebsiteSetup JavaScript Cheat Sheet](https://websitesetup.org/javascript-cheat-sheet/)

- [Cheatography JavaScript Cheat Sheet](https://www.cheatography.com/davechild/cheat-sheets/javascript/pdf_bw/)

Además, tenemos que tener presente que JavaScripo necesita del [DOM (Document Object Model)](https://www.w3schools.com/js/js_htmldom.asp), Modelo en Objetos para la Representación de Documentos. A través del DOM, los programas escritos en JS pueden acceder y modificar el contenido, estructura y estilo de la representación de la página web. Por ejemplo:

```
<script>
  document.getElementById("unique").style.color="#FF0000";
</script>
```
En este ejemplo accedemos a la representación del documento para obtener el elemento de identidad `unique`. Este elemento será modificado con un cambio de estilo: Su color visto pasará a ser rojo. 

Modificar la representación de una página web es como "photoshopear" una imagen. Si capturaste 3 elementos y con Photoshop agregas un cuarto, en ningún caso modificas la realidad capturada, pero todos podrán ver una imagen con 4 elementos. Lo que modificas es lo representado. No se puede alterar lo presentado.

#### p5.js

Si sabes algo de [Processing](https://processing.org/), las estructuras básicas en [p5.js](https://p5js.org/es/) te resultarán familiares. Hay 2 partes. Una que se ejecuta una única vez, al inicio, y otra que se ejecuta una y otra vez, para dibujar lo que sea que se programe.

```
function setup(){
	//colocas acá lo que se ejecuta una única vez
}

function draw(){
	//colocas acá lo que necesitas dibujar una y otra vez
}
```

Si nunca has usado [Processing](https://processing.org/), la introducción por la vía de [p5.js](https://p5js.org/es/) te podrá resultar útil. 

Importante será recordar que la diferencia entre Processing y p5.js está en el lenguaje de programación base de cada proyecto: Processing se levanta sobre Java, mientras p5.js lo hace sobre JavaScript. Acá las apariencias no los deberían engañar. Estos lenguajes que no se relacionan directamente; "java" no funciona como sufijo ni debe usarse como nombre abreviado de "javascript"… Hacerlo sería como llamarle "cama" al "camarada", porque no se relacionan como "cama" y "camarote".

Puedes contar con más información oficial de p5.js, es recomendable consultar:

- [Introducción a la Programación con p5.js](https://www.youtube.com/watch?v=DtAHvMjMzMQ)

- [p5.js | get started](https://p5js.org/es/get-started/)

- [The Coding Train - p5.js tutorials](https://www.youtube.com/user/shiffman/playlists?shelf_id=14&view=50&sort=dd)
