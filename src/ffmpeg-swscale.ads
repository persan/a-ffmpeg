pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h;
with System;
limited with FFMpeg.Low_Level.ffmpeg_libavutil_log_h;


package FFMpeg.swscale is

   SWS_FAST_BILINEAR : constant := 1;  --  /usr/include/ffmpeg/libswscale/swscale.h:58
   SWS_BILINEAR : constant := 2;  --  /usr/include/ffmpeg/libswscale/swscale.h:59
   SWS_BICUBIC : constant := 4;  --  /usr/include/ffmpeg/libswscale/swscale.h:60
   SWS_X : constant := 8;  --  /usr/include/ffmpeg/libswscale/swscale.h:61
   SWS_POINT : constant := 16#10#;  --  /usr/include/ffmpeg/libswscale/swscale.h:62
   SWS_AREA : constant := 16#20#;  --  /usr/include/ffmpeg/libswscale/swscale.h:63
   SWS_BICUBLIN : constant := 16#40#;  --  /usr/include/ffmpeg/libswscale/swscale.h:64
   SWS_GAUSS : constant := 16#80#;  --  /usr/include/ffmpeg/libswscale/swscale.h:65
   SWS_SINC : constant := 16#100#;  --  /usr/include/ffmpeg/libswscale/swscale.h:66
   SWS_LANCZOS : constant := 16#200#;  --  /usr/include/ffmpeg/libswscale/swscale.h:67
   SWS_SPLINE : constant := 16#400#;  --  /usr/include/ffmpeg/libswscale/swscale.h:68

   SWS_SRC_V_CHR_DROP_MASK : constant := 16#30000#;  --  /usr/include/ffmpeg/libswscale/swscale.h:70
   SWS_SRC_V_CHR_DROP_SHIFT : constant := 16;  --  /usr/include/ffmpeg/libswscale/swscale.h:71

   SWS_PARAM_DEFAULT : constant := 123456;  --  /usr/include/ffmpeg/libswscale/swscale.h:73

   SWS_PRINT_INFO : constant := 16#1000#;  --  /usr/include/ffmpeg/libswscale/swscale.h:75

   SWS_FULL_CHR_H_INT : constant := 16#2000#;  --  /usr/include/ffmpeg/libswscale/swscale.h:79

   SWS_FULL_CHR_H_INP : constant := 16#4000#;  --  /usr/include/ffmpeg/libswscale/swscale.h:81
   SWS_DIRECT_BGR : constant := 16#8000#;  --  /usr/include/ffmpeg/libswscale/swscale.h:82
   SWS_ACCURATE_RND : constant := 16#40000#;  --  /usr/include/ffmpeg/libswscale/swscale.h:83
   SWS_BITEXACT : constant := 16#80000#;  --  /usr/include/ffmpeg/libswscale/swscale.h:84
   SWS_ERROR_DIFFUSION : constant := 16#800000#;  --  /usr/include/ffmpeg/libswscale/swscale.h:85

   SWS_MAX_REDUCE_CUTOFF : constant := 0.002;  --  /usr/include/ffmpeg/libswscale/swscale.h:87

   SWS_CS_ITU709 : constant := 1;  --  /usr/include/ffmpeg/libswscale/swscale.h:89
   SWS_CS_FCC : constant := 4;  --  /usr/include/ffmpeg/libswscale/swscale.h:90
   SWS_CS_ITU601 : constant := 5;  --  /usr/include/ffmpeg/libswscale/swscale.h:91
   SWS_CS_ITU624 : constant := 5;  --  /usr/include/ffmpeg/libswscale/swscale.h:92
   SWS_CS_SMPTE170M : constant := 5;  --  /usr/include/ffmpeg/libswscale/swscale.h:93
   SWS_CS_SMPTE240M : constant := 7;  --  /usr/include/ffmpeg/libswscale/swscale.h:94
   SWS_CS_DEFAULT : constant := 5;  --  /usr/include/ffmpeg/libswscale/swscale.h:95
   SWS_CS_BT2020 : constant := 9;  --  /usr/include/ffmpeg/libswscale/swscale.h:96

  -- * Copyright (C) 2001-2011 Michael Niedermayer <michaelni@gmx.at>
  -- *
  -- * This file is part of FFmpeg.
  -- *
  -- * FFmpeg is free software; you can redistribute it and/or
  -- * modify it under the terms of the GNU Lesser General Public
  -- * License as published by the Free Software Foundation; either
  -- * version 2.1 of the License, or (at your option) any later version.
  -- *
  -- * FFmpeg is distributed in the hope that it will be useful,
  -- * but WITHOUT ANY WARRANTY; without even the implied warranty of
  -- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  -- * Lesser General Public License for more details.
  -- *
  -- * You should have received a copy of the GNU Lesser General Public
  -- * License along with FFmpeg; if not, write to the Free Software
  -- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
  --

  --*
  -- * @file
  -- * @ingroup libsws
  -- * external API header
  --

  --*
  -- * @defgroup libsws libswscale
  -- * Color conversion and scaling library.
  -- *
  -- * @{
  -- *
  -- * Return the LIBSWSCALE_VERSION_INT constant.
  --

   function version return unsigned;  -- /usr/include/ffmpeg/libswscale/swscale.h:45


  --*
  -- * Return the libswscale build-time configuration.
  --

   function configuration return String;  -- /usr/include/ffmpeg/libswscale/swscale.h:50


  --*
  -- * Return the libswscale license.
  --

   function license return String;  -- /usr/include/ffmpeg/libswscale/swscale.h:55


  -- values for the flags, the stuff on the command line is different
  --the following 3 flags are not completely implemented
  --internal chrominance subsampling info
  --input subsampling info
  --*
  -- * Return a pointer to yuv<->rgb coefficients for the given colorspace
  -- * suitable for setColorspaceDetails().
  -- *
  -- * @param colorspace One of the SWS_CS_* macros. If invalid,
  -- * SWS_CS_DEFAULT is used.
  --

   function getCoefficients (colorspace : int) return access int;  -- /usr/include/ffmpeg/libswscale/swscale.h:105


  -- when used for filters they must have an odd number of elements
  -- coeffs cannot be shared between vectors
  --/< pointer to the list of coefficients
   type SwsVector is record
      coeff : access double;  -- /usr/include/ffmpeg/libswscale/swscale.h:110
      length : aliased int;  -- /usr/include/ffmpeg/libswscale/swscale.h:111
   end record;
   pragma Convention (C_Pass_By_Copy, SwsVector);  -- /usr/include/ffmpeg/libswscale/swscale.h:109

  --/< number of coefficients in the vector
  -- vectors can be shared
   type SwsFilter is record
      lumH : access SwsVector;  -- /usr/include/ffmpeg/libswscale/swscale.h:116
      lumV : access SwsVector;  -- /usr/include/ffmpeg/libswscale/swscale.h:117
      chrH : access SwsVector;  -- /usr/include/ffmpeg/libswscale/swscale.h:118
      chrV : access SwsVector;  -- /usr/include/ffmpeg/libswscale/swscale.h:119
   end record;
   pragma Convention (C_Pass_By_Copy, SwsFilter);  -- /usr/include/ffmpeg/libswscale/swscale.h:115

   --  skipped empty struct SwsContext

  --*
  -- * Return a positive value if pix_fmt is a supported input format, 0
  -- * otherwise.
  --

   function isSupportedInput (pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat) return int;  -- /usr/include/ffmpeg/libswscale/swscale.h:128


  --*
  -- * Return a positive value if pix_fmt is a supported output format, 0
  -- * otherwise.
  --

   function isSupportedOutput (pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat) return int;  -- /usr/include/ffmpeg/libswscale/swscale.h:134


  --*
  -- * @param[in]  pix_fmt the pixel format
  -- * @return a positive value if an endianness conversion for pix_fmt is
  -- * supported, 0 otherwise.
  --

   function isSupportedEndiannessConversion (pix_fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat) return int;  -- /usr/include/ffmpeg/libswscale/swscale.h:141


  --*
  -- * Allocate an empty SwsContext. This must be filled and passed to
  -- * init_context(). For filling see AVOptions, options.c and
  -- * setColorspaceDetails().
  --

   function alloc_context return System.Address;  -- /usr/include/ffmpeg/libswscale/swscale.h:148


  --*
  -- * Initialize the swscaler context context.
  -- *
  -- * @return zero or positive value on success, a negative value on
  -- * error
  --

   function init_context
     (sws_context : System.Address;
      srcFilter : access SwsFilter;
      dstFilter : access SwsFilter) return int;  -- /usr/include/ffmpeg/libswscale/swscale.h:157


  --*
  -- * Free the swscaler context swsContext.
  -- * If swsContext is NULL, then does nothing.
  --

   procedure freeContext (the_swsContext : System.Address);  -- /usr/include/ffmpeg/libswscale/swscale.h:163


  --*
  -- * Allocate and return an SwsContext. You need it to perform
  -- * scaling/conversion operations using scale().
  -- *
  -- * @param srcW the width of the source image
  -- * @param srcH the height of the source image
  -- * @param srcFormat the source image format
  -- * @param dstW the width of the destination image
  -- * @param dstH the height of the destination image
  -- * @param dstFormat the destination image format
  -- * @param flags specify which algorithm and options to use for rescaling
  -- * @param param extra parameters to tune the used scaler
  -- *              For SWS_BICUBIC param[0] and [1] tune the shape of the basis
  -- *              function, param[0] tunes f(1) and param[1] f´(1)
  -- *              For SWS_GAUSS param[0] tunes the exponent and thus cutoff
  -- *              frequency
  -- *              For SWS_LANCZOS param[0] tunes the width of the window function
  -- * @return a pointer to an allocated context, or NULL in case of error
  -- * @note this function is to be removed after a saner alternative is
  -- *       written
  --

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
      param : access double) return System.Address;  -- /usr/include/ffmpeg/libswscale/swscale.h:186


  --*
  -- * Scale the image slice in srcSlice and put the resulting scaled
  -- * slice in the image in dst. A slice is a sequence of consecutive
  -- * rows in an image.
  -- *
  -- * Slices have to be provided in sequential order, either in
  -- * top-bottom or bottom-top order. If slices are provided in
  -- * non-sequential order the behavior of the function is undefined.
  -- *
  -- * @param c         the scaling context previously created with
  -- *                  getContext()
  -- * @param srcSlice  the array containing the pointers to the planes of
  -- *                  the source slice
  -- * @param srcStride the array containing the strides for each plane of
  -- *                  the source image
  -- * @param srcSliceY the position in the source image of the slice to
  -- *                  process, that is the number (counted starting from
  -- *                  zero) in the image of the first row of the slice
  -- * @param srcSliceH the height of the source slice, that is the number
  -- *                  of rows in the slice
  -- * @param dst       the array containing the pointers to the planes of
  -- *                  the destination image
  -- * @param dstStride the array containing the strides for each plane of
  -- *                  the destination image
  -- * @return          the height of the output slice
  --

   function scale
     (c : System.Address;
      srcSlice : System.Address;
      srcStride : access int;
      srcSliceY : int;
      srcSliceH : int;
      dst : System.Address;
      dstStride : access int) return int;  -- /usr/include/ffmpeg/libswscale/swscale.h:217


  --*
  -- * @param dstRange flag indicating the while-black range of the output (1=jpeg / 0=mpeg)
  -- * @param srcRange flag indicating the while-black range of the input (1=jpeg / 0=mpeg)
  -- * @param table the yuv2rgb coefficients describing the output yuv space, normally ff_yuv2rgb_coeffs[x]
  -- * @param inv_table the yuv2rgb coefficients describing the input yuv space, normally ff_yuv2rgb_coeffs[x]
  -- * @param brightness 16.16 fixed point brightness correction
  -- * @param contrast 16.16 fixed point contrast correction
  -- * @param saturation 16.16 fixed point saturation correction
  -- * @return -1 if not supported
  --

   function setColorspaceDetails
     (c : System.Address;
      inv_table : access int;
      srcRange : int;
      table : access int;
      dstRange : int;
      brightness : int;
      contrast : int;
      saturation : int) return int;  -- /usr/include/ffmpeg/libswscale/swscale.h:231


  --*
  -- * @return -1 if not supported
  --

   function getColorspaceDetails
     (c : System.Address;
      inv_table : System.Address;
      srcRange : access int;
      table : System.Address;
      dstRange : access int;
      brightness : access int;
      contrast : access int;
      saturation : access int) return int;  -- /usr/include/ffmpeg/libswscale/swscale.h:238


  --*
  -- * Allocate and return an uninitialized vector with length coefficients.
  --

   function allocVec (length : int) return access SwsVector;  -- /usr/include/ffmpeg/libswscale/swscale.h:245


  --*
  -- * Return a normalized Gaussian curve used to filter stuff
  -- * quality = 3 is high quality, lower is lower quality.
  --

   function getGaussianVec (variance : double; quality : double) return access SwsVector;  -- /usr/include/ffmpeg/libswscale/swscale.h:251


  --*
  -- * Scale all the coefficients of a by the scalar value.
  --

   procedure scaleVec (a : access SwsVector; scalar : double);  -- /usr/include/ffmpeg/libswscale/swscale.h:256


  --*
  -- * Scale all the coefficients of a so that their sum equals height.
  --

   procedure normalizeVec (a : access SwsVector; height : double);  -- /usr/include/ffmpeg/libswscale/swscale.h:261


   function getConstVec (c : double; length : int) return access SwsVector;  -- /usr/include/ffmpeg/libswscale/swscale.h:264


   function getIdentityVec return access SwsVector;  -- /usr/include/ffmpeg/libswscale/swscale.h:265


   procedure convVec (a : access SwsVector; b : access SwsVector);  -- /usr/include/ffmpeg/libswscale/swscale.h:266


   procedure addVec (a : access SwsVector; b : access SwsVector);  -- /usr/include/ffmpeg/libswscale/swscale.h:267


   procedure subVec (a : access SwsVector; b : access SwsVector);  -- /usr/include/ffmpeg/libswscale/swscale.h:268


   procedure shiftVec (a : access SwsVector; shift : int);  -- /usr/include/ffmpeg/libswscale/swscale.h:269


   function cloneVec (a : access SwsVector) return access SwsVector;  -- /usr/include/ffmpeg/libswscale/swscale.h:270


   procedure printVec2
     (a : access SwsVector;
      log_ctx : access FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;
      log_level : int);  -- /usr/include/ffmpeg/libswscale/swscale.h:271


   procedure freeVec (a : access SwsVector);  -- /usr/include/ffmpeg/libswscale/swscale.h:274


   function getDefaultFilter
     (lumaGBlur : float;
      chromaGBlur : float;
      lumaSharpen : float;
      chromaSharpen : float;
      chromaHShift : float;
      chromaVShift : float;
      verbose : int) return access SwsFilter;  -- /usr/include/ffmpeg/libswscale/swscale.h:276


   procedure freeFilter (filter : access SwsFilter);  -- /usr/include/ffmpeg/libswscale/swscale.h:280


  --*
  -- * Check if context can be reused, otherwise reallocate a new one.
  -- *
  -- * If context is NULL, just calls getContext() to get a new
  -- * context. Otherwise, checks if the parameters are the ones already
  -- * saved in context. If that is the case, returns the current
  -- * context. Otherwise, frees context and gets a new context with
  -- * the new parameters.
  -- *
  -- * Be warned that srcFilter and dstFilter are not checked, they
  -- * are assumed to remain the same.
  --

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
      param : access double) return System.Address;  -- /usr/include/ffmpeg/libswscale/swscale.h:294


  --*
  -- * Convert an 8-bit paletted frame into a frame with a color depth of 32 bits.
  -- *
  -- * The output frame will have the same packed format as the palette.
  -- *
  -- * @param src        source frame buffer
  -- * @param dst        destination frame buffer
  -- * @param num_pixels number of pixels to convert
  -- * @param palette    array with [256] entries, which must match color arrangement (RGB or BGR) of src
  --

   procedure convertPalette8ToPacked32
     (src : access Interfaces.Unsigned_8;
      dst : access Interfaces.Unsigned_8;
      num_pixels : int;
      palette : access Interfaces.Unsigned_8);  -- /usr/include/ffmpeg/libswscale/swscale.h:310


  --*
  -- * Convert an 8-bit paletted frame into a frame with a color depth of 24 bits.
  -- *
  -- * With the palette format "ABCD", the destination frame ends up with the format "ABC".
  -- *
  -- * @param src        source frame buffer
  -- * @param dst        destination frame buffer
  -- * @param num_pixels number of pixels to convert
  -- * @param palette    array with [256] entries, which must match color arrangement (RGB or BGR) of src
  --

   procedure convertPalette8ToPacked24
     (src : access Interfaces.Unsigned_8;
      dst : access Interfaces.Unsigned_8;
      num_pixels : int;
      palette : access Interfaces.Unsigned_8);  -- /usr/include/ffmpeg/libswscale/swscale.h:322


  --*
  -- * Get the AVClass for swsContext. It can be used in combination with
  -- * AV_OPT_SEARCH_FAKE_OBJ for examining options.
  -- *
  -- * @see av_opt_find().
  --

   function get_class return access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;  -- /usr/include/ffmpeg/libswscale/swscale.h:330


  --*
  -- * @}
  --

end FFMpeg.swscale;
