pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;


package FFMpeg.Low_Level.ffmpeg_libpostproc_postprocess_h is

   PP_QUALITY_MAX : constant := 6;  --  /usr/include/ffmpeg/libpostproc/postprocess.h:54
   --  unsupported macro: QP_STORE_T int8_t

   PP_CPU_CAPS_MMX : constant := 16#80000000#;  --  /usr/include/ffmpeg/libpostproc/postprocess.h:92
   PP_CPU_CAPS_MMX2 : constant := 16#20000000#;  --  /usr/include/ffmpeg/libpostproc/postprocess.h:93
   PP_CPU_CAPS_3DNOW : constant := 16#40000000#;  --  /usr/include/ffmpeg/libpostproc/postprocess.h:94
   PP_CPU_CAPS_ALTIVEC : constant := 16#10000000#;  --  /usr/include/ffmpeg/libpostproc/postprocess.h:95
   PP_CPU_CAPS_AUTO : constant := 16#00080000#;  --  /usr/include/ffmpeg/libpostproc/postprocess.h:96

   PP_FORMAT : constant := 16#00000008#;  --  /usr/include/ffmpeg/libpostproc/postprocess.h:98
   --  unsupported macro: PP_FORMAT_420 (0x00000011|PP_FORMAT)
   --  unsupported macro: PP_FORMAT_422 (0x00000001|PP_FORMAT)
   --  unsupported macro: PP_FORMAT_411 (0x00000002|PP_FORMAT)
   --  unsupported macro: PP_FORMAT_444 (0x00000000|PP_FORMAT)
   --  unsupported macro: PP_FORMAT_440 (0x00000010|PP_FORMAT)

   PP_PICT_TYPE_QP2 : constant := 16#00000010#;  --  /usr/include/ffmpeg/libpostproc/postprocess.h:105

  -- * Copyright (C) 2001-2003 Michael Niedermayer (michaelni@gmx.at)
  -- *
  -- * This file is part of FFmpeg.
  -- *
  -- * FFmpeg is free software; you can redistribute it and/or modify
  -- * it under the terms of the GNU General Public License as published by
  -- * the Free Software Foundation; either version 2 of the License, or
  -- * (at your option) any later version.
  -- *
  -- * FFmpeg is distributed in the hope that it will be useful,
  -- * but WITHOUT ANY WARRANTY; without even the implied warranty of
  -- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  -- * GNU General Public License for more details.
  -- *
  -- * You should have received a copy of the GNU General Public License
  -- * along with FFmpeg; if not, write to the Free Software
  -- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
  --  

  --*
  -- * @file
  -- * @ingroup lpp
  -- * external API header
  --  

  --*
  -- * @defgroup lpp libpostproc
  -- * Video postprocessing library.
  -- *
  -- * @{
  --  

  --*
  -- * Return the LIBPOSTPROC_VERSION_INT constant.
  --  

   function postproc_version return unsigned;  -- /usr/include/ffmpeg/libpostproc/postprocess.h:42
   pragma Import (C, postproc_version, "postproc_version");

  --*
  -- * Return the libpostproc build-time configuration.
  --  

   function postproc_configuration return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libpostproc/postprocess.h:47
   pragma Import (C, postproc_configuration, "postproc_configuration");

  --*
  -- * Return the libpostproc license.
  --  

   function postproc_license return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libpostproc/postprocess.h:52
   pragma Import (C, postproc_license, "postproc_license");

   subtype pp_context is System.Address;  -- /usr/include/ffmpeg/libpostproc/postprocess.h:62

   subtype pp_mode is System.Address;  -- /usr/include/ffmpeg/libpostproc/postprocess.h:63

  --/< a simple help text
  --/< a simple help text
   pp_help : aliased Interfaces.C.char_array (size_t);  -- /usr/include/ffmpeg/libpostproc/postprocess.h:70
   pragma Import (C, pp_help, "pp_help");

   procedure pp_postprocess
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
      pict_type : int);  -- /usr/include/ffmpeg/libpostproc/postprocess.h:73
   pragma Import (C, pp_postprocess, "pp_postprocess");

  --*
  -- * Return a pp_mode or NULL if an error occurred.
  -- *
  -- * @param name    the string after "-pp" on the command line
  -- * @param quality a number from 0 to PP_QUALITY_MAX
  --  

   function pp_get_mode_by_name_and_quality (name : Interfaces.C.Strings.chars_ptr; quality : int) return System.Address;  -- /usr/include/ffmpeg/libpostproc/postprocess.h:86
   pragma Import (C, pp_get_mode_by_name_and_quality, "pp_get_mode_by_name_and_quality");

   procedure pp_free_mode (mode : System.Address);  -- /usr/include/ffmpeg/libpostproc/postprocess.h:87
   pragma Import (C, pp_free_mode, "pp_free_mode");

   function pp_get_context
     (width : int;
      height : int;
      flags : int) return System.Address;  -- /usr/include/ffmpeg/libpostproc/postprocess.h:89
   pragma Import (C, pp_get_context, "pp_get_context");

   procedure pp_free_context (ppContext : System.Address);  -- /usr/include/ffmpeg/libpostproc/postprocess.h:90
   pragma Import (C, pp_free_context, "pp_free_context");

  --*
  -- * @}
  --  

end FFMpeg.Low_Level.ffmpeg_libpostproc_postprocess_h;
