with person, employee, manager, Ada.Strings.Unbounded;

procedure main is

   Teresa : person.Person := (Name => Ada.Strings.Unbounded.To_Unbounded_String("Teresa"), DOB => "20/03/02");
   Jameson : employee.Employee := (Name => Ada.Strings.Unbounded.To_Unbounded_String("Jameson"), DOB => "13/09/03", Department=> Ada.Strings.Unbounded.To_Unbounded_String("SAAB"), Salary => 100000);
   Matthew : manager.Manager := (Name => Ada.Strings.Unbounded.To_Unbounded_String("Matthew"), DOB => "13/09/60", Department=> Ada.Strings.Unbounded.To_Unbounded_String("Academy IT"), Salary => 500000, Number_of_Staff => 10);
   
begin
   
   person.print(Teresa);
   employee.print(Jameson);
   manager.print(Matthew);
   
end main;
