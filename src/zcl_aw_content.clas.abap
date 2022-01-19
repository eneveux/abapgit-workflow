CLASS zcl_aw_content DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS print IMPORTING iv_input       TYPE string
                  RETURNING VALUE(rv_text) TYPE string.
ENDCLASS.



CLASS zcl_aw_content IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA(lv_text) = print( 'abapGit Workflow' ).
    out->write( lv_text ).
  ENDMETHOD.


  METHOD print.
    rv_text = |{ iv_input } Tutorial|.
  ENDMETHOD.
ENDCLASS.
