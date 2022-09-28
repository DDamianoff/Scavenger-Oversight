# Proyecto para bases de datos
> Aplicación para registrar asistencia

## Datos a registrar:

- Voluntarios:
	- Vol.Id
	- Nombre
	- Apellido
	- DNI
	- Datos de contacto:
		- TEL
		- E-MAIL
		- Dirección
	- Fecha de ingreso
	- Areas en las que participa

- Actividades:
	- Fecha de creación
	- Fecha de realización
	- Descripción
	- Título
	- Cancelada
	- Area
	
- Asistencia de voluntarios a actividades:
	- Voluntario
	- Actividad
	- Estado:
		- P - presente (Asistió estando inscripto)
		- T - presente, impuntual.
		- I - Inesperado (asistió sin estar inscripto)
		- J - justificado (ausente por causa mayor)
		- A - ausente (sin justificar habiendo estado inscripto)
		- C - canceló (con tiempo de anticipación)
	- Area

- Inscripción de voluntarios a actividades:
	- Voluntario
	- Actividad
	- Area

## Otras cosas

- Area:
	- Nombre del area
	- Coordinador (voluntario)
	- Inscriptos:
		- Casuales
		- Permanentes

## Notas

Asistencia e inscriptos no son lo mismo, aunque bastantes similares.

Un inscripto es un interesado en participar en una futura actividad, mientras 
asistencia detalla a los incriptos que fueron o no a dicha actividad.
