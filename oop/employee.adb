with Ada.Text_IO;

package body employee is
   
   function get_department (E : in Employee) return String is
   begin
      return Ada.Strings.Unbounded.To_String(E.Department);
   end get_department;
   
   function get_salary(E : in Employee) return Integer is
   begin
      return E.Salary; 
   end get_salary;
   
   overriding procedure print (E : in Employee) is
   begin
      Ada.Text_IO.Put_Line(get_name(E) & "'s DOB is " & get_dob(E));
      Ada.Text_IO.Put_Line("They work at " &  get_department(E) & " and receive an annualised salary of $" & get_salary(E)'Image);
      Ada.Text_IO.New_Line;
   end print;

end employee;
