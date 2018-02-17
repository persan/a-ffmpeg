with AUnit.Reporter.Text;
with AUnit.Run;
with FFMpeg.swresample.Tests.Suits;

procedure FFMpeg.swresample.Tests.Main is
   procedure Run is new AUnit.Run.Test_Runner (Suits.Suit);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Run (Reporter);
end FFMpeg.swresample.Tests.Main;
