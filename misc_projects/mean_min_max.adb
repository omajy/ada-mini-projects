with Ada.Text_IO;

procedure main is
    type Integer_Vector is array (Integer range <>) of Integer;
   my_vector : Integer_Vector := (8,1,2,3,4,5,10,9,1,7,6);
   my_mean : Float;
   my_min : Integer;
   my_max : Integer := 0;
   my_sum : Integer := 0;
 
   procedure Simple_Statistics ( data : Integer_Vector; mean : out float; min, max : out Integer) is
   
      task meancomp;
      task minmax;
      
      task body minmax is
      begin
         min := data(data'First);
         for i of data loop
            if i < min then
               min := i;
           elsif i > max then
              max := i;
            end if;
         end loop;
      end minmax;
      
      task body meancomp is
         sum : Integer := 0;
      begin 
         for i of data loop
            sum := sum + i;
         end loop;
         mean := float(sum)/float(my_vector'Length);
      end meancomp;
      
   begin 
      null;
   end Simple_Statistics;
   
   procedure Sum_and_Increment ( data : in out Integer_Vector; Sum : out Integer) is 
      result : Integer := 0;
   begin
      for i of data loop
         result := result + i;
      end loop;
      
      Sum := result;
      
      for index in data'range loop
         data(index) := data(index) + 1;
      end loop;
   end Sum_and_Increment;
   
begin
   Ada.Text_IO.Put("Vector before processing: ");
   for i of my_vector loop
      Ada.Text_IO.Put(i'Image);
   end loop;
   Ada.Text_IO.New_Line;
   
   -- Simple statistic parallel tasks --
   Simple_Statistics(my_vector, my_mean, my_min, my_max);
   Ada.Text_IO.Put_Line("Vector mean: " & my_mean'Image);
   Ada.Text_IO.Put_Line("Vector min: " & my_min'Image);
   Ada.Text_IO.Put_Line("Vector max: " & my_max'Image);
   
   -- Sum and Increment --
   Sum_and_Increment(my_vector, my_sum);
   Ada.Text_IO.Put_Line("Vector sum:" & my_sum'Image);
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put("Vector after processing: ");
   for i of my_vector loop
      Ada.Text_IO.Put(i'Image);
   end loop;
   Ada.Text_IO.New_Line;
   Simple_Statistics(my_vector, my_mean, my_min, my_max);
   Ada.Text_IO.Put_Line("Vector new mean: " & my_mean'Image);
   Ada.Text_IO.Put_Line("Vector new min: " & my_min'Image);
   Ada.Text_IO.Put_Line("Vector new max: " & my_max'Image);
   
end main;
