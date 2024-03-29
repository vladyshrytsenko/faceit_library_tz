create table users (
    id int8 generated by default as identity,
    username varchar(255) not null,
    password varchar(255) not null,
    active boolean not null,
    primary key (id)
);

create table roles (
    id int8 generated by default as identity,
    name varchar(255) not null,
    primary key (id)
);

create table books (
    id int8 generated by default as identity,
    name varchar(100) not null,
    calendar_date date not null,
    condition varchar(50) not null,
    primary key (id)
);

create table user_roles (
    id int8 generated by default as identity,
    user_id integer references users(id) on delete cascade not null,
    role_id integer references roles(id) on delete cascade not null
);

CREATE TABLE user_books(
    id int8 generated by default as identity,
    user_id integer references users(id) on delete cascade not null,
    book_id integer references books(id) on delete cascade not null,
    created_on date
);
