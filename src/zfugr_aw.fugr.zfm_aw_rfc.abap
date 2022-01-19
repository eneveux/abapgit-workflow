FUNCTION ZFM_AW_RFC.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(IV_INT_CUST_ID) TYPE  STRING
*"  EXPORTING
*"     VALUE(EV_NAME) TYPE  STRING
*"  EXCEPTIONS
*"      CUST_NOT_FOUND
*"----------------------------------------------------------------------
  SELECT SINGLE * FROM ztawcust INTO @DATA(lv_cust) WHERE int_num EQ @iv_int_cust_id.

  IF lv_cust IS INITIAL.
    RAISE cust_not_found.
  ENDIF.

  ev_name = lv_cust-name.

ENDFUNCTION.
