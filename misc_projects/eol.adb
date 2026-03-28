with Ada.Text_IO;

procedure eol is
   
   subtype Line_Type is String(1..80);
   
   END_OF_LINE_CHARACTER : Character := '\';
   
   task Line_Buffer is
    entry Put_Character (Ch : in Character);
    entry Get_Line (L : out Line_Type);
   end Line_Buffer;    
   
   task body Line_Buffer is
     comparison_char : Character;
     my_buffer : Line_Type := (others => ' ');
   begin
     for i in my_buffer'Range loop
         accept Put_Character (Ch : in Character) do
            comparison_char := Ch;
         end Put_Character;
         exit when comparison_char = END_OF_LINE_CHARACTER;
         my_buffer(i) := comparison_char;
      end loop;
               
               accept Get_Line (L : out Line_Type) do
               L := my_buffer;
               end Get_Line;
   end Line_Buffer;
   
   my_line : Line_Type := (others => ' ');
   input_char : Character := 'a';
            
begin
   while input_char /= END_OF_LINE_CHARACTER loop
      Ada.Text_IO.Put("Input character: ");
      Ada.Text_IO.Get(input_char);
      Line_Buffer.Put_Character(input_char);
   end loop;
      
      Line_Buffer.Get_Line(my_line);
      Ada.Text_IO.Put_Line("Output buffer is: " & my_line);
   
end eol;
