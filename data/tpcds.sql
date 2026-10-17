CREATE TABLE dbgen_version (
    dv_version varchar(16),
    dv_create_date date,
    dv_create_time time,
    dv_cmdline_args varchar(200)
);

CREATE TABLE store_sales (
    ss_sold_date_sk bigint,
    ss_sold_time_sk bigint,
    ss_item_sk bigint,
    ss_customer_sk bigint,
    ss_cdemo_sk bigint,
    ss_hdemo_sk bigint,
    ss_addr_sk bigint,
    ss_store_sk bigint,
    ss_promo_sk bigint,
    ss_ticket_number bigint,
    ss_quantity bigint,
    ss_wholesale_cost decimal(7,2),
    ss_list_price decimal(7,2),
    ss_sales_price decimal(7,2),
    ss_ext_discount_amt decimal(7,2),
    ss_ext_sales_price decimal(7,2),
    ss_ext_wholesale_cost decimal(7,2),
    ss_ext_list_price decimal(7,2),
    ss_ext_tax decimal(7,2),
    ss_coupon_amt decimal(7,2),
    ss_net_paid decimal(7,2),
    ss_net_paid_inc_tax decimal(7,2),
    ss_net_profit decimal(7,2),
    PRIMARY KEY (ss_item_sk, ss_ticket_number)
);

CREATE TABLE store_returns (
    sr_returned_date_sk bigint,
    sr_return_time_sk bigint,
    sr_item_sk bigint,
    sr_customer_sk bigint,
    sr_cdemo_sk bigint,
    sr_hdemo_sk bigint,
    sr_addr_sk bigint,
    sr_store_sk bigint,
    sr_reason_sk bigint,
    sr_ticket_number bigint,
    sr_return_quantity bigint,
    sr_return_amt decimal(7,2),
    sr_return_tax decimal(7,2),
    sr_return_amt_inc_tax decimal(7,2),
    sr_fee decimal(7,2),
    sr_return_ship_cost decimal(7,2),
    sr_refunded_cash decimal(7,2),
    sr_reversed_charge decimal(7,2),
    sr_store_credit decimal(7,2),
    sr_net_loss decimal(7,2),
    PRIMARY KEY (sr_item_sk, sr_ticket_number)
);

CREATE TABLE catalog_sales (
    cs_sold_date_sk bigint,
    cs_sold_time_sk bigint,
    cs_ship_date_sk bigint,
    cs_bill_customer_sk bigint,
    cs_bill_cdemo_sk bigint,
    cs_bill_hdemo_sk bigint,
    cs_bill_addr_sk bigint,
    cs_ship_customer_sk bigint,
    cs_ship_cdemo_sk bigint,
    cs_ship_hdemo_sk bigint,
    cs_ship_addr_sk bigint,
    cs_call_center_sk bigint,
    cs_catalog_page_sk bigint,
    cs_ship_mode_sk bigint,
    cs_warehouse_sk bigint,
    cs_item_sk bigint,
    cs_promo_sk bigint,
    cs_order_number bigint,
    cs_quantity bigint,
    cs_wholesale_cost decimal(7,2),
    cs_list_price decimal(7,2),
    cs_sales_price decimal(7,2),
    cs_ext_discount_amt decimal(7,2),
    cs_ext_sales_price decimal(7,2),
    cs_ext_wholesale_cost decimal(7,2),
    cs_ext_list_price decimal(7,2),
    cs_ext_tax decimal(7,2),
    cs_coupon_amt decimal(7,2),
    cs_ext_ship_cost decimal(7,2),
    cs_net_paid decimal(7,2),
    cs_net_paid_inc_tax decimal(7,2),
    cs_net_paid_inc_ship decimal(7,2),
    cs_net_paid_inc_ship_tax decimal(7,2),
    cs_net_profit decimal(7,2),
    PRIMARY KEY (cs_item_sk, cs_order_number)
);

CREATE TABLE catalog_returns (
    cr_returned_date_sk bigint,
    cr_returned_time_sk bigint,
    cr_item_sk bigint,
    cr_refunded_customer_sk bigint,
    cr_refunded_cdemo_sk bigint,
    cr_refunded_hdemo_sk bigint,
    cr_refunded_addr_sk bigint,
    cr_returning_customer_sk bigint,
    cr_returning_cdemo_sk bigint,
    cr_returning_hdemo_sk bigint,
    cr_returning_addr_sk bigint,
    cr_call_center_sk bigint,
    cr_catalog_page_sk bigint,
    cr_ship_mode_sk bigint,
    cr_warehouse_sk bigint,
    cr_reason_sk bigint,
    cr_order_number bigint,
    cr_return_quantity bigint,
    cr_return_amount decimal(7,2),
    cr_return_tax decimal(7,2),
    cr_return_amt_inc_tax decimal(7,2),
    cr_fee decimal(7,2),
    cr_return_ship_cost decimal(7,2),
    cr_refunded_cash decimal(7,2),
    cr_reversed_charge decimal(7,2),
    cr_store_credit decimal(7,2),
    cr_net_loss decimal(7,2),
    PRIMARY KEY (cr_item_sk, cr_order_number)
);

CREATE TABLE web_sales (
    ws_sold_date_sk bigint,
    ws_sold_time_sk bigint,
    ws_ship_date_sk bigint,
    ws_item_sk bigint,
    ws_bill_customer_sk bigint,
    ws_bill_cdemo_sk bigint,
    ws_bill_hdemo_sk bigint,
    ws_bill_addr_sk bigint,
    ws_ship_customer_sk bigint,
    ws_ship_cdemo_sk bigint,
    ws_ship_hdemo_sk bigint,
    ws_ship_addr_sk bigint,
    ws_web_page_sk bigint,
    ws_web_site_sk bigint,
    ws_ship_mode_sk bigint,
    ws_warehouse_sk bigint,
    ws_promo_sk bigint,
    ws_order_number bigint,
    ws_quantity bigint,
    ws_wholesale_cost decimal(7,2),
    ws_list_price decimal(7,2),
    ws_sales_price decimal(7,2),
    ws_ext_discount_amt decimal(7,2),
    ws_ext_sales_price decimal(7,2),
    ws_ext_wholesale_cost decimal(7,2),
    ws_ext_list_price decimal(7,2),
    ws_ext_tax decimal(7,2),
    ws_coupon_amt decimal(7,2),
    ws_ext_ship_cost decimal(7,2),
    ws_net_paid decimal(7,2),
    ws_net_paid_inc_tax decimal(7,2),
    ws_net_paid_inc_ship decimal(7,2),
    ws_net_paid_inc_ship_tax decimal(7,2),
    ws_net_profit decimal(7,2),
    PRIMARY KEY (ws_item_sk, ws_order_number)
);

