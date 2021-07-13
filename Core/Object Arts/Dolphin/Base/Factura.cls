"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Factura
	instanceVariableNames: 'numerofactura medioDePago fecha descuento importetotal'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Factura guid: (GUID fromString: '{a6b4297f-4fc2-453b-b785-d8a8b62a9f73}')!
Factura comment: ''!
!Factura categoriesForClass!Kernel-Objects! !
!Factura methodsFor!

emitirTiket
| total num fecha1|
total :=importetotal printString.
num:= numerofactura printString.
fecha1:=fecha printString .
Transcript
show: 'factura - ', num, '       Fecha ', fecha1 ,'   Importe Total: ',total; cr.
"^numerofactura, importetotal."!

iniFacturanumfactura:unnumfac  importetotal:unimportetotal
numerofactura:=unnumfac.
fecha := Date today.
importetotal:=unimportetotal .!

iniFacturanumfactura:unnumfac mediodepago:unmediodepago fecha:unafecha descuento:undescuento importetotal:unimportetotal
numerofactura:=unnumfac.
medioDePago:=unmediodepago.
fecha:=unafecha.
descuento:=undescuento.
importetotal:=importetotal.! !
!Factura categoriesFor: #emitirTiket!public! !
!Factura categoriesFor: #iniFacturanumfactura:importetotal:!public! !
!Factura categoriesFor: #iniFacturanumfactura:mediodepago:fecha:descuento:importetotal:!public! !

!Factura class methodsFor!

CrearFacturanumfactura:unnumfac importetotal:unimportetotal
^(self  new )iniFacturanumfactura: unnumfac importetotal: unimportetotal.! !
!Factura class categoriesFor: #CrearFacturanumfactura:importetotal:!public! !

