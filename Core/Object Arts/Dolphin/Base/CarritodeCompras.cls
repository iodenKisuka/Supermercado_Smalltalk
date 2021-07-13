"Filed out from Dolphin Smalltalk 7"!

Object subclass: #CarritodeCompras
	instanceVariableNames: 'listadeProducto idpersona'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CarritodeCompras guid: (GUID fromString: '{978b4b69-3093-4974-9a0b-77e20c0721ff}')!
CarritodeCompras comment: ''!
!CarritodeCompras categoriesForClass!Kernel-Objects! !
!CarritodeCompras methodsFor!

cargarProductoAcarrito: unProducto
	| esta nuevacantidad |
	"listadeProducto add: unProducto."

	"Averiguo si el producto esta en la lista de productos del carrito"
	esta := true.
	listadeProducto at: unProducto ifAbsent: [esta := false].
	esta
		ifTrue: 
			[nuevacantidad := (listadeProducto at: unProducto) + 1.
			" actualiza la nueva cantidad que tiene del producto"
			listadeProducto at: unProducto put: nuevacantidad]

ifFalse: [listadeProducto at: unProducto put: 1. ]!

iniCarrito:idPersona
idpersona :=idPersona.
"listadeProducto := OrderedCollection new."
listadeProducto :=Dictionary new. !

listarCarrito
|unprod valor|

listadeProducto keysDo: [ :key | valor :=(listadeProducto at: key) printString .
Transcript show: 'identificador de producto - ',key,'    cantidad: ',valor ; cr ].


!

quitarProductoCarrito: idproducto
	| esta nuevacantidad nombre cantidad unproducto |
	esta := true.
	listadeProducto at: idproducto ifAbsent: [esta := false].
	(esta)
		ifTrue: 
			[cantidad := listadeProducto at: idproducto.
			nuevacantidad := cantidad - 1.
			" actualiza la nueva cantidad que tiene del producto"
			listadeProducto at: idproducto put: nuevacantidad.
			cantidad < 1 ifFalse: [
listadeProducto removeKey: idproducto ifAbsent: [
Transcript
show: 'Ya se quito el producto' ;cr].
	]
]ifFalse: [
Transcript
show: 'Lo siento no Posee Producto en el carrito' ;cr
]!

verCarrito
^listadeProducto.! !
!CarritodeCompras categoriesFor: #cargarProductoAcarrito:!public! !
!CarritodeCompras categoriesFor: #iniCarrito:!public! !
!CarritodeCompras categoriesFor: #listarCarrito!public! !
!CarritodeCompras categoriesFor: #quitarProductoCarrito:!public! !
!CarritodeCompras categoriesFor: #verCarrito!public! !

!CarritodeCompras class methodsFor!

crearCarrito:idcliente
^(self new) iniCarrito: idcliente.! !
!CarritodeCompras class categoriesFor: #crearCarrito:!public! !

