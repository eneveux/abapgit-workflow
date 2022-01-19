*&---------------------------------------------------------------------*
*& Report zr_aw_insert
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zr_aw_insert.

DATA wa TYPE ztawcust.

wa-client = '000'.
wa-name = 'Cust01'.
wa-address = 'Some Where Over The Rainbow 7 69190 Walldorf'.
wa-int_num = '0815'.

INSERT INTO ztawcust VALUES wa.

write: / sy-subrc.

SELECT SINGLE * FROM ztawcust INTO @DATA(lv_cust).

write: / lv_cust-name, lv_cust-int_num.
