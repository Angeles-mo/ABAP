CLASS zcl_case_amz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_case_amz IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA: lv_edad type i value 8.

  "hay 20 niños en la clase
  "4 niños se llaman daniel. El de 8 años el padre se llama ricardo, el de 6 -> pedro, 5 -> fernando, 9 -> luis

  case lv_edad.
    when 8.
        out->write( 'El padre se llama Ricardo' ).
    when 6.
        out->write( 'El padre se llama Pedro ' ).
    when 5.
        out->write( 'El padre se llama Fernando' ).
    when 9.
        out->write( 'El padre se llama Luis' ).
  ENDCASE.

  ENDMETHOD.
ENDCLASS.
