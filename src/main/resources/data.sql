use construction_task_manager;

create table if not exists user
(
    id          bigint auto_increment
    primary key,
    description varchar(255) null,
    email       varchar(30)  null,
    enabled     int          not null,
    first_name  varchar(255) null,
    house_nr    varchar(255) null,
    last_name   varchar(255) null,
    password    varchar(255) null,
    pesel       varchar(255) null,
    phone_nr    varchar(255) null,
    postal_code varchar(255) null,
    street      varchar(255) null,
    street_nr   varchar(255) null,
    username    varchar(255) null,
    constraint UK_1tew5hu2f6548h91d5c161a7k
    unique (pesel),
    constraint UK_ob8kqyqqgmefl0aco34akdtpe
    unique (email),
    constraint UK_sb8bbouer5wak8vyiiy4pf2bx
    unique (username)
    );

create table if not exists role
(
    id   bigint auto_increment
    primary key,
    name varchar(255) null
    );

create table if not exists users_roles
(
    user_id bigint not null,
    role_id bigint not null,
    constraint FKgd3iendaoyh04b95ykqise6qh
    foreign key (user_id) references user (id),
    constraint FKt4v0rrweyk393bdgt107vdx0x
    foreign key (role_id) references role (id)
    );

insert ignore into user (id, description, email, enabled, first_name, house_nr, last_name, password, pesel, phone_nr,
                  postal_code, street, street_nr, username)
values (1,'','kszczepan84@interia.pl',1, 'Krzysztof',8, 'Szczepański', '$2a$10$5//RPzQe5X7YAfdclbPCjOY2v2hD82wlg6UPQP4alcWhZVQy.JSFi',84111914294,889891262, '40-837', 'ul. Rataja', 8,'kszczepan84');
insert ignore into role (id, name)
values (1, 'ROLE_ADMIN');
insert ignore into users_roles (user_id, role_id)
values (1,1);

