---
layout: default

---

**Sobre el Proyecto *Vitae***

El proyecto *Vitae* nace de las siguientes necesidades siguientes: 

1. Variedad de textos que deben constituir un archivo digital que englobe textos biográficos. En su mayoría son textos escritos en latín por humanistas italianos y traducidos por el cronista Alfonso de Palencia hacia el año 1491. 
2. Publicación en línea del texto latino y de la traducción en español, y presentar los textos de manera sincrónica con una única interfaz sencilla. 
3. La tradición textual del texto castellano conservamos una única edición publicada en el año 1491. 
4. El texto latino, por el contrario, tiene una tradición textual más compleja, hecho que obliga a plantear la presentación de un 'aparato crítico'. 
5. El traductor para llevar a cabo su traducción utilizó una tercera edición publicada en Venecia en el año 1478 por Nicolás Jenson. Por tanto, las imágenes de ambos textos deben estar disponibles para poder confrontar el texto editado con el original facmisilar. 
6. Cada uno de los textos necesita además un apartado de notas. 
7. Este proyecto está todavía en ciernes y por ello necesita una estructura flexible con la que poder actualizar el marcado de los textos fuente y experimentar facilmente con la presentación web.
8. Aspira además a ser un proyecto colaborativo en el que poder integrar otros participantes.

Teniendo en cuenta estos puntos, creemos además que la edición debe tener las siguientes características que definen la edición académica digital y la filosofía de [xpmethod](http://xpmethod.plaintext.in/), creemos que una buena práctica consiste en:

* Mantener el texto latino y la traducción castellana en ficheros separados y como ficheros fuente, codificados en XML-TEI. 
* Estos ficheros fuente serán integrados bajo forma de texto plano para facilitar su posterior transformación en recursos online e impresos (sitio web, y edición crítica).
* Todos los materiales se ubicarán bajo version control siempre que sea posible para facilitar una copia del trabajo realizado, la redacción de borradores, branches, y prevenir conflictos editoriales. 

A este fin, se propone: <br/>
a. El uso de git / GitHub para todo el material textual. Disponible [aquí](). <br/>
b. El uso de un framework adaptable para facilitar el diseño de la presentación consistente en cajas diferentes.<br/>
c. Mantener los fichero XML-TEI como fuente y como principal estación de trabajo. <br/>
d. Transformar las partes textuales del XML-TEI a través del lenguaje XSLT en ficheros markdown. <br/>
e. Construir la infraestructura de un sitio web simple usando Jekyll. 

In comparison to the existing platforms, our approach has the significant advantage of long-term sustainability: scalability, unified backup and versioning workflows, resilience to bit decay and editorial conflict, and powerful collaboration tools. Most importantly, it is easy to imagine building textual interfaces, critical editions, and online resources to make this rapidly growing archive more accessible to the public.







