--with Ada.Finalization;

package Rectangles is

   --Desired interface
   
   type Rectangle is abstract tagged null record;
  
   procedure Draw(This : Rectangle) is abstract;

   --New component
   
   type Rectangle_New is new Rectangle with private;
   
   function Make(x1,y1,x2,y2 : Integer) return Rectangle_New;
   
   overriding procedure Draw(This : Rectangle_New);

   --Legacy component
   
   type Rectangle_Legacy is tagged private;
   
   function Make(x1,y1,x2,y2 : Integer) return Rectangle_Legacy;
   
   procedure Old_Draw(This : Rectangle_Legacy);
   
   --Client
   
   --type Rectangle_Drawer is interface;
   --procedure Draw(This : Rectangle_Drawer; Rect : access Rectangle'Class) is null;
   
   type Client is tagged null record;
   
   procedure Draw(This : Client; Rect : access Rectangle'Class);
      
private
   
   type Rectangle_New is new Rectangle with
      record
         x1 : Integer;
         y1 : Integer;
         x2 : Integer;
         y2 : Integer;
      end record;
   
   type Rectangle_Legacy is tagged
      record
         x1 : Integer;
         y1 : Integer;
         x2 : Integer;
         y2 : Integer;
      end record;
   
end Rectangles;
