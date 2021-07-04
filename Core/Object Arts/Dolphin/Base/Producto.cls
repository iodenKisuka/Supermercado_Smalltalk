"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Producto
	instanceVariableNames: 'identificador nombre precioUnitario stock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Producto guid: (GUID fromString: '{7f7c382b-7171-4d7b-9380-436e17255d55}')!
Producto comment: ''!
!Producto categoriesForClass!Kernel-Objects! !
!Producto methodsFor!

descontarStock: cantidad
stock:=stock-cantidad.!

devolverproducto
stock:=stock+1.!

iniProducto: unidentificador nombre: unnombre precioUnitario: unprecio stock: unstock
    identificador := unidentificador.
    nombre := unnombre.
    precioUnitario := unprecio.
    stock := unstock.!

modificarPrecio: nuevoprecio
precioUnitario := nuevoprecio!

verIdentificadorProducto
	^identificador!

verNombreProducto
^nombre.!

verPrecio
^precioUnitario .!

verStock
^stock .! !
!Producto categoriesFor: #descontarStock:!public! !
!Producto categoriesFor: #devolverproducto!public! !
!Producto categoriesFor: #iniProducto:nombre:precioUnitario:stock:!public! !
!Producto categoriesFor: #modificarPrecio:!public! !
!Producto categoriesFor: #verIdentificadorProducto!public! !
!Producto categoriesFor: #verNombreProducto!public! !
!Producto categoriesFor: #verPrecio!public! !
!Producto categoriesFor: #verStock!public! !

!Producto class methodsFor!

crearProducto:unidentificador nombre:unnombre precioUnitario: unprecio stock: unstock
^(self new) iniProducto: unidentificador nombre: unnombre precioUnitario: unprecio stock: unstock! !
!Producto class categoriesFor: #crearProducto:nombre:precioUnitario:stock:!public! !

