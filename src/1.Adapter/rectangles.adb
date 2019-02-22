pragma Ada_2012;
with Ada.Text_IO; use Ada.Text_IO;

package body Rectangles is

   function Make (x1,y1,x2,y2 : Integer) return Rectangle_New is
      Rect : Rectangle_New := Rectangle_New'(x1 => x1,
                                             y1 => y1,
                                             x2 => x2,
                                             y2 => y2);
   begin
      Put_Line("Rectangle_New : Make. ( " & Rect.x1'Img & "," & Rect.y1'Img & "," &
                 Rect.x2'Img & "," & Rect.y2'Img & " )");
      return Rect;
   end Make;

   overriding
   procedure Draw (This : Rectangle_New) is
   begin
      Put_Line("Rectangle_New : Draw. ( " & This.x1'Img & "," & This.y1'Img & "," &
                 This.x2'Img & "," & This.y2'Img & " )");
   end Draw;

   function Make (x1,y1,x2,y2 : Integer) return Rectangle_Legacy is
      Rect : Rectangle_Legacy := Rectangle_Legacy'(x1 => x1,
                                                   y1 => y1,
                                                   x2 => x2,
                                                   y2 => y2);
   begin
      Put_Line("Rectangle_Legacy : Make. ( " & Rect.x1'Img & "," & Rect.y1'Img & "," &
                 Rect.x2'Img & "," & Rect.y2'Img & " )");
      return Rect;
   end Make;

   procedure Old_Draw (This : Rectangle_Legacy) is
   begin
      Put_Line("Rectangle_Legacy : Old_Draw. ( " & This.x1'Img & "," & This.y1'Img & "," &
                 This.x2'Img & "," & This.y2'Img & " )");
   end Old_Draw;

   procedure Draw(This : Client; Rect : access Rectangle'Class) is
   begin
      Draw(Rect.all);
   end Draw;

end Rectangles;
