pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;

with Interfaces.C_Streams;
with FFMpeg.Low_Level.ffmpeg_libavutil_rational_h;

package FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h is

   FF_LAMBDA_SHIFT : constant := 7;  --  /usr/include/ffmpeg/libavutil/avutil.h:225
   --  unsupported macro: FF_LAMBDA_SCALE (1<<FF_LAMBDA_SHIFT)

   FF_QP2LAMBDA : constant := 118;  --  /usr/include/ffmpeg/libavutil/avutil.h:227
   FF_LAMBDA_MAX : constant := (256*128-1);  --  /usr/include/ffmpeg/libavutil/avutil.h:228
   --  unsupported macro: FF_QUALITY_SCALE FF_LAMBDA_SCALE
   --  unsupported macro: AV_NOPTS_VALUE ((int64_t)UINT64_C(0x8000000000000000))

   AV_TIME_BASE : constant := 1000000;  --  /usr/include/ffmpeg/libavutil/avutil.h:254
   --  unsupported macro: AV_TIME_BASE_Q (AVRational){1, AV_TIME_BASE}
   --  arg-macro: procedure av_int_list_length (list, term)
   --    av_int_list_length_for_size(sizeof(*(list)), list, term)

   AV_FOURCC_MAX_STRING_SIZE : constant := 32;  --  /usr/include/ffmpeg/libavutil/avutil.h:346
   --  arg-macro: procedure av_fourcc2str (fourcc)
   --    av_fourcc_make_string((char(AV_FOURCC_MAX_STRING_SIZE)){0}, fourcc)

  -- * copyright (c) 2006 Michael Niedermayer <michaelni@gmx.at>
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
  -- * @ingroup lavu
  -- * Convenience header that includes @ref lavu "libavutil"'s core.
  --  

  --*
  -- * @mainpage
  -- *
  -- * @section ffmpeg_intro Introduction
  -- *
  -- * This document describes the usage of the different libraries
  -- * provided by FFmpeg.
  -- *
  -- * @li @ref libavc "libavcodec" encoding/decoding library
  -- * @li @ref lavfi "libavfilter" graph-based frame editing library
  -- * @li @ref libavf "libavformat" I/O and muxing/demuxing library
  -- * @li @ref lavd "libavdevice" special devices muxing/demuxing library
  -- * @li @ref lavu "libavutil" common utility library
  -- * @li @ref lswr "libswresample" audio resampling, format conversion and mixing
  -- * @li @ref lpp  "libpostproc" post processing library
  -- * @li @ref libsws "libswscale" color conversion and scaling library
  -- *
  -- * @section ffmpeg_versioning Versioning and compatibility
  -- *
  -- * Each of the FFmpeg libraries contains a version.h header, which defines a
  -- * major, minor and micro version number with the
  -- * <em>LIBRARYNAME_VERSION_{MAJOR,MINOR,MICRO}</em> macros. The major version
  -- * number is incremented with backward incompatible changes - e.g. removing
  -- * parts of the public API, reordering public struct members, etc. The minor
  -- * version number is incremented for backward compatible API changes or major
  -- * new features - e.g. adding a new public function or a new decoder. The micro
  -- * version number is incremented for smaller changes that a calling program
  -- * might still want to check for - e.g. changing behavior in a previously
  -- * unspecified situation.
  -- *
  -- * FFmpeg guarantees backward API and ABI compatibility for each library as long
  -- * as its major version number is unchanged. This means that no public symbols
  -- * will be removed or renamed. Types and names of the public struct members and
  -- * values of public macros and enums will remain the same (unless they were
  -- * explicitly declared as not part of the public API). Documented behavior will
  -- * not change.
  -- *
  -- * In other words, any correct program that works with a given FFmpeg snapshot
  -- * should work just as well without any changes with any later snapshot with the
  -- * same major versions. This applies to both rebuilding the program against new
  -- * FFmpeg versions or to replacing the dynamic FFmpeg libraries that a program
  -- * links against.
  -- *
  -- * However, new public symbols may be added and new members may be appended to
  -- * public structs whose size is not part of public ABI (most public structs in
  -- * FFmpeg). New macros and enum values may be added. Behavior in undocumented
  -- * situations may change slightly (and be documented). All those are accompanied
  -- * by an entry in doc/APIchanges and incrementing either the minor or micro
  -- * version number.
  --  

  --*
  -- * @defgroup lavu libavutil
  -- * Common code shared across all FFmpeg libraries.
  -- *
  -- * @note
  -- * libavutil is designed to be modular. In most cases, in order to use the
  -- * functions provided by one component of libavutil you must explicitly include
  -- * the specific header containing that feature. If you are only using
  -- * media-related components, you could simply include libavutil/avutil.h, which
  -- * brings in most of the "core" components.
  -- *
  -- * @{
  -- *
  -- * @defgroup lavu_crypto Crypto and Hashing
  -- *
  -- * @{
  -- * @}
  -- *
  -- * @defgroup lavu_math Mathematics
  -- * @{
  -- *
  -- * @}
  -- *
  -- * @defgroup lavu_string String Manipulation
  -- *
  -- * @{
  -- *
  -- * @}
  -- *
  -- * @defgroup lavu_mem Memory Management
  -- *
  -- * @{
  -- *
  -- * @}
  -- *
  -- * @defgroup lavu_data Data Structures
  -- * @{
  -- *
  -- * @}
  -- *
  -- * @defgroup lavu_video Video related
  -- *
  -- * @{
  -- *
  -- * @}
  -- *
  -- * @defgroup lavu_audio Audio related
  -- *
  -- * @{
  -- *
  -- * @}
  -- *
  -- * @defgroup lavu_error Error Codes
  -- *
  -- * @{
  -- *
  -- * @}
  -- *
  -- * @defgroup lavu_log Logging Facility
  -- *
  -- * @{
  -- *
  -- * @}
  -- *
  -- * @defgroup lavu_misc Other
  -- *
  -- * @{
  -- *
  -- * @defgroup preproc_misc Preprocessor String Macros
  -- *
  -- * @{
  -- *
  -- * @}
  -- *
  -- * @defgroup version_utils Library Version Macros
  -- *
  -- * @{
  -- *
  -- * @}
  --  

  --*
  -- * @addtogroup lavu_ver
  -- * @{
  --  

  --*
  -- * Return the LIBAVUTIL_VERSION_INT constant.
  --  

   function avutil_version return unsigned;  -- /usr/include/ffmpeg/libavutil/avutil.h:171
   pragma Import (C, avutil_version, "avutil_version");

  --*
  -- * Return an informative version string. This usually is the actual release
  -- * version number or a git commit description. This string has no fixed format
  -- * and can change any time. It should never be parsed by code.
  --  

   function av_version_info return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavutil/avutil.h:178
   pragma Import (C, av_version_info, "av_version_info");

  --*
  -- * Return the libavutil build-time configuration.
  --  

   function avutil_configuration return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavutil/avutil.h:183
   pragma Import (C, avutil_configuration, "avutil_configuration");

  --*
  -- * Return the libavutil license.
  --  

   function avutil_license return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavutil/avutil.h:188
   pragma Import (C, avutil_license, "avutil_license");

  --*
  -- * @}
  --  

  --*
  -- * @addtogroup lavu_media Media Type
  -- * @brief Media Type
  --  

   subtype AVMediaType is int;
   AVMEDIA_TYPE_UNKNOWN : constant AVMediaType := -1;
   AVMEDIA_TYPE_VIDEO : constant AVMediaType := 0;
   AVMEDIA_TYPE_AUDIO : constant AVMediaType := 1;
   AVMEDIA_TYPE_DATA : constant AVMediaType := 2;
   AVMEDIA_TYPE_SUBTITLE : constant AVMediaType := 3;
   AVMEDIA_TYPE_ATTACHMENT : constant AVMediaType := 4;
   AVMEDIA_TYPE_NB : constant AVMediaType := 5;  -- /usr/include/ffmpeg/libavutil/avutil.h:199

  --/< Usually treated as AVMEDIA_TYPE_DATA
  --/< Opaque data information usually continuous
  --/< Opaque data information usually sparse
  --*
  -- * Return a string describing the media_type enum, NULL if media_type
  -- * is unknown.
  --  

   function av_get_media_type_string (media_type : AVMediaType) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavutil/avutil.h:213
   pragma Import (C, av_get_media_type_string, "av_get_media_type_string");

  --*
  -- * @defgroup lavu_const Constants
  -- * @{
  -- *
  -- * @defgroup lavu_enc Encoding specific
  -- *
  -- * @note those definition should move to avcodec
  -- * @{
  --  

  --*
  -- * @}
  -- * @defgroup lavu_time Timestamp specific
  -- *
  -- * FFmpeg internal timebase and timestamp definitions
  -- *
  -- * @{
  --  

  --*
  -- * @brief Undefined timestamp value
  -- *
  -- * Usually reported by demuxer that work on containers that do not provide
  -- * either pts or dts.
  --  

  --*
  -- * Internal time base represented as integer
  --  

  --*
  -- * Internal time base represented as fractional value
  --  

  --*
  -- * @}
  -- * @}
  -- * @defgroup lavu_picture Image related
  -- *
  -- * AVPicture types, pixel formats and basic image planes manipulation.
  -- *
  -- * @{
  --  

   type AVPictureType is 
     (AV_PICTURE_TYPE_NONE,
      AV_PICTURE_TYPE_I,
      AV_PICTURE_TYPE_P,
      AV_PICTURE_TYPE_B,
      AV_PICTURE_TYPE_S,
      AV_PICTURE_TYPE_SI,
      AV_PICTURE_TYPE_SP,
      AV_PICTURE_TYPE_BI);
   pragma Convention (C, AVPictureType);  -- /usr/include/ffmpeg/libavutil/avutil.h:272

  --/< Undefined
  --/< Intra
  --/< Predicted
  --/< Bi-dir predicted
  --/< S(GMC)-VOP MPEG-4
  --/< Switching Intra
  --/< Switching Predicted
  --/< BI type
  --*
  -- * Return a single letter to describe the given picture type
  -- * pict_type.
  -- *
  -- * @param[in] pict_type the picture type @return a single character
  -- * representing the picture type, '?' if pict_type is unknown
  --  

   function av_get_picture_type_char (pict_type : AVPictureType) return char;  -- /usr/include/ffmpeg/libavutil/avutil.h:290
   pragma Import (C, av_get_picture_type_char, "av_get_picture_type_char");

  --*
  -- * @}
  --  

  --*
  -- * Return x default pointer in case p is NULL.
  --  

   function av_x_if_null (p : System.Address; x : System.Address) return System.Address;  -- /usr/include/ffmpeg/libavutil/avutil.h:308
   pragma Import (C, av_x_if_null, "av_x_if_null");

  --*
  -- * Compute the length of an integer list.
  -- *
  -- * @param elsize  size in bytes of each list element (only 1, 2, 4 or 8)
  -- * @param term    list terminator (usually 0 or -1)
  -- * @param list    pointer to the list
  -- * @return  length of the list, in elements, not counting the terminator
  --  

   function av_int_list_length_for_size
     (elsize : unsigned;
      list : System.Address;
      term : Interfaces.Unsigned_64) return unsigned;  -- /usr/include/ffmpeg/libavutil/avutil.h:321
   pragma Import (C, av_int_list_length_for_size, "av_int_list_length_for_size");

  --*
  -- * Compute the length of an integer list.
  -- *
  -- * @param term  list terminator (usually 0 or -1)
  -- * @param list  pointer to the list
  -- * @return  length of the list, in elements, not counting the terminator
  --  

  --*
  -- * Open a file using a UTF-8 filename.
  -- * The API of this function matches POSIX fopen(), errors are returned through
  -- * errno.
  --  

   function av_fopen_utf8 (path : Interfaces.C.Strings.chars_ptr; mode : Interfaces.C.Strings.chars_ptr) return access Interfaces.C_Streams.FILEs;  -- /usr/include/ffmpeg/libavutil/avutil.h:339
   pragma Import (C, av_fopen_utf8, "av_fopen_utf8");

  --*
  -- * Return the fractional representation of the internal time base.
  --  

   function av_get_time_base_q return FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavutil/avutil.h:344
   pragma Import (C, av_get_time_base_q, "av_get_time_base_q");

  --*
  -- * Fill the provided buffer with a string containing a FourCC (four-character
  -- * code) representation.
  -- *
  -- * @param buf    a buffer with size in bytes of at least AV_FOURCC_MAX_STRING_SIZE
  -- * @param fourcc the fourcc to represent
  -- * @return the buffer in input
  --  

  -- * copyright (c) 2006 Michael Niedermayer <michaelni@gmx.at>
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

  -- * copyright (c) 2006 Michael Niedermayer <michaelni@gmx.at>
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
  -- * @ingroup lavu
  -- * Convenience header that includes @ref lavu "libavutil"'s core.
  --  

  --*
  -- * @mainpage
  -- *
  -- * @section ffmpeg_intro Introduction
  -- *
  -- * This document describes the usage of the different libraries
  -- * provided by FFmpeg.
  -- *
  -- * @li @ref libavc "libavcodec" encoding/decoding library
  -- * @li @ref lavfi "libavfilter" graph-based frame editing library
  -- * @li @ref libavf "libavformat" I/O and muxing/demuxing library
  -- * @li @ref lavd "libavdevice" special devices muxing/demuxing library
  -- * @li @ref lavu "libavutil" common utility library
  -- * @li @ref lswr "libswresample" audio resampling, format conversion and mixing
  -- * @li @ref lpp  "libpostproc" post processing library
  -- * @li @ref libsws "libswscale" color conversion and scaling library
  -- *
  -- * @section ffmpeg_versioning Versioning and compatibility
  -- *
  -- * Each of the FFmpeg libraries contains a version.h header, which defines a
  -- * major, minor and micro version number with the
  -- * <em>LIBRARYNAME_VERSION_{MAJOR,MINOR,MICRO}</em> macros. The major version
  -- * number is incremented with backward incompatible changes - e.g. removing
  -- * parts of the public API, reordering public struct members, etc. The minor
  -- * version number is incremented for backward compatible API changes or major
  -- * new features - e.g. adding a new public function or a new decoder. The micro
  -- * version number is incremented for smaller changes that a calling program
  -- * might still want to check for - e.g. changing behavior in a previously
  -- * unspecified situation.
  -- *
  -- * FFmpeg guarantees backward API and ABI compatibility for each library as long
  -- * as its major version number is unchanged. This means that no public symbols
  -- * will be removed or renamed. Types and names of the public struct members and
  -- * values of public macros and enums will remain the same (unless they were
  -- * explicitly declared as not part of the public API). Documented behavior will
  -- * not change.
  -- *
  -- * In other words, any correct program that works with a given FFmpeg snapshot
  -- * should work just as well without any changes with any later snapshot with the
  -- * same major versions. This applies to both rebuilding the program against new
  -- * FFmpeg versions or to replacing the dynamic FFmpeg libraries that a program
  -- * links against.
  -- *
  -- * However, new public symbols may be added and new members may be appended to
  -- * public structs whose size is not part of public ABI (most public structs in
  -- * FFmpeg). New macros and enum values may be added. Behavior in undocumented
  -- * situations may change slightly (and be documented). All those are accompanied
  -- * by an entry in doc/APIchanges and incrementing either the minor or micro
  -- * version number.
  --  

  --*
  -- * @defgroup lavu libavutil
  -- * Common code shared across all FFmpeg libraries.
  -- *
  -- * @note
  -- * libavutil is designed to be modular. In most cases, in order to use the
  -- * functions provided by one component of libavutil you must explicitly include
  -- * the specific header containing that feature. If you are only using
  -- * media-related components, you could simply include libavutil/avutil.h, which
  -- * brings in most of the "core" components.
  -- *
  -- * @{
  -- *
  -- * @defgroup lavu_crypto Crypto and Hashing
  -- *
  -- * @{
  -- * @}
  -- *
  -- * @defgroup lavu_math Mathematics
  -- * @{
  -- *
  -- * @}
  -- *
  -- * @defgroup lavu_string String Manipulation
  -- *
  -- * @{
  -- *
  -- * @}
  -- *
  -- * @defgroup lavu_mem Memory Management
  -- *
  -- * @{
  -- *
  -- * @}
  -- *
  -- * @defgroup lavu_data Data Structures
  -- * @{
  -- *
  -- * @}
  -- *
  -- * @defgroup lavu_video Video related
  -- *
  -- * @{
  -- *
  -- * @}
  -- *
  -- * @defgroup lavu_audio Audio related
  -- *
  -- * @{
  -- *
  -- * @}
  -- *
  -- * @defgroup lavu_error Error Codes
  -- *
  -- * @{
  -- *
  -- * @}
  -- *
  -- * @defgroup lavu_log Logging Facility
  -- *
  -- * @{
  -- *
  -- * @}
  -- *
  -- * @defgroup lavu_misc Other
  -- *
  -- * @{
  -- *
  -- * @defgroup preproc_misc Preprocessor String Macros
  -- *
  -- * @{
  -- *
  -- * @}
  -- *
  -- * @defgroup version_utils Library Version Macros
  -- *
  -- * @{
  -- *
  -- * @}
  --  

  --*
  -- * @addtogroup lavu_ver
  -- * @{
  --  

  --*
  -- * Return the LIBAVUTIL_VERSION_INT constant.
  --  

  --*
  -- * Return an informative version string. This usually is the actual release
  -- * version number or a git commit description. This string has no fixed format
  -- * and can change any time. It should never be parsed by code.
  --  

  --*
  -- * Return the libavutil build-time configuration.
  --  

  --*
  -- * Return the libavutil license.
  --  

  --*
  -- * @}
  --  

  --*
  -- * @addtogroup lavu_media Media Type
  -- * @brief Media Type
  --  

  --/< Usually treated as AVMEDIA_TYPE_DATA
  --/< Opaque data information usually continuous
  --/< Opaque data information usually sparse
  --*
  -- * Return a string describing the media_type enum, NULL if media_type
  -- * is unknown.
  --  

  --*
  -- * @defgroup lavu_const Constants
  -- * @{
  -- *
  -- * @defgroup lavu_enc Encoding specific
  -- *
  -- * @note those definition should move to avcodec
  -- * @{
  --  

  --*
  -- * @}
  -- * @defgroup lavu_time Timestamp specific
  -- *
  -- * FFmpeg internal timebase and timestamp definitions
  -- *
  -- * @{
  --  

  --*
  -- * @brief Undefined timestamp value
  -- *
  -- * Usually reported by demuxer that work on containers that do not provide
  -- * either pts or dts.
  --  

  --*
  -- * Internal time base represented as integer
  --  

  --*
  -- * Internal time base represented as fractional value
  --  

  --*
  -- * @}
  -- * @}
  -- * @defgroup lavu_picture Image related
  -- *
  -- * AVPicture types, pixel formats and basic image planes manipulation.
  -- *
  -- * @{
  --  

  --/< Undefined
  --/< Intra
  --/< Predicted
  --/< Bi-dir predicted
  --/< S(GMC)-VOP MPEG-4
  --/< Switching Intra
  --/< Switching Predicted
  --/< BI type
  --*
  -- * Return a single letter to describe the given picture type
  -- * pict_type.
  -- *
  -- * @param[in] pict_type the picture type @return a single character
  -- * representing the picture type, '?' if pict_type is unknown
  --  

  --*
  -- * @}
  --  

  --*
  -- * Return x default pointer in case p is NULL.
  --  

  --*
  -- * Compute the length of an integer list.
  -- *
  -- * @param elsize  size in bytes of each list element (only 1, 2, 4 or 8)
  -- * @param term    list terminator (usually 0 or -1)
  -- * @param list    pointer to the list
  -- * @return  length of the list, in elements, not counting the terminator
  --  

  --*
  -- * Compute the length of an integer list.
  -- *
  -- * @param term  list terminator (usually 0 or -1)
  -- * @param list  pointer to the list
  -- * @return  length of the list, in elements, not counting the terminator
  --  

  --*
  -- * Open a file using a UTF-8 filename.
  -- * The API of this function matches POSIX fopen(), errors are returned through
  -- * errno.
  --  

  --*
  -- * Return the fractional representation of the internal time base.
  --  

  --*
  -- * Fill the provided buffer with a string containing a FourCC (four-character
  -- * code) representation.
  -- *
  -- * @param buf    a buffer with size in bytes of at least AV_FOURCC_MAX_STRING_SIZE
  -- * @param fourcc the fourcc to represent
  -- * @return the buffer in input
  --  

   function av_fourcc_make_string (buf : Interfaces.C.Strings.chars_ptr; fourcc : Interfaces.Unsigned_32) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavutil/avutil.h:358
   pragma Import (C, av_fourcc_make_string, "av_fourcc_make_string");

  --*
  -- * @}
  -- * @}
  --  

end FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h;
