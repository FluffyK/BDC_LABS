# SELECL TRANSACT-SQL instruction  in SQL Server Management Studio 2017
## Query 14
```sql
select distinct Nume_Student, Prenume_Student, Nota, Disciplina
from studenti s
inner join studenti_reusita r
on s.Id_Student= r.Id_Student
inner join discipline d
on r.Id_Disciplina=d.Id_Disciplina
WHERE Nota>8
```
![image](https://github.com/FluffyK/BDC_LABS/blob/master/query%2014result.JPG)

## Query 30
```sql
select count(Nume_Student) as nr, avg(Nota) as media
from studenti as s
inner join studenti_reusita as r
on s.Id_Student= r.Id_Student
inner join discipline d
on r.Id_Disciplina=d.Id_Disciplina
WHERE Disciplina ='Baze de date' and Data_Evaluare > '2017/12/31' 
```
![image](https://github.com/FluffyK/BDC_LABS/blob/master/query%2030result.JPG)

## Query 37
```sql
select Disciplina
from discipline 
inner join (select top(1) with ties Id_Disciplina 
From studenti_reusita
where Tip_Evaluare = 'Examen'
group by Id_Disciplina
order by AVG(Nota) desc) as top_media
on discipline.Id_Disciplina=top_media.Id_Disciplina
```
![image](https://github.com/FluffyK/BDC_LABS/blob/master/query%2037result.JPG)