CREATE TABLE web_returns (
    wr_returned_date_sk bigint,
    wr_returned_time_sk bigint,
    wr_item_sk bigint,
    wr_refunded_customer_sk bigint,
    wr_refunded_cdemo_sk bigint,
    wr_refunded_hdemo_sk bigint,
    wr_refunded_addr_sk bigint,
    wr_returning_customer_sk bigint,
    wr_returning_cdemo_sk bigint,
    wr_returning_hdemo_sk bigint,
    wr_returning_addr_sk bigint,
    wr_web_page_sk bigint,
    wr_reason_sk bigint,
    wr_order_number bigint,
    wr_return_quantity bigint,
    wr_return_amt decimal(7,2),
    wr_return_tax decimal(7,2),
    wr_return_amt_inc_tax decimal(7,2),
    wr_fee decimal(7,2),
    wr_return_ship_cost decimal(7,2),
    wr_refunded_cash decimal(7,2),
    wr_reversed_charge decimal(7,2),
    wr_account_credit decimal(7,2),
    wr_net_loss decimal(7,2),
    PRIMARY KEY (wr_item_sk, wr_order_number)
);

CREATE TABLE inventory (
    inv_date_sk bigint,
    inv_item_sk bigint,
    inv_warehouse_sk bigint,
    inv_quantity_on_hand bigint,
    PRIMARY KEY (inv_date_sk, inv_item_sk, inv_warehouse_sk)
);

CREATE TABLE store (
    s_store_sk bigint,
    s_store_id varchar(16) NOT NULL,
    s_rec_start_date date,
    s_rec_end_date date,
    s_closed_date_sk bigint,
    s_store_name varchar(50),
    s_number_employees bigint,
    s_floor_space bigint,
    s_hours varchar(20),
    S_manager varchar(40),
    S_market_id bigint,
    S_geography_class varchar(100),
    S_market_desc varchar(100),
    s_market_manager varchar(40),
    s_division_id bigint,
    s_division_name varchar(50),
    s_company_id bigint,
    s_company_name varchar(50),
    s_street_number varchar(10),
    s_street_name varchar(60),
    s_street_type varchar(15),
    s_suite_number varchar(10),
    s_city varchar(60),
    s_county varchar(30),
    s_state char(2),
    s_zip varchar(10),
    s_country varchar(20),
    s_gmt_offset decimal(5,2),
    s_tax_percentage decimal(5,2),
    PRIMARY KEY (s_store_sk)
);

CREATE TABLE call_center (
    cc_call_center_sk bigint,
    cc_call_center_id varchar(16) NOT NULL,
    cc_rec_start_date date,
    cc_rec_end_date date,
    cc_closed_date_sk bigint,
    cc_open_date_sk bigint,
    cc_name varchar(50),
    cc_class varchar(50),
    cc_employees bigint,
    cc_sq_ft bigint,
    cc_hours varchar(20),
    cc_manager varchar(40),
    cc_mkt_id bigint,
    cc_mkt_class varchar(50),
    cc_mkt_desc varchar(100),
    cc_market_manager varchar(40),
    cc_division bigint,
    cc_division_name varchar(50),
    cc_company bigint,
    cc_company_name varchar(50),
    cc_street_number varchar(10),
    cc_street_name varchar(60),
    cc_street_type varchar(15),
    cc_suite_number varchar(10),
    cc_city varchar(60),
    cc_county varchar(30),
    cc_state char(2),
    cc_zip varchar(10),
    cc_country varchar(20),
    cc_gmt_offset decimal(5,2),
    cc_tax_percentage decimal(5,2),
    PRIMARY KEY (cc_call_center_sk)
);

CREATE TABLE catalog_page (
    cp_catalog_page_sk bigint,
    cp_catalog_page_id varchar(16) NOT NULL,
    cp_start_date_sk bigint,
    cp_end_date_sk bigint,
    cp_department varchar(50),
    cp_catalog_number bigint,
    cp_catalog_page_number bigint,
    cp_description varchar(100),
    cp_type varchar(100),
    PRIMARY KEY (cp_catalog_page_sk)
);

CREATE TABLE web_site (
    web_site_sk bigint,
    web_site_id varchar(16),
    web_rec_start_date date,
    web_rec_end_date date,
    web_name varchar(50),
    web_open_date_sk bigint,
    web_close_date_sk bigint,
    web_class varchar(50),
    web_manager varchar(40),
    web_mkt_id bigint,
    web_mkt_class varchar(50),
    web_mkt_desc varchar(100),
    web_market_manager varchar(40),
    web_company_id bigint,
    web_company_name varchar(50),
    web_street_number varchar(10),
    web_street_name varchar(60),
    web_street_type varchar(15),
    web_suite_number varchar(10),
    web_city varchar(60),
    web_county varchar(30),
    web_state char(2),
    web_zip varchar(10),
    web_country varchar(20),
    web_gmt_offset decimal(5,2),
    web_tax_percentage decimal(5,2),
    PRIMARY KEY (web_site_sk)
);

CREATE TABLE web_page (
    wp_web_page_sk bigint,
    wp_web_page_id varchar(16) NOT NULL,
    wp_rec_start_date date,
    wp_rec_end_date date,
    wp_creation_date_sk bigint,
    wp_access_date_sk bigint,
    wp_autogen_flag char(1),
    wp_customer_sk bigint,
    wp_url varchar(100),
    wp_type varchar(50),
    wp_char_count bigint,
    wp_link_count bigint,
    wp_image_count bigint,
    wp_max_ad_count bigint,
    PRIMARY KEY (wp_web_page_sk)
);

