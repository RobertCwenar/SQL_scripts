--INSERT INTO - Wprowadzanie danych

insert into HumanResources.Dzieciaczki values (1, 'Adas', 'Noga', 8, '20140101');

insert into HumanResources.Dzieciaczki (id, imie, nazwisko,Aktualny_wiek) 
values(2, 'Michal', 'Reka', 12);

insert into HumanResources.Dzieciaczki (id, imie, nazwisko, Aktualny_wiek, data_urodzenia) 
values(3, 'Wiesiek', 'Kromka', 7, '20150923'),
(4, 'Marcin', 'Zagadka', 3, '20191223'),
(5, 'Edek', 'Dudek', 10, '20120830');
		


select *
from HumanResources.Dzieciaczki;

alter table HumanResources.Dzieciaczki
alter column id int not null;

alter table HumanResources.Dzieciaczki
add constraint klucz_id primary key(id);


alter table HumanResources.Dzieciaczki
add unique (id);

insert into HumanResources.Dzieciaczki values(5, 'Misiek', 'Zdzisiek', 4, '20180415')

create table HumanResources.Dzieci
(id int not null identity(1,1) constraint klucz_id_dzieci primary key,  
imie varchar (255),
nazwisko varchar(255),
wiek int,
data_urodzenia date);


alter table Humanresources.Dzieci
add status varchar(10) default 'przyjety';

insert into HumanResources.Dzieci (imie, nazwisko, wiek, data_urodzenia) values 
('Darek', 'Kanarek', 12, '20100906');


insert into HumanResources.Dzieci (imie, nazwisko, wiek, data_urodzenia, status) values 
('Andrzej', 'Kanarek', 7, '20150906', 'odrzucony');

select *
from HumanResources.Dzieci
-- test
select *
from HumanResources.Rodzice;

insert into HumanResources.Rodzice
select BusinessEntityID, FirstName, LastName
from Person.Person
where LastName like 'B%' and BusinessEntityID <400;

select *
from HumanResources.Rodzice

select*
from Person.Person
