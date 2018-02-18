
with GNAT.Source_Info;
with AUnit.Assertions;
with Interfaces.C;
package body FFMpeg.frame.Tests is
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

   procedure Test_get_best_effort_timestamp (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_best_effort_timestamp;

   
   procedure Test_set_best_effort_timestamp (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_best_effort_timestamp;

   
   procedure Test_get_pkt_duration (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_pkt_duration;

   
   procedure Test_set_pkt_duration (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_pkt_duration;

   
   procedure Test_get_pkt_pos (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_pkt_pos;

   
   procedure Test_set_pkt_pos (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_pkt_pos;

   
   procedure Test_get_channel_layout (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_channel_layout;

   
   procedure Test_set_channel_layout (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_channel_layout;

   
   procedure Test_get_channels (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_channels;

   
   procedure Test_set_channels (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_channels;

   
   procedure Test_get_sample_rate (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_sample_rate;

   
   procedure Test_set_sample_rate (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_sample_rate;

   
   procedure Test_get_metadata (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_metadata;

   
   procedure Test_set_metadata (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_metadata;

   
   procedure Test_get_decode_error_flags (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_decode_error_flags;

   
   procedure Test_set_decode_error_flags (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_decode_error_flags;

   
   procedure Test_get_pkt_size (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_pkt_size;

   
   procedure Test_set_pkt_size (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_pkt_size;

   
   procedure Test_avpriv_frame_get_metadatap (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_avpriv_frame_get_metadatap;

   
   procedure Test_get_qp_table (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_qp_table;

   
   procedure Test_set_qp_table (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_qp_table;

   
   procedure Test_get_colorspace (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_colorspace;

   
   procedure Test_set_colorspace (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_colorspace;

   
   procedure Test_get_color_range (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_color_range;

   
   procedure Test_set_color_range (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_color_range;

   
   procedure Test_av_get_colorspace_name (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_av_get_colorspace_name;

   
   procedure Test_alloc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_alloc;

   
   procedure Test_free (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_free;

   
   procedure Test_ref (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_ref;

   
   procedure Test_clone (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_clone;

   
   procedure Test_unref (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_unref;

   
   procedure Test_move_ref (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_move_ref;

   
   procedure Test_get_buffer (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_buffer;

   
   procedure Test_is_writable (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_is_writable;

   
   procedure Test_make_writable (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_make_writable;

   
   procedure Test_copy (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_copy;

   
   procedure Test_copy_props (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_copy_props;

   
   procedure Test_get_plane_buffer (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_plane_buffer;

   
   procedure Test_new_side_data (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_new_side_data;

   
   procedure Test_get_side_data (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_side_data;

   
   procedure Test_remove_side_data (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_remove_side_data;

   
   procedure Test_side_data_name (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_side_data_name;

   


   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
      use AUnit.Test_Cases.Registration;
   begin
      Register_Routine (Test => Test, Routine => Test_get_best_effort_timestamp'Access, Name => "Test_get_best_effort_timestamp");
      Register_Routine (Test => Test, Routine => Test_set_best_effort_timestamp'Access, Name => "Test_set_best_effort_timestamp");
      Register_Routine (Test => Test, Routine => Test_get_pkt_duration'Access, Name => "Test_get_pkt_duration");
      Register_Routine (Test => Test, Routine => Test_set_pkt_duration'Access, Name => "Test_set_pkt_duration");
      Register_Routine (Test => Test, Routine => Test_get_pkt_pos'Access, Name => "Test_get_pkt_pos");
      Register_Routine (Test => Test, Routine => Test_set_pkt_pos'Access, Name => "Test_set_pkt_pos");
      Register_Routine (Test => Test, Routine => Test_get_channel_layout'Access, Name => "Test_get_channel_layout");
      Register_Routine (Test => Test, Routine => Test_set_channel_layout'Access, Name => "Test_set_channel_layout");
      Register_Routine (Test => Test, Routine => Test_get_channels'Access, Name => "Test_get_channels");
      Register_Routine (Test => Test, Routine => Test_set_channels'Access, Name => "Test_set_channels");
      Register_Routine (Test => Test, Routine => Test_get_sample_rate'Access, Name => "Test_get_sample_rate");
      Register_Routine (Test => Test, Routine => Test_set_sample_rate'Access, Name => "Test_set_sample_rate");
      Register_Routine (Test => Test, Routine => Test_get_metadata'Access, Name => "Test_get_metadata");
      Register_Routine (Test => Test, Routine => Test_set_metadata'Access, Name => "Test_set_metadata");
      Register_Routine (Test => Test, Routine => Test_get_decode_error_flags'Access, Name => "Test_get_decode_error_flags");
      Register_Routine (Test => Test, Routine => Test_set_decode_error_flags'Access, Name => "Test_set_decode_error_flags");
      Register_Routine (Test => Test, Routine => Test_get_pkt_size'Access, Name => "Test_get_pkt_size");
      Register_Routine (Test => Test, Routine => Test_set_pkt_size'Access, Name => "Test_set_pkt_size");
      Register_Routine (Test => Test, Routine => Test_avpriv_frame_get_metadatap'Access, Name => "Test_avpriv_frame_get_metadatap");
      Register_Routine (Test => Test, Routine => Test_get_qp_table'Access, Name => "Test_get_qp_table");
      Register_Routine (Test => Test, Routine => Test_set_qp_table'Access, Name => "Test_set_qp_table");
      Register_Routine (Test => Test, Routine => Test_get_colorspace'Access, Name => "Test_get_colorspace");
      Register_Routine (Test => Test, Routine => Test_set_colorspace'Access, Name => "Test_set_colorspace");
      Register_Routine (Test => Test, Routine => Test_get_color_range'Access, Name => "Test_get_color_range");
      Register_Routine (Test => Test, Routine => Test_set_color_range'Access, Name => "Test_set_color_range");
      Register_Routine (Test => Test, Routine => Test_av_get_colorspace_name'Access, Name => "Test_av_get_colorspace_name");
      Register_Routine (Test => Test, Routine => Test_alloc'Access, Name => "Test_alloc");
      Register_Routine (Test => Test, Routine => Test_free'Access, Name => "Test_free");
      Register_Routine (Test => Test, Routine => Test_ref'Access, Name => "Test_ref");
      Register_Routine (Test => Test, Routine => Test_clone'Access, Name => "Test_clone");
      Register_Routine (Test => Test, Routine => Test_unref'Access, Name => "Test_unref");
      Register_Routine (Test => Test, Routine => Test_move_ref'Access, Name => "Test_move_ref");
      Register_Routine (Test => Test, Routine => Test_get_buffer'Access, Name => "Test_get_buffer");
      Register_Routine (Test => Test, Routine => Test_is_writable'Access, Name => "Test_is_writable");
      Register_Routine (Test => Test, Routine => Test_make_writable'Access, Name => "Test_make_writable");
      Register_Routine (Test => Test, Routine => Test_copy'Access, Name => "Test_copy");
      Register_Routine (Test => Test, Routine => Test_copy_props'Access, Name => "Test_copy_props");
      Register_Routine (Test => Test, Routine => Test_get_plane_buffer'Access, Name => "Test_get_plane_buffer");
      Register_Routine (Test => Test, Routine => Test_new_side_data'Access, Name => "Test_new_side_data");
      Register_Routine (Test => Test, Routine => Test_get_side_data'Access, Name => "Test_get_side_data");
      Register_Routine (Test => Test, Routine => Test_remove_side_data'Access, Name => "Test_remove_side_data");
      Register_Routine (Test => Test, Routine => Test_side_data_name'Access, Name => "Test_side_data_name");
   end Register_Tests;

end FFMpeg.frame.Tests;
