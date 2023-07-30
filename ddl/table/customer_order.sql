create table if not exists customer_order (
    order_id serial not null primary key,
    customer_id int not null,
    order_type varchar(5) not null,
    ticker_id varchar(10) not null,
    order_price numeric(10,2) not null,
    order_qty int not null,
    order_ts timestamp not null,
    order_status varchar(15) not null,
    action_ts timestamp not null default current_timestamp,
    foreign key (customer_id) references customer (customer_id),
    foreign key (ticker_id) references ticker (ticker_id)
);