CREATE TABLE warehouse (
    w_warehouse_sk bigint,
    w_warehouse_id varchar(16) NOT NULL,
    w_warehouse_name varchar(20),
    w_warehouse_sq_ft bigint,
    w_street_number varchar(10),
    w_street_name varchar(60),
    w_street_type varchar(15),
    w_suite_number varchar(10),
    w_city varchar(60),
    w_county varchar(30),
    w_state char(2),
    w_zip varchar(10),
    w_country varchar(20),
    w_gmt_offset decimal(5,2),
    PRIMARY KEY (w_warehouse_sk)
);

CREATE TABLE customer (
    c_customer_sk bigint,
    c_customer_id varchar(16) NOT NULL,
    c_current_cdemo_sk bigint,
    c_current_hdemo_sk bigint,
    c_current_addr_sk bigint,
    c_first_shipto_date_sk bigint,
    c_first_sales_date_sk bigint,
    c_salutation varchar(10),
    c_first_name varchar(20),
    c_last_name varchar(30),
    c_preferred_cust_flag char(1),
    c_birth_day bigint,
    c_birth_month bigint,
    c_birth_year bigint,
    c_birth_country varchar(20),
    c_login varchar(13),
    c_email_address varchar(50),
    c_last_review_date_sk bigint,
    PRIMARY KEY (c_customer_sk)
);

CREATE TABLE customer_address (
    ca_address_sk bigint,
    ca_address_id varchar(16) NOT NULL,
    ca_street_number varchar(10),
    ca_street_name varchar(60),
    ca_street_type varchar(15),
    ca_suite_number varchar(10),
    ca_city varchar(60),
    ca_county varchar(30),
    ca_state char(2),
    ca_zip varchar(10),
    ca_country varchar(20),
    ca_gmt_offset decimal(5,2),
    ca_location_type varchar(20),
    PRIMARY KEY (ca_address_sk)
);

CREATE TABLE customer_demographics (
    cd_demo_sk bigint,
    cd_gender char(1),
    cd_marital_status char(1),
    cd_education_status varchar(20),
    cd_purchase_estimate bigint,
    cd_credit_rating varchar(10),
    cd_dep_count bigint,
    cd_dep_employed_count bigint,
    cd_dep_college_count bigint,
    PRIMARY KEY (cd_demo_sk)
);

CREATE TABLE date_dim (
    d_date_sk bigint,
    d_date_id varchar(16) NOT NULL,
    d_date date,
    d_month_seq bigint,
    d_week_seq bigint,
    d_quarter_seq bigint,
    d_year bigint,
    d_dow bigint,
    d_moy bigint,
    d_dom bigint,
    d_qoy bigint,
    d_fy_year bigint,
    d_fy_quarter_seq bigint,
    d_fy_week_seq bigint,
    d_day_name varchar(9),
    d_quarter_name varchar(6),
    d_holiday char(1),
    d_weekend char(1),
    d_following_holiday char(1),
    d_first_dom bigint,
    d_last_dom bigint,
    d_same_day_ly bigint,
    d_same_day_lq bigint,
    d_current_day char(1),
    d_current_week char(1),
    d_current_month char(1),
    d_current_quarter char(1),
    d_current_year char(1),
    PRIMARY KEY (d_date_sk)
);

CREATE TABLE household_demographics (
    hd_demo_sk bigint,
    hd_income_band_sk bigint,
    hd_buy_potential varchar(15),
    hd_dep_count bigint,
    hd_vehicle_count bigint,
    PRIMARY KEY (hd_demo_sk)
);

CREATE TABLE item (
    i_item_sk bigint,
    i_item_id varchar(16) NOT NULL,
    i_rec_start_date date,
    i_rec_end_date date,
    i_item_desc varchar(200),
    i_current_price decimal(7,2),
    i_wholesale_cost decimal(7,2),
    i_brand_id bigint,
    i_brand varchar(50),
    i_class_id bigint,
    i_class varchar(50),
    i_category_id bigint,
    i_category varchar(50),
    i_manufact_id bigint,
    i_manufact varchar(50),
    i_size varchar(20),
    i_formulation varchar(20),
    i_color varchar(20),
    i_units varchar(10),
    i_container varchar(10),
    i_manager_id bigint,
    i_product_name varchar(50),
    PRIMARY KEY (i_item_sk)
);

CREATE TABLE income_band (
    ib_income_band_sk bigint,
    ib_lower_bound bigint,
    ib_upper_bound bigint,
    PRIMARY KEY (ib_income_band_sk)
);

CREATE TABLE promotion (
    p_promo_sk bigint,
    p_promo_id varchar(16) NOT NULL,
    p_start_date_sk bigint,
    p_end_date_sk bigint,
    p_item_sk bigint,
    p_cost decimal(15,2),
    p_response_target bigint,
    p_promo_name varchar(50),
    p_channel_dmail char(1),
    p_channel_email char(1),
    p_channel_catalog char(1),
    p_channel_tv char(1),
    p_channel_radio char(1),
    p_channel_press char(1),
    p_channel_event char(1),
    p_channel_demo char(1),
    p_channel_details varchar(100),
    p_purpose varchar(15),
    p_discount_active char(1),
    PRIMARY KEY (p_promo_sk)
);

CREATE TABLE reason (
    r_reason_sk bigint,
    r_reason_id varchar(16) NOT NULL,
    r_reason_desc varchar(100),
    PRIMARY KEY (r_reason_sk)
);

CREATE TABLE ship_mode (
    sm_ship_mode_sk bigint,
    sm_ship_mode_id varchar(16) NOT NULL,
    sm_type varchar(30),
    sm_code varchar(10),
    sm_carrier varchar(20),
    sm_contract varchar(20),
    PRIMARY KEY (sm_ship_mode_sk)
);

