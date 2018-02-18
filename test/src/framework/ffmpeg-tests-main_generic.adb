with AUnit.Reporter.Text;
with AUnit.Run;

procedure ffmpeg.Tests.Main_generic is
   procedure Run is new AUnit.Run.Test_Runner (Suite);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Run (Reporter);
end ffmpeg.Tests.Main_generic;
