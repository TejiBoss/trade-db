create table if not exists ticker (
    ticker_id         varchar(10)   not null primary key,
    ticker_name       varchar(60)   not null,
    last_ticker_price numeric(10,2) not null,
    action_ts         timestamp     not null default current_timestamp
);
