with Ada.Text_IO;

package body person is

   function get_name (P : in Person) return String is
   begin
      return Ada.Strings.Unbounded.To_String(P.Name);
   end get_name;
   
   
   function get_dob (P : in Person) return String is
   begin
      return P.DOB;
   end get_dob;
   
   procedure print (P : in Person) is
   begin
      Ada.Text_IO.Put_Line(get_name(P) & "'s DOB is " & get_dob(P));
      Ada.Text_IO.New_Line;
   end print;

end person;
