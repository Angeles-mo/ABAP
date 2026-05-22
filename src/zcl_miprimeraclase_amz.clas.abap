CLASS zcl_miprimeraclase_amz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_miprimeraclase_amz IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.


data lv_edad type i value 5.

" ofrecer descuento de un 10% a personas entre los 1 -12 años, descuento de del 5% a personas entre 12 - 18 , precio normal a personas entre 18-65
" descuento del 5% a personas mayores de 65.






data lv_peso type p LENGTH 8 DECIMALS 2 value 0.
data lv_zona type string value 'T'. " A , B , C
data lv_tipo_cliente type string value 'Normal'. " normal premium
data lv_urgente type i VALUE 1. " 1 o 0
data lv_peligroso type i VALUE 1. " 1 o 0

DATA lv_coste type  p LENGTH 8 DECIMALS 2.
DATA lv_codigo type string.

DATA lv_coste_extra type i.
DATA: lv_coste_acumulado TYPE p LENGTH 8 DECIMALS 2.


if lv_peso <= 0.

    lv_codigo = 'PESO INVALIDO'.
    lv_coste = 0.


elseif lv_peso <= 5.

         lv_coste = 5.

elseif lv_peso > 5 and lv_peso <= 20.

         lv_coste = 20.

elseif lv_peso > 20 and lv_peso <= 50.

         lv_coste = 25.
else.

        lv_coste_extra = lv_peso - 50.
        lv_coste = 25 + lv_coste_extra.

endif.
out->write( lv_coste ).



if lv_zona <> 'A' or lv_zona <> 'B' or lv_zona <> 'C'.

    lv_coste = 0.
    lv_codigo = 'PESO INVALIDO'.

elseif lv_zona = 'A'.
       if lv_urgente = 1 .
            lv_coste = 0 * '1.5'.
       else.
            lv_coste = 0.

       endif.

elseif lv_zona = 'B'.

        if lv_urgente = 1 .
            lv_coste = 8 * '1.5'.
        else.
            lv_coste = 8.
        endif.

elseif lv_zona = 'C' .

       if lv_urgente = 1 .

            lv_coste = 15 + 30.
       else.
            lv_coste = 15.

       endif.
ENDIF.


if lv_zona = 'A'.
       if lv_urgente = 1 .
            lv_coste = 0 * '1.5'.
       else.
            lv_coste = 0.

       endif.

   elseif lv_zona = 'B'.

        if lv_urgente = 1 .
            lv_coste = 8 * '1.5'.
        else.
            lv_coste = 8.
        endif.

   ELSEif lv_zona = 'C' .

       if lv_urgente = 1 .

            lv_coste = 15 + 30.
       else.
            lv_coste = 15.

       endif.
 endif.


*Ejercicio 6

if lv_peligroso = 1.
    if lv_zona = 'C'.
        lv_codigo = 'PELIGROSO_ZONA_C'.
        lv_coste = 0.
    else.
        lv_coste = lv_coste_acumulado * '0.40' + lv_coste_acumulado.
    endif.
endif.

*Ejercicio 7

*data: lv_comodin type p length 8 decimals 2.
if lv_coste < 10.
        lv_coste = 10.

*lv_comodin = 10 - lv_coste.
*lv_coste = lv_coste + lv_comodin.
endif.



 DATA: iv_tipo_cliente TYPE string VALUE 'PREMIUM'.
 DATA: iv_peligroso TYPE i VALUE 1.
 DATA: iv_coste_acumulado TYPE p LENGTH 8 DECIMALS 2.

 DATA: iv_descuento TYPE p LENGTH 8 DECIMALS 2.
 DATA: iv_coste_final TYPE p LENGTH 8 DECIMALS 2.

* Si el cliente es premium y no fuera peligroso y el coste acumulado es menor a 200
*if iv_tipo_cliente = 'PREMIUM' AND iv_peligroso = 0 AND iv_coste_acumulado <= 200.
*iv_descuento = iv_coste_acumulado * '0.20'.
*iv_coste_final = iv_coste_acumulado - iv_descuento.
*else.
*iv_descuento = 0.
*iv_coste_final = iv_coste_acumulado.
*ENDIF.

if iv_tipo_cliente = 'PREMIUM'.
    if iv_peligroso = abap_true or iv_coste_acumulado > 200.

    ELSE.
    iv_descuento = iv_coste_acumulado * '0.20'.
    iv_coste_final = iv_coste_acumulado - iv_descuento.
    ENDIF.
ENDIF.

        out->write( iv_coste_final ).



  ENDMETHOD.

ENDCLASS.
