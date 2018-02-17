pragma Ada_2012;
package body FFMpeg.channel_layout is

   ------------------------
   -- get_channel_layout --
   ------------------------

   function get_channel_layout
     (name : Interfaces.C.Strings.chars_ptr)
      return Interfaces.Unsigned_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_channel_layout unimplemented");
      return raise Program_Error with "Unimplemented function get_channel_layout";
   end get_channel_layout;

   ---------------------------------
   -- get_extended_channel_layout --
   ---------------------------------

   function get_extended_channel_layout
     (name : Interfaces.C.Strings.chars_ptr;
      channel_layout : access Interfaces.Unsigned_64;
      nb_channels : access int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_extended_channel_layout unimplemented");
      return raise Program_Error with "Unimplemented function get_extended_channel_layout";
   end get_extended_channel_layout;

   -------------------------------
   -- get_channel_layout_string --
   -------------------------------

   procedure get_channel_layout_string
     (buf : Interfaces.C.Strings.chars_ptr;
      buf_size : int;
      nb_channels : int;
      channel_layout : Interfaces.Unsigned_64)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_channel_layout_string unimplemented");
      raise Program_Error with "Unimplemented procedure get_channel_layout_string";
   end get_channel_layout_string;

   ---------------------------
   -- bprint_channel_layout --
   ---------------------------

   procedure bprint_channel_layout
     (bp : System.Address;
      nb_channels : int;
      channel_layout : Interfaces.Unsigned_64)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bprint_channel_layout unimplemented");
      raise Program_Error with "Unimplemented procedure bprint_channel_layout";
   end bprint_channel_layout;

   ------------------------------------
   -- get_channel_layout_nb_channels --
   ------------------------------------

   function get_channel_layout_nb_channels
     (channel_layout : Interfaces.Unsigned_64)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_channel_layout_nb_channels unimplemented");
      return raise Program_Error with "Unimplemented function get_channel_layout_nb_channels";
   end get_channel_layout_nb_channels;

   --------------------------------
   -- get_default_channel_layout --
   --------------------------------

   function get_default_channel_layout
     (nb_channels : int)
      return Interfaces.Integer_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_default_channel_layout unimplemented");
      return raise Program_Error with "Unimplemented function get_default_channel_layout";
   end get_default_channel_layout;

   --------------------------------------
   -- get_channel_layout_channel_index --
   --------------------------------------

   function get_channel_layout_channel_index
     (channel_layout : Interfaces.Unsigned_64;
      channel : Interfaces.Unsigned_64)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_channel_layout_channel_index unimplemented");
      return raise Program_Error with "Unimplemented function get_channel_layout_channel_index";
   end get_channel_layout_channel_index;

   ------------------------------------
   -- channel_layout_extract_channel --
   ------------------------------------

   function channel_layout_extract_channel
     (channel_layout : Interfaces.Unsigned_64;
      index : int)
      return Interfaces.Unsigned_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "channel_layout_extract_channel unimplemented");
      return raise Program_Error with "Unimplemented function channel_layout_extract_channel";
   end channel_layout_extract_channel;

   ----------------------
   -- get_channel_name --
   ----------------------

   function get_channel_name
     (channel : Interfaces.Unsigned_64)
      return String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_channel_name unimplemented");
      return raise Program_Error with "Unimplemented function get_channel_name";
   end get_channel_name;

   -----------------------------
   -- get_channel_description --
   -----------------------------

   function get_channel_description
     (channel : Interfaces.Unsigned_64)
      return String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_channel_description unimplemented");
      return raise Program_Error with "Unimplemented function get_channel_description";
   end get_channel_description;

   ---------------------------------
   -- get_standard_channel_layout --
   ---------------------------------

   function get_standard_channel_layout
     (index : unsigned;
      layout : access Interfaces.Unsigned_64;
      name : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_standard_channel_layout unimplemented");
      return raise Program_Error with "Unimplemented function get_standard_channel_layout";
   end get_standard_channel_layout;

end FFMpeg.channel_layout;
