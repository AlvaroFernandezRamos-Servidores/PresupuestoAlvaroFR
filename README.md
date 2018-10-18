# PresupuestoAlvaroFR
## Se ha realizado una aplicación web que simula una calculadora de presupuesto para un seguro de hogar.

### El proyecto dispone de:

- Una vista inicial (index.html) en la que se muestra un breve formulario, con dos opciones no excluyentes, seguro de edificio y seguro de contenido.
- Una vista para el formulario de edificio (edificio.jsp) en la que el usuario puede introducir los campos pertinentes para el calculo de la parte de la poliza que involucra al edificio.
- Una vista para el formulario de contenido (contenido.jsp) cuyo objetivo es similar al de edificio pero con campos distintos.
- Una vista para la visualización del monto total al que asciende el seguro elegido por el usuario.
- Un controller asociado a la elección inicial (Eleccion.java), que se comunica con un modelo (EleccionModel.java).
- Un controller asociado al formulario de edificio (Edificio.java), que se comunica con un modelo (EdificioModel.java).
- Un controller asociado al formulario de contenido (Contenido.java), que se comunica con un modelo (ContenidoModel.java).
- Un modelo para el cálculo de la cuota (CalcularCuota.java), cuyo método de cálculo es estático.

### El funcionamiento de la aplicación

El usuario debe elegir en la pagina inicial qué componentes incluirá su seguro. Puede elegir la opción de seguro de edificio, la opción de seguro de contenido o ambas. Si no escoge ninguna de estas opciones y envía el resultado de su elección la aplicación le mandará de vuelta al index.html. Las opciones vienen marcadas por defecto.

#### Si el usuario ha marcado la opción de edificio

Se le muestra un formulario con los campos pertinentes para la configuración de esta parte de su seguro. Todos los campos tienen valores por defecto.

#### Si el usuario ha marcado la opción de contenido

De la misma manera, se le muestra otro formulario a continuación del anterior (si lo eligió) o como primera navegación (si esta es la única opción que marcó). Aquí se le muestras varios campos que puede modificar para adecuarse al seguro deseado. Los campos tienen valores por defecto.

#### Si el usuario navega desde la última opción solicitada

Si el usuario acaba de abandonar la última opción de su solicitud de presupuesto se le dirige hasta la visualización de su cuota de seguro, donde se muestra el monto total de cada una de las partes y el sumatorio total si se han dado ambas partes en la solicitud.

Además se muestra un enlace para volver al index.
