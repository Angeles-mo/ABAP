CLASS zcl_estructura_amz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_estructura_amz IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*ESTRUCTURA

types: BEGIN OF ty_persona,
       nombre type string,
       edad TYPE i,
       correo TYPE string,
       telefono type string,
END of TY_PERSONA.

data(lv_var) = 5.

*1er tipo:
DATA ls_persona TYPE ty_persona.

ls_persona = value  #( correo = 'sdjfsjdfn'
                        edad = 23
                        nombre = 'daniel' ).

out->write( ls_persona ).

*2do tipo:
data(ls_persona2) = value ty_persona( correo = 'sdjfsjdfn'
                        edad = 23
                        nombre = 'daniel' ).

out->write( ls_persona2 ).

*Para crear salto
out->write( | | ).



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

DATA ls_aeropuerto TYPE /dmo/airport.

out->write( ls_aeropuerto ).



  ENDMETHOD.
ENDCLASS.
