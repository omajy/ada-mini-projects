with person, Ada.Strings.Unbounded;

package employee is
   
   type Employee is new Person.person with record
      Department : Ada.Strings.Unbounded.Unbounded_String;
      Salary : Integer;
   end record;
   
   function get_department (E : in Employee) return String;
   
   function get_salary(E : in Employee) return Integer; 
   
   overriding procedure print (E : in Employee); 
  
end employee;
