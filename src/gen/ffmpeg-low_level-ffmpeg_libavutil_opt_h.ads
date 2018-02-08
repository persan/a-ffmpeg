pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;
with FFMpeg.Low_Level.ffmpeg_libavutil_rational_h;
with System;
limited with FFMpeg.Low_Level.ffmpeg_libavutil_log_h;

with FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h;
with FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h;

package FFMpeg.Low_Level.ffmpeg_libavutil_opt_h is

   AV_OPT_FLAG_ENCODING_PARAM : constant := 1;  --  /usr/include/ffmpeg/libavutil/opt.h:276
   AV_OPT_FLAG_DECODING_PARAM : constant := 2;  --  /usr/include/ffmpeg/libavutil/opt.h:277

   AV_OPT_FLAG_METADATA : constant := 4;  --  /usr/include/ffmpeg/libavutil/opt.h:279

   AV_OPT_FLAG_AUDIO_PARAM : constant := 8;  --  /usr/include/ffmpeg/libavutil/opt.h:281
   AV_OPT_FLAG_VIDEO_PARAM : constant := 16;  --  /usr/include/ffmpeg/libavutil/opt.h:282
   AV_OPT_FLAG_SUBTITLE_PARAM : constant := 32;  --  /usr/include/ffmpeg/libavutil/opt.h:283

   AV_OPT_FLAG_EXPORT : constant := 64;  --  /usr/include/ffmpeg/libavutil/opt.h:287

   AV_OPT_FLAG_READONLY : constant := 128;  --  /usr/include/ffmpeg/libavutil/opt.h:292
   AV_OPT_FLAG_FILTERING_PARAM : constant := (2**16);  --  /usr/include/ffmpeg/libavutil/opt.h:293

   AV_OPT_SEARCH_CHILDREN : constant := (2 ** 0);  --  /usr/include/ffmpeg/libavutil/opt.h:557

   AV_OPT_SEARCH_FAKE_OBJ : constant := (2 ** 1);  --  /usr/include/ffmpeg/libavutil/opt.h:565

   AV_OPT_ALLOW_NULL : constant := (2 ** 2);  --  /usr/include/ffmpeg/libavutil/opt.h:571

   AV_OPT_MULTI_COMPONENT_RANGE : constant := (2 ** 12);  --  /usr/include/ffmpeg/libavutil/opt.h:578
   --  arg-macro: function av_opt_set_int_list (obj, name, val, term, flags)
   --    return av_int_list_length(val, term) > INT_MAX / sizeof(*(val)) ? AVERROR(EINVAL) : av_opt_set_bin(obj, name, (const uint8_t *)(val), av_int_list_length(val, term) * sizeof(*(val)), flags);

   AV_OPT_SERIALIZE_SKIP_DEFAULTS : constant := 16#00000001#;  --  /usr/include/ffmpeg/libavutil/opt.h:839
   AV_OPT_SERIALIZE_OPT_FLAGS_EXACT : constant := 16#00000002#;  --  /usr/include/ffmpeg/libavutil/opt.h:840

  -- * AVOptions
  -- * copyright (c) 2005 Michael Niedermayer <michaelni@gmx.at>
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
  -- * AVOptions
  --  

  --*
  -- * @defgroup avoptions AVOptions
  -- * @ingroup lavu_data
  -- * @{
  -- * AVOptions provide a generic system to declare options on arbitrary structs
  -- * ("objects"). An option can have a help text, a type and a range of possible
  -- * values. Options may then be enumerated, read and written to.
  -- *
  -- * @section avoptions_implement Implementing AVOptions
  -- * This section describes how to add AVOptions capabilities to a struct.
  -- *
  -- * All AVOptions-related information is stored in an AVClass. Therefore
  -- * the first member of the struct should be a pointer to an AVClass describing it.
  -- * The option field of the AVClass must be set to a NULL-terminated static array
  -- * of AVOptions. Each AVOption must have a non-empty name, a type, a default
  -- * value and for number-type AVOptions also a range of allowed values. It must
  -- * also declare an offset in bytes from the start of the struct, where the field
  -- * associated with this AVOption is located. Other fields in the AVOption struct
  -- * should also be set when applicable, but are not required.
  -- *
  -- * The following example illustrates an AVOptions-enabled struct:
  -- * @code
  -- * typedef struct test_struct {
  -- *     const AVClass *class;
  -- *     int      int_opt;
  -- *     char    *str_opt;
  -- *     uint8_t *bin_opt;
  -- *     int      bin_len;
  -- * } test_struct;
  -- *
  -- * static const AVOption test_options[] = {
  -- *   { "test_int", "This is a test option of int type.", offsetof(test_struct, int_opt),
  -- *     AV_OPT_TYPE_INT, { .i64 = -1 }, INT_MIN, INT_MAX },
  -- *   { "test_str", "This is a test option of string type.", offsetof(test_struct, str_opt),
  -- *     AV_OPT_TYPE_STRING },
  -- *   { "test_bin", "This is a test option of binary type.", offsetof(test_struct, bin_opt),
  -- *     AV_OPT_TYPE_BINARY },
  -- *   { NULL },
  -- * };
  -- *
  -- * static const AVClass test_class = {
  -- *     .class_name = "test class",
  -- *     .item_name  = av_default_item_name,
  -- *     .option     = test_options,
  -- *     .version    = LIBAVUTIL_VERSION_INT,
  -- * };
  -- * @endcode
  -- *
  -- * Next, when allocating your struct, you must ensure that the AVClass pointer
  -- * is set to the correct value. Then, av_opt_set_defaults() can be called to
  -- * initialize defaults. After that the struct is ready to be used with the
  -- * AVOptions API.
  -- *
  -- * When cleaning up, you may use the av_opt_free() function to automatically
  -- * free all the allocated string and binary options.
  -- *
  -- * Continuing with the above example:
  -- *
  -- * @code
  -- * test_struct *alloc_test_struct(void)
  -- * {
  -- *     test_struct *ret = av_mallocz(sizeof(*ret));
  -- *     ret->class = &test_class;
  -- *     av_opt_set_defaults(ret);
  -- *     return ret;
  -- * }
  -- * void free_test_struct(test_struct **foo)
  -- * {
  -- *     av_opt_free(*foo);
  -- *     av_freep(foo);
  -- * }
  -- * @endcode
  -- *
  -- * @subsection avoptions_implement_nesting Nesting
  -- *      It may happen that an AVOptions-enabled struct contains another
  -- *      AVOptions-enabled struct as a member (e.g. AVCodecContext in
  -- *      libavcodec exports generic options, while its priv_data field exports
  -- *      codec-specific options). In such a case, it is possible to set up the
  -- *      parent struct to export a child's options. To do that, simply
  -- *      implement AVClass.child_next() and AVClass.child_class_next() in the
  -- *      parent struct's AVClass.
  -- *      Assuming that the test_struct from above now also contains a
  -- *      child_struct field:
  -- *
  -- *      @code
  -- *      typedef struct child_struct {
  -- *          AVClass *class;
  -- *          int flags_opt;
  -- *      } child_struct;
  -- *      static const AVOption child_opts[] = {
  -- *          { "test_flags", "This is a test option of flags type.",
  -- *            offsetof(child_struct, flags_opt), AV_OPT_TYPE_FLAGS, { .i64 = 0 }, INT_MIN, INT_MAX },
  -- *          { NULL },
  -- *      };
  -- *      static const AVClass child_class = {
  -- *          .class_name = "child class",
  -- *          .item_name  = av_default_item_name,
  -- *          .option     = child_opts,
  -- *          .version    = LIBAVUTIL_VERSION_INT,
  -- *      };
  -- *
  -- *      void *child_next(void *obj, void *prev)
  -- *      {
  -- *          test_struct *t = obj;
  -- *          if (!prev && t->child_struct)
  -- *              return t->child_struct;
  -- *          return NULL
  -- *      }
  -- *      const AVClass child_class_next(const AVClass *prev)
  -- *      {
  -- *          return prev ? NULL : &child_class;
  -- *      }
  -- *      @endcode
  -- *      Putting child_next() and child_class_next() as defined above into
  -- *      test_class will now make child_struct's options accessible through
  -- *      test_struct (again, proper setup as described above needs to be done on
  -- *      child_struct right after it is created).
  -- *
  -- *      From the above example it might not be clear why both child_next()
  -- *      and child_class_next() are needed. The distinction is that child_next()
  -- *      iterates over actually existing objects, while child_class_next()
  -- *      iterates over all possible child classes. E.g. if an AVCodecContext
  -- *      was initialized to use a codec which has private options, then its
  -- *      child_next() will return AVCodecContext.priv_data and finish
  -- *      iterating. OTOH child_class_next() on AVCodecContext.av_class will
  -- *      iterate over all available codecs with private options.
  -- *
  -- * @subsection avoptions_implement_named_constants Named constants
  -- *      It is possible to create named constants for options. Simply set the unit
  -- *      field of the option the constants should apply to a string and
  -- *      create the constants themselves as options of type AV_OPT_TYPE_CONST
  -- *      with their unit field set to the same string.
  -- *      Their default_val field should contain the value of the named
  -- *      constant.
  -- *      For example, to add some named constants for the test_flags option
  -- *      above, put the following into the child_opts array:
  -- *      @code
  -- *      { "test_flags", "This is a test option of flags type.",
  -- *        offsetof(child_struct, flags_opt), AV_OPT_TYPE_FLAGS, { .i64 = 0 }, INT_MIN, INT_MAX, "test_unit" },
  -- *      { "flag1", "This is a flag with value 16", 0, AV_OPT_TYPE_CONST, { .i64 = 16 }, 0, 0, "test_unit" },
  -- *      @endcode
  -- *
  -- * @section avoptions_use Using AVOptions
  -- * This section deals with accessing options in an AVOptions-enabled struct.
  -- * Such structs in FFmpeg are e.g. AVCodecContext in libavcodec or
  -- * AVFormatContext in libavformat.
  -- *
  -- * @subsection avoptions_use_examine Examining AVOptions
  -- * The basic functions for examining options are av_opt_next(), which iterates
  -- * over all options defined for one object, and av_opt_find(), which searches
  -- * for an option with the given name.
  -- *
  -- * The situation is more complicated with nesting. An AVOptions-enabled struct
  -- * may have AVOptions-enabled children. Passing the AV_OPT_SEARCH_CHILDREN flag
  -- * to av_opt_find() will make the function search children recursively.
  -- *
  -- * For enumerating there are basically two cases. The first is when you want to
  -- * get all options that may potentially exist on the struct and its children
  -- * (e.g.  when constructing documentation). In that case you should call
  -- * av_opt_child_class_next() recursively on the parent struct's AVClass.  The
  -- * second case is when you have an already initialized struct with all its
  -- * children and you want to get all options that can be actually written or read
  -- * from it. In that case you should call av_opt_child_next() recursively (and
  -- * av_opt_next() on each result).
  -- *
  -- * @subsection avoptions_use_get_set Reading and writing AVOptions
  -- * When setting options, you often have a string read directly from the
  -- * user. In such a case, simply passing it to av_opt_set() is enough. For
  -- * non-string type options, av_opt_set() will parse the string according to the
  -- * option type.
  -- *
  -- * Similarly av_opt_get() will read any option type and convert it to a string
  -- * which will be returned. Do not forget that the string is allocated, so you
  -- * have to free it with av_free().
  -- *
  -- * In some cases it may be more convenient to put all options into an
  -- * AVDictionary and call av_opt_set_dict() on it. A specific case of this
  -- * are the format/codec open functions in lavf/lavc which take a dictionary
  -- * filled with option as a parameter. This makes it possible to set some options
  -- * that cannot be set otherwise, since e.g. the input file format is not known
  -- * before the file is actually opened.
  --  

   subtype AVOptionType is unsigned;
   AV_OPT_TYPE_FLAGS : constant AVOptionType := 0;
   AV_OPT_TYPE_INT : constant AVOptionType := 1;
   AV_OPT_TYPE_INT64 : constant AVOptionType := 2;
   AV_OPT_TYPE_DOUBLE : constant AVOptionType := 3;
   AV_OPT_TYPE_FLOAT : constant AVOptionType := 4;
   AV_OPT_TYPE_STRING : constant AVOptionType := 5;
   AV_OPT_TYPE_RATIONAL : constant AVOptionType := 6;
   AV_OPT_TYPE_BINARY : constant AVOptionType := 7;
   AV_OPT_TYPE_DICT : constant AVOptionType := 8;
   AV_OPT_TYPE_UINT64 : constant AVOptionType := 9;
   AV_OPT_TYPE_CONST : constant AVOptionType := 128;
   AV_OPT_TYPE_IMAGE_SIZE : constant AVOptionType := 1397316165;
   AV_OPT_TYPE_PIXEL_FMT : constant AVOptionType := 1346784596;
   AV_OPT_TYPE_SAMPLE_FMT : constant AVOptionType := 1397116244;
   AV_OPT_TYPE_VIDEO_RATE : constant AVOptionType := 1448231252;
   AV_OPT_TYPE_DURATION : constant AVOptionType := 1146442272;
   AV_OPT_TYPE_COLOR : constant AVOptionType := 1129270354;
   AV_OPT_TYPE_CHANNEL_LAYOUT : constant AVOptionType := 1128811585;
   AV_OPT_TYPE_BOOL : constant AVOptionType := 1112493900;  -- /usr/include/ffmpeg/libavutil/opt.h:221

  --/< offset must point to a pointer immediately followed by an int for the length
  --/< offset must point to two consecutive integers
  --/< offset must point to AVRational
  --*
  -- * AVOption
  --  

   type AVOption;
   type anon_66 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            i64 : aliased Interfaces.Integer_64;  -- /usr/include/ffmpeg/libavutil/opt.h:266
         when 1 =>
            dbl : aliased double;  -- /usr/include/ffmpeg/libavutil/opt.h:267
         when 2 =>
            str : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavutil/opt.h:268
         when others =>
            q : aliased FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;  -- /usr/include/ffmpeg/libavutil/opt.h:270
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_66);
   pragma Unchecked_Union (anon_66);type AVOption is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavutil/opt.h:247
      help : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavutil/opt.h:253
      offset : aliased int;  -- /usr/include/ffmpeg/libavutil/opt.h:259
      c_type : aliased AVOptionType;  -- /usr/include/ffmpeg/libavutil/opt.h:260
      default_val : aliased anon_66;  -- /usr/include/ffmpeg/libavutil/opt.h:271
      min : aliased double;  -- /usr/include/ffmpeg/libavutil/opt.h:272
      max : aliased double;  -- /usr/include/ffmpeg/libavutil/opt.h:273
      flags : aliased int;  -- /usr/include/ffmpeg/libavutil/opt.h:275
      unit : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavutil/opt.h:301
   end record;
   pragma Convention (C_Pass_By_Copy, AVOption);  -- /usr/include/ffmpeg/libavutil/opt.h:246

  --*
  --     * short English help text
  --     * @todo What about other languages?
  --      

  --*
  --     * The offset relative to the context structure where the option
  --     * value is stored. It should be 0 for named constants.
  --      

  --*
  --     * the default value for scalar options
  --      

  -- TODO those are unused now  
  --/< minimum valid value for the option
  --/< maximum valid value for the option
  --*
  -- * The option is intended for exporting values to the caller.
  --  

  --*
  -- * The option may not be set through the AVOptions API, only read.
  -- * This flag only makes sense when AV_OPT_FLAG_EXPORT is also set.
  --  

  --FIXME think about enc-audio, ... style flags
  --*
  --     * The logical unit to which the option belongs. Non-constant
  --     * options and corresponding named constants share the same
  --     * unit. May be NULL.
  --      

  --*
  -- * A single allowed range of values, or a single allowed value.
  --  

   type AVOptionRange is record
      str : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ffmpeg/libavutil/opt.h:308
      value_min : aliased double;  -- /usr/include/ffmpeg/libavutil/opt.h:314
      value_max : aliased double;  -- /usr/include/ffmpeg/libavutil/opt.h:314
      component_min : aliased double;  -- /usr/include/ffmpeg/libavutil/opt.h:319
      component_max : aliased double;  -- /usr/include/ffmpeg/libavutil/opt.h:319
      is_range : aliased int;  -- /usr/include/ffmpeg/libavutil/opt.h:324
   end record;
   pragma Convention (C_Pass_By_Copy, AVOptionRange);  -- /usr/include/ffmpeg/libavutil/opt.h:307

  --*
  --     * Value range.
  --     * For string ranges this represents the min/max length.
  --     * For dimensions this represents the min/max pixel count or width/height in multi-component case.
  --      

  --*
  --     * Value's component range.
  --     * For string this represents the unicode range for chars, 0-127 limits to ASCII.
  --      

  --*
  --     * Range flag.
  --     * If set to 1 the struct encodes a range, if set to 0 a single value.
  --      

  --*
  -- * List of AVOptionRange structs.
  --  

  --*
  --     * Array of option ranges.
  --     *
  --     * Most of option types use just one component.
  --     * Following describes multi-component option types:
  --     *
  --     * AV_OPT_TYPE_IMAGE_SIZE:
  --     * component index 0: range of pixel count (width * height).
  --     * component index 1: range of width.
  --     * component index 2: range of height.
  --     *
  --     * @note To obtain multi-component version of this structure, user must
  --     *       provide AV_OPT_MULTI_COMPONENT_RANGE to av_opt_query_ranges or
  --     *       av_opt_query_ranges_default function.
  --     *
  --     * Multi-component range can be read as in following example:
  --     *
  --     * @code
  --     * int range_index, component_index;
  --     * AVOptionRanges *ranges;
  --     * AVOptionRange *range[3]; //may require more than 3 in the future.
  --     * av_opt_query_ranges(&ranges, obj, key, AV_OPT_MULTI_COMPONENT_RANGE);
  --     * for (range_index = 0; range_index < ranges->nb_ranges; range_index++) {
  --     *     for (component_index = 0; component_index < ranges->nb_components; component_index++)
  --     *         range[component_index] = ranges->range[ranges->nb_ranges * component_index + range_index];
  --     *     //do something with range here.
  --     * }
  --     * av_opt_freep_ranges(&ranges);
  --     * @endcode
  --      

   type AVOptionRanges is record
      c_range : System.Address;  -- /usr/include/ffmpeg/libavutil/opt.h:361
      nb_ranges : aliased int;  -- /usr/include/ffmpeg/libavutil/opt.h:365
      nb_components : aliased int;  -- /usr/include/ffmpeg/libavutil/opt.h:369
   end record;
   pragma Convention (C_Pass_By_Copy, AVOptionRanges);  -- /usr/include/ffmpeg/libavutil/opt.h:330

  --*
  --     * Number of ranges per component.
  --      

  --*
  --     * Number of componentes.
  --      

  --*
  -- * Show the obj options.
  -- *
  -- * @param req_flags requested flags for the options to show. Show only the
  -- * options for which it is opt->flags & req_flags.
  -- * @param rej_flags rejected flags for the options to show. Show only the
  -- * options for which it is !(opt->flags & req_flags).
  -- * @param av_log_obj log context to use for showing the options
  --  

   function av_opt_show2
     (obj : System.Address;
      av_log_obj : System.Address;
      req_flags : int;
      rej_flags : int) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:381
   pragma Import (C, av_opt_show2, "av_opt_show2");

  --*
  -- * Set the values of all AVOption fields to their default values.
  -- *
  -- * @param s an AVOption-enabled struct (its first member must be a pointer to AVClass)
  --  

   procedure av_opt_set_defaults (s : System.Address);  -- /usr/include/ffmpeg/libavutil/opt.h:388
   pragma Import (C, av_opt_set_defaults, "av_opt_set_defaults");

  --*
  -- * Set the values of all AVOption fields to their default values. Only these
  -- * AVOption fields for which (opt->flags & mask) == flags will have their
  -- * default applied to s.
  -- *
  -- * @param s an AVOption-enabled struct (its first member must be a pointer to AVClass)
  -- * @param mask combination of AV_OPT_FLAG_*
  -- * @param flags combination of AV_OPT_FLAG_*
  --  

   procedure av_opt_set_defaults2
     (s : System.Address;
      mask : int;
      flags : int);  -- /usr/include/ffmpeg/libavutil/opt.h:399
   pragma Import (C, av_opt_set_defaults2, "av_opt_set_defaults2");

  --*
  -- * Parse the key/value pairs list in opts. For each key/value pair
  -- * found, stores the value in the field in ctx that is named like the
  -- * key. ctx must be an AVClass context, storing is done using
  -- * AVOptions.
  -- *
  -- * @param opts options string to parse, may be NULL
  -- * @param key_val_sep a 0-terminated list of characters used to
  -- * separate key from value
  -- * @param pairs_sep a 0-terminated list of characters used to separate
  -- * two pairs from each other
  -- * @return the number of successfully set key/value pairs, or a negative
  -- * value corresponding to an AVERROR code in case of error:
  -- * AVERROR(EINVAL) if opts cannot be parsed,
  -- * the error code issued by av_opt_set() if a key/value pair
  -- * cannot be set
  --  

   function av_set_options_string
     (ctx : System.Address;
      opts : Interfaces.C.Strings.chars_ptr;
      key_val_sep : Interfaces.C.Strings.chars_ptr;
      pairs_sep : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:418
   pragma Import (C, av_set_options_string, "av_set_options_string");

  --*
  -- * Parse the key-value pairs list in opts. For each key=value pair found,
  -- * set the value of the corresponding option in ctx.
  -- *
  -- * @param ctx          the AVClass object to set options on
  -- * @param opts         the options string, key-value pairs separated by a
  -- *                     delimiter
  -- * @param shorthand    a NULL-terminated array of options names for shorthand
  -- *                     notation: if the first field in opts has no key part,
  -- *                     the key is taken from the first element of shorthand;
  -- *                     then again for the second, etc., until either opts is
  -- *                     finished, shorthand is finished or a named option is
  -- *                     found; after that, all options must be named
  -- * @param key_val_sep  a 0-terminated list of characters used to separate
  -- *                     key from value, for example '='
  -- * @param pairs_sep    a 0-terminated list of characters used to separate
  -- *                     two pairs from each other, for example ':' or ','
  -- * @return  the number of successfully set key=value pairs, or a negative
  -- *          value corresponding to an AVERROR code in case of error:
  -- *          AVERROR(EINVAL) if opts cannot be parsed,
  -- *          the error code issued by av_set_string3() if a key/value pair
  -- *          cannot be set
  -- *
  -- * Options names must use only the following characters: a-z A-Z 0-9 - . / _
  -- * Separators must use characters distinct from option names and from each
  -- * other.
  --  

   function av_opt_set_from_string
     (ctx : System.Address;
      opts : Interfaces.C.Strings.chars_ptr;
      shorthand : System.Address;
      key_val_sep : Interfaces.C.Strings.chars_ptr;
      pairs_sep : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:448
   pragma Import (C, av_opt_set_from_string, "av_opt_set_from_string");

  --*
  -- * Free all allocated objects in obj.
  --  

   procedure av_opt_free (obj : System.Address);  -- /usr/include/ffmpeg/libavutil/opt.h:454
   pragma Import (C, av_opt_free, "av_opt_free");

  --*
  -- * Check whether a particular flag is set in a flags field.
  -- *
  -- * @param field_name the name of the flag field option
  -- * @param flag_name the name of the flag to check
  -- * @return non-zero if the flag is set, zero if the flag isn't set,
  -- *         isn't of the right type, or the flags field doesn't exist.
  --  

   function av_opt_flag_is_set
     (obj : System.Address;
      field_name : Interfaces.C.Strings.chars_ptr;
      flag_name : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:464
   pragma Import (C, av_opt_flag_is_set, "av_opt_flag_is_set");

  --*
  -- * Set all the options from a given dictionary on an object.
  -- *
  -- * @param obj a struct whose first element is a pointer to AVClass
  -- * @param options options to process. This dictionary will be freed and replaced
  -- *                by a new one containing all options not found in obj.
  -- *                Of course this new dictionary needs to be freed by caller
  -- *                with av_dict_free().
  -- *
  -- * @return 0 on success, a negative AVERROR if some option was found in obj,
  -- *         but could not be set.
  -- *
  -- * @see av_dict_copy()
  --  

   function av_opt_set_dict (obj : System.Address; options : System.Address) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:480
   pragma Import (C, av_opt_set_dict, "av_opt_set_dict");

  --*
  -- * Set all the options from a given dictionary on an object.
  -- *
  -- * @param obj a struct whose first element is a pointer to AVClass
  -- * @param options options to process. This dictionary will be freed and replaced
  -- *                by a new one containing all options not found in obj.
  -- *                Of course this new dictionary needs to be freed by caller
  -- *                with av_dict_free().
  -- * @param search_flags A combination of AV_OPT_SEARCH_*.
  -- *
  -- * @return 0 on success, a negative AVERROR if some option was found in obj,
  -- *         but could not be set.
  -- *
  -- * @see av_dict_copy()
  --  

   function av_opt_set_dict2
     (obj : System.Address;
      options : System.Address;
      search_flags : int) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:498
   pragma Import (C, av_opt_set_dict2, "av_opt_set_dict2");

  --*
  -- * Extract a key-value pair from the beginning of a string.
  -- *
  -- * @param ropts        pointer to the options string, will be updated to
  -- *                     point to the rest of the string (one of the pairs_sep
  -- *                     or the final NUL)
  -- * @param key_val_sep  a 0-terminated list of characters used to separate
  -- *                     key from value, for example '='
  -- * @param pairs_sep    a 0-terminated list of characters used to separate
  -- *                     two pairs from each other, for example ':' or ','
  -- * @param flags        flags; see the AV_OPT_FLAG_* values below
  -- * @param rkey         parsed key; must be freed using av_free()
  -- * @param rval         parsed value; must be freed using av_free()
  -- *
  -- * @return  >=0 for success, or a negative value corresponding to an
  -- *          AVERROR code in case of error; in particular:
  -- *          AVERROR(EINVAL) if no key is present
  -- *
  --  

   function av_opt_get_key_value
     (ropts : System.Address;
      key_val_sep : Interfaces.C.Strings.chars_ptr;
      pairs_sep : Interfaces.C.Strings.chars_ptr;
      flags : unsigned;
      rkey : System.Address;
      rval : System.Address) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:519
   pragma Import (C, av_opt_get_key_value, "av_opt_get_key_value");

  --*
  --     * Accept to parse a value without a key; the key will then be returned
  --     * as NULL.
  --      

  --*
  -- * @defgroup opt_eval_funcs Evaluating option strings
  -- * @{
  -- * This group of functions can be used to evaluate option strings
  -- * and get numbers out of them. They do the same thing as av_opt_set(),
  -- * except the result is written into the caller-supplied pointer.
  -- *
  -- * @param obj a struct whose first element is a pointer to AVClass.
  -- * @param o an option for which the string is to be evaluated.
  -- * @param val string to be evaluated.
  -- * @param *_out value of the string will be written here.
  -- *
  -- * @return 0 on success, a negative number on failure.
  --  

   function av_opt_eval_flags
     (obj : System.Address;
      o : access constant AVOption;
      val : Interfaces.C.Strings.chars_ptr;
      flags_out : access int) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:547
   pragma Import (C, av_opt_eval_flags, "av_opt_eval_flags");

   function av_opt_eval_int
     (obj : System.Address;
      o : access constant AVOption;
      val : Interfaces.C.Strings.chars_ptr;
      int_out : access int) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:548
   pragma Import (C, av_opt_eval_int, "av_opt_eval_int");

   function av_opt_eval_int64
     (obj : System.Address;
      o : access constant AVOption;
      val : Interfaces.C.Strings.chars_ptr;
      int64_out : access Interfaces.Integer_64) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:549
   pragma Import (C, av_opt_eval_int64, "av_opt_eval_int64");

   function av_opt_eval_float
     (obj : System.Address;
      o : access constant AVOption;
      val : Interfaces.C.Strings.chars_ptr;
      float_out : access float) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:550
   pragma Import (C, av_opt_eval_float, "av_opt_eval_float");

   function av_opt_eval_double
     (obj : System.Address;
      o : access constant AVOption;
      val : Interfaces.C.Strings.chars_ptr;
      double_out : access double) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:551
   pragma Import (C, av_opt_eval_double, "av_opt_eval_double");

   function av_opt_eval_q
     (obj : System.Address;
      o : access constant AVOption;
      val : Interfaces.C.Strings.chars_ptr;
      q_out : access FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:552
   pragma Import (C, av_opt_eval_q, "av_opt_eval_q");

  --*
  -- * @}
  --  

  --*
  -- *  The obj passed to av_opt_find() is fake -- only a double pointer to AVClass
  -- *  instead of a required pointer to a struct containing AVClass. This is
  -- *  useful for searching for options without needing to allocate the corresponding
  -- *  object.
  --  

  --*
  -- *  In av_opt_get, return NULL if the option has a pointer type and is set to NULL,
  -- *  rather than returning an empty string.
  --  

  --*
  -- *  Allows av_opt_query_ranges and av_opt_query_ranges_default to return more than
  -- *  one component for certain option types.
  -- *  @see AVOptionRanges for details.
  --  

  --*
  -- * Look for an option in an object. Consider only options which
  -- * have all the specified flags set.
  -- *
  -- * @param[in] obj A pointer to a struct whose first element is a
  -- *                pointer to an AVClass.
  -- *                Alternatively a double pointer to an AVClass, if
  -- *                AV_OPT_SEARCH_FAKE_OBJ search flag is set.
  -- * @param[in] name The name of the option to look for.
  -- * @param[in] unit When searching for named constants, name of the unit
  -- *                 it belongs to.
  -- * @param opt_flags Find only options with all the specified flags set (AV_OPT_FLAG).
  -- * @param search_flags A combination of AV_OPT_SEARCH_*.
  -- *
  -- * @return A pointer to the option found, or NULL if no option
  -- *         was found.
  -- *
  -- * @note Options found with AV_OPT_SEARCH_CHILDREN flag may not be settable
  -- * directly with av_opt_set(). Use special calls which take an options
  -- * AVDictionary (e.g. avformat_open_input()) to set options found with this
  -- * flag.
  --  

   function av_opt_find
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      unit : Interfaces.C.Strings.chars_ptr;
      opt_flags : int;
      search_flags : int) return access constant AVOption;  -- /usr/include/ffmpeg/libavutil/opt.h:602
   pragma Import (C, av_opt_find, "av_opt_find");

  --*
  -- * Look for an option in an object. Consider only options which
  -- * have all the specified flags set.
  -- *
  -- * @param[in] obj A pointer to a struct whose first element is a
  -- *                pointer to an AVClass.
  -- *                Alternatively a double pointer to an AVClass, if
  -- *                AV_OPT_SEARCH_FAKE_OBJ search flag is set.
  -- * @param[in] name The name of the option to look for.
  -- * @param[in] unit When searching for named constants, name of the unit
  -- *                 it belongs to.
  -- * @param opt_flags Find only options with all the specified flags set (AV_OPT_FLAG).
  -- * @param search_flags A combination of AV_OPT_SEARCH_*.
  -- * @param[out] target_obj if non-NULL, an object to which the option belongs will be
  -- * written here. It may be different from obj if AV_OPT_SEARCH_CHILDREN is present
  -- * in search_flags. This parameter is ignored if search_flags contain
  -- * AV_OPT_SEARCH_FAKE_OBJ.
  -- *
  -- * @return A pointer to the option found, or NULL if no option
  -- *         was found.
  --  

   function av_opt_find2
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      unit : Interfaces.C.Strings.chars_ptr;
      opt_flags : int;
      search_flags : int;
      target_obj : System.Address) return access constant AVOption;  -- /usr/include/ffmpeg/libavutil/opt.h:626
   pragma Import (C, av_opt_find2, "av_opt_find2");

  --*
  -- * Iterate over all AVOptions belonging to obj.
  -- *
  -- * @param obj an AVOptions-enabled struct or a double pointer to an
  -- *            AVClass describing it.
  -- * @param prev result of the previous call to av_opt_next() on this object
  -- *             or NULL
  -- * @return next AVOption or NULL
  --  

   function av_opt_next (obj : System.Address; prev : access constant AVOption) return access constant AVOption;  -- /usr/include/ffmpeg/libavutil/opt.h:638
   pragma Import (C, av_opt_next, "av_opt_next");

  --*
  -- * Iterate over AVOptions-enabled children of obj.
  -- *
  -- * @param prev result of a previous call to this function or NULL
  -- * @return next AVOptions-enabled child or NULL
  --  

   function av_opt_child_next (obj : System.Address; prev : System.Address) return System.Address;  -- /usr/include/ffmpeg/libavutil/opt.h:646
   pragma Import (C, av_opt_child_next, "av_opt_child_next");

  --*
  -- * Iterate over potential AVOptions-enabled children of parent.
  -- *
  -- * @param prev result of a previous call to this function or NULL
  -- * @return AVClass corresponding to next potential child or NULL
  --  

   function av_opt_child_class_next (parent : access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass; prev : access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass) return access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;  -- /usr/include/ffmpeg/libavutil/opt.h:654
   pragma Import (C, av_opt_child_class_next, "av_opt_child_class_next");

  --*
  -- * @defgroup opt_set_funcs Option setting functions
  -- * @{
  -- * Those functions set the field of obj with the given name to value.
  -- *
  -- * @param[in] obj A struct whose first element is a pointer to an AVClass.
  -- * @param[in] name the name of the field to set
  -- * @param[in] val The value to set. In case of av_opt_set() if the field is not
  -- * of a string type, then the given string is parsed.
  -- * SI postfixes and some named scalars are supported.
  -- * If the field is of a numeric type, it has to be a numeric or named
  -- * scalar. Behavior with more than one scalar and +- infix operators
  -- * is undefined.
  -- * If the field is of a flags type, it has to be a sequence of numeric
  -- * scalars or named flags separated by '+' or '-'. Prefixing a flag
  -- * with '+' causes it to be set without affecting the other flags;
  -- * similarly, '-' unsets a flag.
  -- * @param search_flags flags passed to av_opt_find2. I.e. if AV_OPT_SEARCH_CHILDREN
  -- * is passed here, then the option may be set on a child of obj.
  -- *
  -- * @return 0 if the value has been set, or an AVERROR code in case of
  -- * error:
  -- * AVERROR_OPTION_NOT_FOUND if no matching option exists
  -- * AVERROR(ERANGE) if the value is out of range
  -- * AVERROR(EINVAL) if the value is not valid
  --  

   function av_opt_set
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      val : Interfaces.C.Strings.chars_ptr;
      search_flags : int) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:682
   pragma Import (C, av_opt_set, "av_opt_set");

   function av_opt_set_int
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      val : Interfaces.Integer_64;
      search_flags : int) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:683
   pragma Import (C, av_opt_set_int, "av_opt_set_int");

   function av_opt_set_double
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      val : double;
      search_flags : int) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:684
   pragma Import (C, av_opt_set_double, "av_opt_set_double");

   function av_opt_set_q
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      val : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;
      search_flags : int) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:685
   pragma Import (C, av_opt_set_q, "av_opt_set_q");

   function av_opt_set_bin
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      val : access Interfaces.Unsigned_8;
      size : int;
      search_flags : int) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:686
   pragma Import (C, av_opt_set_bin, "av_opt_set_bin");

   function av_opt_set_image_size
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      w : int;
      h : int;
      search_flags : int) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:687
   pragma Import (C, av_opt_set_image_size, "av_opt_set_image_size");

   function av_opt_set_pixel_fmt
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      fmt : FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat;
      search_flags : int) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:688
   pragma Import (C, av_opt_set_pixel_fmt, "av_opt_set_pixel_fmt");

   function av_opt_set_sample_fmt
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      fmt : FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h.AVSampleFormat;
      search_flags : int) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:689
   pragma Import (C, av_opt_set_sample_fmt, "av_opt_set_sample_fmt");

   function av_opt_set_video_rate
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      val : FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;
      search_flags : int) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:690
   pragma Import (C, av_opt_set_video_rate, "av_opt_set_video_rate");

   function av_opt_set_channel_layout
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      ch_layout : Interfaces.Integer_64;
      search_flags : int) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:691
   pragma Import (C, av_opt_set_channel_layout, "av_opt_set_channel_layout");

  --*
  -- * @note Any old dictionary present is discarded and replaced with a copy of the new one. The
  -- * caller still owns val is and responsible for freeing it.
  --  

   function av_opt_set_dict_val
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      val : System.Address;
      search_flags : int) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:696
   pragma Import (C, av_opt_set_dict_val, "av_opt_set_dict_val");

  --*
  -- * Set a binary option to an integer list.
  -- *
  -- * @param obj    AVClass object to set options on
  -- * @param name   name of the binary option
  -- * @param val    pointer to an integer list (must have the correct type with
  -- *               regard to the contents of the list)
  -- * @param term   list terminator (usually 0 or -1)
  -- * @param flags  search flags
  --  

  --*
  -- * @}
  --  

  --*
  -- * @defgroup opt_get_funcs Option getting functions
  -- * @{
  -- * Those functions get a value of the option with the given name from an object.
  -- *
  -- * @param[in] obj a struct whose first element is a pointer to an AVClass.
  -- * @param[in] name name of the option to get.
  -- * @param[in] search_flags flags passed to av_opt_find2. I.e. if AV_OPT_SEARCH_CHILDREN
  -- * is passed here, then the option may be found in a child of obj.
  -- * @param[out] out_val value of the option will be written here
  -- * @return >=0 on success, a negative error code otherwise
  --  

  --*
  -- * @note the returned string will be av_malloc()ed and must be av_free()ed by the caller
  -- *
  -- * @note if AV_OPT_ALLOW_NULL is set in search_flags in av_opt_get, and the option has
  -- * AV_OPT_TYPE_STRING or AV_OPT_TYPE_BINARY and is set to NULL, *out_val will be set
  -- * to NULL instead of an allocated empty string.
  --  

   function av_opt_get
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int;
      out_val : System.Address) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:737
   pragma Import (C, av_opt_get, "av_opt_get");

   function av_opt_get_int
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int;
      out_val : access Interfaces.Integer_64) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:738
   pragma Import (C, av_opt_get_int, "av_opt_get_int");

   function av_opt_get_double
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int;
      out_val : access double) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:739
   pragma Import (C, av_opt_get_double, "av_opt_get_double");

   function av_opt_get_q
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int;
      out_val : access FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:740
   pragma Import (C, av_opt_get_q, "av_opt_get_q");

   function av_opt_get_image_size
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int;
      w_out : access int;
      h_out : access int) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:741
   pragma Import (C, av_opt_get_image_size, "av_opt_get_image_size");

   function av_opt_get_pixel_fmt
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int;
      out_fmt : access FFMpeg.Low_Level.ffmpeg_libavutil_pixfmt_h.AVPixelFormat) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:742
   pragma Import (C, av_opt_get_pixel_fmt, "av_opt_get_pixel_fmt");

   function av_opt_get_sample_fmt
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int;
      out_fmt : access FFMpeg.Low_Level.ffmpeg_libavutil_samplefmt_h.AVSampleFormat) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:743
   pragma Import (C, av_opt_get_sample_fmt, "av_opt_get_sample_fmt");

   function av_opt_get_video_rate
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int;
      out_val : access FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:744
   pragma Import (C, av_opt_get_video_rate, "av_opt_get_video_rate");

   function av_opt_get_channel_layout
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int;
      ch_layout : access Interfaces.Integer_64) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:745
   pragma Import (C, av_opt_get_channel_layout, "av_opt_get_channel_layout");

  --*
  -- * @param[out] out_val The returned dictionary is a copy of the actual value and must
  -- * be freed with av_dict_free() by the caller
  --  

   function av_opt_get_dict_val
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int;
      out_val : System.Address) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:750
   pragma Import (C, av_opt_get_dict_val, "av_opt_get_dict_val");

  --*
  -- * @}
  --  

  --*
  -- * Gets a pointer to the requested field in a struct.
  -- * This function allows accessing a struct even when its fields are moved or
  -- * renamed since the application making the access has been compiled,
  -- *
  -- * @returns a pointer to the field, it can be cast to the correct type and read
  -- *          or written to.
  --  

   function av_opt_ptr
     (the_avclass : access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;
      obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr) return System.Address;  -- /usr/include/ffmpeg/libavutil/opt.h:762
   pragma Import (C, av_opt_ptr, "av_opt_ptr");

  --*
  -- * Free an AVOptionRanges struct and set it to NULL.
  --  

   procedure av_opt_freep_ranges (ranges : System.Address);  -- /usr/include/ffmpeg/libavutil/opt.h:767
   pragma Import (C, av_opt_freep_ranges, "av_opt_freep_ranges");

  --*
  -- * Get a list of allowed ranges for the given option.
  -- *
  -- * The returned list may depend on other fields in obj like for example profile.
  -- *
  -- * @param flags is a bitmask of flags, undefined flags should not be set and should be ignored
  -- *              AV_OPT_SEARCH_FAKE_OBJ indicates that the obj is a double pointer to a AVClass instead of a full instance
  -- *              AV_OPT_MULTI_COMPONENT_RANGE indicates that function may return more than one component, @see AVOptionRanges
  -- *
  -- * The result must be freed with av_opt_freep_ranges.
  -- *
  -- * @return number of compontents returned on success, a negative errro code otherwise
  --  

   function av_opt_query_ranges
     (arg1 : System.Address;
      obj : System.Address;
      key : Interfaces.C.Strings.chars_ptr;
      flags : int) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:782
   pragma Import (C, av_opt_query_ranges, "av_opt_query_ranges");

  --*
  -- * Copy options from src object into dest object.
  -- *
  -- * Options that require memory allocation (e.g. string or binary) are malloc'ed in dest object.
  -- * Original memory allocated for such options is freed unless both src and dest options points to the same memory.
  -- *
  -- * @param dest Object to copy from
  -- * @param src  Object to copy into
  -- * @return 0 on success, negative on error
  --  

   function av_opt_copy (dest : System.Address; src : System.Address) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:794
   pragma Import (C, av_opt_copy, "av_opt_copy");

  --*
  -- * Get a default list of allowed ranges for the given option.
  -- *
  -- * This list is constructed without using the AVClass.query_ranges() callback
  -- * and can be used as fallback from within the callback.
  -- *
  -- * @param flags is a bitmask of flags, undefined flags should not be set and should be ignored
  -- *              AV_OPT_SEARCH_FAKE_OBJ indicates that the obj is a double pointer to a AVClass instead of a full instance
  -- *              AV_OPT_MULTI_COMPONENT_RANGE indicates that function may return more than one component, @see AVOptionRanges
  -- *
  -- * The result must be freed with av_opt_free_ranges.
  -- *
  -- * @return number of compontents returned on success, a negative errro code otherwise
  --  

   function av_opt_query_ranges_default
     (arg1 : System.Address;
      obj : System.Address;
      key : Interfaces.C.Strings.chars_ptr;
      flags : int) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:810
   pragma Import (C, av_opt_query_ranges_default, "av_opt_query_ranges_default");

  --*
  -- * Check if given option is set to its default value.
  -- *
  -- * Options o must belong to the obj. This function must not be called to check child's options state.
  -- * @see av_opt_is_set_to_default_by_name().
  -- *
  -- * @param obj  AVClass object to check option on
  -- * @param o    option to be checked
  -- * @return     >0 when option is set to its default,
  -- *              0 when option is not set its default,
  -- *             <0 on error
  --  

   function av_opt_is_set_to_default (obj : System.Address; o : access constant AVOption) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:824
   pragma Import (C, av_opt_is_set_to_default, "av_opt_is_set_to_default");

  --*
  -- * Check if given option is set to its default value.
  -- *
  -- * @param obj          AVClass object to check option on
  -- * @param name         option name
  -- * @param search_flags combination of AV_OPT_SEARCH_*
  -- * @return             >0 when option is set to its default,
  -- *                     0 when option is not set its default,
  -- *                     <0 on error
  --  

   function av_opt_is_set_to_default_by_name
     (obj : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      search_flags : int) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:836
   pragma Import (C, av_opt_is_set_to_default_by_name, "av_opt_is_set_to_default_by_name");

  --*
  -- * Serialize object's options.
  -- *
  -- * Create a string containing object's serialized options.
  -- * Such string may be passed back to av_opt_set_from_string() in order to restore option values.
  -- * A key/value or pairs separator occurring in the serialized value or
  -- * name string are escaped through the av_escape() function.
  -- *
  -- * @param[in]  obj           AVClass object to serialize
  -- * @param[in]  opt_flags     serialize options with all the specified flags set (AV_OPT_FLAG)
  -- * @param[in]  flags         combination of AV_OPT_SERIALIZE_* flags
  -- * @param[out] buffer        Pointer to buffer that will be allocated with string containg serialized options.
  -- *                           Buffer must be freed by the caller when is no longer needed.
  -- * @param[in]  key_val_sep   character used to separate key from value
  -- * @param[in]  pairs_sep     character used to separate two pairs from each other
  -- * @return                   >= 0 on success, negative on error
  -- * @warning Separators cannot be neither '\\' nor '\0'. They also cannot be the same.
  --  

   function av_opt_serialize
     (obj : System.Address;
      opt_flags : int;
      flags : int;
      buffer : System.Address;
      key_val_sep : char;
      pairs_sep : char) return int;  -- /usr/include/ffmpeg/libavutil/opt.h:860
   pragma Import (C, av_opt_serialize, "av_opt_serialize");

  --*
  -- * @}
  --  

end FFMpeg.Low_Level.ffmpeg_libavutil_opt_h;
