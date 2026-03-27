with Ada.Text_IO;

package body manager is

   function get_staff (M : in Manager) return Integer is
   begin
      return M.Number_of_Staff;
   end get_staff;
   
   overriding procedure print (M: in Manager) is
   begin
      Ada.Text_IO.Put_Line("Manager " & get_name(M) & "'s DOB is " & get_dob(M));
      Ada.Text_IO.Put_Line("They work at " & get_department(M) & " managing " & get_staff(M)'Image & " people, and receive an annualised salary of $" & get_salary(M)'Image);
      Ada.Text_IO.New_Line;
   end print;


end manager;
