
# Visualización de datos composicionales en dos y tres dimensiones.

## Resumen

Los datos composicionales se usan en diferentes áreas de la ciencia ya sea en geociencia, ciencia ambiental, biología o medicina.  Los datos composicionales son aquellos datos que suman 1 o 100%.   Así el caso de la composición de alimentos podemos encontrar muestras con proteínas, minerales o lípidos; en el caso de residuos sólidos hallaremos muestras de material orgánico, papel, metal, vidrio, plástico, madera, tierra y otros.
   Sabemos que podemos visualizar composiciones de tres variables  como puntos dentro de un triángulo equilátero y poder dibujar el área que abarca los puntos.  Adicionalmente, como  novedad queremos visualizar una composición de cuatro variables como puntos dentro de un tetraedro y dibujar el volumen que abarca los puntos.
   El objetivo es que el analista pueda ver el comportamiento y obtener decisiones de lo que ve.
           
## Maqueta - diferentes programas
Este trabajo de visualización fue realizado en el año 1996, para proyecto de titulación en la Pontificia Universidad Católica de Valparaíso, y con el apoyo del profesor guía de Estadística.
    Finalmente, el proceso de visualizar se logró hacer usando diferentes programas que no trabajan interrelacionados.  
         Se usó TK/TCL para ver los datos como una planilla de cálculo, se utilizaba OpenGL para visualizar los puntos en el triángulo equilátero y tetraedro y además de dibujar el área y el volumen.  Los cálculos de fórmulas se hacían en el software de matemática Maple.  Otra alternativa de visualización a la de OpenGL era el uso de PovRay, para generar imágenes foto-realísticas del triángulo y tetraedro.  
    
       
## Desafíos
### Aplicación
>Realizar una aplicación con tecnología moderna (que inicie desde la lectura de datos a la visualización del triángulo y tetraedro)

### Investigación futura

**Aplicación en área de negocios TI**
        ¿Podremos aplicar el análisis de los datos composicionales en el área de Inteligencia de Negocio?  Ejemplo: visualizar cantidades de órdenes de venta con estado de "iniciadas", "completadas", "en proceso". ó visualizar las cantidades de solicitudes por trámite municipal de permiso de construcción con estado como iniciada, en proceso, rechazada por falta de documentos o terminada.
          	
**Interpretación**
      La interpretación actual de lo visualizado en conclusiones lo hace el usuario o analista, en el futuro esto podría cambiar y ser reemplazado por una interpretación que pueda ser por un método matemático, incluso por Inteligencia Artificial.

**Multi-visualización**
     Hallar nuevas conclusiones en base al reconocimiento de patrones de imagen, cuando se tienen muchos triángulos equiláteros que usan subcomposiciones de un caso.  Podría reconocerse que alguna variable tiene más peso.  
          
**Tiempo**
  ¿En qué casos será relevante para el analista, si las muestras obtenidas son en diferentes días ?

> Written with [StackEdit](https://stackedit.io/).
