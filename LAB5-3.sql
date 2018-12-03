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