create table sso.users (
    id uuid default gen_random_uuid() primary key,
    username varchar(32) not null unique,
    password_hash varchar(255) not null,
    is_deleted boolean default false not null
);

create index idx_users_username on sso.users(username) where not is_deleted;