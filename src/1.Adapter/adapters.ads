with Rectangles;

package Adapters is

   type Adapter is new Rectangles.Rectangle with private;

   function Make(Adaptee : access Rectangles.Rectangle_Legacy) return Adapter;

   overriding procedure Draw(This : Adapter);

private

   type Adapter is new Rectangles.Rectangle with
      record
         RL : access Rectangles.Rectangle_Legacy;
      end record;

end Adapters;
