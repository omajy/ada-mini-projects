with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Numerics.Float_Random;

procedure pi is
   G : Ada.Numerics.Float_Random.Generator;
   X : Float;
   Y : Float;
   Simulations : Integer := 100000000;
   Circle_Point_Iterator : Integer := 0;
   Pi : Float;
 
begin
   Ada.Numerics.Float_Random.Reset(G);
      
   for I in 0..Simulations loop
      X := Ada.Numerics.Float_Random.Random(G) - 0.5;
      Y := Ada.Numerics.Float_Random.Random(G) - 0.5;
      
      if (X*X + Y*Y) <=  0.25 then
        Circle_Point_Iterator := Circle_Point_Iterator + 1;
      end if;
      
   end loop;
   
   Pi := (Float(Circle_Point_Iterator)/Float(Simulations)) * 4.0;
   
   Ada.Text_IO.Put_Line("Approximation of Pi from " & Simulations'Image & " iterations is " & Pi'Image);

end pi;
