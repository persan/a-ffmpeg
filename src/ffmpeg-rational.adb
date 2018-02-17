pragma Ada_2012;
package body Ffmpeg.Rational is

   ------------
   -- Create --
   ------------

   function Create (Num, Den : Integer) return AVRational is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Create unimplemented");
      return raise Program_Error with "Unimplemented function Create";
   end Create;

   ---------
   -- "+" --
   ---------

   function "+" (L , R : AVRational) return AVRational is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, """+"" unimplemented");
      return raise Program_Error with "Unimplemented function ""+""";
   end "+";

   ---------
   -- "-" --
   ---------

   function "-" (L , R : AVRational) return AVRational is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, """-"" unimplemented");
      return raise Program_Error with "Unimplemented function ""-""";
   end "-";

   ---------
   -- "*" --
   ---------

   function "*" (L , R : AVRational) return AVRational is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, """*"" unimplemented");
      return raise Program_Error with "Unimplemented function ""*""";
   end "*";

   ---------
   -- "/" --
   ---------

   function "/" (L , R : AVRational) return AVRational is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, """/"" unimplemented");
      return raise Program_Error with "Unimplemented function ""/""";
   end "/";

   ---------
   -- "=" --
   ---------

   function "=" (L , R : AVRational) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, """="" unimplemented");
      return raise Program_Error with "Unimplemented function ""=""";
   end "=";

   ---------
   -- ">" --
   ---------

   function ">" (L , R : AVRational) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, """>"" unimplemented");
      return raise Program_Error with "Unimplemented function "">""";
   end ">";

   ----------
   -- ">=" --
   ----------

   function ">=" (L , R : AVRational) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, """>="" unimplemented");
      return raise Program_Error with "Unimplemented function "">=""";
   end ">=";

   ---------
   -- "<" --
   ---------

   function "<" (L , R : AVRational) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, """<"" unimplemented");
      return raise Program_Error with "Unimplemented function ""<""";
   end "<";

   ----------
   -- "<=" --
   ----------

   function "<=" (L , R : AVRational) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, """<="" unimplemented");
      return raise Program_Error with "Unimplemented function ""<=""";
   end "<=";

   -----------
   -- "not" --
   -----------

   function "not" (L : AVRational) return AVRational is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, """not"" unimplemented");
      return raise Program_Error with "Unimplemented function ""not""";
   end "not";

   -------------------
   -- To_Long_Float --
   -------------------

   function To_Long_Float (Item : AVRational) return Long_Float is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "To_Long_Float unimplemented");
      return raise Program_Error with "Unimplemented function To_Long_Float";
   end To_Long_Float;

end Ffmpeg.Rational;
