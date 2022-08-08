create table oceny_Roberta_semestr_letni
(id int not null identity (1,1) constraint kluczyk_id primary key,
przedmioty varchar (255),
oceny decimal (8,1),
data_dodania date)




set identity_insert oceny_Roberta_semestr_letni On 


insert into oceny_Roberta_semestr_letni (id, przedmioty, oceny, data_dodania, status)
values (1, 'Efektywnoœæ systemów logistycznych', 4.5, '20220610','zdane'),
(2, 'Metodologia badañ naukowych', 4.5, '20220629','zdane'),
(3, 'Metody iloœciowe w logistyce', 3.5, '20220620','zdane'),
(4, 'Prawo gospodarcze w logistyce', 3, '20220629','zdane'),
(5, 'Socjologia ekonomiczna', 5, '20220420','zdane'),
(6, 'Zarz¹dzanie projektami logistycznymi', 3.5, '20220710','zdane'),
(7, 'Zarz¹dzanie ryzykiem w ³añcuchu dostaw', 2, '20220624','zdane'),
(8, 'Zarz¹dzanie strategiczne', 4.5, '20220713','zdane'); 


select *
from oceny_Roberta_semestr_letni


alter table oceny_Roberta_semestr_letni
add unique (id);


select Round (avg(oceny),5)  as "Œrednia z semestru letniego"
from oceny_Roberta_semestr_letni;
 
 update oceny_Roberta_semestr_letni
 set oceny = 4
 where id= 7;

 alter table oceny_Roberta_semestr_letni
 add status varchar(30) default 'zdane';


  update oceny_Roberta_semestr_letni
  set status = 'zdane'
  where id =1 
  update oceny_Roberta_semestr_letni set status = 'zdane'


 create table Oceny_Zimowy
 (id int not null identity (1,1) constraint key_zimowy primary key, 
 przedmioty varchar (255),
 oceny decimal (8,1),
 data_dodania date,
 status varchar (30) default 'zdane');


select *
from Oceny_Zimowy

set identity_insert Oceny_Zimowy on;


insert into Oceny_Zimowy (id, przedmioty, oceny, data_dodania, status)
values (1, 'Informatyka w logistyce ', 5, '20220112', 'zdane'),
(2, 'Jêzyk angielski', 5, '20220105', 'zdane'),
(3, 'Koncepcje zarz¹dzania', 4, '20220124', 'zdane'),
(4, 'Projektowanie us³ug i procesów logistycznych', 4, '20220215', 'zdane'),
(5, 'Zarz¹dzanie ³añcuchem dostaw', 4, '20220220', 'zdane'),
(6, 'Zarz¹dzanie zasobami ludzkimi w korporacjach miêdzynarodowych', 4.5, '20220110', 'zdane');


select round(avg(oceny), 5) as "Œrednia z zimowego semestru"
from Oceny_Zimowy


select przedmioty, oceny,data_dodania, status
from oceny_Roberta_semestr_letni
union all
select przedmioty, oceny,data_dodania, status
from Oceny_Zimowy;
 

 

select round(avg(ocena), 5) as "Œrednia z ca³ego roku" 
from (select Ocena
from oceny_Roberta_semestr_letni + Oceny_Zimowy)


Select A.[oceny]
from oceny_Roberta_semestr_letni A
full join Oceny_Zimowy B on A.oceny=B.oceny
having avg(oceny) (select round(avg(oceny), 5) as "Œrednia z ca³ego roku" 
       from oceny)

SET QUOTED_IDENTIFIER ON;
Go

SELECT AVG(oceny) as "Œrednia z roku"
FROM (
    select przedmioty, oceny,data_dodania, status
from oceny_Roberta_semestr_letni
union all
select przedmioty, oceny,data_dodania, status
from Oceny_Zimowy)
QUOTED_IDENTIFIER;