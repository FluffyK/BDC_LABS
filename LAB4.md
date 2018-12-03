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
![image](https://github.com/FluffyK/BDC_LABS/blob/master/query%2014.JPG)

![image](https://github.com/FluffyK/BDC_LABS/blob/master/query%2014result.JPG)

## Query 30
![image](https://github.com/FluffyK/BDC_LABS/blob/master/query%2030.JPG)

![image](https://github.com/FluffyK/BDC_LABS/blob/master/query%2030result.JPG)

## Query 37
![image](https://github.com/FluffyK/BDC_LABS/blob/master/query%2037.JPG)

![image](https://github.com/FluffyK/BDC_LABS/blob/master/query%2037result.JPG)
