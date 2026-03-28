with Ada.Strings.Unbounded;

package person is

   type Person is tagged record
      Name : Ada.Strings.Unbounded.Unbounded_String;
      DOB : String (1..8);
   end record;
   
   function get_name (P : in Person) return String;
   
   function get_dob (P : in Person) return String; 
   
   procedure print (P : in Person); 

end person;
