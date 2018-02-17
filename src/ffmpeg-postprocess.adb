pragma Ada_2012;
package body FFMpeg.postprocess is

   -------------
   -- version --
   -------------

   function version return unsigned is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "version unimplemented");
      return raise Program_Error with "Unimplemented function version";
   end version;

   -------------------
   -- configuration --
   -------------------

   function configuration return String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "configuration unimplemented");
      return raise Program_Error with "Unimplemented function configuration";
   end configuration;

   -------------
   -- license --
   -------------

   function license return String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "license unimplemented");
      return raise Program_Error with "Unimplemented function license";
   end license;

   -----------------
   -- postprocess --
   -----------------

   procedure postprocess
     (src : System.Address;
      srcStride : access int;
      dst : System.Address;
      dstStride : access int;
      horizontalSize : int;
      verticalSize : int;
      QP_store : access Interfaces.Integer_8;
      QP_stride : int;
      mode : System.Address;
      ppContext : System.Address;
      pict_type : int)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "postprocess unimplemented");
      raise Program_Error with "Unimplemented procedure postprocess";
   end postprocess;

   ----------------------------------
   -- get_mode_by_name_and_quality --
   ----------------------------------

   function get_mode_by_name_and_quality
     (name : Interfaces.C.Strings.chars_ptr;
      quality : int)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_mode_by_name_and_quality unimplemented");
      return raise Program_Error with "Unimplemented function get_mode_by_name_and_quality";
   end get_mode_by_name_and_quality;

   ---------------
   -- free_mode --
   ---------------

   procedure free_mode (mode : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free_mode unimplemented");
      raise Program_Error with "Unimplemented procedure free_mode";
   end free_mode;

   -----------------
   -- get_context --
   -----------------

   function get_context
     (width : int;
      height : int;
      flags : int)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_context unimplemented");
      return raise Program_Error with "Unimplemented function get_context";
   end get_context;

   ------------------
   -- free_context --
   ------------------

   procedure free_context (ppContext : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free_context unimplemented");
      raise Program_Error with "Unimplemented procedure free_context";
   end free_context;

end FFMpeg.postprocess;
