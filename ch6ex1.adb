with vectors, Ada.Text_IO;
use type vectors.Plane_Vectors.Vector_Type;
use type vectors.Space_Vectors.Vector_Type;

procedure Ch6ex1 is
   
   v1s : vectors.Space_Vectors.Vector_Type := (X => 1.0, Y => 2.0, Z => 3.0);
   v2s : vectors.Space_Vectors.Vector_Type := (X => 3.0, Y => 2.0, Z => 1.0);
   
   v1p : vectors.Plane_Vectors.Vector_Type := (X => 6.0, Y => 7.0);
   v2p : vectors.Plane_Vectors.Vector_Type := (X => 6.0, Y => 9.0);
   
   v3p : vectors.Plane_Vectors.Vector_Type;
   v3s : vectors.Space_Vectors.Vector_Type;
   
   my_scalar : vectors.Scalar_Type := 69.0;
   
begin
   -- Addition of two plane vectors"
   Ada.Text_IO.Put_Line("Plane Vector 1: <" & v1p.X'Image & "," & v1p.Y'Image & ">");
   Ada.Text_IO.Put_Line("Plane Vector 2: <" & v2p.X'Image & "," & v2p.Y'Image & ">");
   v3p := vectors.Plane_Vectors."+"(v1p, v2p); 
   Ada.Text_IO.Put_Line("Addition Output: <" & v3p.X'Image & "," & v3p.Y'Image & ">");
   
   Ada.Text_IO.New_Line;
   
   -- Scalar multiplication of plane vector -- 
   Ada.Text_IO.Put_Line("Plane Vector 1: <" & v1p.X'Image & "," & v1p.Y'Image & ">");
   Ada.Text_IO.Put_Line("Scalar: " & my_scalar'Image);
   v3p := v1p * my_scalar;
   Ada.Text_IO.Put_Line("Scalar Multiplication Output: <" & v3p.X'Image & "," & v3p.Y'Image & ">");
   
   Ada.Text_IO.New_Line;
   
   -- Addition of two space vectors"
   Ada.Text_IO.Put_Line("Space Vector 1: <" & v1s.X'Image & "," & v1s.Y'Image & "," & v1s.Z'Image & ">");
   Ada.Text_IO.Put_Line("Space Vector 2: <" & v2s.X'Image & "," & v2s.Y'Image & "," & v2s.Z'Image & ">");
   v3s := vectors.Space_Vectors."+"(v1s, v2s); 
   Ada.Text_IO.Put_Line("Addition Output: <" & v3s.X'Image & "," & v3s.Y'Image & "," & v3s.Z'Image & ">");
                          
   Ada.Text_IO.New_Line;
   
   -- Scalar multiplication of space vector -- 
   Ada.Text_IO.Put_Line("Space Vector 1: <" & v1s.X'Image & "," & v1s.Y'Image & "," & v1s.Z'Image & ">");
   Ada.Text_IO.Put_Line("Scalar: " & my_scalar'Image);
   v3s := v1s * my_scalar;
   Ada.Text_IO.Put_Line("Scalar Multiplication Output: <" & v3s.X'Image & "," & v3s.Y'Image & "," & v3s.Z'Image & ">");
   
end Ch6ex1;
