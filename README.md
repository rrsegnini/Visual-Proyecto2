# Pentagramification: A Visual Approach to Data Sonification
## Roberto Rojas Segnini y Sergio Hidalgo Fonseca
### Tecnológico de Costa Rica
### Curso: Visualización de Información
### I Semestre del 2018
#### Special thanks to professor Armando Arce for sharing his knowledge with us, his students.


# ABSTRACT
In this paper we present an algorithm to transform numeric values into musical symbols and notes, in order to create a visual representation of the data using a staff-like (musical pentagram) structure. The method is based on the basic rules of musical notation and written music, the well-known linear graphs and the theories of Auditory Displays and Sonification.

# 1. INTRODUCCIÓN
Los datos son valiosos: números, cantidades de ventas y compras, altitudes/elevaciones, muertes, nacimientos, poblaciones... Los datos, organizados y almacenados correctamente, son extremadamente valiosos para encontrar patrones, predecir comportamientos y generar información relevante para la toma de decisiones, entre muchas otras cosas.

Sin embargo, los datos, por sí solos, no sirven de mucho. Una simple representación en forma de texto de grandes cantidades de datos es poco conveniente y difícil de interpretar. Ante este problema surge la pregunta: ¿cómo hacer más atractivos y entendibles los datos?

La primera solución, y la más aparente, es encontrar otra representación visual que compile los aspectos más relevantes escritos en los datos y los muestre, utilizando figuras u objetos visuales que sean más atractivos para el lector. De ahí nace la visualización de información.

Así, para representar datos se utilizan barras, pasteles, líneas, puntos en un plano cartesiano, puntos en un ambiente tridimensional, sierras, círculos, árboles y demás objetos de carácter visual que puedan transmitir información. A estos elementos se agregan variables como el color, el tamaño y la posición para compactar mayor información en un espacio visualmente agradable.

Por su facilidad de comprensión, de creación y uso, las técnicas de visualización de información son ampliamente utilizadas y están ya estandarizadas a nivel mundial (todos entendemos lo que significan las barras de un gráfico de barras o los pedazos de un gráfico de pastel). A pesar de que estas técnicas se centran en un sentido humano para captar la información que intentan transmitir: la vista.

Es acá donde entran en juego otro tipo de técnicas que utilizan la audición como su receptor principal de la información: las Representaciones Auditivas; así como una de sus ramificaciones más importantes: la Sonificación. En este documento se discutirán a profundidad estos términos.

# 2. MARCO TEÓRICO
## 2.1. Representación Auditiva y Sonificación
Las Representaciones Auditivas (del inglés *Audiory Displays* son todas
aquellas técnicas que utilizan el sonido como su base principal para la
trasmisión de información, a partir de un conjunto de datos. Estas
técnicas se componen de "todos los aspectos de los sistemas de
interacción humano-máquina, incluidos el *setup*, parlantes o audífonos,
modos de interacción con el *display* del sistema y cualquier otra
solución técnica para la recolección, procesamiento y computación
necesarias para obtener sonido como respuesta a los datos" (Hermann,
Hunt & Neuhoff, 2011, p.1).

Las representaciones visuales poseen un problema evidente: para poder
obtener la información desplegada, es necesario ver la representación.
La necesidad de usar la vista para recolectar datos importantes
dificulta la realización de varias tareas al mismo tiempo
(*multitasking*). Por esta razón, en situaciones donde se necesite usar
la vista para recolectar otro tipo de datos (especialmente espaciales),
por ejemplo, cuando se está manejando un vehículo; o cuando no se cuenta
del todo con el sentido de la vista (personas ciegas, lugares con poca
visibilidad o humo/neblina), es necesario poseer algún tipo de
representación de datos que utilice métodos que no dependan de la visión
para transmitir información (Parseihian, Ystad, Aramaki & Kronland,
2015).