CREATE TABLE time_dim (
    t_time_sk bigint,
    t_time_id varchar(16) NOT NULL,
    t_time bigint,
    t_hour bigint,
    t_minute bigint,
    t_second bigint,
    t_am_pm char(2),
    t_shift varchar(20),
    t_sub_shift varchar(20),
    t_meal_time varchar(20),
    PRIMARY KEY (t_time_sk)
);


-- Foreign keys / join paths
ALTER TABLE store_sales ADD CONSTRAINT fk_store_sales_ss_sold_date_sk FOREIGN KEY (ss_sold_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE store_sales ADD CONSTRAINT fk_store_sales_ss_sold_time_sk FOREIGN KEY (ss_sold_time_sk) REFERENCES time_dim (t_time_sk);
ALTER TABLE store_sales ADD CONSTRAINT fk_store_sales_ss_item_sk FOREIGN KEY (ss_item_sk) REFERENCES item (i_item_sk);
ALTER TABLE store_sales ADD CONSTRAINT fk_store_sales_ss_customer_sk FOREIGN KEY (ss_customer_sk) REFERENCES customer (c_customer_sk);
ALTER TABLE store_sales ADD CONSTRAINT fk_store_sales_ss_cdemo_sk FOREIGN KEY (ss_cdemo_sk) REFERENCES customer_demographics (cd_demo_sk);
ALTER TABLE store_sales ADD CONSTRAINT fk_store_sales_ss_hdemo_sk FOREIGN KEY (ss_hdemo_sk) REFERENCES household_demographics (hd_demo_sk);
ALTER TABLE store_sales ADD CONSTRAINT fk_store_sales_ss_addr_sk FOREIGN KEY (ss_addr_sk) REFERENCES customer_address (ca_address_sk);
ALTER TABLE store_sales ADD CONSTRAINT fk_store_sales_ss_store_sk FOREIGN KEY (ss_store_sk) REFERENCES store (s_store_sk);
ALTER TABLE store_sales ADD CONSTRAINT fk_store_sales_ss_promo_sk FOREIGN KEY (ss_promo_sk) REFERENCES promotion (p_promo_sk);
ALTER TABLE store_returns ADD CONSTRAINT fk_store_returns_sr_returned_date_sk FOREIGN KEY (sr_returned_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE store_returns ADD CONSTRAINT fk_store_returns_sr_return_time_sk FOREIGN KEY (sr_return_time_sk) REFERENCES time_dim (t_time_sk);
ALTER TABLE store_returns ADD CONSTRAINT fk_store_returns_sr_item_sk FOREIGN KEY (sr_item_sk) REFERENCES item (i_item_sk);
ALTER TABLE store_returns ADD CONSTRAINT fk_store_returns_sr_customer_sk FOREIGN KEY (sr_customer_sk) REFERENCES customer (c_customer_sk);
ALTER TABLE store_returns ADD CONSTRAINT fk_store_returns_sr_cdemo_sk FOREIGN KEY (sr_cdemo_sk) REFERENCES customer_demographics (cd_demo_sk);
ALTER TABLE store_returns ADD CONSTRAINT fk_store_returns_sr_hdemo_sk FOREIGN KEY (sr_hdemo_sk) REFERENCES household_demographics (hd_demo_sk);
ALTER TABLE store_returns ADD CONSTRAINT fk_store_returns_sr_addr_sk FOREIGN KEY (sr_addr_sk) REFERENCES customer_address (ca_address_sk);
ALTER TABLE store_returns ADD CONSTRAINT fk_store_returns_sr_store_sk FOREIGN KEY (sr_store_sk) REFERENCES store (s_store_sk);
ALTER TABLE store_returns ADD CONSTRAINT fk_store_returns_sr_reason_sk FOREIGN KEY (sr_reason_sk) REFERENCES reason (r_reason_sk);
ALTER TABLE catalog_sales ADD CONSTRAINT fk_catalog_sales_cs_sold_date_sk FOREIGN KEY (cs_sold_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE catalog_sales ADD CONSTRAINT fk_catalog_sales_cs_sold_time_sk FOREIGN KEY (cs_sold_time_sk) REFERENCES time_dim (t_time_sk);
ALTER TABLE catalog_sales ADD CONSTRAINT fk_catalog_sales_cs_ship_date_sk FOREIGN KEY (cs_ship_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE catalog_sales ADD CONSTRAINT fk_catalog_sales_cs_bill_customer_sk FOREIGN KEY (cs_bill_customer_sk) REFERENCES customer (c_customer_sk);
ALTER TABLE catalog_sales ADD CONSTRAINT fk_catalog_sales_cs_bill_cdemo_sk FOREIGN KEY (cs_bill_cdemo_sk) REFERENCES customer_demographics (cd_demo_sk);
ALTER TABLE catalog_sales ADD CONSTRAINT fk_catalog_sales_cs_bill_hdemo_sk FOREIGN KEY (cs_bill_hdemo_sk) REFERENCES household_demographics (hd_demo_sk);
ALTER TABLE catalog_sales ADD CONSTRAINT fk_catalog_sales_cs_bill_addr_sk FOREIGN KEY (cs_bill_addr_sk) REFERENCES customer_address (ca_address_sk);
ALTER TABLE catalog_sales ADD CONSTRAINT fk_catalog_sales_cs_ship_customer_sk FOREIGN KEY (cs_ship_customer_sk) REFERENCES customer (c_customer_sk);
ALTER TABLE catalog_sales ADD CONSTRAINT fk_catalog_sales_cs_ship_cdemo_sk FOREIGN KEY (cs_ship_cdemo_sk) REFERENCES customer_demographics (cd_demo_sk);
ALTER TABLE catalog_sales ADD CONSTRAINT fk_catalog_sales_cs_ship_hdemo_sk FOREIGN KEY (cs_ship_hdemo_sk) REFERENCES household_demographics (hd_demo_sk);
ALTER TABLE catalog_sales ADD CONSTRAINT fk_catalog_sales_cs_ship_addr_sk FOREIGN KEY (cs_ship_addr_sk) REFERENCES customer_address (ca_address_sk);
ALTER TABLE catalog_sales ADD CONSTRAINT fk_catalog_sales_cs_call_center_sk FOREIGN KEY (cs_call_center_sk) REFERENCES call_center (cc_call_center_sk);
ALTER TABLE catalog_sales ADD CONSTRAINT fk_catalog_sales_cs_catalog_page_sk FOREIGN KEY (cs_catalog_page_sk) REFERENCES catalog_page (cp_catalog_page_sk);
ALTER TABLE catalog_sales ADD CONSTRAINT fk_catalog_sales_cs_ship_mode_sk FOREIGN KEY (cs_ship_mode_sk) REFERENCES ship_mode (sm_ship_mode_sk);
ALTER TABLE catalog_sales ADD CONSTRAINT fk_catalog_sales_cs_warehouse_sk FOREIGN KEY (cs_warehouse_sk) REFERENCES warehouse (w_warehouse_sk);
ALTER TABLE catalog_sales ADD CONSTRAINT fk_catalog_sales_cs_item_sk FOREIGN KEY (cs_item_sk) REFERENCES item (i_item_sk);
ALTER TABLE catalog_sales ADD CONSTRAINT fk_catalog_sales_cs_promo_sk FOREIGN KEY (cs_promo_sk) REFERENCES promotion (p_promo_sk);
ALTER TABLE catalog_returns ADD CONSTRAINT fk_catalog_returns_cr_returned_date_sk FOREIGN KEY (cr_returned_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE catalog_returns ADD CONSTRAINT fk_catalog_returns_cr_returned_time_sk FOREIGN KEY (cr_returned_time_sk) REFERENCES time_dim (t_time_sk);
ALTER TABLE catalog_returns ADD CONSTRAINT fk_catalog_returns_cr_item_sk FOREIGN KEY (cr_item_sk) REFERENCES item (i_item_sk);
ALTER TABLE catalog_returns ADD CONSTRAINT fk_catalog_returns_cr_refunded_customer_sk FOREIGN KEY (cr_refunded_customer_sk) REFERENCES customer (c_customer_sk);
ALTER TABLE catalog_returns ADD CONSTRAINT fk_catalog_returns_cr_refunded_cdemo_sk FOREIGN KEY (cr_refunded_cdemo_sk) REFERENCES customer_demographics (cd_demo_sk);
ALTER TABLE catalog_returns ADD CONSTRAINT fk_catalog_returns_cr_refunded_hdemo_sk FOREIGN KEY (cr_refunded_hdemo_sk) REFERENCES household_demographics (hd_demo_sk);
ALTER TABLE catalog_returns ADD CONSTRAINT fk_catalog_returns_cr_refunded_addr_sk FOREIGN KEY (cr_refunded_addr_sk) REFERENCES customer_address (ca_address_sk);
ALTER TABLE catalog_returns ADD CONSTRAINT fk_catalog_returns_cr_returning_customer_sk FOREIGN KEY (cr_returning_customer_sk) REFERENCES customer (c_customer_sk);
ALTER TABLE catalog_returns ADD CONSTRAINT fk_catalog_returns_cr_returning_cdemo_sk FOREIGN KEY (cr_returning_cdemo_sk) REFERENCES customer_demographics (cd_demo_sk);
ALTER TABLE catalog_returns ADD CONSTRAINT fk_catalog_returns_cr_returning_hdemo_sk FOREIGN KEY (cr_returning_hdemo_sk) REFERENCES household_demographics (hd_demo_sk);
ALTER TABLE catalog_returns ADD CONSTRAINT fk_catalog_returns_cr_returning_addr_sk FOREIGN KEY (cr_returning_addr_sk) REFERENCES customer_address (ca_address_sk);
ALTER TABLE catalog_returns ADD CONSTRAINT fk_catalog_returns_cr_call_center_sk FOREIGN KEY (cr_call_center_sk) REFERENCES call_center (cc_call_center_sk);
ALTER TABLE catalog_returns ADD CONSTRAINT fk_catalog_returns_cr_catalog_page_sk FOREIGN KEY (cr_catalog_page_sk) REFERENCES catalog_page (cp_catalog_page_sk);
ALTER TABLE catalog_returns ADD CONSTRAINT fk_catalog_returns_cr_ship_mode_sk FOREIGN KEY (cr_ship_mode_sk) REFERENCES ship_mode (sm_ship_mode_sk);
ALTER TABLE catalog_returns ADD CONSTRAINT fk_catalog_returns_cr_warehouse_sk FOREIGN KEY (cr_warehouse_sk) REFERENCES warehouse (w_warehouse_sk);
ALTER TABLE catalog_returns ADD CONSTRAINT fk_catalog_returns_cr_reason_sk FOREIGN KEY (cr_reason_sk) REFERENCES reason (r_reason_sk);
ALTER TABLE web_sales ADD CONSTRAINT fk_web_sales_ws_sold_date_sk FOREIGN KEY (ws_sold_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE web_sales ADD CONSTRAINT fk_web_sales_ws_sold_time_sk FOREIGN KEY (ws_sold_time_sk) REFERENCES time_dim (t_time_sk);
ALTER TABLE web_sales ADD CONSTRAINT fk_web_sales_ws_ship_date_sk FOREIGN KEY (ws_ship_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE web_sales ADD CONSTRAINT fk_web_sales_ws_bill_customer_sk FOREIGN KEY (ws_bill_customer_sk) REFERENCES customer (c_customer_sk);
ALTER TABLE web_sales ADD CONSTRAINT fk_web_sales_ws_bill_cdemo_sk FOREIGN KEY (ws_bill_cdemo_sk) REFERENCES customer_demographics (cd_demo_sk);
ALTER TABLE web_sales ADD CONSTRAINT fk_web_sales_ws_bill_hdemo_sk FOREIGN KEY (ws_bill_hdemo_sk) REFERENCES household_demographics (hd_demo_sk);
ALTER TABLE web_sales ADD CONSTRAINT fk_web_sales_ws_bill_addr_sk FOREIGN KEY (ws_bill_addr_sk) REFERENCES customer_address (ca_address_sk);
ALTER TABLE web_sales ADD CONSTRAINT fk_web_sales_ws_ship_customer_sk FOREIGN KEY (ws_ship_customer_sk) REFERENCES customer (c_customer_sk);
ALTER TABLE web_sales ADD CONSTRAINT fk_web_sales_ws_ship_cdemo_sk FOREIGN KEY (ws_ship_cdemo_sk) REFERENCES customer_demographics (cd_demo_sk);
ALTER TABLE web_sales ADD CONSTRAINT fk_web_sales_ws_ship_hdemo_sk FOREIGN KEY (ws_ship_hdemo_sk) REFERENCES household_demographics (hd_demo_sk);
ALTER TABLE web_sales ADD CONSTRAINT fk_web_sales_ws_ship_addr_sk FOREIGN KEY (ws_ship_addr_sk) REFERENCES customer_address (ca_address_sk);
ALTER TABLE web_sales ADD CONSTRAINT fk_web_sales_ws_web_page_sk FOREIGN KEY (ws_web_page_sk) REFERENCES web_page (wp_web_page_sk);
ALTER TABLE web_sales ADD CONSTRAINT fk_web_sales_ws_web_site_sk FOREIGN KEY (ws_web_site_sk) REFERENCES web_site (web_site_sk);
ALTER TABLE web_sales ADD CONSTRAINT fk_web_sales_ws_ship_mode_sk FOREIGN KEY (ws_ship_mode_sk) REFERENCES ship_mode (sm_ship_mode_sk);
ALTER TABLE web_sales ADD CONSTRAINT fk_web_sales_ws_warehouse_sk FOREIGN KEY (ws_warehouse_sk) REFERENCES warehouse (w_warehouse_sk);
ALTER TABLE web_sales ADD CONSTRAINT fk_web_sales_ws_item_sk FOREIGN KEY (ws_item_sk) REFERENCES item (i_item_sk);
ALTER TABLE web_sales ADD CONSTRAINT fk_web_sales_ws_promo_sk FOREIGN KEY (ws_promo_sk) REFERENCES promotion (p_promo_sk);
ALTER TABLE web_returns ADD CONSTRAINT fk_web_returns_wr_returned_date_sk FOREIGN KEY (wr_returned_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE web_returns ADD CONSTRAINT fk_web_returns_wr_returned_time_sk FOREIGN KEY (wr_returned_time_sk) REFERENCES time_dim (t_time_sk);
ALTER TABLE web_returns ADD CONSTRAINT fk_web_returns_wr_item_sk FOREIGN KEY (wr_item_sk) REFERENCES item (i_item_sk);
ALTER TABLE web_returns ADD CONSTRAINT fk_web_returns_wr_refunded_customer_sk FOREIGN KEY (wr_refunded_customer_sk) REFERENCES customer (c_customer_sk);
ALTER TABLE web_returns ADD CONSTRAINT fk_web_returns_wr_refunded_cdemo_sk FOREIGN KEY (wr_refunded_cdemo_sk) REFERENCES customer_demographics (cd_demo_sk);
ALTER TABLE web_returns ADD CONSTRAINT fk_web_returns_wr_refunded_hdemo_sk FOREIGN KEY (wr_refunded_hdemo_sk) REFERENCES household_demographics (hd_demo_sk);
ALTER TABLE web_returns ADD CONSTRAINT fk_web_returns_wr_refunded_addr_sk FOREIGN KEY (wr_refunded_addr_sk) REFERENCES customer_address (ca_address_sk);
ALTER TABLE web_returns ADD CONSTRAINT fk_web_returns_wr_returning_customer_sk FOREIGN KEY (wr_returning_customer_sk) REFERENCES customer (c_customer_sk);
ALTER TABLE web_returns ADD CONSTRAINT fk_web_returns_wr_returning_cdemo_sk FOREIGN KEY (wr_returning_cdemo_sk) REFERENCES customer_demographics (cd_demo_sk);
ALTER TABLE web_returns ADD CONSTRAINT fk_web_returns_wr_returning_hdemo_sk FOREIGN KEY (wr_returning_hdemo_sk) REFERENCES household_demographics (hd_demo_sk);
ALTER TABLE web_returns ADD CONSTRAINT fk_web_returns_wr_returning_addr_sk FOREIGN KEY (wr_returning_addr_sk) REFERENCES customer_address (ca_address_sk);
ALTER TABLE web_returns ADD CONSTRAINT fk_web_returns_wr_web_page_sk FOREIGN KEY (wr_web_page_sk) REFERENCES web_page (wp_web_page_sk);
ALTER TABLE web_returns ADD CONSTRAINT fk_web_returns_wr_reason_sk FOREIGN KEY (wr_reason_sk) REFERENCES reason (r_reason_sk);
ALTER TABLE inventory ADD CONSTRAINT fk_inventory_inv_date_sk FOREIGN KEY (inv_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE inventory ADD CONSTRAINT fk_inventory_inv_item_sk FOREIGN KEY (inv_item_sk) REFERENCES item (i_item_sk);
ALTER TABLE inventory ADD CONSTRAINT fk_inventory_inv_warehouse_sk FOREIGN KEY (inv_warehouse_sk) REFERENCES warehouse (w_warehouse_sk);
ALTER TABLE store ADD CONSTRAINT fk_store_s_closed_date_sk FOREIGN KEY (s_closed_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE call_center ADD CONSTRAINT fk_call_center_cc_closed_date_sk FOREIGN KEY (cc_closed_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE call_center ADD CONSTRAINT fk_call_center_cc_open_date_sk FOREIGN KEY (cc_open_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE catalog_page ADD CONSTRAINT fk_catalog_page_cp_start_date_sk FOREIGN KEY (cp_start_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE catalog_page ADD CONSTRAINT fk_catalog_page_cp_end_date_sk FOREIGN KEY (cp_end_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE web_site ADD CONSTRAINT fk_web_site_web_open_date_sk FOREIGN KEY (web_open_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE web_site ADD CONSTRAINT fk_web_site_web_close_date_sk FOREIGN KEY (web_close_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE web_page ADD CONSTRAINT fk_web_page_wp_creation_date_sk FOREIGN KEY (wp_creation_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE web_page ADD CONSTRAINT fk_web_page_wp_access_date_sk FOREIGN KEY (wp_access_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE web_page ADD CONSTRAINT fk_web_page_wp_customer_sk FOREIGN KEY (wp_customer_sk) REFERENCES customer (c_customer_sk);
ALTER TABLE customer ADD CONSTRAINT fk_customer_c_current_cdemo_sk FOREIGN KEY (c_current_cdemo_sk) REFERENCES customer_demographics (cd_demo_sk);
ALTER TABLE customer ADD CONSTRAINT fk_customer_c_current_hdemo_sk FOREIGN KEY (c_current_hdemo_sk) REFERENCES household_demographics (hd_demo_sk);
ALTER TABLE customer ADD CONSTRAINT fk_customer_c_current_addr_sk FOREIGN KEY (c_current_addr_sk) REFERENCES customer_address (ca_address_sk);
ALTER TABLE customer ADD CONSTRAINT fk_customer_c_first_shipto_date_sk FOREIGN KEY (c_first_shipto_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE customer ADD CONSTRAINT fk_customer_c_first_sales_date_sk FOREIGN KEY (c_first_sales_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE household_demographics ADD CONSTRAINT fk_household_demographics_hd_income_band_sk FOREIGN KEY (hd_income_band_sk) REFERENCES income_band (ib_income_band_sk);
ALTER TABLE promotion ADD CONSTRAINT fk_promotion_p_start_date_sk FOREIGN KEY (p_start_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE promotion ADD CONSTRAINT fk_promotion_p_end_date_sk FOREIGN KEY (p_end_date_sk) REFERENCES date_dim (d_date_sk);
ALTER TABLE promotion ADD CONSTRAINT fk_promotion_p_item_sk FOREIGN KEY (p_item_sk) REFERENCES item (i_item_sk);

-- Common join reference

-- store_sales
-- store_sales ss JOIN date_dim d ON ss.ss_sold_date_sk = d.d_date_sk
-- store_sales ss JOIN time_dim t ON ss.ss_sold_time_sk = t.t_time_sk
-- store_sales ss JOIN item i ON ss.ss_item_sk = i.i_item_sk
-- store_sales ss JOIN customer c ON ss.ss_customer_sk = c.c_customer_sk
-- store_sales ss JOIN customer_demographics cd ON ss.ss_cdemo_sk = cd.cd_demo_sk
-- store_sales ss JOIN household_demographics hd ON ss.ss_hdemo_sk = hd.hd_demo_sk
-- store_sales ss JOIN customer_address ca ON ss.ss_addr_sk = ca.ca_address_sk
-- store_sales ss JOIN store s ON ss.ss_store_sk = s.s_store_sk
-- store_sales ss JOIN promotion p ON ss.ss_promo_sk = p.p_promo_sk

-- store_returns
-- store_returns sr JOIN date_dim d ON sr.sr_returned_date_sk = d.d_date_sk
-- store_returns sr JOIN time_dim t ON sr.sr_return_time_sk = t.t_time_sk
-- store_returns sr JOIN item i ON sr.sr_item_sk = i.i_item_sk
-- store_returns sr JOIN customer c ON sr.sr_customer_sk = c.c_customer_sk
-- store_returns sr JOIN customer_demographics cd ON sr.sr_cdemo_sk = cd.cd_demo_sk
-- store_returns sr JOIN household_demographics hd ON sr.sr_hdemo_sk = hd.hd_demo_sk
-- store_returns sr JOIN customer_address ca ON sr.sr_addr_sk = ca.ca_address_sk
-- store_returns sr JOIN store s ON sr.sr_store_sk = s.s_store_sk
-- store_returns sr JOIN reason r ON sr.sr_reason_sk = r.r_reason_sk

-- catalog_sales
-- catalog_sales cs JOIN date_dim d_sold ON cs.cs_sold_date_sk = d_sold.d_date_sk
-- catalog_sales cs JOIN time_dim t ON cs.cs_sold_time_sk = t.t_time_sk
-- catalog_sales cs JOIN date_dim d_ship ON cs.cs_ship_date_sk = d_ship.d_date_sk
-- catalog_sales cs JOIN customer c_bill ON cs.cs_bill_customer_sk = c_bill.c_customer_sk
-- catalog_sales cs JOIN customer_demographics cd_bill ON cs.cs_bill_cdemo_sk = cd_bill.cd_demo_sk
-- catalog_sales cs JOIN household_demographics hd_bill ON cs.cs_bill_hdemo_sk = hd_bill.hd_demo_sk
-- catalog_sales cs JOIN customer_address ca_bill ON cs.cs_bill_addr_sk = ca_bill.ca_address_sk
-- catalog_sales cs JOIN customer c_ship ON cs.cs_ship_customer_sk = c_ship.c_customer_sk
-- catalog_sales cs JOIN customer_demographics cd_ship ON cs.cs_ship_cdemo_sk = cd_ship.cd_demo_sk
-- catalog_sales cs JOIN household_demographics hd_ship ON cs.cs_ship_hdemo_sk = hd_ship.hd_demo_sk
-- catalog_sales cs JOIN customer_address ca_ship ON cs.cs_ship_addr_sk = ca_ship.ca_address_sk
-- catalog_sales cs JOIN call_center cc ON cs.cs_call_center_sk = cc.cc_call_center_sk
-- catalog_sales cs JOIN catalog_page cp ON cs.cs_catalog_page_sk = cp.cp_catalog_page_sk
-- catalog_sales cs JOIN ship_mode sm ON cs.cs_ship_mode_sk = sm.sm_ship_mode_sk
-- catalog_sales cs JOIN warehouse w ON cs.cs_warehouse_sk = w.w_warehouse_sk
-- catalog_sales cs JOIN item i ON cs.cs_item_sk = i.i_item_sk
-- catalog_sales cs JOIN promotion p ON cs.cs_promo_sk = p.p_promo_sk

-- catalog_returns
-- catalog_returns cr JOIN date_dim d ON cr.cr_returned_date_sk = d.d_date_sk
-- catalog_returns cr JOIN time_dim t ON cr.cr_returned_time_sk = t.t_time_sk
-- catalog_returns cr JOIN item i ON cr.cr_item_sk = i.i_item_sk
-- catalog_returns cr JOIN customer c_ref ON cr.cr_refunded_customer_sk = c_ref.c_customer_sk
-- catalog_returns cr JOIN customer_demographics cd_ref ON cr.cr_refunded_cdemo_sk = cd_ref.cd_demo_sk
-- catalog_returns cr JOIN household_demographics hd_ref ON cr.cr_refunded_hdemo_sk = hd_ref.hd_demo_sk
-- catalog_returns cr JOIN customer_address ca_ref ON cr.cr_refunded_addr_sk = ca_ref.ca_address_sk
-- catalog_returns cr JOIN customer c_ret ON cr.cr_returning_customer_sk = c_ret.c_customer_sk
-- catalog_returns cr JOIN customer_demographics cd_ret ON cr.cr_returning_cdemo_sk = cd_ret.cd_demo_sk
-- catalog_returns cr JOIN household_demographics hd_ret ON cr.cr_returning_hdemo_sk = hd_ret.hd_demo_sk
-- catalog_returns cr JOIN customer_address ca_ret ON cr.cr_returning_addr_sk = ca_ret.ca_address_sk
-- catalog_returns cr JOIN call_center cc ON cr.cr_call_center_sk = cc.cc_call_center_sk
-- catalog_returns cr JOIN catalog_page cp ON cr.cr_catalog_page_sk = cp.cp_catalog_page_sk
-- catalog_returns cr JOIN ship_mode sm ON cr.cr_ship_mode_sk = sm.sm_ship_mode_sk
-- catalog_returns cr JOIN warehouse w ON cr.cr_warehouse_sk = w.w_warehouse_sk
-- catalog_returns cr JOIN reason r ON cr.cr_reason_sk = r.r_reason_sk

-- web_sales
-- web_sales ws JOIN date_dim d_sold ON ws.ws_sold_date_sk = d_sold.d_date_sk
-- web_sales ws JOIN time_dim t ON ws.ws_sold_time_sk = t.t_time_sk
-- web_sales ws JOIN date_dim d_ship ON ws.ws_ship_date_sk = d_ship.d_date_sk
-- web_sales ws JOIN customer c_bill ON ws.ws_bill_customer_sk = c_bill.c_customer_sk
-- web_sales ws JOIN customer_demographics cd_bill ON ws.ws_bill_cdemo_sk = cd_bill.cd_demo_sk
-- web_sales ws JOIN household_demographics hd_bill ON ws.ws_bill_hdemo_sk = hd_bill.hd_demo_sk
-- web_sales ws JOIN customer_address ca_bill ON ws.ws_bill_addr_sk = ca_bill.ca_address_sk
-- web_sales ws JOIN customer c_ship ON ws.ws_ship_customer_sk = c_ship.c_customer_sk
-- web_sales ws JOIN customer_demographics cd_ship ON ws.ws_ship_cdemo_sk = cd_ship.cd_demo_sk
-- web_sales ws JOIN household_demographics hd_ship ON ws.ws_ship_hdemo_sk = hd_ship.hd_demo_sk
-- web_sales ws JOIN customer_address ca_ship ON ws.ws_ship_addr_sk = ca_ship.ca_address_sk
-- web_sales ws JOIN web_page wp ON ws.ws_web_page_sk = wp.wp_web_page_sk
-- web_sales ws JOIN web_site web ON ws.ws_web_site_sk = web.web_site_sk
-- web_sales ws JOIN ship_mode sm ON ws.ws_ship_mode_sk = sm.sm_ship_mode_sk
-- web_sales ws JOIN warehouse w ON ws.ws_warehouse_sk = w.w_warehouse_sk
-- web_sales ws JOIN item i ON ws.ws_item_sk = i.i_item_sk
-- web_sales ws JOIN promotion p ON ws.ws_promo_sk = p.p_promo_sk

-- web_returns
-- web_returns wr JOIN date_dim d ON wr.wr_returned_date_sk = d.d_date_sk
-- web_returns wr JOIN time_dim t ON wr.wr_returned_time_sk = t.t_time_sk
-- web_returns wr JOIN item i ON wr.wr_item_sk = i.i_item_sk
-- web_returns wr JOIN customer c_ref ON wr.wr_refunded_customer_sk = c_ref.c_customer_sk
-- web_returns wr JOIN customer_demographics cd_ref ON wr.wr_refunded_cdemo_sk = cd_ref.cd_demo_sk
-- web_returns wr JOIN household_demographics hd_ref ON wr.wr_refunded_hdemo_sk = hd_ref.hd_demo_sk
-- web_returns wr JOIN customer_address ca_ref ON wr.wr_refunded_addr_sk = ca_ref.ca_address_sk
-- web_returns wr JOIN customer c_ret ON wr.wr_returning_customer_sk = c_ret.c_customer_sk
-- web_returns wr JOIN customer_demographics cd_ret ON wr.wr_returning_cdemo_sk = cd_ret.cd_demo_sk
-- web_returns wr JOIN household_demographics hd_ret ON wr.wr_returning_hdemo_sk = hd_ret.hd_demo_sk
-- web_returns wr JOIN customer_address ca_ret ON wr.wr_returning_addr_sk = ca_ret.ca_address_sk
-- web_returns wr JOIN web_page wp ON wr.wr_web_page_sk = wp.wp_web_page_sk
-- web_returns wr JOIN reason r ON wr.wr_reason_sk = r.r_reason_sk

-- inventory
-- inventory inv JOIN date_dim d ON inv.inv_date_sk = d.d_date_sk
-- inventory inv JOIN item i ON inv.inv_item_sk = i.i_item_sk
-- inventory inv JOIN warehouse w ON inv.inv_warehouse_sk = w.w_warehouse_sk