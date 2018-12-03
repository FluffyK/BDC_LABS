# SELECL TRANSACT-SQL instruction  in SQL Server Management Studio 2017
## Query 14
--Query nr.14
select distinct Nume_Student, Prenume_Student, Nota, Disciplina
from studenti s
inner join studenti_reusita r
on s.Id_Student= r.Id_Student
inner join discipline d
on r.Id_Disciplina=d.Id_Disciplina
WHERE Nota>8

## Query 30

## Query 37
