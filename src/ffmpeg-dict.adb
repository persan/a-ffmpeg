pragma Ada_2012;
package body FFMpeg.dict is

   ---------
   -- get --
   ---------

   function get
     (m : System.Address;
      key : Interfaces.C.Strings.chars_ptr;
      prev : access constant AVDictionaryEntry;
      flags : int)
      return access AVDictionaryEntry
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get unimplemented");
      return raise Program_Error with "Unimplemented function get";
   end get;

   -----------
   -- count --
   -----------

   function count (m : System.Address) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "count unimplemented");
      return raise Program_Error with "Unimplemented function count";
   end count;

   ---------
   -- set --
   ---------

   function set
     (pm : System.Address;
      key : Interfaces.C.Strings.chars_ptr;
      value : Interfaces.C.Strings.chars_ptr;
      flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set unimplemented");
      return raise Program_Error with "Unimplemented function set";
   end set;

   -------------
   -- set_int --
   -------------

   function set_int
     (pm : System.Address;
      key : Interfaces.C.Strings.chars_ptr;
      value : Interfaces.Integer_64;
      flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_int unimplemented");
      return raise Program_Error with "Unimplemented function set_int";
   end set_int;

   ------------------
   -- parse_string --
   ------------------

   function parse_string
     (pm : System.Address;
      str : Interfaces.C.Strings.chars_ptr;
      key_val_sep : Interfaces.C.Strings.chars_ptr;
      pairs_sep : Interfaces.C.Strings.chars_ptr;
      flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parse_string unimplemented");
      return raise Program_Error with "Unimplemented function parse_string";
   end parse_string;

   ----------
   -- copy --
   ----------

   function copy
     (dst : System.Address;
      src : System.Address;
      flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "copy unimplemented");
      return raise Program_Error with "Unimplemented function copy";
   end copy;

   ----------
   -- free --
   ----------

   procedure free (m : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free unimplemented");
      raise Program_Error with "Unimplemented procedure free";
   end free;

   ----------------
   -- get_string --
   ----------------

   function get_string
     (m : System.Address;
      buffer : System.Address;
      key_val_sep : char;
      pairs_sep : char)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_string unimplemented");
      return raise Program_Error with "Unimplemented function get_string";
   end get_string;

end FFMpeg.dict;
