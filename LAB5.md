# TRANSACT SQL: Procedural Instructions
## Task 1
Fill the following code for a larger display number of the three numbers shown:
```sql
Declare @N1 int, @N2 int, @N3 int;
Declare @Mai_Mare int;
set @N1 = 60 * RAND();
set @N2 = 60 * RAND();
set @N3 = 60 * RAND();
set @Mai_Mare = @N1;
if @Mai_Mare < @N2 set @Mai_Mare = @N2;
if @Mai_Mare < @N3 set @Mai_Mare =@N3;

print @N1;
print @N2;
print @N3;
print 'Mai mare = ' +CAST(@Mai_Mare as varchar(2));
```

![image](https://github.com/FluffyK/BDC_LABS/blob/master/LAB5-1result.JPG)

## Task 2
Show the first ten data (student's first name, surname) according to the grade value (except grades 6 and 8) of the student at the first test of the database subject, using the structure of Alternative IF. .. ELSE. Use the variables.
```sql
declare @faranota1 int = 6, @faranota2 int = 8;
select  top (10) Nume_Student, Prenume_Student, Nota
from studenti, studenti_reusita, discipline
where discipline.Id_Disciplina = studenti_reusita.Id_Disciplina
and studenti.Id_Student = studenti_reusita.Id_Student
and Disciplina='Baze de date'
and Tip_Evaluare='Testul 1'
and Nota = iif(Nota != @faranota1 and Nota != @faranota2, Nota, 0);
```

![image](https://github.com/FluffyK/BDC_LABS/blob/master/LAB5-2result.JPG)

## Task 3
Solve the same task, 1, calling to the CASE selective structure.
```sql
Declare @N1 int, @N2 int, @N3 int,@max int;
Declare @Mai_Mare int;
set @N1 = 60 * RAND();
set @N2 = 60 * RAND();
set @N3 = 60 * RAND();
set @Mai_Mare = @N1
set @Mai_Mare = case
when @MAI_MARE < @N3 and @N2 < @N3 then  @N3
when  @MAI_MARE < @N2 and @N3 < @N2 then  @N2
else @MAI_MARE
end   
print @N1;
print @N2;
print @N3;
print 'Mai mare = ' + cast( @MAI_MARE as varchar(2));
```

![image](https://github.com/FluffyK/BDC_LABS/blob/master/LAB5-3result.JPG)

## Task 4
Modify the exercises in Tasks 1 and 2 to include TRY and CATCH errors, and RAISERRROR.

### Part 1
```sql
Declare @N1 int, @N2 int, @N3 int;
Declare @Mai_Mare int;
begin try
set @N1 = 60 * RAND();
set @N2 = 60 * RAND();
set @N3 = 60 * RAND();
set @Mai_Mare = @N1;
if @Mai_Mare < @N2 set @Mai_Mare = @N2;
if @Mai_Mare < @N3 set @Mai_Mare = @N3;
else 
   RAISERROR('Double declaration Error', 16, 1);
end try
 
 begin catch
	print ' Error : ' + cast(ERROR_LINE() as varchar(20));
 end catch

print @N1;
print @N2;
print @N3;
print 'Mai mare = ' +CAST(@Mai_Mare as varchar(2));
```

![image](https://github.com/FluffyK/BDC_LABS/blob/master/LAB5-4.1result.JPG)

### Part 2
```sql
declare @faranota1 int = 6, @faranota2 int = 8;
begin try
select  top (10) Nume_Student, Prenume_Student, Nota
from studenti, studenti_reusita, discipline
where discipline.Id_Disciplina = studenti_reusita.Id_Disciplina
and studenti.Id_Student = studenti_reusita.Id_Student
and Disciplina='Baze de date'
and Tip_Evaluare='Testul 1'
and Nota = iif(Nota != @faranota1 and Nota != @faranota2, Nota, 0);
raiserror('404 Student Not Found',16,1);
end try
begin catch
print ' Error :' + cast(ERROR_LINE() as varchar(20));
end catch
```

![image](https://github.com/FluffyK/BDC_LABS/blob/master/LAB5-4.2result.JPG)
