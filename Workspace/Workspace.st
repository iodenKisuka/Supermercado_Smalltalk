﻿|s a  c e p productoa productob menu carrito unid prod idproducto Pseleccionado ClienteSeleecionado|
s:= Supermercado crearSuperNom:'sunshine'.
c:= Cliente crearPersonaCliente: 1 nom: 'Leandro' ape: 'Oviedo' id:'1'.
s agregarCliente: c.
c:= Cliente crearPersonaCliente: 2 nom: 'Pedro' ape: 'Ramos' id:'2'.
s agregarCliente: c.
e:= Empleado crearPersonaEmpleado: 20 nom: 'Javier' ape: 'Sanches' pues: 'Cajero' sal: 20000.
s agregarEmpleado: e.
e:= Empleado crearPersonaEmpleado: 21 nom: 'ramon' ape: 'Peralta' pues: 'Playero' sal: 22000.
s agregarEmpleado: e.
p:= Producto crearProducto: '1' nombre: 'Manteca' precioUnitario: 20 stock: 30.
s agregarProductoSupermercado: p.
p:= Producto crearProducto: '2' nombre: 'Arroz' precioUnitario: 30 stock: 20.
s agregarProductoSupermercado: p.
productoa :=Producto crearProducto: '3' nombre: 'Leche' precioUnitario: 45 stock: 2.
s agregarProductoSupermercado: productoa.
productob :=Producto crearProducto: '4' nombre: ' Cereal' precioUnitario: 62 stock: 2.
s agregarProductoSupermercado: productob.
"carrito:=CarritodeCompras."
Transcript clear.
s verClientes .
ClienteSeleecionado:= Prompter prompt: 'Seleccione un cliente'.
Transcript clear.
s llamarMenuPrincipal.
carrito:= CarritodeCompras crearCarrito: ClienteSeleecionado.

"s listarProductosDisponible ."


menu:= Prompter prompt:'Ingrese un opcion'.

[menu~='0'] whileTrue:[
		Transcript clear.
		s llamarMenuPrincipal.
			menu = '1' ifTrue: [ Transcript clear.
		s listarProductosDisponible .
		[ Pseleccionado~='0'] whileTrue:[
					Transcript clear.
					s listarProductosDisponible .
					Pseleccionado:= Prompter prompt: 'Ingrese una opcion, 0 para salir y proceder con 	la compra'.
					Transcript show:'----------------------------------------------';cr.
					
		"s listarProductosCarritoIdentificador."
		"s buscarElProductoEnSupermercado: Pseleccionado."
Pseleccionado~='0' ifTrue: [
		 prod := s buscarElProductoEnSupermercado: Pseleccionado.
		carrito cargarProductoAcarrito:prod. ].
		"carrito verProductosEnCarrito."
		Transcript clear.
		].].
			menu = '2' ifTrue: [ carrito listarCarrito ].
			menu = '3' ifTrue: [ Prompter prompt: '3' ].
			menu = '4' ifTrue: [ Prompter prompt: '4'].
Transcript clear.
s llamarMenuPrincipal.
menu:= Prompter prompt:'Ingrese un numero , 0 para salir'.
].

