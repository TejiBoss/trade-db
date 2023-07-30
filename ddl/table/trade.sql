create table if not exists trade(
    trade_id serial not null primary key,
    buy_customer_id int not null,
    buy_order_id int not null,
    sell_customer_id int not null,
    sell_order_id int not null,
    ticker_id varchar(10) not null,
    trade_price numeric(10,2) not null,
    trade_qty int not null,
    trade_ts timestamp not null,
    action_ts timestamp not null default current_timestamp,
    foreign key (buy_customer_id) references customer (customer_id),
    foreign key (sell_customer_id) references customer (customer_id),
    foreign key (ticker_id) references ticker (ticker_id),
    foreign key (buy_order_id) references customer_order (order_id),
    foreign key (sell_order_id) references customer_order (order_id)
);
