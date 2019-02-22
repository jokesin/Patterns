pragma Ada_2012;

package body Adapters is

   function Make(Adaptee : access Rectangles.Rectangle_Legacy) return Adapter is
      The_Adapter : Adapter := Adapter'(RL=>Adaptee);
   begin
      return The_Adapter;
   end Make;

   overriding
   procedure Draw(This : Adapter) is
   begin
      This.RL.Old_Draw;
   end Draw;

end Adapters ;
