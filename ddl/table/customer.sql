create table if not exists customer (
  customer_id  serial not null primary key,
  customer_name  varchar(90) not null,
  customer_phone varchar(30) not null,
  customer_email varchar(60),
  customer_address varchar(90),
  action_ts timestamp not null default current_timestamp
);
