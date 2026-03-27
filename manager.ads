with employee;

package manager is
    type Manager is new employee.Employee with record
      Number_of_Staff : Integer;
   end record;  

   function get_staff (M : in Manager) return Integer;
   
   overriding procedure print (M: in Manager); 

end manager;
