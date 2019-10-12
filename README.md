# Pentagramification: A Visual Approach to Data Sonification
## Roberto Rojas Segnini y Sergio Hidalgo Fonseca
### Tecnológico de Costa Rica
### Curso: Visualización de Información
#### Special thanks to professor Armando Arce for sharing his knowledge with us, his students.


# ABSTRACT
In this paper we present an algorithm to transform numeric values into musical symbols and notes, in order to create a visual representation of the data using a staff-like (musical pentagram) structure. The method is based on the basic rules of musical notation and written music; the well-known linear graphs and the theories of Auditory Displays and Sonification.

# Introducción
Los datos son valiosos: números, cantidades de ventas y compras, altitudes/elevaciones, muertes, nacimientos, poblaciones... Los datos, organizados y almacenados correctamente, son extremadamente valiosos para encontrar patrones, predecir comportamientos y generar información relevante para la toma de decisiones, entre muchas otras cosas.

Sin embargo, los datos, por sí solos, no sirven de mucho. Una simple representación en forma de texto de grandes cantidades de datos es poco conveniente y difícil de interpretar. Ante este problema surge la pregunta: ¿cómo hacer más atractivos y entendibles los datos?

La primera solución, y la más aparente, es encontrar otra representación visual que compile los aspectos más relevantes escritos en los datos y los muestre, utilizando figuras u objetos visuales que sean más atractivos para el lector. De ahí nace la visualización de información.

Así, para representar datos se utilizan barras, pasteles, líneas, puntos en un plano cartesiano, puntos en un ambiente tridimensional, sierras, círculos, árboles y demás objetos de carácter visual que puedan transmitir información. A estos elementos se agregan variables como el color, el tamaño y la posición para compactar mayor información en un espacio visualmente agradable.

Por su facilidad de comprensión, de creación y uso, las técnicas de visualización de información son ampliamente utilizadas y están ya estandarizadas a nivel mundial (todos entendemos lo que significan las barras de un gráfico de barras o los pedazos de un gráfico de pastel). A pesar de que estas técnicas se centran en un sentido humano para captar la información que intentan transmitir: la vista.

Es acá donde entran en juego otro tipo de técnicas que utilizan la audición como su receptor principal de la información: las Representaciones Auditivas; así como una de sus ramificaciones más importantes: la Sonificación. En este documento se discutirán a profundidad estos términos.

# Representación Auditiva y Sonificación
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

# La música, los pentagramas y los datos
