
with GNAT.Source_Info;
with AUnit.Assertions;
with Interfaces.C;
package body FFMpeg.avfilter.Tests is
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

   procedure Test_version (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_version;


   procedure Test_configuration (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_configuration;


   procedure Test_license (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_license;


   procedure Test_pad_count (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_pad_count;


   procedure Test_pad_get_name (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_pad_get_name;


   procedure Test_pad_get_type (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_pad_get_type;


   procedure Test_link (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_link;


   procedure Test_link_free (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_link_free;


   procedure Test_link_get_channels (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_link_get_channels;


   procedure Test_link_set_closed (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_link_set_closed;


   procedure Test_config_links (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_config_links;


   procedure Test_process_command (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_process_command;


   procedure Test_register_all (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_register_all;


   procedure Test_uninit (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_uninit;


   procedure Test_register (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_register;


   procedure Test_get_by_name (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_by_name;


   procedure Test_next (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_next;


   procedure Test_av_filter_next (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_av_filter_next;


   procedure Test_open (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_open;


   procedure Test_init_filter (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_init_filter;


   procedure Test_init_str (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_init_str;


   procedure Test_init_dict (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_init_dict;


   procedure Test_free (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_free;


   procedure Test_insert_filter (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_insert_filter;


   procedure Test_get_class (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_class;


   procedure Test_graph_alloc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_graph_alloc;


   procedure Test_graph_alloc_filter (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_graph_alloc_filter;


   procedure Test_graph_get_filter (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_graph_get_filter;


   procedure Test_graph_add_filter (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_graph_add_filter;


   procedure Test_graph_create_filter (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_graph_create_filter;


   procedure Test_graph_set_auto_convert (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_graph_set_auto_convert;


   procedure Test_graph_config (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_graph_config;


   procedure Test_graph_free (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_graph_free;


   procedure Test_inout_alloc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_inout_alloc;


   procedure Test_inout_free (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_inout_free;


   procedure Test_graph_parse (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_graph_parse;


   procedure Test_graph_parse_ptr (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_graph_parse_ptr;


   procedure Test_graph_parse2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_graph_parse2;


   procedure Test_graph_send_command (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_graph_send_command;


   procedure Test_graph_queue_command (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_graph_queue_command;


   procedure Test_graph_dump (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_graph_dump;


   procedure Test_graph_request_oldest (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_graph_request_oldest;




   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
      use AUnit.Test_Cases.Registration;
   begin
      Register_Routine (Test => Test, Routine => Test_version'Access, Name => "Test_version");
      Register_Routine (Test => Test, Routine => Test_configuration'Access, Name => "Test_configuration");
      Register_Routine (Test => Test, Routine => Test_license'Access, Name => "Test_license");
      Register_Routine (Test => Test, Routine => Test_pad_count'Access, Name => "Test_pad_count");
      Register_Routine (Test => Test, Routine => Test_pad_get_name'Access, Name => "Test_pad_get_name");
      Register_Routine (Test => Test, Routine => Test_pad_get_type'Access, Name => "Test_pad_get_type");
      Register_Routine (Test => Test, Routine => Test_link'Access, Name => "Test_link");
      Register_Routine (Test => Test, Routine => Test_link_free'Access, Name => "Test_link_free");
      Register_Routine (Test => Test, Routine => Test_link_get_channels'Access, Name => "Test_link_get_channels");
      Register_Routine (Test => Test, Routine => Test_link_set_closed'Access, Name => "Test_link_set_closed");
      Register_Routine (Test => Test, Routine => Test_config_links'Access, Name => "Test_config_links");
      Register_Routine (Test => Test, Routine => Test_process_command'Access, Name => "Test_process_command");
      Register_Routine (Test => Test, Routine => Test_register_all'Access, Name => "Test_register_all;");
      Register_Routine (Test => Test, Routine => Test_uninit'Access, Name => "Test_uninit;");
      Register_Routine (Test => Test, Routine => Test_register'Access, Name => "Test_register");
      Register_Routine (Test => Test, Routine => Test_get_by_name'Access, Name => "Test_get_by_name");
      Register_Routine (Test => Test, Routine => Test_next'Access, Name => "Test_next");
      Register_Routine (Test => Test, Routine => Test_av_filter_next'Access, Name => "Test_av_filter_next");
      Register_Routine (Test => Test, Routine => Test_open'Access, Name => "Test_open");
      Register_Routine (Test => Test, Routine => Test_init_filter'Access, Name => "Test_init_filter");
      Register_Routine (Test => Test, Routine => Test_init_str'Access, Name => "Test_init_str");
      Register_Routine (Test => Test, Routine => Test_init_dict'Access, Name => "Test_init_dict");
      Register_Routine (Test => Test, Routine => Test_free'Access, Name => "Test_free");
      Register_Routine (Test => Test, Routine => Test_insert_filter'Access, Name => "Test_insert_filter");
      Register_Routine (Test => Test, Routine => Test_get_class'Access, Name => "Test_get_class");
      Register_Routine (Test => Test, Routine => Test_graph_alloc'Access, Name => "Test_graph_alloc");
      Register_Routine (Test => Test, Routine => Test_graph_alloc_filter'Access, Name => "Test_graph_alloc_filter");
      Register_Routine (Test => Test, Routine => Test_graph_get_filter'Access, Name => "Test_graph_get_filter");
      Register_Routine (Test => Test, Routine => Test_graph_add_filter'Access, Name => "Test_graph_add_filter");
      Register_Routine (Test => Test, Routine => Test_graph_create_filter'Access, Name => "Test_graph_create_filter");
      Register_Routine (Test => Test, Routine => Test_graph_set_auto_convert'Access, Name => "Test_graph_set_auto_convert");
      Register_Routine (Test => Test, Routine => Test_graph_config'Access, Name => "Test_graph_config");
      Register_Routine (Test => Test, Routine => Test_graph_free'Access, Name => "Test_graph_free");
      Register_Routine (Test => Test, Routine => Test_inout_alloc'Access, Name => "Test_inout_alloc");
      Register_Routine (Test => Test, Routine => Test_inout_free'Access, Name => "Test_inout_free");
      Register_Routine (Test => Test, Routine => Test_graph_parse'Access, Name => "Test_graph_parse");
      Register_Routine (Test => Test, Routine => Test_graph_parse_ptr'Access, Name => "Test_graph_parse_ptr");
      Register_Routine (Test => Test, Routine => Test_graph_parse2'Access, Name => "Test_graph_parse2");
      Register_Routine (Test => Test, Routine => Test_graph_send_command'Access, Name => "Test_graph_send_command");
      Register_Routine (Test => Test, Routine => Test_graph_queue_command'Access, Name => "Test_graph_queue_command");
      Register_Routine (Test => Test, Routine => Test_graph_dump'Access, Name => "Test_graph_dump");
      Register_Routine (Test => Test, Routine => Test_graph_request_oldest'Access, Name => "Test_graph_request_oldest");
   end Register_Tests;

end FFMpeg.avfilter.Tests;
