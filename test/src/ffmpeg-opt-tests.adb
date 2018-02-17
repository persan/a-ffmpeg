
with GNAT.Source_Info;
with AUnit.Assertions;
with Interfaces.C;
package body FFMpeg.opt.Tests is
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

   procedure Test_show2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_show2;

   
   procedure Test_set_defaults (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_defaults;

   
   procedure Test_set_defaults2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_defaults2;

   
   procedure Test_av_set_options_string (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_av_set_options_string;

   
   procedure Test_set_from_string (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_from_string;

   
   procedure Test_free (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_free;

   
   procedure Test_flag_is_set (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_flag_is_set;

   
   procedure Test_set_dict (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_dict;

   
   procedure Test_set_dict2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_dict2;

   
   procedure Test_get_key_value (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_key_value;

   
   procedure Test_eval_flags (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_eval_flags;

   
   procedure Test_eval_int (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_eval_int;

   
   procedure Test_eval_int64 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_eval_int64;

   
   procedure Test_eval_float (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_eval_float;

   
   procedure Test_eval_double (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_eval_double;

   
   procedure Test_eval_q (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_eval_q;

   
   procedure Test_find (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_find;

   
   procedure Test_find2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_find2;

   
   procedure Test_next (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_next;

   
   procedure Test_child_next (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_child_next;

   
   procedure Test_child_class_next (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_child_class_next;

   
   procedure Test_set (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set;

   
   procedure Test_set_int (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_int;

   
   procedure Test_set_double (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_double;

   
   procedure Test_set_q (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_q;

   
   procedure Test_set_bin (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_bin;

   
   procedure Test_set_image_size (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_image_size;

   
   procedure Test_set_pixel_fmt (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_pixel_fmt;

   
   procedure Test_set_sample_fmt (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_sample_fmt;

   
   procedure Test_set_video_rate (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_video_rate;

   
   procedure Test_set_channel_layout (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_channel_layout;

   
   procedure Test_set_dict_val (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_dict_val;

   
   procedure Test_get (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get;

   
   procedure Test_get_int (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_int;

   
   procedure Test_get_double (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_double;

   
   procedure Test_get_q (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_q;

   
   procedure Test_get_image_size (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_image_size;

   
   procedure Test_get_pixel_fmt (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_pixel_fmt;

   
   procedure Test_get_sample_fmt (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_sample_fmt;

   
   procedure Test_get_video_rate (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_video_rate;

   
   procedure Test_get_channel_layout (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_channel_layout;

   
   procedure Test_get_dict_val (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_dict_val;

   
   procedure Test_ptr (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_ptr;

   
   procedure Test_freep_ranges (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_freep_ranges;

   
   procedure Test_query_ranges (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_query_ranges;

   
   procedure Test_copy (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_copy;

   
   procedure Test_query_ranges_default (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_query_ranges_default;

   
   procedure Test_is_set_to_default (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_is_set_to_default;

   
   procedure Test_is_set_to_default_by_name (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_is_set_to_default_by_name;

   
   procedure Test_serialize (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_serialize;

   


   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
      use AUnit.Test_Cases.Registration;
   begin
      Register_Routine (Test => Test, Routine => Test_show2'Access, Name => "Test_show2");
      Register_Routine (Test => Test, Routine => Test_set_defaults'Access, Name => "Test_set_defaults");
      Register_Routine (Test => Test, Routine => Test_set_defaults2'Access, Name => "Test_set_defaults2");
      Register_Routine (Test => Test, Routine => Test_av_set_options_string'Access, Name => "Test_av_set_options_string");
      Register_Routine (Test => Test, Routine => Test_set_from_string'Access, Name => "Test_set_from_string");
      Register_Routine (Test => Test, Routine => Test_free'Access, Name => "Test_free");
      Register_Routine (Test => Test, Routine => Test_flag_is_set'Access, Name => "Test_flag_is_set");
      Register_Routine (Test => Test, Routine => Test_set_dict'Access, Name => "Test_set_dict");
      Register_Routine (Test => Test, Routine => Test_set_dict2'Access, Name => "Test_set_dict2");
      Register_Routine (Test => Test, Routine => Test_get_key_value'Access, Name => "Test_get_key_value");
      Register_Routine (Test => Test, Routine => Test_eval_flags'Access, Name => "Test_eval_flags");
      Register_Routine (Test => Test, Routine => Test_eval_int'Access, Name => "Test_eval_int");
      Register_Routine (Test => Test, Routine => Test_eval_int64'Access, Name => "Test_eval_int64");
      Register_Routine (Test => Test, Routine => Test_eval_float'Access, Name => "Test_eval_float");
      Register_Routine (Test => Test, Routine => Test_eval_double'Access, Name => "Test_eval_double");
      Register_Routine (Test => Test, Routine => Test_eval_q'Access, Name => "Test_eval_q");
      Register_Routine (Test => Test, Routine => Test_find'Access, Name => "Test_find");
      Register_Routine (Test => Test, Routine => Test_find2'Access, Name => "Test_find2");
      Register_Routine (Test => Test, Routine => Test_next'Access, Name => "Test_next");
      Register_Routine (Test => Test, Routine => Test_child_next'Access, Name => "Test_child_next");
      Register_Routine (Test => Test, Routine => Test_child_class_next'Access, Name => "Test_child_class_next");
      Register_Routine (Test => Test, Routine => Test_set'Access, Name => "Test_set");
      Register_Routine (Test => Test, Routine => Test_set_int'Access, Name => "Test_set_int");
      Register_Routine (Test => Test, Routine => Test_set_double'Access, Name => "Test_set_double");
      Register_Routine (Test => Test, Routine => Test_set_q'Access, Name => "Test_set_q");
      Register_Routine (Test => Test, Routine => Test_set_bin'Access, Name => "Test_set_bin");
      Register_Routine (Test => Test, Routine => Test_set_image_size'Access, Name => "Test_set_image_size");
      Register_Routine (Test => Test, Routine => Test_set_pixel_fmt'Access, Name => "Test_set_pixel_fmt");
      Register_Routine (Test => Test, Routine => Test_set_sample_fmt'Access, Name => "Test_set_sample_fmt");
      Register_Routine (Test => Test, Routine => Test_set_video_rate'Access, Name => "Test_set_video_rate");
      Register_Routine (Test => Test, Routine => Test_set_channel_layout'Access, Name => "Test_set_channel_layout");
      Register_Routine (Test => Test, Routine => Test_set_dict_val'Access, Name => "Test_set_dict_val");
      Register_Routine (Test => Test, Routine => Test_get'Access, Name => "Test_get");
      Register_Routine (Test => Test, Routine => Test_get_int'Access, Name => "Test_get_int");
      Register_Routine (Test => Test, Routine => Test_get_double'Access, Name => "Test_get_double");
      Register_Routine (Test => Test, Routine => Test_get_q'Access, Name => "Test_get_q");
      Register_Routine (Test => Test, Routine => Test_get_image_size'Access, Name => "Test_get_image_size");
      Register_Routine (Test => Test, Routine => Test_get_pixel_fmt'Access, Name => "Test_get_pixel_fmt");
      Register_Routine (Test => Test, Routine => Test_get_sample_fmt'Access, Name => "Test_get_sample_fmt");
      Register_Routine (Test => Test, Routine => Test_get_video_rate'Access, Name => "Test_get_video_rate");
      Register_Routine (Test => Test, Routine => Test_get_channel_layout'Access, Name => "Test_get_channel_layout");
      Register_Routine (Test => Test, Routine => Test_get_dict_val'Access, Name => "Test_get_dict_val");
      Register_Routine (Test => Test, Routine => Test_ptr'Access, Name => "Test_ptr");
      Register_Routine (Test => Test, Routine => Test_freep_ranges'Access, Name => "Test_freep_ranges");
      Register_Routine (Test => Test, Routine => Test_query_ranges'Access, Name => "Test_query_ranges");
      Register_Routine (Test => Test, Routine => Test_copy'Access, Name => "Test_copy");
      Register_Routine (Test => Test, Routine => Test_query_ranges_default'Access, Name => "Test_query_ranges_default");
      Register_Routine (Test => Test, Routine => Test_is_set_to_default'Access, Name => "Test_is_set_to_default");
      Register_Routine (Test => Test, Routine => Test_is_set_to_default_by_name'Access, Name => "Test_is_set_to_default_by_name");
      Register_Routine (Test => Test, Routine => Test_serialize'Access, Name => "Test_serialize");
   end Register_Tests;

end FFMpeg.opt.Tests;