Las representaciones auditivas vienen a solucionar el problema
mencionado. Así, una persona ciega puede detectar obstáculos en su
camino o encontrar objetos utilizando dispositivos auditivos que
utilicen sonidos espacio-temporales para guiar a la persona; o un
cirujano utiliza dispositivos auditivos que le ayudan a guiar con
precisión su mano a través de un corte en una cirugía (Parseihian,
Ystad, Aramaki & Kronland, 2015).

Ya tenemos una solución al problema, pero ¿cómo hacer para que estos
dispositivos funcionen correctamente? Es decir, que transmitan sonidos
que realmente representen los datos con los que el dispositivo trabaja.
En este aspecto entra en juego la **sonificación**, la cual es un
subtipo de dispositivos o representaciones auditivas que utilizan
sonidos no-verbales. La sonificación es la "transformación de datos
\[...\] en señales acústicas con el propósito de facilitar la
comunicación o interpretación \[de los datos\]" (Hermann, Hunt &
Neuhoff, 2011, p.9). En síntesis, la sonificación se encarga de tomar un
conjunto de datos, analizar sus relaciones y crear señales sonoras a
partir de estos.

Dentro de la rama de la sonificación existen diversas técnicas para el
análisis y creación de los sonidos. En este documento nos centraremos en
la **sonificación artificial**, la cual utiliza "características del
sonido como el tono, la intensidad del sonido, el tempo, el brillo, etc.
para transmitir información de guía al usuario" (Parseihian et al.,
2015, p.5).

De este modo, si buscamos, por ejemplo, representar de manera auditiva
datos sobre la velocidad de un huracán X, se puede utilizar la
intensidad del sonido para indicar la variación en fuerza del huracán; o
modificar el tempo (la velocidad) de los sonidos para marcar cambios en
la velocidad de los vientos.

## 2.2. La música, los pentagramas y los datos
<img src="https://github.com/rrsegnini/Visual-Proyecto2/blob/master/imgs/Lacrimosa.jpg" 
width="400" alt="Extracto de la Lacrimosa del Réquiem en re menor, K. 626 de Mozart.">
**Fig. 1**. *Extracto de la Lacrimosa del Réquiem en re menor, K. 626 de Mozart.*

La música es, posiblemente, la técnica de Representación Auditiva más
importante de la historia de la humanidad. Una canción puede transmitir
sentimientos e información simplemente con la secuencia rítmica de
sonidos, de frecuencias.

Como explica Hedge (2013), la Representación Auditiva utiliza, a su
favor, el principio de compatibilidad sonora y, específicamente, el
hecho de que las respuestas a estímulos pueden ser aprendidas: se
aprende que una sirena bulliciosa indica alerta, o que una sección lenta
de violines indica melancolía o tristeza. Del mismo modo en que las
representaciones visuales utilizan el color rojo para indicar valores
críticos o intensos, las representaciones auditivas utilizan sonidos
fuertes para generar una respuesta de alerta.

Este aprendizaje permite a la música (y a otro tipo de sonidos)
transmitir mensajes que el oyente puede percibir, analizar e
identificar, según sus experiencias pasadas. Por cientos de miles de
años, la música se ha encargado de transmitir, generación tras
generación, información sobre las sociedades, los individuos y sus
sentimientos, pensamientos y acciones.

Pero un análisis epistemológico de la música va más allá de los alcances
de este documento. Nos centraremos, por lo tanto, en notación musical.
Como explica Schmidt (2008), la "música escrita es muy útil, por muchas
de las mismas razones por las que las palabras escritas son útiles"
(p.1). Para poder escribir música en papel de manera en que no se
pierdan elementos importantes en el proceso, la notación musical provee
reglas específicas y detalladas para explicar todo tipo de marcas,
estilos, ritmos, tiempos, melodías, etc.

La base de la notación musical (el lienzo) es el pentagrama (llamado
*staff* en inglés). El pentagrama consiste en cinco líneas horizontales
paralelas, en las cuales se colocan las notas que componen una obra
musical. Los espacios entre líneas también son utilizados para colocar
notas musicales. Asimismo, todo tipo de símbolos son colocados en el
pentagrama para denotar cosas como acentos, marcas de tempo, compases,
marcas dinámicas, entre otras (Schmidt, 2008). Como se puede observar en
la Fig. 1, el pentagrama se repite a lo largo de la página y las notas
son acomodadas, siguiendo un orden cronológico de aparición en la obra.
Todo tipo de símbolos pueden ser observados en la partitura.

