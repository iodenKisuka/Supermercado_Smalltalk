"Filed out from Dolphin Smalltalk 7"!

Object subclass: #CarritodeCompras
	instanceVariableNames: 'listadeProducto precioTotal datosdeSupermercado idpersona'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CarritodeCompras guid: (GUID fromString: '{978b4b69-3093-4974-9a0b-77e20c0721ff}')!
CarritodeCompras comment: ''!
!CarritodeCompras categoriesForClass!Kernel-Objects! !
!CarritodeCompras methodsFor!

agregarProductoCarrito: idproducto unidad: unidad
	"listadeProducto  add:unproducto."

	| stock esta nuevacantidad nombre unproducto |
	"Se busca que el producto exista en el supermercado"
	unproducto := datosdeSupermercado buscarElProductoEnSupermercado: idproducto.
	(unproducto ~= nil)
		ifTrue: 
			[nombre := unproducto verNombre.
			stock := unproducto verStock.
			"Averiguo si el producto esta en la lista de productos del carrito"
			esta := true.
			listadeProducto at: nombre ifAbsent: [esta := false].
			"ve que la unida no sea superior a el stock"
			(stock >= unidad)
				ifTrue: 
					[unproducto descontarStock: unidad.
					precioTotal := precioTotal + (unproducto verPrecio * unidad).
					(esta)
						ifTrue: 
							[nuevacantidad := (listadeProducto at: nombre) + unproducto verStock.
							" actualiza la nueva cantidad que tiene del producto"
							listadeProducto at: nombre put: nuevacantidad]
						ifFalse: [listadeProducto at: nombre put: unidad]
					"si no esta agrega el producto y la cantidad de unidades"]
				ifFalse: [Transcript show: 'No hay Stock Disponible']
			"Se finaliza la función si encuenta al producto en supermercado"]!

agregarProductoCarritoDLCS: idproducto unidad: unidad
	"listadeProducto  add:unproducto."

	| stock esta nuevacantidad nombre unproducto |
	"Se busca que el producto exista en el supermercado"
	unproducto := datosdeSupermercado buscarElProductoEnSupermercado: idproducto.
	(unproducto ~= nil)
		ifTrue: 
			[nombre := unproducto verNombre.
			stock := unproducto verStock.
			"Averiguo si el producto esta en la lista de productos del carrito"
			esta := true.
			listadeProducto at: nombre ifAbsent: [esta := false].
			"ve que la unida no sea superior a el stock"
			(stock >= unidad)
				ifTrue: 
					[unproducto descontarStock: unidad.
					precioTotal := precioTotal + (unproducto verPrecio * unidad).
					(esta)
						ifTrue: 
							[nuevacantidad := (listadeProducto at: nombre) + unproducto verStock.
							" actualiza la nueva cantidad que tiene del producto"
							listadeProducto at: nombre put: nuevacantidad]
						ifFalse: [listadeProducto at: nombre put: unidad]
					"si no esta agrega el producto y la cantidad de unidades"]
				ifFalse: [Transcript show: 'No hay Stock Disponible']
			"Se finaliza la función si encuenta al producto en supermercado"]!

CargarProductoAcarrito:unProducto
listadeProducto add:unProducto.!

CargarProductoAcarrito2:unProducto unidad:unidada
listadeProducto add:unProducto.!

iniCarrito:idPersona
precioTotal := 0.
idpersona :=idPersona.
listadeProducto := OrderedCollection new.
"listadeProducto :=Dictionary new. "!

iniCarrito:supermercado cliente:idcliente
precioTotal := 0.
"listadeProducto := OrderedCollection new."
listadeProducto :=Dictionary new. 
datosdeSupermercado:=supermercado.!

listarCarrito
|unprod cant|
listadeProducto do: [:element | 
cant:= (listadeProducto occurrencesOf: element ) printString .

Transcript
show: 'identificador del producto:',element ,' cantidad: ',cant ;cr
]

"listadeProducto do : [:contador | unprod := (listadeProducto at: contador). 
cont:=contador printString.

cant:= listadeProducto occurrencesOf: unprod.
    Transcript show: 'identificador de producto:  ',unprod,' cantidad comparda: ',cant ;cr ]"!

quitarProductoCarrito: idproducto
	| esta nuevacantidad nombre cantidad unproducto |
	"Se busca que el producto exista en el supermercado"
	unproducto := datosdeSupermercado buscarElProductoEnSupermercado: idproducto.
	(unproducto ~= nil)
		ifTrue: 
			[nombre := unproducto verNombre.
			cantidad := listadeProducto at: nombre.
			"como se haria si fuera una coleccion normal
esta:= listadeProducto includes:unproducto.
(esta ) ifTrue:[  listadeProducto remove:unproducto .
unproducto devolverproducto .] "

			"Averiguo si el producto esta en la lista de productos del carrito"
			esta := true.
			listadeProducto at: nombre ifAbsent: [esta := false].
			(esta)
				ifTrue: 
					[unproducto devolverproducto.
					nuevacantidad := (listadeProducto at: nombre) - 1.
					" actualiza la nueva cantidad que tiene del producto"
					listadeProducto at: nombre put: nuevacantidad.
					precioTotal := precioTotal - unproducto verPrecio.
					cantidad < 1 ifFalse: [listadeProducto removeKey: nombre ifAbsent: ['Ya se quito el producto']]]
				ifFalse: 
					["Lo siento no Posee Producto en el carrito"
					]]!

verCarrito
^listadeProducto.! !
!CarritodeCompras categoriesFor: #agregarProductoCarrito:unidad:!public! !
!CarritodeCompras categoriesFor: #agregarProductoCarritoDLCS:unidad:!public! !
!CarritodeCompras categoriesFor: #CargarProductoAcarrito:!public! !
!CarritodeCompras categoriesFor: #CargarProductoAcarrito2:unidad:!public! !
!CarritodeCompras categoriesFor: #iniCarrito:!public! !
!CarritodeCompras categoriesFor: #iniCarrito:cliente:!public! !
!CarritodeCompras categoriesFor: #listarCarrito!public! !
!CarritodeCompras categoriesFor: #quitarProductoCarrito:!public! !
!CarritodeCompras categoriesFor: #verCarrito!public! !

!CarritodeCompras class methodsFor!

crearCarrito:idcliente
^(self new) iniCarrito: idcliente.!

crearCarritoDLCS:supermercado cliente: idcliente
^(self new) iniCarrito: supermercado cliente: idcliente.! !
!CarritodeCompras class categoriesFor: #crearCarrito:!public! !
!CarritodeCompras class categoriesFor: #crearCarritoDLCS:cliente:!public! !

