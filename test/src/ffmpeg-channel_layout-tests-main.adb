with AUnit.Reporter.Text;
with AUnit.Run;
with FFMpeg.channel_layout.Tests.Suits;

procedure FFMpeg.channel_layout.Tests.Main is
   procedure Run is new AUnit.Run.Test_Runner (Suits.Suit);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Run (Reporter);
end FFMpeg.channel_layout.Tests.Main;
