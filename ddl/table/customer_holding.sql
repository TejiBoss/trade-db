create table if not exists customer_holding (
    customer_id int not null,
    ticker_id varchar(10) not null,
    qty int not null,
    in_transit_qty int not null,
    action_ts timestamp default current_timestamp,
    primary key (customer_id, ticker_id),
    foreign key (customer_id) references customer (customer_id),
    foreign key (ticker_id) references ticker (ticker_id)
);
