pragma Ada_2012;
package body FFMpeg.cpu is

   -------------------
   -- get_cpu_flags --
   -------------------

   function get_cpu_flags return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_cpu_flags unimplemented");
      return raise Program_Error with "Unimplemented function get_cpu_flags";
   end get_cpu_flags;

   ---------------------
   -- force_cpu_flags --
   ---------------------

   procedure force_cpu_flags (flags : int) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "force_cpu_flags unimplemented");
      raise Program_Error with "Unimplemented procedure force_cpu_flags";
   end force_cpu_flags;

   ------------------------
   -- set_cpu_flags_mask --
   ------------------------

   procedure set_cpu_flags_mask (mask : int) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_cpu_flags_mask unimplemented");
      raise Program_Error with "Unimplemented procedure set_cpu_flags_mask";
   end set_cpu_flags_mask;

   ---------------------
   -- parse_cpu_flags --
   ---------------------

   function parse_cpu_flags (s : Interfaces.C.Strings.chars_ptr) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parse_cpu_flags unimplemented");
      return raise Program_Error with "Unimplemented function parse_cpu_flags";
   end parse_cpu_flags;

   --------------------
   -- parse_cpu_caps --
   --------------------

   function parse_cpu_caps
     (flags : access unsigned;
      s : Interfaces.C.Strings.chars_ptr)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parse_cpu_caps unimplemented");
      return raise Program_Error with "Unimplemented function parse_cpu_caps";
   end parse_cpu_caps;

   ---------------
   -- cpu_count --
   ---------------

   function cpu_count return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "cpu_count unimplemented");
      return raise Program_Error with "Unimplemented function cpu_count";
   end cpu_count;

end FFMpeg.cpu;
