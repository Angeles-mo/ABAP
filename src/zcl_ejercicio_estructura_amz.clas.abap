CLASS zcl_ejercicio_estructura_amz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ejercicio_estructura_amz IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


types: BEGIN OF ty_persona,
       nombre type ZDE_NOMBRE_AMZ,
       edad TYPE ZDE_EDAD_AMZ,
       correo TYPE ZDE_CORREO_AMZ,
       telefono type ZDE_TELEFONO_AMZ,
END of TY_PERSONA.

data(lv_var) = 5.

*1er tipo:
DATA ls_persona TYPE ty_persona.

ls_persona = value  #( correo = 'sdjfsjdfn'
                        edad = 23
                        nombre = 'daniel'
                        telefono = '+34 648527159' ).

out->write( ls_persona ).

*2do tipo:
data(ls_persona2) = value ty_persona( correo = 'sdjfsjdfn'
                        edad = 22
                        nombre = 'roberto'
                        telefono = '+34 785439621' ).

out->write( ls_persona2 ).



  ENDMETHOD.
ENDCLASS.
