pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
limited with FFMpeg.Low_Level.ffmpeg_libavutil_opt_h;

package FFMpeg.Low_Level.ffmpeg_libavutil_log_h is

   --  arg-macro: function AV_IS_INPUT_DEVICE (category)
   --    return ((category) = AV_CLASS_CATEGORY_DEVICE_VIDEO_INPUT)  or else  ((category) = AV_CLASS_CATEGORY_DEVICE_AUDIO_INPUT)  or else  ((category) = AV_CLASS_CATEGORY_DEVICE_INPUT);
   --  arg-macro: function AV_IS_OUTPUT_DEVICE (category)
   --    return ((category) = AV_CLASS_CATEGORY_DEVICE_VIDEO_OUTPUT)  or else  ((category) = AV_CLASS_CATEGORY_DEVICE_AUDIO_OUTPUT)  or else  ((category) = AV_CLASS_CATEGORY_DEVICE_OUTPUT);
   AV_LOG_QUIET : constant := -8;  --  /usr/include/ffmpeg/libavutil/log.h:158

   AV_LOG_PANIC : constant := 0;  --  /usr/include/ffmpeg/libavutil/log.h:163

   AV_LOG_FATAL : constant := 8;  --  /usr/include/ffmpeg/libavutil/log.h:170

   AV_LOG_ERROR : constant := 16;  --  /usr/include/ffmpeg/libavutil/log.h:176

   AV_LOG_WARNING : constant := 24;  --  /usr/include/ffmpeg/libavutil/log.h:182

   AV_LOG_INFO : constant := 32;  --  /usr/include/ffmpeg/libavutil/log.h:187

   AV_LOG_VERBOSE : constant := 40;  --  /usr/include/ffmpeg/libavutil/log.h:192

   AV_LOG_DEBUG : constant := 48;  --  /usr/include/ffmpeg/libavutil/log.h:197

   AV_LOG_TRACE : constant := 56;  --  /usr/include/ffmpeg/libavutil/log.h:202
   --  unsupported macro: AV_LOG_MAX_OFFSET (AV_LOG_TRACE - AV_LOG_QUIET)
   --  arg-macro: function AV_LOG_C (x)
   --    return (x) << 8;
   --  unsupported macro: av_dlog(pctx,...) do { if (0) av_log(pctx, AV_LOG_DEBUG, __VA_ARGS__); } while (0)

   AV_LOG_SKIP_REPEATED : constant := 1;  --  /usr/include/ffmpeg/libavutil/log.h:359

   AV_LOG_PRINT_LEVEL : constant := 2;  --  /usr/include/ffmpeg/libavutil/log.h:367

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

  --/< not part of ABI/API
   subtype AVClassCategory is unsigned;
   AV_CLASS_CATEGORY_NA : constant AVClassCategory := 0;
   AV_CLASS_CATEGORY_INPUT : constant AVClassCategory := 1;
   AV_CLASS_CATEGORY_OUTPUT : constant AVClassCategory := 2;
   AV_CLASS_CATEGORY_MUXER : constant AVClassCategory := 3;
   AV_CLASS_CATEGORY_DEMUXER : constant AVClassCategory := 4;
   AV_CLASS_CATEGORY_ENCODER : constant AVClassCategory := 5;
   AV_CLASS_CATEGORY_DECODER : constant AVClassCategory := 6;
   AV_CLASS_CATEGORY_FILTER : constant AVClassCategory := 7;
   AV_CLASS_CATEGORY_BITSTREAM_FILTER : constant AVClassCategory := 8;
   AV_CLASS_CATEGORY_SWSCALER : constant AVClassCategory := 9;
   AV_CLASS_CATEGORY_SWRESAMPLER : constant AVClassCategory := 10;
   AV_CLASS_CATEGORY_DEVICE_VIDEO_OUTPUT : constant AVClassCategory := 40;
   AV_CLASS_CATEGORY_DEVICE_VIDEO_INPUT : constant AVClassCategory := 41;
   AV_CLASS_CATEGORY_DEVICE_AUDIO_OUTPUT : constant AVClassCategory := 42;
   AV_CLASS_CATEGORY_DEVICE_AUDIO_INPUT : constant AVClassCategory := 43;
   AV_CLASS_CATEGORY_DEVICE_OUTPUT : constant AVClassCategory := 44;
   AV_CLASS_CATEGORY_DEVICE_INPUT : constant AVClassCategory := 45;
   AV_CLASS_CATEGORY_NB : constant AVClassCategory := 46;  -- /usr/include/ffmpeg/libavutil/log.h:48

  --*
  -- * Describe the class of an AVClass context structure. That is an
  -- * arbitrary struct of which the first field is a pointer to an
  -- * AVClass struct (e.g. AVCodecContext, AVFormatContext etc.).
  --  

  --*
  --     * The name of the class; usually it is the same name as the
  --     * context structure type to which the AVClass is associated.
  --      

   type AVClass is record
      class_name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavutil/log.h:72
      item_name : access function  (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavutil/log.h:78
      option : access constant FFMpeg.Low_Level.ffmpeg_libavutil_opt_h.AVOption;  -- /usr/include/ffmpeg/libavutil/log.h:85
      version : aliased int;  -- /usr/include/ffmpeg/libavutil/log.h:93
      log_level_offset_offset : aliased int;  -- /usr/include/ffmpeg/libavutil/log.h:99
      parent_log_context_offset : aliased int;  -- /usr/include/ffmpeg/libavutil/log.h:108
      child_next : access function  (arg1 : System.Address; arg2 : System.Address) return System.Address;  -- /usr/include/ffmpeg/libavutil/log.h:113
      child_class_next : access function  (arg1 : access constant AVClass) return access constant AVClass;  -- /usr/include/ffmpeg/libavutil/log.h:123
      category : aliased AVClassCategory;  -- /usr/include/ffmpeg/libavutil/log.h:130
      get_category : access function  (arg1 : System.Address) return AVClassCategory;  -- /usr/include/ffmpeg/libavutil/log.h:136
      query_ranges : access function 
           (arg1 : System.Address;
            arg2 : System.Address;
            arg3 : Interfaces.C.Strings.chars_ptr;
            arg4 : int) return int;  -- /usr/include/ffmpeg/libavutil/log.h:142
   end record;
   pragma Convention (C_Pass_By_Copy, AVClass);  -- /usr/include/ffmpeg/libavutil/log.h:67

  --*
  --     * A pointer to a function which returns the name of a context
  --     * instance ctx associated with the class.
  --      

  --*
  --     * a pointer to the first option specified in the class if any or NULL
  --     *
  --     * @see av_set_default_options()
  --      

  --*
  --     * LIBAVUTIL_VERSION with which this structure was created.
  --     * This is used to allow fields to be added without requiring major
  --     * version bumps everywhere.
  --      

  --*
  --     * Offset in the structure where log_level_offset is stored.
  --     * 0 means there is no such variable
  --      

  --*
  --     * Offset in the structure where a pointer to the parent context for
  --     * logging is stored. For example a decoder could pass its AVCodecContext
  --     * to eval as such a parent context, which an av_log() implementation
  --     * could then leverage to display the parent context.
  --     * The offset can be NULL.
  --      

  --*
  --     * Return next AVOptions-enabled child or NULL
  --      

  --*
  --     * Return an AVClass corresponding to the next potential
  --     * AVOptions-enabled child.
  --     *
  --     * The difference between child_next and this is that
  --     * child_next iterates over _already existing_ objects, while
  --     * child_class_next iterates over _all possible_ children.
  --      

  --*
  --     * Category used for visualization (like color)
  --     * This is only set if the category is equal for all objects using this class.
  --     * available since version (51 << 16 | 56 << 8 | 100)
  --      

  --*
  --     * Callback to return the category.
  --     * available since version (51 << 16 | 59 << 8 | 100)
  --      

  --*
  --     * Callback to return the supported/allowed ranges.
  --     * available since version (52.12)
  --      

  --*
  -- * @addtogroup lavu_log
  -- *
  -- * @{
  -- *
  -- * @defgroup lavu_log_constants Logging Constants
  -- *
  -- * @{
  --  

  --*
  -- * Print no output.
  --  

  --*
  -- * Something went really wrong and we will crash now.
  --  

  --*
  -- * Something went wrong and recovery is not possible.
  -- * For example, no header was found for a format which depends
  -- * on headers or an illegal combination of parameters is used.
  --  

  --*
  -- * Something went wrong and cannot losslessly be recovered.
  -- * However, not all future data is affected.
  --  

  --*
  -- * Something somehow does not look correct. This may or may not
  -- * lead to problems. An example would be the use of '-vstrict -2'.
  --  

  --*
  -- * Standard information.
  --  

  --*
  -- * Detailed information.
  --  

  --*
  -- * Stuff which is only useful for libav* developers.
  --  

  --*
  -- * Extremely verbose debugging, useful for libav* development.
  --  

  --*
  -- * @}
  --  

  --*
  -- * Sets additional colors for extended debugging sessions.
  -- * @code
  --   av_log(ctx, AV_LOG_DEBUG|AV_LOG_C(134), "Message in purple\n");
  --   @endcode
  -- * Requires 256color terminal support. Uses outside debugging is not
  -- * recommended.
  --  

  --*
  -- * Send the specified message to the log if the level is less than or equal
  -- * to the current av_log_level. By default, all logging messages are sent to
  -- * stderr. This behavior can be altered by setting a different logging callback
  -- * function.
  -- * @see av_log_set_callback
  -- *
  -- * @param avcl A pointer to an arbitrary struct of which the first field is a
  -- *        pointer to an AVClass struct or NULL if general log.
  -- * @param level The importance level of the message expressed using a @ref
  -- *        lavu_log_constants "Logging Constant".
  -- * @param fmt The format string (printf-compatible) that specifies how
  -- *        subsequent arguments are converted to output.
  --  

   procedure av_log
     (avcl : System.Address;
      level : int;
      fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      );  -- /usr/include/ffmpeg/libavutil/log.h:234
   pragma Import (C, av_log, "av_log");

  --*
  -- * Send the specified message to the log if the level is less than or equal
  -- * to the current av_log_level. By default, all logging messages are sent to
  -- * stderr. This behavior can be altered by setting a different logging callback
  -- * function.
  -- * @see av_log_set_callback
  -- *
  -- * @param avcl A pointer to an arbitrary struct of which the first field is a
  -- *        pointer to an AVClass struct.
  -- * @param level The importance level of the message expressed using a @ref
  -- *        lavu_log_constants "Logging Constant".
  -- * @param fmt The format string (printf-compatible) that specifies how
  -- *        subsequent arguments are converted to output.
  -- * @param vl The arguments referenced by the format string.
  --  

   procedure av_vlog
     (avcl : System.Address;
      level : int;
      fmt : Interfaces.C.Strings.chars_ptr;
      vl : access System.Address);  -- /usr/include/ffmpeg/libavutil/log.h:252
   pragma Import (C, av_vlog, "av_vlog");

  --*
  -- * Get the current log level
  -- *
  -- * @see lavu_log_constants
  -- *
  -- * @return Current log level
  --  

   function av_log_get_level return int;  -- /usr/include/ffmpeg/libavutil/log.h:261
   pragma Import (C, av_log_get_level, "av_log_get_level");

  --*
  -- * Set the log level
  -- *
  -- * @see lavu_log_constants
  -- *
  -- * @param level Logging level
  --  

   procedure av_log_set_level (level : int);  -- /usr/include/ffmpeg/libavutil/log.h:270
   pragma Import (C, av_log_set_level, "av_log_set_level");

  --*
  -- * Set the logging callback
  -- *
  -- * @note The callback must be thread safe, even if the application does not use
  -- *       threads itself as some codecs are multithreaded.
  -- *
  -- * @see av_log_default_callback
  -- *
  -- * @param callback A logging function with a compatible signature.
  --  

   procedure av_log_set_callback (callback : access procedure 
        (arg1 : System.Address;
         arg2 : int;
         arg3 : Interfaces.C.Strings.chars_ptr;
         arg4 : access System.Address));  -- /usr/include/ffmpeg/libavutil/log.h:282
   pragma Import (C, av_log_set_callback, "av_log_set_callback");

  --*
  -- * Default logging callback
  -- *
  -- * It prints the message to stderr, optionally colorizing it.
  -- *
  -- * @param avcl A pointer to an arbitrary struct of which the first field is a
  -- *        pointer to an AVClass struct.
  -- * @param level The importance level of the message expressed using a @ref
  -- *        lavu_log_constants "Logging Constant".
  -- * @param fmt The format string (printf-compatible) that specifies how
  -- *        subsequent arguments are converted to output.
  -- * @param vl The arguments referenced by the format string.
  --  

   procedure av_log_default_callback
     (avcl : System.Address;
      level : int;
      fmt : Interfaces.C.Strings.chars_ptr;
      vl : access System.Address);  -- /usr/include/ffmpeg/libavutil/log.h:297
   pragma Import (C, av_log_default_callback, "av_log_default_callback");

  --*
  -- * Return the context name
  -- *
  -- * @param  ctx The AVClass context
  -- *
  -- * @return The AVClass class_name
  --  

   function av_default_item_name (ctx : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavutil/log.h:307
   pragma Import (C, av_default_item_name, "av_default_item_name");

   function av_default_get_category (ptr : System.Address) return AVClassCategory;  -- /usr/include/ffmpeg/libavutil/log.h:308
   pragma Import (C, av_default_get_category, "av_default_get_category");

  --*
  -- * Format a line of log the same way as the default callback.
  -- * @param line          buffer to receive the formatted line
  -- * @param line_size     size of the buffer
  -- * @param print_prefix  used to store whether the prefix must be printed;
  -- *                      must point to a persistent integer initially set to 1
  --  

   procedure av_log_format_line
     (ptr : System.Address;
      level : int;
      fmt : Interfaces.C.Strings.chars_ptr;
      vl : access System.Address;
      line : Interfaces.C.Strings.chars_ptr;
      line_size : int;
      print_prefix : access int);  -- /usr/include/ffmpeg/libavutil/log.h:317
   pragma Import (C, av_log_format_line, "av_log_format_line");

  --*
  -- * Format a line of log the same way as the default callback.
  -- * @param line          buffer to receive the formatted line;
  -- *                      may be NULL if line_size is 0
  -- * @param line_size     size of the buffer; at most line_size-1 characters will
  -- *                      be written to the buffer, plus one null terminator
  -- * @param print_prefix  used to store whether the prefix must be printed;
  -- *                      must point to a persistent integer initially set to 1
  -- * @return Returns a negative value if an error occurred, otherwise returns
  -- *         the number of characters that would have been written for a
  -- *         sufficiently large buffer, not including the terminating null
  -- *         character. If the return value is not less than line_size, it means
  -- *         that the log message was truncated to fit the buffer.
  --  

   function av_log_format_line2
     (ptr : System.Address;
      level : int;
      fmt : Interfaces.C.Strings.chars_ptr;
      vl : access System.Address;
      line : Interfaces.C.Strings.chars_ptr;
      line_size : int;
      print_prefix : access int) return int;  -- /usr/include/ffmpeg/libavutil/log.h:334
   pragma Import (C, av_log_format_line2, "av_log_format_line2");

  --*
  -- * av_dlog macros
  -- * @deprecated unused
  -- * Useful to print debug messages that shouldn't get compiled in normally.
  --  

  --*
  -- * Skip repeated messages, this requires the user app to use av_log() instead of
  -- * (f)printf as the 2 would otherwise interfere and lead to
  -- * "Last message repeated x times" messages below (f)printf messages with some
  -- * bad luck.
  -- * Also to receive the last, "last repeated" line if any, the user app must
  -- * call av_log(NULL, AV_LOG_QUIET, "%s", ""); at the end
  --  

  --*
  -- * Include the log severity in messages originating from codecs.
  -- *
  -- * Results in messages such as:
  -- * [rawvideo @ 0xDEADBEEF] [error] encode did not produce valid pts
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

  --/< not part of ABI/API
  --*
  -- * Describe the class of an AVClass context structure. That is an
  -- * arbitrary struct of which the first field is a pointer to an
  -- * AVClass struct (e.g. AVCodecContext, AVFormatContext etc.).
  --  

  --*
  --     * The name of the class; usually it is the same name as the
  --     * context structure type to which the AVClass is associated.
  --      

  --*
  --     * A pointer to a function which returns the name of a context
  --     * instance ctx associated with the class.
  --      

  --*
  --     * a pointer to the first option specified in the class if any or NULL
  --     *
  --     * @see av_set_default_options()
  --      

  --*
  --     * LIBAVUTIL_VERSION with which this structure was created.
  --     * This is used to allow fields to be added without requiring major
  --     * version bumps everywhere.
  --      

  --*
  --     * Offset in the structure where log_level_offset is stored.
  --     * 0 means there is no such variable
  --      

  --*
  --     * Offset in the structure where a pointer to the parent context for
  --     * logging is stored. For example a decoder could pass its AVCodecContext
  --     * to eval as such a parent context, which an av_log() implementation
  --     * could then leverage to display the parent context.
  --     * The offset can be NULL.
  --      

  --*
  --     * Return next AVOptions-enabled child or NULL
  --      

  --*
  --     * Return an AVClass corresponding to the next potential
  --     * AVOptions-enabled child.
  --     *
  --     * The difference between child_next and this is that
  --     * child_next iterates over _already existing_ objects, while
  --     * child_class_next iterates over _all possible_ children.
  --      

  --*
  --     * Category used for visualization (like color)
  --     * This is only set if the category is equal for all objects using this class.
  --     * available since version (51 << 16 | 56 << 8 | 100)
  --      

  --*
  --     * Callback to return the category.
  --     * available since version (51 << 16 | 59 << 8 | 100)
  --      

  --*
  --     * Callback to return the supported/allowed ranges.
  --     * available since version (52.12)
  --      

  --*
  -- * @addtogroup lavu_log
  -- *
  -- * @{
  -- *
  -- * @defgroup lavu_log_constants Logging Constants
  -- *
  -- * @{
  --  

  --*
  -- * Print no output.
  --  

  --*
  -- * Something went really wrong and we will crash now.
  --  

  --*
  -- * Something went wrong and recovery is not possible.
  -- * For example, no header was found for a format which depends
  -- * on headers or an illegal combination of parameters is used.
  --  

  --*
  -- * Something went wrong and cannot losslessly be recovered.
  -- * However, not all future data is affected.
  --  

  --*
  -- * Something somehow does not look correct. This may or may not
  -- * lead to problems. An example would be the use of '-vstrict -2'.
  --  

  --*
  -- * Standard information.
  --  

  --*
  -- * Detailed information.
  --  

  --*
  -- * Stuff which is only useful for libav* developers.
  --  

  --*
  -- * Extremely verbose debugging, useful for libav* development.
  --  

  --*
  -- * @}
  --  

  --*
  -- * Sets additional colors for extended debugging sessions.
  -- * @code
  --   av_log(ctx, AV_LOG_DEBUG|AV_LOG_C(134), "Message in purple\n");
  --   @endcode
  -- * Requires 256color terminal support. Uses outside debugging is not
  -- * recommended.
  --  

  --*
  -- * Send the specified message to the log if the level is less than or equal
  -- * to the current av_log_level. By default, all logging messages are sent to
  -- * stderr. This behavior can be altered by setting a different logging callback
  -- * function.
  -- * @see av_log_set_callback
  -- *
  -- * @param avcl A pointer to an arbitrary struct of which the first field is a
  -- *        pointer to an AVClass struct or NULL if general log.
  -- * @param level The importance level of the message expressed using a @ref
  -- *        lavu_log_constants "Logging Constant".
  -- * @param fmt The format string (printf-compatible) that specifies how
  -- *        subsequent arguments are converted to output.
  --  

  --*
  -- * Send the specified message to the log if the level is less than or equal
  -- * to the current av_log_level. By default, all logging messages are sent to
  -- * stderr. This behavior can be altered by setting a different logging callback
  -- * function.
  -- * @see av_log_set_callback
  -- *
  -- * @param avcl A pointer to an arbitrary struct of which the first field is a
  -- *        pointer to an AVClass struct.
  -- * @param level The importance level of the message expressed using a @ref
  -- *        lavu_log_constants "Logging Constant".
  -- * @param fmt The format string (printf-compatible) that specifies how
  -- *        subsequent arguments are converted to output.
  -- * @param vl The arguments referenced by the format string.
  --  

  --*
  -- * Get the current log level
  -- *
  -- * @see lavu_log_constants
  -- *
  -- * @return Current log level
  --  

  --*
  -- * Set the log level
  -- *
  -- * @see lavu_log_constants
  -- *
  -- * @param level Logging level
  --  

  --*
  -- * Set the logging callback
  -- *
  -- * @note The callback must be thread safe, even if the application does not use
  -- *       threads itself as some codecs are multithreaded.
  -- *
  -- * @see av_log_default_callback
  -- *
  -- * @param callback A logging function with a compatible signature.
  --  

  --*
  -- * Default logging callback
  -- *
  -- * It prints the message to stderr, optionally colorizing it.
  -- *
  -- * @param avcl A pointer to an arbitrary struct of which the first field is a
  -- *        pointer to an AVClass struct.
  -- * @param level The importance level of the message expressed using a @ref
  -- *        lavu_log_constants "Logging Constant".
  -- * @param fmt The format string (printf-compatible) that specifies how
  -- *        subsequent arguments are converted to output.
  -- * @param vl The arguments referenced by the format string.
  --  

  --*
  -- * Return the context name
  -- *
  -- * @param  ctx The AVClass context
  -- *
  -- * @return The AVClass class_name
  --  

  --*
  -- * Format a line of log the same way as the default callback.
  -- * @param line          buffer to receive the formatted line
  -- * @param line_size     size of the buffer
  -- * @param print_prefix  used to store whether the prefix must be printed;
  -- *                      must point to a persistent integer initially set to 1
  --  

  --*
  -- * Format a line of log the same way as the default callback.
  -- * @param line          buffer to receive the formatted line;
  -- *                      may be NULL if line_size is 0
  -- * @param line_size     size of the buffer; at most line_size-1 characters will
  -- *                      be written to the buffer, plus one null terminator
  -- * @param print_prefix  used to store whether the prefix must be printed;
  -- *                      must point to a persistent integer initially set to 1
  -- * @return Returns a negative value if an error occurred, otherwise returns
  -- *         the number of characters that would have been written for a
  -- *         sufficiently large buffer, not including the terminating null
  -- *         character. If the return value is not less than line_size, it means
  -- *         that the log message was truncated to fit the buffer.
  --  

  --*
  -- * av_dlog macros
  -- * @deprecated unused
  -- * Useful to print debug messages that shouldn't get compiled in normally.
  --  

  --*
  -- * Skip repeated messages, this requires the user app to use av_log() instead of
  -- * (f)printf as the 2 would otherwise interfere and lead to
  -- * "Last message repeated x times" messages below (f)printf messages with some
  -- * bad luck.
  -- * Also to receive the last, "last repeated" line if any, the user app must
  -- * call av_log(NULL, AV_LOG_QUIET, "%s", ""); at the end
  --  

  --*
  -- * Include the log severity in messages originating from codecs.
  -- *
  -- * Results in messages such as:
  -- * [rawvideo @ 0xDEADBEEF] [error] encode did not produce valid pts
  --  

   procedure av_log_set_flags (arg : int);  -- /usr/include/ffmpeg/libavutil/log.h:369
   pragma Import (C, av_log_set_flags, "av_log_set_flags");

   function av_log_get_flags return int;  -- /usr/include/ffmpeg/libavutil/log.h:370
   pragma Import (C, av_log_get_flags, "av_log_get_flags");

  --*
  -- * @}
  --  

end FFMpeg.Low_Level.ffmpeg_libavutil_log_h;
