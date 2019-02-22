with Ada.Text_IO; use Ada.Text_IO;
with Rectangles;  use Rectangles;
with Adapters;    use Adapters;

procedure Adapter is
   The_Client  : Client;
   Rect_New    : aliased Rectangle_New := Make(0,0,1,1);
   Rect_Legacy : aliased Rectangle_Legacy := Make(1,1,2,2);
   The_Adapter : aliased Adapters.Adapter := Adapters.Make(Rect_Legacy'Unchecked_Access);
begin
   The_Client.Draw(Rect_New'Access);
   The_Client.Draw(The_Adapter'Access);
end Adapter;
