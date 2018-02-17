with AUnit.Reporter.Text;
with AUnit.Run;
with FFMpeg.avcodec.Tests.Suits;

procedure FFMpeg.avcodec.Tests.Main is
   procedure Run is new AUnit.Run.Test_Runner (Suits.Suit);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Run (Reporter);
end FFMpeg.avcodec.Tests.Main;