Por medio de la notación musical, es posible tomar música, sonidos, y
convertirlos a una representación visual. Esta representación visual,
propulsada por el pentagrama, posee el potencial de convertirse, de
nuevo, en música y sonidos. Si se toma una partitura y se repiten las
instrucciones en ella escritas, se pueden crear representaciones
auditivas a partir de un dispositivo visual. En este detalle yace una
característica especial de la música escrita: es tanto una
representación visual como auditiva al mismo tiempo.

## 2.3. ¿Visuales o Auditivos? R/ Ambos
Como hemos visto, tanto las representaciones visuales como las auditivas
tienen sus ventajas y desventajas. Es normal, por lo tanto, preguntarse
cuál de estos dos acercamientos a la transmisión de información es
mejor: ¿visuales o auditivos? En este documento se propone usar ambas,
pero entraremos, primero, en una discusión sobre los principales puntos
argumentativos y hechos a favor y en contra de ambas representaciones.

"La memoria de reconocimiento auditiva es inferior a la memoria de
reconocimiento visual", afirman Cohen, Horowitz y Wolfe (2009), quienes
llegaron a esa conclusión tras realizar una serie de experimentos en los
que se probaba la veracidad y precisión con la cual los sujetos de
estudio podían recordar y detectar sonidos que habían sido previamente
reproducidos. El estudio encontró que la precisión con la que recordaban
los sonidos era de tan solo un 78%. Este porcentaje está muy por debajo
de otros estudios similares que fueron realizados con imágenes en lugar
de sonidos, los cuales mostraron un porcentaje de acierto del 98% y 96%
(Cohen, Horowitz & Wolfe, 2009)

El panorama no parece alentador para representaciones visuales. Sin
embargo, los investigadores apuntan que el experimento no sugiere
conclusiones sobre la memoria auditiva de largo plazo. Además, las
representaciones auditivas son útiles en combinación con otros campos.
Como escriben Bywater y Middleton (2016), "el sistema auditivo humano
tiene la sofisticación y la habilidad para interpretar sonidos "usando
múltiples capas de entendimiento"" (p.2). Asimismo, recalcan que el uso
de representaciones auditivas pueden generar la aparición y detección de
patrones que, de otro modo, serían no-detectables.

A pesar de las diferencias, en este *paper* proponemos un método para
combinar las características especiales de ambas representaciones.

La **pentagramificación** (combinación de las palabras *pentagrama* y
*sonificación*) es la técnica propuesta en este documento. Detalles de
su implementación serán explicados más adelante. Por ahora, definiremos
la **pentagramificación** como el método de tomar datos numéricos y
convertirlos en notas musicales que serán colocadas en un pentagrama. El
resultado final de este método es una pieza musical que representa el
comportamiento de los datos de entrada.

# 3. IMPLEMENTACIÓN
## 3.1. Descripción
<img src="https://github.com/rrsegnini/Visual-Proyecto2/blob/master/imgs/graph.png" 
width="400" alt="Ejemplo genérico de gráfico de líneas.">
**Fig. 2**. *Ejemplo genérico de gráfico de líneas.*

El algoritmo es, en el fondo, una modificación de los gráficos de
líneas. Estos gráficos muestran la tendencia de un conjunto de datos
mediante líneas y puntos en un plano cartesiano. Generalmente esta
tendencia está asociada a una progresión cronológica de los datos.

Sin embargo, un gráfico de líneas es una representación solamente visual
de los datos. Y como se mencionó anteriormente en el documento, otros
sentidos como el de la audición proveen nuevas maneras de percibir y
analizar los datos. Con el algoritmo de pentagramificación es posible
crear un gráfico de líneas que, además, es una pieza musical que puede
ser interpretada con algún instrumento. De este modo, se generan dos
dimensiones de transmisión y percepción de los datos: visual y auditiva.

