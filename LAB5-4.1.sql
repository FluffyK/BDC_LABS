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