with AUnit.Test_Suites;

package body FFMpeg.frame.Tests.Suits is


   Tc : aliased Test_Case;
   Test_Suit : aliased AUnit.Test_Suites.Test_Suite;

   function Suit return AUnit.Test_Suites.Access_Test_Suite is
   begin
      Test_Suit.Add_Test (Tc'Access);
      return Test_Suit'Access;
   end Suit;

end FFMpeg.frame.Tests.Suits;