<img src="https://github.com/rrsegnini/Visual-Proyecto2/blob/master/imgs/thelick.jpg" 
width="400" alt="Ejemplo de un pentagrama musical simple.">
**Fig. 3**. *Ejemplo de un pentagrama musical simple.*

Un pentagrama musical posee una estructura muy similar a estos gráficos
mencionados: las notas se colocan, de manera cronológica, una después de
la otra sobre las líneas o espacios del pentagrama. La sucesión de notas
crea patrones y tendencias que pueden ser rápidamente identificables
(melodías o motivos). Como se observa en la **Fig.3**, las cuatro
primeras notas (empezando después del 4/4) forman una secuencia
ascendiente; la quinta nota rompe la tendencia y crea un nuevo patrón,
ahora descendiente. Estos patrones son fácilmente identificables a
simple vista, observando la sucesión de notas. Pero son encontrados aún
con más facilidad si se cuenta con una reproducción sonora de lo escrito
en el pentagrama.

Si se observa con cuidado, de nuevo, la **Fig.3**, se puede notar que
las notas poseen diferentes símbolos que, aunque similares, denotan un
aspecto de suma importancia para el músico: el tiempo que dura la nota.

Así, las cuatro notas pegadas entre sí son llamadas *corcheas*, la
quinta nota es una *negra* y la última nota, representada por un óvalo,
es una *redonda*. Para entender estas figuras no es necesario entrar en
detalles sobre notación y teoría musical. Simplemente se debe saber que
una corchea dura menos tiempo que una negra; y que una negra, a su vez,
dura menos que una redonda.

<img src="https://github.com/rrsegnini/Visual-Proyecto2/blob/master/imgs/notas.png" 
width="400" alt="Notas ordenadas por su valor, de menor a mayor.">
**Fig. 4**. *Notas ordenadas por su valor, de menor a mayor.*

Para la pentagramificación, se utilizaron un total de 10 símbolos. Los
cinco principales son la semicorchea, la corchea, la negra, la blanca y
la redonda. Además, cada uno de estas notas puede ser alargada con la
colocación de un puntillo al lado derecho de la nota. Es decir, una
negra con puntillo vale un poco más que la negra, y así para todas las
demás notas. En la **Fig.4** se muestran, en orden ascendiente de valor
(duración), las 10 notas utilizadas.

Como se explicó, el eje X del gráfico se utiliza para colocar los datos
(notas) según su orden de aparición en el archivo de datos (ver sección
**Conjunto de datos**). Este eje es especialmente útil si los datos se
encuentran ordenados cronológicamente.

Para el eje Y, se utiliza la distribución regular de un pentagrama en
clave de Sol: cinco líneas, cuatro espacios; la primera línea (de abajo
hacia arriba) corresponde a la nota Mi; el espacio siguiente a Fa, y así
sucesivamente con las notas Sol, La, Si, Do y Re.

<img src="https://github.com/rrsegnini/Visual-Proyecto2/blob/master/imgs/notaspenta.png" 
width="500" alt="Distribución de las notas utilizadas en el algoritmo de pentagramificación.">
**Fig. 5**. *Distribución de las notas utilizadas en el algoritmo de pentagramificación.*

En la **Fig.5** se puede observar que la posición de la nota en el
pentagrama cambia el nombre de la misma. Las notas que poseen un ""\#""
antes de la figura son *sostenidos*. En este caso, todas las figuras son
negras, pero las figuras varían según los datos ingresados al algoritmo.

Entre más abajo esté la nota en el pentagrama, más grave es su sonido al
ser ejecutada. La posición en el eje Y, por lo tanto, es proporcional al
tono (nota graves y notas altas). Esta correlación es utilizada para
representar los datos de menor tamaño como notas graves y los valores
grandes como notas más agudas.

El algoritmo utiliza **12** notas en total.

