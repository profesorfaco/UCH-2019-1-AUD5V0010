# Clase 6 → Miércoles 11 de abril

### Canvas

**Canvas** es un elemento HTML. Literal y obviamente, se trata de un lienzo. Es usado para dibujar gráficos con scripts (normalmente JavaScript). 

En el código que sigue tengo un botón y un lienzo. Al presionar el botón, se ejecuta una función (pinta). Esta función dibuja algo en el lienzo de identidad "este". Lo que dibuja es un cuadrilátero lleno, de tamaño 100 x 100 pixeles. El cuadrilátero está ubicado a 25 pixeles del extremo izquierdo del lienzo y 25 pixeles de su extremo superior.

```
<button type="button" onClick="pinta()">Pinta</button>
<canvas id="este" width="150" height="150" style="background:silver"></canvas>
<script>
function pinta() {
var canvas = document.getElementById('este');
if (canvas.getContext) {
var ctx = canvas.getContext('2d');
ctx.fillRect(25, 25, 100, 100);
  }
}
</script>
```

### p5.js 

[p5.js](https://p5js.org/es/get-started/) es una biblioteca de JavaScript creada para hacer la programación accesible a artistas, diseñadores, educadores y principiantes. Si ya conocen [Processing](https://processing.org/reference/), esta biblioteca [podría resultar aun más accesible](https://github.com/processing/p5.js/wiki/Processing-transition), a condición de recordar lo siguiente: Processing se basa en Java, mientras p5.js, que es una reinterpretación de Processing, hecha biblioteca de JavaScript (Java y JavaScript se parecen tanto como una cama a un camarín; digo esto para que no se engañen con sus nombres, creyendo que el parecido podría ser como el de la cama al camarote).

Con p5.js podemos escribir scripts como "sketches" (término usado en Processing para referirse a los bocetos de programas que uno puede escribir). Éstos se ejecutarán dentro de un `<canvas></canvas>` que esta misma biblioteca de JavaScript se encarga de crear. 

Por ejemplo, algo como lo que vimos más arriba, se escribiría de la siguiente manera:

```
<body>
<div id="este"></div>
<!--incluyo la biblioteca-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.6.0/p5.min.js"></script>
<!--escribo el script/sketch-->
<script>
function setup() {
	var canvas = createCanvas(150, 150);
	canvas.parent('este');
}
function draw() {
	fill(0);
	rect(25,25,100,100);
}
</script>
</body>
```

Y eso se parece mucho a lo que tendría que escribir en Processing:

```
void setup() {
	size(150, 150);
}

void draw() {
	fill(0);
	rect(25, 25, 100, 100);
}
```

En esta clase partiremos trabajando con el [p5.js web editor](https://alpha.editor.p5js.org/). Minutos más tarde pasaremos a trabajar con los contenidos del repositorio, usando el editor de código que habitualmente han usado en sus computadores.

En caso que necesiten volver sobre la partida de la clase, podrían consultar la página [First steps with p5.js](https://creative-coding.decontextualize.com/first-steps/), de Allison Parrish.

**En caso que necesiten referencias:**

- Primero pueden revisar [una panorámica de las principales características de p5.js](https://github.com/processing/p5.js/wiki/p5.js-overview), escrita por [Lauren McCarthy](https://github.com/lmccart), la creadora de esta biblioteca de JavaScript.  

- Luego pueden buscar a [Daniel Shiffman](http://shiffman.net/), el loquillo detrás de [The Coding Train](https://www.youtube.com/thecodingtrain/). Sus listas de reproducción en [p5.js tutorials - JavaScript, HTML, and CSS](https://www.youtube.com/user/shiffman/playlists?view=50&sort=dd&shelf_id=14) pueden resultar de gran ayuda.

- Y siempre podrán consultar [las referencias de la página de p5.js](https://p5js.org/es/reference/).

#### Ejercicio:

Después de una explicación general, corresponde hacer lo siguiente:

- Modificar `index.html` para que cambie el color de fondo según la temperatura del lugar escogido;

- modificar `sketch-earthquake-1.html` para que se muestre en gráficos de barra;

- modificar `sketch-money.html` para que se muestre el cambio del valor del Euro;

- modificar `sketch-regiones.html` para que se muestren las densidades; y

- modificar `sketch-titanic.html` para que se muestren líneas, que mejorarían la comprensión de [la visualización](https://github.com/profesorfaco/enedi/blob/gh-pages/README.md#introducci%C3%93n-a-la-visualizaci%C3%93n).

Pueden hacer las modificaciones en el orden que estimen conveniente.

- - - - - - 

[Clase anterior](https://github.com/profesorfaco/dno037-2018-05) | [Siguiente clase](https://github.com/profesorfaco/dno037-2018-07)
