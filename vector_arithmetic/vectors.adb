package body vectors is
   
   package body Space_Vectors is 
      
      function "+" (v1, v2 : in Vector_Type) return Vector_Type is
         v3 : Vector_Type;
      begin 
         v3.X := v1.X + v2.X;
         v3.Y := v1.Y + v2.Y;
         v3.Z := v1.Z + v2.Z;
         return v3;
      end "+";
      
      function "*" (v1 : in Vector_Type; scalar : Scalar_Type) return Vector_Type is
         v2 : Vector_Type;
      begin 
         v2.X := v1.X * scalar;
         v2.Y := v1.Y * scalar;
         v2.Z := v1.Z * scalar;
         return v2;
      end "*";  
      
   end Space_Vectors;
      
 
   package body Plane_Vectors is 
      
      function "+" (v1, v2 : in Vector_Type) return Vector_Type is
         v3 : Vector_Type;
      begin 
         v3.X := v1.X + v2.X;
         v3.Y := v1.Y + v2.Y;
         return v3;
      end "+";
      
     function "*" (v1 : in Vector_Type; scalar : Scalar_Type) return Vector_Type is
         v2 : Vector_Type;
      begin 
         v2.X := v1.X * scalar;
         v2.Y := v1.Y * scalar;
         return v2;
      end "*";

    end Plane_Vectors;
      
end vectors;