## 3.2. Proceso de simplificación
La teoría musical es complicada: transcribir sonidos a un papel no es
tarea fácil y los pentagramas son muestras de ello. La cantidad de
símbolos, ligaduras, detalles e instrucciones inscritas en una partitura
resultan abrumadoras para cualquiera que no posea amplios conocimientos
en teoría musical.

Con el fin de evitar la saturación de información visual, pero
conservando el enfoque de sonificación de los datos, se simplificó el
pentagrama a tres elementos principales: las líneas, el tipo de nota
(blanca, redonda, negra...) y la posición de la nota en el pentagrama.
Con estos tres elementos se puede representar un conjunto de datos y, al
mismo tiempo, crear una pieza musical simple que puede ser interpretada
y analizada desde un punto de vista auditivo.

Un elemento que se conservó de los gráficos de tendencias son las líneas
que conectan cada punto, con el objetivo de mostrar con mayor claridad
el flujo de las notas en el gráfico.

## 3.3. Conjunto de datos
<img src="https://github.com/rrsegnini/Visual-Proyecto2/blob/master/imgs/Datos.png" 
width="400" alt="Extracto de los datos de ejemplo utilizados en la implementación de la técnica.">
**Fig. 6**. *Extracto de los datos de ejemplo utilizados en la implementación de la técnica.*

Para el funcionamiento óptimo del algoritmo, se recomienda poseer al
menos dos columnas/conjuntos de datos numéricos. En el caso específico
de la implementación realizada, se utilizó, con el objetivo de facilitar
la organización y lectura de los datos, un archivo JSON que contiene
tres columnas: un nombre, un valor asignado y un tamaño (ver **Fig.
2**).

## 3.4. Algoritmo de pentagramificación
El algoritmo en sí es bastante sencillo. Consta de una etapa de
**mapeo** y una segunda etapa de **graficación**.

