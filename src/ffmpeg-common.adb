pragma Ada_2012;
package body FFMpeg.common is

   ----------
   -- log2 --
   ----------

   function log2 (v : unsigned) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "log2 unimplemented");
      return raise Program_Error with "Unimplemented function log2";
   end log2;

   ----------------
   -- log2_16bit --
   ----------------

   function log2_16bit (v : unsigned) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "log2_16bit unimplemented");
      return raise Program_Error with "Unimplemented function log2_16bit";
   end log2_16bit;

   ------------
   -- clip_c --
   ------------

   function clip_c
     (a : int;
      amin : int;
      amax : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "clip_c unimplemented");
      return raise Program_Error with "Unimplemented function clip_c";
   end clip_c;

   --------------
   -- clip64_c --
   --------------

   function clip64_c
     (a : Interfaces.Integer_64;
      amin : Interfaces.Integer_64;
      amax : Interfaces.Integer_64)
      return Interfaces.Integer_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "clip64_c unimplemented");
      return raise Program_Error with "Unimplemented function clip64_c";
   end clip64_c;

   ------------------
   -- clip_uint8_c --
   ------------------

   function clip_uint8_c (a : int) return Interfaces.Unsigned_8 is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "clip_uint8_c unimplemented");
      return raise Program_Error with "Unimplemented function clip_uint8_c";
   end clip_uint8_c;

   -----------------
   -- clip_int8_c --
   -----------------

   function clip_int8_c (a : int) return Interfaces.Integer_8 is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "clip_int8_c unimplemented");
      return raise Program_Error with "Unimplemented function clip_int8_c";
   end clip_int8_c;

   -------------------
   -- clip_uint16_c --
   -------------------

   function clip_uint16_c (a : int) return Interfaces.Unsigned_16 is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "clip_uint16_c unimplemented");
      return raise Program_Error with "Unimplemented function clip_uint16_c";
   end clip_uint16_c;

   ------------------
   -- clip_int16_c --
   ------------------

   function clip_int16_c (a : int) return Interfaces.Integer_16 is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "clip_int16_c unimplemented");
      return raise Program_Error with "Unimplemented function clip_int16_c";
   end clip_int16_c;

   -------------------
   -- clipl_int32_c --
   -------------------

   function clipl_int32_c
     (a : Interfaces.Integer_64)
      return Interfaces.Integer_32
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "clipl_int32_c unimplemented");
      return raise Program_Error with "Unimplemented function clipl_int32_c";
   end clipl_int32_c;

   ------------------
   -- clip_intp2_c --
   ------------------

   function clip_intp2_c (a : int; p : int) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "clip_intp2_c unimplemented");
      return raise Program_Error with "Unimplemented function clip_intp2_c";
   end clip_intp2_c;

   -------------------
   -- clip_uintp2_c --
   -------------------

   function clip_uintp2_c (a : int; p : int) return unsigned is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "clip_uintp2_c unimplemented");
      return raise Program_Error with "Unimplemented function clip_uintp2_c";
   end clip_uintp2_c;

   ------------------
   -- mod_uintp2_c --
   ------------------

   function mod_uintp2_c (a : unsigned; p : unsigned) return unsigned is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "mod_uintp2_c unimplemented");
      return raise Program_Error with "Unimplemented function mod_uintp2_c";
   end mod_uintp2_c;

   -----------------
   -- sat_add32_c --
   -----------------

   function sat_add32_c (a : int; b : int) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "sat_add32_c unimplemented");
      return raise Program_Error with "Unimplemented function sat_add32_c";
   end sat_add32_c;

   ------------------
   -- sat_dadd32_c --
   ------------------

   function sat_dadd32_c (a : int; b : int) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "sat_dadd32_c unimplemented");
      return raise Program_Error with "Unimplemented function sat_dadd32_c";
   end sat_dadd32_c;

   -------------
   -- clipf_c --
   -------------

   function clipf_c
     (a : float;
      amin : float;
      amax : float)
      return float
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "clipf_c unimplemented");
      return raise Program_Error with "Unimplemented function clipf_c";
   end clipf_c;

   -------------
   -- clipd_c --
   -------------

   function clipd_c
     (a : double;
      amin : double;
      amax : double)
      return double
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "clipd_c unimplemented");
      return raise Program_Error with "Unimplemented function clipd_c";
   end clipd_c;

   -----------------
   -- ceil_log2_c --
   -----------------

   function ceil_log2_c (x : int) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "ceil_log2_c unimplemented");
      return raise Program_Error with "Unimplemented function ceil_log2_c";
   end ceil_log2_c;

   ----------------
   -- popcount_c --
   ----------------

   function popcount_c (x : Interfaces.Unsigned_32) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "popcount_c unimplemented");
      return raise Program_Error with "Unimplemented function popcount_c";
   end popcount_c;

   ------------------
   -- popcount64_c --
   ------------------

   function popcount64_c (x : Interfaces.Unsigned_64) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "popcount64_c unimplemented");
      return raise Program_Error with "Unimplemented function popcount64_c";
   end popcount64_c;

   --------------
   -- parity_c --
   --------------

   function parity_c (v : Interfaces.Unsigned_32) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parity_c unimplemented");
      return raise Program_Error with "Unimplemented function parity_c";
   end parity_c;

end FFMpeg.common;
