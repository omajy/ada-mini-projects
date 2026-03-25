package vectors is
 
   type Scalar_Type is digits 10;
   
   package Space_Vectors is 
      
      type Vector_Type is record
         X: Scalar_Type;
         Y: Scalar_Type;
         Z: Scalar_Type;
      end record;
      
      function "+" (v1, v2 : in Vector_Type) return Vector_Type;
      
      function "*" (v1 : in Vector_Type; scalar : Scalar_Type) return Vector_Type;
    
   end Space_Vectors;
      
 
   package Plane_Vectors is 
        
       type Vector_Type is record
          X: Scalar_Type;
          Y: Scalar_Type;
       end record;
     
      function "+" (v1, v2 : in Vector_Type) return Vector_Type;
      
      function "*" (v1 : in Vector_Type; scalar : Scalar_Type) return Vector_Type;
    
    end Plane_Vectors;
      
end vectors;
