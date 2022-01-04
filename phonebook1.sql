drop table person;

drop sequence seq_person_id;

create table person(
    person_id	number(5),
    name   	varchar2(20)     NOT NULL,
    hp		varchar2(20),
    company	varchar2(20),
    PRIMARY KEY(person_id)	
);

CREATE SEQUENCE seq_person_id
INCREMENT BY 1 
START WITH 1 ;

select * from user_sequences;
select * from all_all_tables;

--insert문
insert into person values(seq_person_id.nextval, '이효리', '010-1111-1111', '02-1111-1111');
insert into person values(seq_person_id.nextval, '정우성', '010-2222-2222', '02-2222-2222');
insert into person values(seq_person_id.nextval, '유재석', '010-3333-3333', '02-3333-3333');
insert into person values(seq_person_id.nextval, '이정재', '010-4444-4444', '02-4444-4444');
insert into person values(seq_person_id.nextval, '서장훈', '010-5555-5555', '02-5555-5555');

commit;

select  person_id,
        name,
        hp,
        company
from person;

--update문
update person 
set hp = '010-9999-9999',
    company = '02-9999-9999'
where person_id = 4;

--delete문
delete from person
where person_id = 5;

insert into person values(seq_person_id.nextval, '강동원', '010-8888-8888', '02-8888-8888');

commit;