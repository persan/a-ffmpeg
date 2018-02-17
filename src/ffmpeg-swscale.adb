pragma Ada_2012;
package body FFMpeg.swscale is

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

   ---------------------
   -- getCoefficients --
   ---------------------

   function getCoefficients (colorspace : int) return access int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "getCoefficients unimplemented");
      return raise Program_Error with "Unimplemented function getCoefficients";
   end getCoefficients;

   ----------------------
   -- isSupportedInput --
   ----------------------

   function isSupportedInput
     (pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "isSupportedInput unimplemented");
      return raise Program_Error with "Unimplemented function isSupportedInput";
   end isSupportedInput;

   -----------------------
   -- isSupportedOutput --
   -----------------------

   function isSupportedOutput
     (pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "isSupportedOutput unimplemented");
      return raise Program_Error with "Unimplemented function isSupportedOutput";
   end isSupportedOutput;

   -------------------------------------
   -- isSupportedEndiannessConversion --
   -------------------------------------

   function isSupportedEndiannessConversion
     (pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "isSupportedEndiannessConversion unimplemented");
      return raise Program_Error with "Unimplemented function isSupportedEndiannessConversion";
   end isSupportedEndiannessConversion;

   -------------------
   -- alloc_context --
   -------------------

   function alloc_context return System.Address is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "alloc_context unimplemented");
      return raise Program_Error with "Unimplemented function alloc_context";
   end alloc_context;

   ------------------
   -- init_context --
   ------------------

   function init_context
     (sws_context : System.Address;
      srcFilter : access SwsFilter;
      dstFilter : access SwsFilter)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "init_context unimplemented");
      return raise Program_Error with "Unimplemented function init_context";
   end init_context;

   -----------------
   -- freeContext --
   -----------------

   procedure freeContext (the_swsContext : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "freeContext unimplemented");
      raise Program_Error with "Unimplemented procedure freeContext";
   end freeContext;

   ----------------
   -- getContext --
   ----------------

   function getContext
     (srcW : int;
      srcH : int;
      srcFormat : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      dstW : int;
      dstH : int;
      dstFormat : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      flags : int;
      srcFilter : access SwsFilter;
      dstFilter : access SwsFilter;
      param : access double)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "getContext unimplemented");
      return raise Program_Error with "Unimplemented function getContext";
   end getContext;

   -----------
   -- scale --
   -----------

   function scale
     (c : System.Address;
      srcSlice : System.Address;
      srcStride : access int;
      srcSliceY : int;
      srcSliceH : int;
      dst : System.Address;
      dstStride : access int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "scale unimplemented");
      return raise Program_Error with "Unimplemented function scale";
   end scale;

   --------------------------
   -- setColorspaceDetails --
   --------------------------

   function setColorspaceDetails
     (c : System.Address;
      inv_table : access int;
      srcRange : int;
      table : access int;
      dstRange : int;
      brightness : int;
      contrast : int;
      saturation : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "setColorspaceDetails unimplemented");
      return raise Program_Error with "Unimplemented function setColorspaceDetails";
   end setColorspaceDetails;

   --------------------------
   -- getColorspaceDetails --
   --------------------------

   function getColorspaceDetails
     (c : System.Address;
      inv_table : System.Address;
      srcRange : access int;
      table : System.Address;
      dstRange : access int;
      brightness : access int;
      contrast : access int;
      saturation : access int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "getColorspaceDetails unimplemented");
      return raise Program_Error with "Unimplemented function getColorspaceDetails";
   end getColorspaceDetails;

   --------------
   -- allocVec --
   --------------

   function allocVec (length : int) return access SwsVector is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "allocVec unimplemented");
      return raise Program_Error with "Unimplemented function allocVec";
   end allocVec;

   --------------------
   -- getGaussianVec --
   --------------------

   function getGaussianVec
     (variance : double;
      quality : double)
      return access SwsVector
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "getGaussianVec unimplemented");
      return raise Program_Error with "Unimplemented function getGaussianVec";
   end getGaussianVec;

   --------------
   -- scaleVec --
   --------------

   procedure scaleVec (a : access SwsVector; scalar : double) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "scaleVec unimplemented");
      raise Program_Error with "Unimplemented procedure scaleVec";
   end scaleVec;

   ------------------
   -- normalizeVec --
   ------------------

   procedure normalizeVec (a : access SwsVector; height : double) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "normalizeVec unimplemented");
      raise Program_Error with "Unimplemented procedure normalizeVec";
   end normalizeVec;

   -----------------
   -- getConstVec --
   -----------------

   function getConstVec (c : double; length : int) return access SwsVector is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "getConstVec unimplemented");
      return raise Program_Error with "Unimplemented function getConstVec";
   end getConstVec;

   --------------------
   -- getIdentityVec --
   --------------------

   function getIdentityVec return access SwsVector is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "getIdentityVec unimplemented");
      return raise Program_Error with "Unimplemented function getIdentityVec";
   end getIdentityVec;

   -------------
   -- convVec --
   -------------

   procedure convVec (a : access SwsVector; b : access SwsVector) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "convVec unimplemented");
      raise Program_Error with "Unimplemented procedure convVec";
   end convVec;

   ------------
   -- addVec --
   ------------

   procedure addVec (a : access SwsVector; b : access SwsVector) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "addVec unimplemented");
      raise Program_Error with "Unimplemented procedure addVec";
   end addVec;

   ------------
   -- subVec --
   ------------

   procedure subVec (a : access SwsVector; b : access SwsVector) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "subVec unimplemented");
      raise Program_Error with "Unimplemented procedure subVec";
   end subVec;

   --------------
   -- shiftVec --
   --------------

   procedure shiftVec (a : access SwsVector; shift : int) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "shiftVec unimplemented");
      raise Program_Error with "Unimplemented procedure shiftVec";
   end shiftVec;

   --------------
   -- cloneVec --
   --------------

   function cloneVec (a : access SwsVector) return access SwsVector is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "cloneVec unimplemented");
      return raise Program_Error with "Unimplemented function cloneVec";
   end cloneVec;

   ---------------
   -- printVec2 --
   ---------------

   procedure printVec2
     (a : access SwsVector;
      log_ctx : access FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;
      log_level : int)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "printVec2 unimplemented");
      raise Program_Error with "Unimplemented procedure printVec2";
   end printVec2;

   -------------
   -- freeVec --
   -------------

   procedure freeVec (a : access SwsVector) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "freeVec unimplemented");
      raise Program_Error with "Unimplemented procedure freeVec";
   end freeVec;

   ----------------------
   -- getDefaultFilter --
   ----------------------

   function getDefaultFilter
     (lumaGBlur : float;
      chromaGBlur : float;
      lumaSharpen : float;
      chromaSharpen : float;
      chromaHShift : float;
      chromaVShift : float;
      verbose : int)
      return access SwsFilter
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "getDefaultFilter unimplemented");
      return raise Program_Error with "Unimplemented function getDefaultFilter";
   end getDefaultFilter;

   ----------------
   -- freeFilter --
   ----------------

   procedure freeFilter (filter : access SwsFilter) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "freeFilter unimplemented");
      raise Program_Error with "Unimplemented procedure freeFilter";
   end freeFilter;

   ----------------------
   -- getCachedContext --
   ----------------------

   function getCachedContext
     (context : System.Address;
      srcW : int;
      srcH : int;
      srcFormat : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      dstW : int;
      dstH : int;
      dstFormat : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      flags : int;
      srcFilter : access SwsFilter;
      dstFilter : access SwsFilter;
      param : access double)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "getCachedContext unimplemented");
      return raise Program_Error with "Unimplemented function getCachedContext";
   end getCachedContext;

   -------------------------------
   -- convertPalette8ToPacked32 --
   -------------------------------

   procedure convertPalette8ToPacked32
     (src : access Interfaces.Unsigned_8;
      dst : access Interfaces.Unsigned_8;
      num_pixels : int;
      palette : access Interfaces.Unsigned_8)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "convertPalette8ToPacked32 unimplemented");
      raise Program_Error with "Unimplemented procedure convertPalette8ToPacked32";
   end convertPalette8ToPacked32;

   -------------------------------
   -- convertPalette8ToPacked24 --
   -------------------------------

   procedure convertPalette8ToPacked24
     (src : access Interfaces.Unsigned_8;
      dst : access Interfaces.Unsigned_8;
      num_pixels : int;
      palette : access Interfaces.Unsigned_8)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "convertPalette8ToPacked24 unimplemented");
      raise Program_Error with "Unimplemented procedure convertPalette8ToPacked24";
   end convertPalette8ToPacked24;

   ---------------
   -- get_class --
   ---------------

   function get_class
      return access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_class unimplemented");
      return raise Program_Error with "Unimplemented function get_class";
   end get_class;

end FFMpeg.swscale;
