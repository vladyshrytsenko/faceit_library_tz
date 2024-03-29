insert into roles (name) values ('ROLE_USER'), ('ROLE_ADMIN');

insert into users(username, password, active) values('admin', 'password', true);
insert into users(username, password, active) values('john', 'password', true);
insert into users(username, password, active) values('mark', 'password', true);
insert into users(username, password, active) values('clark', 'password', true);

insert into user_roles(user_id, role_id) values (1, 1), (1, 2), (2, 1), (3, 1), (4, 1);

insert into books(name, calendar_date, condition) values('The Story of Doctor Dolittle', '1920-07-21', 'average');
insert into books(name, calendar_date, condition) values('The Red House Mystery', '1922-04-06', 'average');
insert into books(name, calendar_date, condition) values('The Secret Garden', '1911-12-10', 'average');
insert into books(name, calendar_date, condition) values('Black Beauty', '2020-11-27', 'good');
insert into books(name, calendar_date, condition) values('Heidi', '1880-05-02', 'terrible');
insert into books(name, calendar_date, condition) values('My Man Jeeves', '1919-05-01', 'good');
insert into books(name, calendar_date, condition) values('Wuthering Heights', '1847-12-20', 'terrible');
insert into books(name, calendar_date, condition) values('The Adventures of Robin Hood', '1938-05-14', 'terrible');
insert into books(name, calendar_date, condition) values('The Red Badge of Courage', '1895-01-11', 'average');
insert into books(name, calendar_date, condition) values('The Picture of Dorian Gray', '1890-03-18', 'terrible');

insert into user_books(user_id, book_id, created_on) values(1, 1, '1920-07-21');
insert into user_books(user_id, book_id, created_on) values(1, 2, '1921-12-15');
insert into user_books(user_id, book_id, created_on) values(1, 7, '1938-01-05');
