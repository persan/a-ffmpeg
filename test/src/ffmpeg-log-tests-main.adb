with AUnit.Reporter.Text;
with AUnit.Run;
with FFMpeg.log.Tests.Suits;

procedure FFMpeg.log.Tests.Main is
   procedure Run is new AUnit.Run.Test_Runner (Suits.Suit);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Run (Reporter);
end FFMpeg.log.Tests.Main;
