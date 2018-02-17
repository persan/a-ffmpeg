with AUnit.Reporter.Text;
with AUnit.Run;
with FFMpeg.common.Tests.Suits;

procedure FFMpeg.common.Tests.Main is
   procedure Run is new AUnit.Run.Test_Runner (Suits.Suit);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Run (Reporter);
end FFMpeg.common.Tests.Main;