En el mapeo, primero se toman los valores de la segunda columna (del
JSON), la cual contiene datos numéricos, y se saca el menor y el mayor
de los elementos. Estos dos valores son usados para asignar a cada
número una nota de las doce disponibles (del Mi al Re\#). Ver **Fig.5**.

`map(data[i].value,minValue,maxValue,1,12)`

Seguidamente, se realiza el mismo proceso con la tercera columna de
datos, pero a estos se les asigna una figura musical de las 10
disponibles (ver **Fig.4**).

`map(data[i].size,minSize,maxSize,1,10)`

Una vez que se tienen los datos debidamente formateados y con una figura
y nota musical asignados, se procede a realizar la graficación.

En el código mostrado, la *i* representa un contador utilizado para
recorrer la estructura indexada (tabla, lista) con los datos del
archivo.

# 4. EVALUACIÓN
<img src="https://github.com/rrsegnini/Visual-Proyecto2/blob/master/imgs/penta1.png" 
width="600" alt="Ejemplo de diagrama realizado con el algoritmo de pentagramificación.">
**Fig. 7**. *Ejemplo de diagrama realizado con el algoritmo de pentagramificación.*

<img src="https://github.com/rrsegnini/Visual-Proyecto2/blob/master/imgs/penta2.png" 
width="600" alt="Otro ejemplo de diagrama realizado con el algoritmo de pentagramificación.">
**Fig. 8**. *Otro ejemplo de diagrama realizado con el algoritmo de pentagramificación.*

En las **Figuras 7 y 8** se muestran dos ejemplos de diagramas
realizados con el algoritmo de pentagramifiación presentado en este
documento. Los conjuntos de datos utilizados siguen el esquema
presentado en la sección **3.3.**.

Como se puede observar, el algoritmo genera un pentagrama que puede ser
leído como una partitura musical. Las líneas entre notas ayudan a
encontrar y diferenciar el flujo de los eventos.

# 5. CONCLUSIONES
El campo de la sonificación y las representaciones auditivas son un área
de estudio en proceso de expansión. Poco a poco, nuevas técnicas surgen
y muestran resultados positivos a la hora de transmitir información;
algunas otras técnicas auditivas quedan cortas ante sus contrapartes
visuales.

La combinación de técnicas tanto auditivas como visuales poseen un
potencial grande: en las categorías en las que las representaciones
auditivas no se desempeñan bien, se pueden utilizar ayudas visuales. Y,
para compensar las fallas de las representaciones visuales, se pueden
implementar estructuras auditivas. De este modo, se complementan las
técnicas para crear una experiencia de transmisión y percepción de datos
única.

El algoritmo presentado utiliza una versión extremadamente simplificada
de la notación musical regular. Para crear una partitura completa es
necesario definir muchos más factores e incluir otras variables y
elementos visuales que empobrecerían la simpleza de los gráficos y
dificultarían su interpretación para personas con bajo o nulo
conocimiento musical.

# 5.1. Ventajas sobre el gráfico de líneas
Como mencionamos, el gráfico de pentagrama es una modificación del
gráfico de líneas. La pentagramificación, como es propuesta en este
artículo, posee diversas ventajas sobre el gráfico tradicional
mencionado.

La ventaja más obvia es la influencia directa de la sonificación y sus
ramas de estudio. Todo gráfico de pentagrama posee la información
necesaria para convertirse en una pieza musical (conjunto se sonidos).
Los puntos están ya ordenados, cada uno con una nota y una duración
asignada.

La segunda ventaja es la mencionada **duración de la nota**. Los
símbolos en un gráfico de líneas son, normalmente, puntos que transmiten
una variable de información: una tupla con una coordenada del eje X y
una del eje Y; es decir, una posición en el plano. Aunque es posible
utilizar colores o cambios en tamaño para representar otras variables de
información, estas representaciones no son del todo claras.

Los símbolos utilizados en notación musical (ver **Fig.4**) poseen,
intrínsecamente, un valor de duración asignado: la negra dura menos que
la blanca; la blanca dura menos que la redonda y así para todas las
notas. Esta característica de los símbolos es utilizada para asignar una
nueva dimensión de información a lo que antes eran solamente puntos en
un plano XY.

Se puede, entonces, utilizar una segunda variable numérica en el
conjunto de datos (ver **Fig.6**). Estos datos son representados
utilizando el mismo espacio que ocupa la primera columna numérica de
datos. Un solo punto transmite, por lo tanto, dos tipos de información.

# 5.2. Trabajo futuro
El algoritmo puede ser modificado con el fin de generar partituras
(gráficos de pentagramas) más complejos y completos. En el apartado
gráfico, se debe generar una manera para poder concatenar las corcheas y
semicorcheas, tal como se ve en las primeras cuatro notas de la
**Fig.3**.

También se pueden incluir más notas para ampliar la cantidad de valores
en el eje Y.

Otro aspecto a mejorar es el tamaño y el aspecto de las imágenes de las
notas del gráfico. Su tamaño y resolución puede ser ampliado para
mejorar la calidez visual del gráfico.

Por último, es justo agregar la posibilidad de generar, además del
gráfico, una estructura que contenga frecuencias y sus respectivos
tiempos para que los pentagramas generados puedan ser convertidos en
sonidos. De este modo, se crearía una combinación de técnicas visuales y
auditivas más provechosa.

# 6. BIBLIOGRAFÍA
Cohen, M. A., Horowitz, T. S. y Wolfe, J. M. (2009). Auditory
recognition memory is inferior to visual recognition memory. *PNAS, vol.
106, no. 14*. Proceedings of the National Academy of Sciences.

Hedge, A. (2013). Auditory Displays DEA 3250/6510. Cornell University.
Estados Unidos.

Hermann, T., Hunt, A. Neuhoff, J. G. (Eds). (2011). The Sonification
Handbook. Logos Verlag, Berlin, Germany.

Parseihian, G., Ystad, S., Aramaki, M y Kronland, R. (2015). The process
of sonification design for guidance tasks. *Wi: Journal of Mobile Media.
Vol.9, No.2*

Schmidt, C. (2008). Reading Music: Common Notation. *Connexions*. Rice
University. Houston: Texas.
