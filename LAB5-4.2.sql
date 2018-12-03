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