update studenti_reusita
set Nota = Nota + 1
where Tip_Evaluare = 'Examen'
      and Id_Student = any(select sef_grupa 
	                       from grupe)
	  and Nota < 10
select * from studenti_reusita