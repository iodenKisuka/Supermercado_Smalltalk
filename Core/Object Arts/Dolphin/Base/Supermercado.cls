"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Supermercado
	instanceVariableNames: 'nombre clientes empleados productos carritos'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Supermercado guid: (GUID fromString: '{a8e61913-e7ea-4bba-8b7c-b733d9b8c678}')!
Supermercado comment: ''!
!Supermercado categoriesForClass!Kernel-Objects! !
!Supermercado methodsFor!

agregarCarrito:unCarrito
"Agrega un empleado"
carritos add:unCarrito.!

agregarCliente:unCliente
"Agrega un cliente"
clientes add:unCliente.!

agregarEmpleado:unEmpleado
"Agrega un empleado"
empleados add:unEmpleado.!

agregarProductoSupermercado:unProducto
"Agrega un empleado"
productos add:unProducto.!

buscarElProductoEnSupermercado: idProducto
	| unproducto product listaProduct |
	listaProduct := productos.
	unproducto := listaProduct detect: [:product | product verIdentificadorProducto = idProducto]
				ifNone: 
					[Transcript show: 'No se encuentra el Producto'; cr.
					^nil].
^unproducto.!

iniSuperNom:unNom
"Inicializa una instancia de Supermercado"
nombre:=unNom.
clientes:= OrderedCollection new.
empleados:= OrderedCollection new.
productos:= OrderedCollection new.
carritos := OrderedCollection new.!

listarClientes
    | a identificador nom apellido|
    1 to: clientes size
        do: 
            [:i |
            (clientes at: i)
                ifTrue: 
                    [a := i printString.
                    "identificador := (clientes at: i) verIdentificador ."
                    nom := (clientes at: i) verNombre.
                    apellido := (clientes at: i) verApellido.

                    Transcript
                        show: a , ') Identificador[ ' , identificador , ' ] ' , nom , ' $' , apellido , ']';
                        cr]]!

listarProductosDisponible
	| product cont a identificador nom precio stock |
	1 to: productos size
		do: 
			[:contador |
			product := productos at: contador.
			cont := contador printString.
			product verStock > 0
				ifTrue: 
					[
precio:= product verPrecio printString.
stock := product verStock printString.

Transcript

						show: cont , ' -  identificador: ' ,product verIdentificadorProducto,'  ',product verNombreProducto,' precio: ', precio,' stock: ',stock;
						cr]
			"product verIdentificadorProducto,'  ',product verNombreProducto,' ', precio ;cr ]."
			",' ',product verNombreProducto, product verPrecio, product verStock ;cr ]."]



	"1 to: productos size
		do: 
			[:i |
			(productos at: i) verStock > 0
				ifTrue: 
					[a := i printString.
					identificador := (productos at: i) verIdentificador printString.
					nom := (productos at: i) verNombre printString .
					precio := (productos at: i) verPrecio printString.
					stock := (productos at: i) verStock printString.
					Transcript
						show: a , ') Identificador[' , identificador , '] ' , nom , ' $' , precio , ' Stock[' , stock , ']';
						cr]] "!

listarProductosIdentificador
|a  identificador nom precio stock|
1 to: productos size do:[:i| ((productos at:i) verStock>0 ) ifTrue: [
a:=i printString.
identificador:=(productos at: i) verIdentificador printString.
nom:=(productos at: i) verNombre.
precio:=(productos at: i) verPrecio printString.
stock:=(productos at: i) verStock printString.
Transcript show: a,') Identificador[',identificador,'] ', nom, ' $', precio ,' Stock[', stock, ']'; cr.] ].
!

llamarMenuPrincipal
Transcript show: 'MENU SUPERMERCADO
0)salir
1)Mostrar Productos
2)Ver Carrito
3)Ir a Pagar'.!

procesoCargarCarrito:carrito productoelegido:productoelegido
|productoComprar|
carrito CargarProductoAcarrito: productoelegido.
productoComprar :=self buscarElProductoEnSupermercado: productoelegido.
productoComprar descontarStock: 1.
!

realizarCompra:listaproductoscarrito
|preciototal productoconcreto|
listaproductoscarrito do: [: unproducto | 
productoconcreto := self buscarElProductoEnSupermercado: unproducto. 
preciototal:=productoconcreto verPrecio.
]
!

verClientes
|client cont|
1 to: clientes size
        do: 
            [:contador | client := (clientes at: contador).
cont:=contador printString.
    Transcript show: cont,' ',client verNombre,' ',client verApellido ;cr ]!

verOferta
|listaOferta precio idprod|
Transcript show: 'Lista de Ofertas: ';cr.
listaOferta := productos select:[:prod| prod verPrecio<35 ].
listaOferta do: [:unprod | 
idprod :=unprod  verIdentificadorProducto printString.
precio :=unprod  verPrecio printString.
Transcript show: 'id: producto: ',idprod,'     ',unprod verNombreProducto,' precio ',precio;cr.
]!

verProductos
	^productos! !
!Supermercado categoriesFor: #agregarCarrito:!public! !
!Supermercado categoriesFor: #agregarCliente:!public! !
!Supermercado categoriesFor: #agregarEmpleado:!public! !
!Supermercado categoriesFor: #agregarProductoSupermercado:!public! !
!Supermercado categoriesFor: #buscarElProductoEnSupermercado:!public! !
!Supermercado categoriesFor: #iniSuperNom:!public! !
!Supermercado categoriesFor: #listarClientes!public! !
!Supermercado categoriesFor: #listarProductosDisponible!public! !
!Supermercado categoriesFor: #listarProductosIdentificador!public! !
!Supermercado categoriesFor: #llamarMenuPrincipal!public! !
!Supermercado categoriesFor: #procesoCargarCarrito:productoelegido:!public! !
!Supermercado categoriesFor: #realizarCompra:!public! !
!Supermercado categoriesFor: #verClientes!public! !
!Supermercado categoriesFor: #verOferta!public! !
!Supermercado categoriesFor: #verProductos!public! !

!Supermercado class methodsFor!

crearSuperNom:unNom
"Retorna una instancia de Supermercado inicializada"
^(self new) iniSuperNom:unNom.! !
!Supermercado class categoriesFor: #crearSuperNom:!public! !

