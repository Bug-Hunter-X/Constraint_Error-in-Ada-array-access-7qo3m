```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   Arr : My_Array := (1,2,3,4,5,6,7,8,9,10);
   subtype Positive is Integer range 1..Integer'Last;
   function Get_Value(Index : Positive) return Integer is
   begin
       if Index in Arr'Range then
           return Arr(Index);
       else
           return 0; -- Or raise an exception, depending on your needs
       end if;
   end Get_Value;
begin
   for I in Arr'Range loop
       Ada.Text_IO.Put_Line(Integer'Image(Get_Value(I)));
   end loop;
end Example;
```