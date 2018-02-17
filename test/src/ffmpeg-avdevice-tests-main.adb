with AUnit.Reporter.Text;
with AUnit.Run;
with FFMpeg.avdevice.Tests.Suits;

procedure FFMpeg.avdevice.Tests.Main is
   procedure Run is new AUnit.Run.Test_Runner (Suits.Suit);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Run (Reporter);
end FFMpeg.avdevice.Tests.Main;
