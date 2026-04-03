REPORT zrep_sd_otc_validate.

START-OF-SELECTION.

  SELECT *
    FROM zc_sd_otc_monitor
    INTO TABLE @DATA(lt_otc)
    UP TO 20 ROWS.

  SELECT *
    FROM zc_sd_credit_monitor
    INTO TABLE @DATA(lt_credit)
    UP TO 20 ROWS.

  SELECT *
    FROM zc_sd_delivery_monitor
    INTO TABLE @DATA(lt_delivery)
    UP TO 20 ROWS.

  SELECT *
    FROM zc_sd_pricing_monitor
    INTO TABLE @DATA(lt_pricing)
    UP TO 20 ROWS.

  cl_demo_output=>write_text( 'OTC Monitor' ).
  cl_demo_output=>write_data( lt_otc ).

  cl_demo_output=>write_text( 'Credit Monitor' ).
  cl_demo_output=>write_data( lt_credit ).

  cl_demo_output=>write_text( 'Delivery Monitor' ).
  cl_demo_output=>write_data( lt_delivery ).

  cl_demo_output=>write_text( 'Pricing Monitor' ).
  cl_demo_output=>write_data( lt_pricing ).

  cl_demo_output=>display( ).
