with AUnit.Reporter.Text;
with AUnit.Run;
with FFMpeg.dict.Tests.Suits;

procedure FFMpeg.dict.Tests.Main is
   procedure Run is new AUnit.Run.Test_Runner (Suits.Suit);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Run (Reporter);
end FFMpeg.dict.Tests.Main;
