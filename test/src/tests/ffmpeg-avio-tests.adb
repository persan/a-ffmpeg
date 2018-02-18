
with GNAT.Source_Info;
with AUnit.Assertions;
with Interfaces.C;
package body FFMpeg.avio.Tests is
   use AUnit.Assertions;
   use Interfaces.C;
   ----------
   -- Name --
   ----------
   Test_Name : constant String := GNAT.Source_Info.Enclosing_Entity;
   function Name (Test : Test_Case) return Aunit.Message_String is
   begin
      return Aunit.Format (Test_Name);
   end Name;

   procedure Test_find_protocol_name (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_find_protocol_name;

   
   procedure Test_check (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_check;

   
   procedure Test_avpriv_io_move (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_avpriv_io_move;

   
   procedure Test_avpriv_io_delete (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_avpriv_io_delete;

   
   procedure Test_open_dir (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_open_dir;

   
   procedure Test_read_dir (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_read_dir;

   
   procedure Test_close_dir (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_close_dir;

   
   procedure Test_free_directory_entry (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_free_directory_entry;

   
   procedure Test_alloc_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_alloc_context;

   
   procedure Test_w8 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_w8;

   
   procedure Test_write (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_write;

   
   procedure Test_wl64 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_wl64;

   
   procedure Test_wb64 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_wb64;

   
   procedure Test_wl32 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_wl32;

   
   procedure Test_wb32 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_wb32;

   
   procedure Test_wl24 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_wl24;

   
   procedure Test_wb24 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_wb24;

   
   procedure Test_wl16 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_wl16;

   
   procedure Test_wb16 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_wb16;

   
   procedure Test_put_str (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_put_str;

   
   procedure Test_put_str16le (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_put_str16le;

   
   procedure Test_put_str16be (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_put_str16be;

   
   procedure Test_write_marker (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_write_marker;

   
   procedure Test_seek (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_seek;

   
   procedure Test_skip (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_skip;

   
   procedure Test_tell (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_tell;

   
   procedure Test_size (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_size;

   
   procedure Test_feof (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_feof;

   
   procedure Test_url_feof (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_url_feof;

   
   procedure Test_printf (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_printf;

   
   procedure Test_flush (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_flush;

   
   procedure Test_read (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_read;

   
   procedure Test_r8 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_r8;

   
   procedure Test_rl16 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_rl16;

   
   procedure Test_rl24 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_rl24;

   
   procedure Test_rl32 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_rl32;

   
   procedure Test_rl64 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_rl64;

   
   procedure Test_rb16 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_rb16;

   
   procedure Test_rb24 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_rb24;

   
   procedure Test_rb32 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_rb32;

   
   procedure Test_rb64 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_rb64;

   
   procedure Test_get_str (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_str;

   
   procedure Test_get_str16le (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_str16le;

   
   procedure Test_get_str16be (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_str16be;

   
   procedure Test_open (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_open;

   
   procedure Test_open2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_open2;

   
   procedure Test_close (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_close;

   
   procedure Test_closep (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_closep;

   
   procedure Test_open_dyn_buf (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_open_dyn_buf;

   
   procedure Test_get_dyn_buf (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_dyn_buf;

   
   procedure Test_close_dyn_buf (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_close_dyn_buf;

   
   procedure Test_enum_protocols (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_enum_protocols;

   
   procedure Test_pause (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_pause;

   
   procedure Test_seek_time (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_seek_time;

   
   procedure Test_read_to_bprint (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_read_to_bprint;

   
   procedure Test_av_accept (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_av_accept;

   
   procedure Test_handshake (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_handshake;

   


   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
      use AUnit.Test_Cases.Registration;
   begin
      Register_Routine (Test => Test, Routine => Test_find_protocol_name'Access, Name => "Test_find_protocol_name");
      Register_Routine (Test => Test, Routine => Test_check'Access, Name => "Test_check");
      Register_Routine (Test => Test, Routine => Test_avpriv_io_move'Access, Name => "Test_avpriv_io_move");
      Register_Routine (Test => Test, Routine => Test_avpriv_io_delete'Access, Name => "Test_avpriv_io_delete");
      Register_Routine (Test => Test, Routine => Test_open_dir'Access, Name => "Test_open_dir");
      Register_Routine (Test => Test, Routine => Test_read_dir'Access, Name => "Test_read_dir");
      Register_Routine (Test => Test, Routine => Test_close_dir'Access, Name => "Test_close_dir");
      Register_Routine (Test => Test, Routine => Test_free_directory_entry'Access, Name => "Test_free_directory_entry");
      Register_Routine (Test => Test, Routine => Test_alloc_context'Access, Name => "Test_alloc_context");
      Register_Routine (Test => Test, Routine => Test_w8'Access, Name => "Test_w8");
      Register_Routine (Test => Test, Routine => Test_write'Access, Name => "Test_write");
      Register_Routine (Test => Test, Routine => Test_wl64'Access, Name => "Test_wl64");
      Register_Routine (Test => Test, Routine => Test_wb64'Access, Name => "Test_wb64");
      Register_Routine (Test => Test, Routine => Test_wl32'Access, Name => "Test_wl32");
      Register_Routine (Test => Test, Routine => Test_wb32'Access, Name => "Test_wb32");
      Register_Routine (Test => Test, Routine => Test_wl24'Access, Name => "Test_wl24");
      Register_Routine (Test => Test, Routine => Test_wb24'Access, Name => "Test_wb24");
      Register_Routine (Test => Test, Routine => Test_wl16'Access, Name => "Test_wl16");
      Register_Routine (Test => Test, Routine => Test_wb16'Access, Name => "Test_wb16");
      Register_Routine (Test => Test, Routine => Test_put_str'Access, Name => "Test_put_str");
      Register_Routine (Test => Test, Routine => Test_put_str16le'Access, Name => "Test_put_str16le");
      Register_Routine (Test => Test, Routine => Test_put_str16be'Access, Name => "Test_put_str16be");
      Register_Routine (Test => Test, Routine => Test_write_marker'Access, Name => "Test_write_marker");
      Register_Routine (Test => Test, Routine => Test_seek'Access, Name => "Test_seek");
      Register_Routine (Test => Test, Routine => Test_skip'Access, Name => "Test_skip");
      Register_Routine (Test => Test, Routine => Test_tell'Access, Name => "Test_tell");
      Register_Routine (Test => Test, Routine => Test_size'Access, Name => "Test_size");
      Register_Routine (Test => Test, Routine => Test_feof'Access, Name => "Test_feof");
      Register_Routine (Test => Test, Routine => Test_url_feof'Access, Name => "Test_url_feof");
      Register_Routine (Test => Test, Routine => Test_printf'Access, Name => "Test_printf");
      Register_Routine (Test => Test, Routine => Test_flush'Access, Name => "Test_flush");
      Register_Routine (Test => Test, Routine => Test_read'Access, Name => "Test_read");
      Register_Routine (Test => Test, Routine => Test_r8'Access, Name => "Test_r8");
      Register_Routine (Test => Test, Routine => Test_rl16'Access, Name => "Test_rl16");
      Register_Routine (Test => Test, Routine => Test_rl24'Access, Name => "Test_rl24");
      Register_Routine (Test => Test, Routine => Test_rl32'Access, Name => "Test_rl32");
      Register_Routine (Test => Test, Routine => Test_rl64'Access, Name => "Test_rl64");
      Register_Routine (Test => Test, Routine => Test_rb16'Access, Name => "Test_rb16");
      Register_Routine (Test => Test, Routine => Test_rb24'Access, Name => "Test_rb24");
      Register_Routine (Test => Test, Routine => Test_rb32'Access, Name => "Test_rb32");
      Register_Routine (Test => Test, Routine => Test_rb64'Access, Name => "Test_rb64");
      Register_Routine (Test => Test, Routine => Test_get_str'Access, Name => "Test_get_str");
      Register_Routine (Test => Test, Routine => Test_get_str16le'Access, Name => "Test_get_str16le");
      Register_Routine (Test => Test, Routine => Test_get_str16be'Access, Name => "Test_get_str16be");
      Register_Routine (Test => Test, Routine => Test_open'Access, Name => "Test_open");
      Register_Routine (Test => Test, Routine => Test_open2'Access, Name => "Test_open2");
      Register_Routine (Test => Test, Routine => Test_close'Access, Name => "Test_close");
      Register_Routine (Test => Test, Routine => Test_closep'Access, Name => "Test_closep");
      Register_Routine (Test => Test, Routine => Test_open_dyn_buf'Access, Name => "Test_open_dyn_buf");
      Register_Routine (Test => Test, Routine => Test_get_dyn_buf'Access, Name => "Test_get_dyn_buf");
      Register_Routine (Test => Test, Routine => Test_close_dyn_buf'Access, Name => "Test_close_dyn_buf");
      Register_Routine (Test => Test, Routine => Test_enum_protocols'Access, Name => "Test_enum_protocols");
      Register_Routine (Test => Test, Routine => Test_pause'Access, Name => "Test_pause");
      Register_Routine (Test => Test, Routine => Test_seek_time'Access, Name => "Test_seek_time");
      Register_Routine (Test => Test, Routine => Test_read_to_bprint'Access, Name => "Test_read_to_bprint");
      Register_Routine (Test => Test, Routine => Test_av_accept'Access, Name => "Test_av_accept");
      Register_Routine (Test => Test, Routine => Test_handshake'Access, Name => "Test_handshake");
   end Register_Tests;

end FFMpeg.avio.Tests;
