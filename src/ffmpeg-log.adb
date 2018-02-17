pragma Ada_2012;
package body FFMpeg.log is

   ---------
   -- log --
   ---------

   procedure log
     (avcl : System.Address;
      level : int;
      fmt : Interfaces.C.Strings.chars_ptr)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "log unimplemented");
      raise Program_Error with "Unimplemented procedure log";
   end log;

   ----------
   -- vlog --
   ----------

   procedure vlog
     (avcl : System.Address;
      level : int;
      fmt : Interfaces.C.Strings.chars_ptr;
      vl : access System.Address)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "vlog unimplemented");
      raise Program_Error with "Unimplemented procedure vlog";
   end vlog;

   ---------------
   -- get_level --
   ---------------

   function get_level return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_level unimplemented");
      return raise Program_Error with "Unimplemented function get_level";
   end get_level;

   ---------------
   -- set_level --
   ---------------

   procedure set_level (level : int) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_level unimplemented");
      raise Program_Error with "Unimplemented procedure set_level";
   end set_level;

   ------------------
   -- set_callback --
   ------------------

   procedure set_callback
     (callback : access procedure
        (arg1 : System.Address;
         arg2 : int;
         arg3 : Interfaces.C.Strings.chars_ptr;
         arg4 : access System.Address))
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_callback unimplemented");
      raise Program_Error with "Unimplemented procedure set_callback";
   end set_callback;

   ----------------------
   -- default_callback --
   ----------------------

   procedure default_callback
     (avcl : System.Address;
      level : int;
      fmt : Interfaces.C.Strings.chars_ptr;
      vl : access System.Address)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "default_callback unimplemented");
      raise Program_Error with "Unimplemented procedure default_callback";
   end default_callback;

   -----------------------
   -- default_item_name --
   -----------------------

   function default_item_name (ctx : System.Address) return String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "default_item_name unimplemented");
      return raise Program_Error with "Unimplemented function default_item_name";
   end default_item_name;

   --------------------------
   -- default_get_category --
   --------------------------

   function default_get_category
     (ptr : System.Address)
      return AVClassCategory
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "default_get_category unimplemented");
      return raise Program_Error with "Unimplemented function default_get_category";
   end default_get_category;

   -----------------
   -- format_line --
   -----------------

   procedure format_line
     (ptr : System.Address;
      level : int;
      fmt : Interfaces.C.Strings.chars_ptr;
      vl : access System.Address;
      line : Interfaces.C.Strings.chars_ptr;
      line_size : int;
      print_prefix : access int)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "format_line unimplemented");
      raise Program_Error with "Unimplemented procedure format_line";
   end format_line;

   ------------------
   -- format_line2 --
   ------------------

   function format_line2
     (ptr : System.Address;
      level : int;
      fmt : Interfaces.C.Strings.chars_ptr;
      vl : access System.Address;
      line : Interfaces.C.Strings.chars_ptr;
      line_size : int;
      print_prefix : access int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "format_line2 unimplemented");
      return raise Program_Error with "Unimplemented function format_line2";
   end format_line2;

   ---------------
   -- set_flags --
   ---------------

   procedure set_flags (arg : int) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_flags unimplemented");
      raise Program_Error with "Unimplemented procedure set_flags";
   end set_flags;

   ---------------
   -- get_flags --
   ---------------

   function get_flags return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_flags unimplemented");
      return raise Program_Error with "Unimplemented function get_flags";
   end get_flags;

end FFMpeg.log;
