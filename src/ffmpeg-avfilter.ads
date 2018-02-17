pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h;
limited with FFMpeg.Low_Level.ffmpeg_libavutil_log_h;
limited with FFMpeg.Low_Level.ffmpeg_libavutil_buffer_h;
with FFMpeg.Low_Level.ffmpeg_libavutil_rational_h;


limited with FFMpeg.Low_Level.ffmpeg_libavutil_frame_h;

package FFMpeg.avfilter is

   AVFILTER_FLAG_DYNAMIC_INPUTS : constant := (2 ** 0);  --  /usr/include/ffmpeg/libavfilter/avfilter.h:105

   AVFILTER_FLAG_DYNAMIC_OUTPUTS : constant := (2 ** 1);  --  /usr/include/ffmpeg/libavfilter/avfilter.h:111

   AVFILTER_FLAG_SLICE_THREADS : constant := (2 ** 2);  --  /usr/include/ffmpeg/libavfilter/avfilter.h:116

   AVFILTER_FLAG_SUPPORT_TIMELINE_GENERIC : constant := (2 ** 16);  --  /usr/include/ffmpeg/libavfilter/avfilter.h:125

   AVFILTER_FLAG_SUPPORT_TIMELINE_INTERNAL : constant := (2 ** 17);  --  /usr/include/ffmpeg/libavfilter/avfilter.h:133
   --  unsupported macro: AVFILTER_FLAG_SUPPORT_TIMELINE (AVFILTER_FLAG_SUPPORT_TIMELINE_GENERIC | AVFILTER_FLAG_SUPPORT_TIMELINE_INTERNAL)

   AVFILTER_THREAD_SLICE : constant := (2 ** 0);  --  /usr/include/ffmpeg/libavfilter/avfilter.h:318

   AVFILTER_CMD_FLAG_ONE : constant := 1;  --  /usr/include/ffmpeg/libavfilter/avfilter.h:656
   AVFILTER_CMD_FLAG_FAST : constant := 2;  --  /usr/include/ffmpeg/libavfilter/avfilter.h:657

  -- * filter layer
  -- * Copyright (c) 2007 Bobby Bingham
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
  -- * @ingroup lavfi
  -- * Main libavfilter public API header
  --

  --*
  -- * @defgroup lavfi libavfilter
  -- * Graph-based frame editing library.
  -- *
  -- * @{
  --

  --*
  -- * Return the LIBAVFILTER_VERSION_INT constant.
  --

   function version return unsigned;


  --*
  -- * Return the libavfilter build-time configuration.
  --

   function configuration return String;


  --*
  -- * Return the libavfilter license.
  --

   function license return String;


   --  skipped empty struct AVFilterPad

   --  skipped empty struct AVFilterFormats

  --*
  -- * Get the number of elements in a NULL-terminated array of AVFilterPads (e.g.
  -- * AVFilter.inputs/outputs).
  --

   function pad_count (pads : System.Address) return int;


  --*
  -- * Get the name of an AVFilterPad.
  -- *
  -- * @param pads an array of AVFilterPads
  -- * @param pad_idx index of the pad in the array it; is the caller's
  -- *                responsibility to ensure the index is valid
  -- *
  -- * @return name of the pad_idx'th pad in pads
  --

   function pad_get_name (pads : System.Address; pad_idx : int) return String;


  --*
  -- * Get the type of an AVFilterPad.
  -- *
  -- * @param pads an array of AVFilterPads
  -- * @param pad_idx index of the pad in the array; it is the caller's
  -- *                responsibility to ensure the index is valid
  -- *
  -- * @return type of the pad_idx'th pad in pads
  --

   function pad_get_type (pads : System.Address; pad_idx : int) return FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h.AVMediaType;


  --*
  -- * The number of the filter inputs is not determined just by AVFilter.inputs.
  -- * The filter might add additional inputs during initialization depending on the
  -- * options supplied to it.
  --

  --*
  -- * The number of the filter outputs is not determined just by AVFilter.outputs.
  -- * The filter might add additional outputs during initialization depending on
  -- * the options supplied to it.
  --

  --*
  -- * The filter supports multithreading by splitting frames into multiple parts
  -- * and processing them concurrently.
  --

  --*
  -- * Some filters support a generic "enable" expression option that can be used
  -- * to enable or disable a filter in the timeline. Filters supporting this
  -- * option have this flag set. When the enable expression is false, the default
  -- * no-op filter_frame() function is called in place of the filter_frame()
  -- * callback defined on each input pad, thus the frame is passed unchanged to
  -- * the next filters.
  --

  --*
  -- * Same as AVFILTER_FLAG_SUPPORT_TIMELINE_GENERIC, except that the filter will
  -- * have its filter_frame() callback(s) called as usual even when the enable
  -- * expression is false. The filter will disable filtering within the
  -- * filter_frame() callback(s) itself, for example executing code depending on
  -- * the AVFilterContext->is_disabled value.
  --

  --*
  -- * Handy mask to test whether the filter supports or no the timeline feature
  -- * (internally or generically).
  --

  --*
  -- * Filter definition. This defines the pads a filter contains, and all the
  -- * callback functions used to interact with the filter.
  --

  --*
  --     * Filter name. Must be non-NULL and unique among filters.
  --

   type AVFilterContext;
   type AVFilter is record
      name : Interfaces.C.Strings.chars_ptr;
      description : Interfaces.C.Strings.chars_ptr;
      inputs : System.Address;
      outputs : System.Address;
      priv_class : access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;
      flags : aliased int;
      init : access function  (arg1 : access AVFilterContext) return int;
      init_dict : access function  (arg1 : access AVFilterContext; arg2 : System.Address) return int;
      uninit : access procedure  (arg1 : access AVFilterContext);
      query_formats : access function  (arg1 : access AVFilterContext) return int;
      priv_size : aliased int;
      flags_internal : aliased int;
      next : access AVFilter;
      process_command : access function
           (arg1 : access AVFilterContext;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : Interfaces.C.Strings.chars_ptr;
            arg4 : Interfaces.C.Strings.chars_ptr;
            arg5 : int;
            arg6 : int) return int;
      init_opaque : access function  (arg1 : access AVFilterContext; arg2 : System.Address) return int;
      activate : access function  (arg1 : access AVFilterContext) return int;
   end record;
   pragma Convention (C_Pass_By_Copy, AVFilter);

  --*
  --     * A description of the filter. May be NULL.
  --     *
  --     * You should use the NULL_IF_CONFIG_SMALL() macro to define it.
  --

  --*
  --     * List of inputs, terminated by a zeroed element.
  --     *
  --     * NULL if there are no (static) inputs. Instances of filters with
  --     * AVFILTER_FLAG_DYNAMIC_INPUTS set may have more inputs than present in
  --     * this list.
  --

  --*
  --     * List of outputs, terminated by a zeroed element.
  --     *
  --     * NULL if there are no (static) outputs. Instances of filters with
  --     * AVFILTER_FLAG_DYNAMIC_OUTPUTS set may have more outputs than present in
  --     * this list.
  --

  --*
  --     * A class for the private data, used to declare filter private AVOptions.
  --     * This field is NULL for filters that do not declare any options.
  --     *
  --     * If this field is non-NULL, the first member of the filter private data
  --     * must be a pointer to AVClass, which will be set by libavfilter generic
  --     * code to this class.
  --

  --*
  --     * A combination of AVFILTER_FLAG_*
  --

  --****************************************************************
  --     * All fields below this line are not part of the public API. They
  --     * may not be used outside of libavfilter and can be changed and
  --     * removed at will.
  --     * New public fields should be added right above.
  --     *****************************************************************
  --

  --*
  --     * Filter initialization function.
  --     *
  --     * This callback will be called only once during the filter lifetime, after
  --     * all the options have been set, but before links between filters are
  --     * established and format negotiation is done.
  --     *
  --     * Basic filter initialization should be done here. Filters with dynamic
  --     * inputs and/or outputs should create those inputs/outputs here based on
  --     * provided options. No more changes to this filter's inputs/outputs can be
  --     * done after this callback.
  --     *
  --     * This callback must not assume that the filter links exist or frame
  --     * parameters are known.
  --     *
  --     * @ref AVFilter.uninit "uninit" is guaranteed to be called even if
  --     * initialization fails, so this callback does not have to clean up on
  --     * failure.
  --     *
  --     * @return 0 on success, a negative AVERROR on failure
  --

  --*
  --     * Should be set instead of @ref AVFilter.init "init" by the filters that
  --     * want to pass a dictionary of AVOptions to nested contexts that are
  --     * allocated during init.
  --     *
  --     * On return, the options dict should be freed and replaced with one that
  --     * contains all the options which could not be processed by this filter (or
  --     * with NULL if all the options were processed).
  --     *
  --     * Otherwise the semantics is the same as for @ref AVFilter.init "init".
  --

  --*
  --     * Filter uninitialization function.
  --     *
  --     * Called only once right before the filter is freed. Should deallocate any
  --     * memory held by the filter, release any buffer references, etc. It does
  --     * not need to deallocate the AVFilterContext.priv memory itself.
  --     *
  --     * This callback may be called even if @ref AVFilter.init "init" was not
  --     * called or failed, so it must be prepared to handle such a situation.
  --

  --*
  --     * Query formats supported by the filter on its inputs and outputs.
  --     *
  --     * This callback is called after the filter is initialized (so the inputs
  --     * and outputs are fixed), shortly before the format negotiation. This
  --     * callback may be called more than once.
  --     *
  --     * This callback must set AVFilterLink.out_formats on every input link and
  --     * AVFilterLink.in_formats on every output link to a list of pixel/sample
  --     * formats that the filter supports on that link. For audio links, this
  --     * filter must also set @ref AVFilterLink.in_samplerates "in_samplerates" /
  --     * @ref AVFilterLink.out_samplerates "out_samplerates" and
  --     * @ref AVFilterLink.in_channel_layouts "in_channel_layouts" /
  --     * @ref AVFilterLink.out_channel_layouts "out_channel_layouts" analogously.
  --     *
  --     * This callback may be NULL for filters with one input, in which case
  --     * libavfilter assumes that it supports all input formats and preserves
  --     * them on output.
  --     *
  --     * @return zero on success, a negative value corresponding to an
  --     * AVERROR code otherwise
  --

  --/< size of private data to allocate for the filter
  --/< Additional flags for avfilter internal use only.
  --*
  --     * Used by the filter registration system. Must not be touched by any other
  --     * code.
  --

  --*
  --     * Make the filter instance process a command.
  --     *
  --     * @param cmd    the command to process, for handling simplicity all commands must be alphanumeric only
  --     * @param arg    the argument for the command
  --     * @param res    a buffer with size res_size where the filter(s) can return a response. This must not change when the command is not supported.
  --     * @param flags  if AVFILTER_CMD_FLAG_FAST is set and the command would be
  --     *               time consuming then a filter should treat it like an unsupported command
  --     *
  --     * @returns >=0 on success otherwise an error code.
  --     *          AVERROR(ENOSYS) on unsupported commands
  --

  --*
  --     * Filter initialization function, alternative to the init()
  --     * callback. Args contains the user-supplied parameters, opaque is
  --     * used for providing binary data.
  --

  --*
  --     * Filter activation function.
  --     *
  --     * Called when any processing is needed from the filter, instead of any
  --     * filter_frame and request_frame on pads.
  --     *
  --     * The function must examine inlinks and outlinks and perform a single
  --     * step of processing. If there is nothing to do, the function must do
  --     * nothing and not return an error. If more steps are or may be
  --     * possible, it must use ff_filter_set_ready() to schedule another
  --     * activation.
  --

  --*
  -- * Process multiple parts of the frame concurrently.
  --

   --  skipped empty struct AVFilterInternal

  --* An instance of a filter
  --/< needed for av_log() and filters common options
   type AVFilterGraph;
   type AVFilterContext is record
      av_class : access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;
      filter : access constant AVFilter;
      name : Interfaces.C.Strings.chars_ptr;
      input_pads : System.Address;
      inputs : System.Address;
      nb_inputs : aliased unsigned;
      output_pads : System.Address;
      outputs : System.Address;
      nb_outputs : aliased unsigned;
      priv : System.Address;
      graph : access AVFilterGraph;
      thread_type : aliased int;
      internal : System.Address;
      command_queue : System.Address;
      enable_str : Interfaces.C.Strings.chars_ptr;
      enable : System.Address;
      var_values : access double;
      is_disabled : aliased int;
      hw_device_ctx : access FFMpeg.Low_Level.ffmpeg_libavutil_buffer_h.AVBufferRef;
      nb_threads : aliased int;
      ready : aliased unsigned;
   end record;
   pragma Convention (C_Pass_By_Copy, AVFilterContext);

  --/< the AVFilter of which this is an instance
  --/< name of this filter instance
  --/< array of input pads
  --/< array of pointers to input links
  --/< number of input pads
  --/< array of output pads
  --/< array of pointers to output links
  --/< number of output pads
  --/< private data for use by the filter
  --/< filtergraph this filter belongs to
  --*
  --     * Type of multithreading being allowed/used. A combination of
  --     * AVFILTER_THREAD_* flags.
  --     *
  --     * May be set by the caller before initializing the filter to forbid some
  --     * or all kinds of multithreading for this filter. The default is allowing
  --     * everything.
  --     *
  --     * When the filter is initialized, this field is combined using bit AND with
  --     * AVFilterGraph.thread_type to get the final mask used for determining
  --     * allowed threading types. I.e. a threading type needs to be set in both
  --     * to be allowed.
  --     *
  --     * After the filter is initialized, libavfilter sets this field to the
  --     * threading type that is actually used (0 for no multithreading).
  --

  --*
  --     * An opaque struct for libavfilter internal use.
  --

   --  skipped empty struct AVFilterCommand

  --/< enable expression string
  --/< parsed expression (AVExpr*)
  --/< variable values for the enable expression
  --/< the enabled state from the last expression evaluation
  --*
  --     * For filters which will create hardware frames, sets the device the
  --     * filter should create them in.  All other filters will ignore this field:
  --     * in particular, a filter which consumes or processes hardware frames will
  --     * instead use the hw_frames_ctx field in AVFilterLink to carry the
  --     * hardware context information.
  --

  --*
  --     * Max number of threads allowed in this filter instance.
  --     * If <= 0, its value is ignored.
  --     * Overrides global number of threads set per filter graph.
  --

  --*
  --     * Ready status of the filter.
  --     * A non-0 value means that the filter needs activating;
  --     * a higher value suggests a more urgent activation.
  --

  --*
  -- * A link between two filters. This contains pointers to the source and
  -- * destination filters between which this link exists, and the indexes of
  -- * the pads involved. In addition, this link also contains the parameters
  -- * which have been negotiated and agreed upon between the filter, such as
  -- * image dimensions, format, etc.
  -- *
  -- * Applications must not normally access the link structure directly.
  -- * Use the buffersrc and buffersink API instead.
  -- * In the future, access to the header may be reserved for filters
  -- * implementation.
  --

  --/< source filter
  --/< output pad on the source filter
  --/< dest filter
  --/< input pad on the dest filter
  --/< filter media type
  -- These parameters apply only to video
  --/< agreed upon image width
  --/< agreed upon image height
  --/< agreed upon sample aspect ratio
  -- These parameters apply only to audio
  --/< channel layout of current buffer (see libavutil/channel_layout.h)
  --/< samples per second
  --/< agreed upon media format
  --*
  --     * Define the time base used by the PTS of the frames/samples
  --     * which will pass through this link.
  --     * During the configuration stage, each filter is supposed to
  --     * change only the output timebase, while the timebase of the
  --     * input link is assumed to be an unchangeable property.
  --

  --****************************************************************
  --     * All fields below this line are not part of the public API. They
  --     * may not be used outside of libavfilter and can be changed and
  --     * removed at will.
  --     * New public fields should be added right above.
  --     *****************************************************************
  --

  --*
  --     * Lists of formats and channel layouts supported by the input and output
  --     * filters respectively. These lists are used for negotiating the format
  --     * to actually be used, which will be loaded into the format and
  --     * channel_layout members, above, when chosen.
  --     *
  --

  --*
  --     * Lists of channel layouts and sample rates used for automatic
  --     * negotiation.
  --

   --  skipped empty struct AVFilterChannelLayouts

   subtype AVFilterLink_reserved_array is Interfaces.C.char_array (0 .. 61439);
   type anon_69 is (AVLINK_UNINIT, AVLINK_STARTINIT, AVLINK_INIT);
   type AVFilterLink is record
      src : access AVFilterContext;
      srcpad : System.Address;
      dst : access AVFilterContext;
      dstpad : System.Address;
      c_type : aliased FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h.AVMediaType;
      w : aliased int;
      h : aliased int;
      sample_aspect_ratio : aliased FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;
      channel_layout : aliased Interfaces.Unsigned_64;
      sample_rate : aliased int;
      format : aliased int;
      time_base : aliased FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;
      in_formats : System.Address;
      out_formats : System.Address;
      in_samplerates : System.Address;
      out_samplerates : System.Address;
      in_channel_layouts : System.Address;
      out_channel_layouts : System.Address;
      request_samples : aliased int;
      init_state : aliased anon_69;
      graph : access AVFilterGraph;
      current_pts : aliased Interfaces.Integer_64;
      current_pts_us : aliased Interfaces.Integer_64;
      age_index : aliased int;
      frame_rate : aliased FFMpeg.Low_Level.ffmpeg_libavutil_rational_h.AVRational;
      partial_buf : access FFMpeg.Low_Level.ffmpeg_libavutil_frame_h.AVFrame;
      partial_buf_size : aliased int;
      min_samples : aliased int;
      max_samples : aliased int;
      channels : aliased int;
      flags : aliased unsigned;
      frame_count_in : aliased Interfaces.Integer_64;
      frame_count_out : aliased Interfaces.Integer_64;
      frame_pool : System.Address;
      frame_wanted_out : aliased int;
      hw_frames_ctx : access FFMpeg.Low_Level.ffmpeg_libavutil_buffer_h.AVBufferRef;
      reserved : aliased AVFilterLink_reserved_array;
   end record;
   pragma Convention (C_Pass_By_Copy, AVFilterLink);

  --*
  --     * Audio only, the destination filter sets this to a non-zero value to
  --     * request that buffers with the given number of samples should be sent to
  --     * it. AVFilterPad.needs_fifo must also be set on the corresponding input
  --     * pad.
  --     * Last buffer before EOF will be padded with silence.
  --

  --* stage of the initialization of the link properties (dimensions, etc)
  --/< not started
  --/< started, but incomplete
  --/< complete
  --*
  --     * Graph the filter belongs to.
  --

  --*
  --     * Current timestamp of the link, as defined by the most recent
  --     * frame(s), in link time_base units.
  --

  --*
  --     * Current timestamp of the link, as defined by the most recent
  --     * frame(s), in AV_TIME_BASE units.
  --

  --*
  --     * Index in the age array.
  --

  --*
  --     * Frame rate of the stream on the link, or 1/0 if unknown or variable;
  --     * if left to 0/0, will be automatically copied from the first input
  --     * of the source filter if it exists.
  --     *
  --     * Sources should set it to the best estimation of the real frame rate.
  --     * If the source frame rate is unknown or variable, set this to 1/0.
  --     * Filters should update it if necessary depending on their function.
  --     * Sinks can use it to set a default output frame rate.
  --     * It is similar to the r_frame_rate field in AVStream.
  --

  --*
  --     * Buffer partially filled with samples to achieve a fixed/minimum size.
  --

  --*
  --     * Size of the partial buffer to allocate.
  --     * Must be between min_samples and max_samples.
  --

  --*
  --     * Minimum number of samples to filter at once. If filter_frame() is
  --     * called with fewer samples, it will accumulate them in partial_buf.
  --     * This field and the related ones must not be changed after filtering
  --     * has started.
  --     * If 0, all related fields are ignored.
  --

  --*
  --     * Maximum number of samples to filter at once. If filter_frame() is
  --     * called with more samples, it will split them.
  --

  --*
  --     * Number of channels.
  --

  --*
  --     * Link processing flags.
  --

  --*
  --     * Number of past frames sent through the link.
  --

  --*
  --     * A pointer to a FFFramePool struct.
  --

  --*
  --     * True if a frame is currently wanted on the output of this filter.
  --     * Set when ff_request_frame() is called by the output,
  --     * cleared when a frame is filtered.
  --

  --*
  --     * For hwaccel pixel formats, this should be a reference to the
  --     * AVHWFramesContext describing the frames.
  --

  --*
  --     * Internal structure members.
  --     * The fields below this limit are internal for libavfilter's use
  --     * and must in no way be accessed by applications.
  --

  --*
  --     * Queue of frames waiting to be filtered.
  --

  --*
  --     * If set, the source filter can not generate a frame as is.
  --     * The goal is to avoid repeatedly calling the request_frame() method on
  --     * the same link.
  --

  --*
  --     * Link input status.
  --     * If not zero, all attempts of filter_frame will fail with the
  --     * corresponding code.
  --

  --*
  --     * Timestamp of the input status change.
  --

  --*
  --     * Link output status.
  --     * If not zero, all attempts of request_frame will fail with the
  --     * corresponding code.
  --

  --*
  -- * Link two filters together.
  -- *
  -- * @param src    the source filter
  -- * @param srcpad index of the output pad on the source filter
  -- * @param dst    the destination filter
  -- * @param dstpad index of the input pad on the destination filter
  -- * @return       zero on success
  --

   function link
     (src : access AVFilterContext;
      srcpad : unsigned;
      dst : access AVFilterContext;
      dstpad : unsigned) return int;


  --*
  -- * Free the link in *link, and set its pointer to NULL.
  --

   procedure link_free (link : System.Address);


  --*
  -- * Get the number of channels of a link.
  --

   function link_get_channels (link : access AVFilterLink) return int;


  --*
  -- * Set the closed field of a link.
  -- * @deprecated applications are not supposed to mess with links, they should
  -- * close the sinks.
  --

   procedure link_set_closed (link : access AVFilterLink; closed : int);


  --*
  -- * Negotiate the media format, dimensions, etc of all inputs to a filter.
  -- *
  -- * @param filter the filter to negotiate the properties for its inputs
  -- * @return       zero on successful negotiation
  --

   function config_links (filter : access AVFilterContext) return int;


  --*
  -- * Make the filter instance process a command.
  -- * It is recommended to use graph_send_command().
  --

   function process_command
     (filter : access AVFilterContext;
      cmd : Interfaces.C.Strings.chars_ptr;
      arg : Interfaces.C.Strings.chars_ptr;
      res : Interfaces.C.Strings.chars_ptr;
      res_len : int;
      flags : int) return int;


  --* Initialize the filter system. Register all builtin filters.
   procedure register_all;


  --* Uninitialize the filter system. Unregister all filters.
   procedure uninit;


  --*
  -- * Register a filter. This is only needed if you plan to use
  -- * get_by_name later to lookup the AVFilter structure by name. A
  -- * filter can still by instantiated with graph_alloc_filter even if it
  -- * is not registered.
  -- *
  -- * @param filter the filter to register
  -- * @return 0 if the registration was successful, a negative value
  -- * otherwise
  --

   function register (filter : access AVFilter) return int;


  --*
  -- * Get a filter definition matching the given name.
  -- *
  -- * @param name the filter name to find
  -- * @return     the filter definition, if any matching one is registered.
  -- *             NULL if none found.
  --

   function get_by_name (name : Interfaces.C.Strings.chars_ptr) return access AVFilter;


  --*
  -- * Iterate over all registered filters.
  -- * @return If prev is non-NULL, next registered filter after prev or NULL if
  -- * prev is the last filter. If prev is NULL, return the first registered filter.
  --

   function next (prev : access constant AVFilter) return access constant AVFilter;


  --*
  -- * If filter is NULL, returns a pointer to the first registered filter pointer,
  -- * if filter is non-NULL, returns the next pointer after filter.
  -- * If the returned pointer points to NULL, the last registered filter
  -- * was already reached.
  -- * @deprecated use next()
  --

   function av_filter_next (filter : System.Address) return System.Address;


  --*
  -- * Create a filter instance.
  -- *
  -- * @param filter_ctx put here a pointer to the created filter context
  -- * on success, NULL on failure
  -- * @param filter    the filter to create an instance of
  -- * @param inst_name Name to give to the new instance. Can be NULL for none.
  -- * @return >= 0 in case of success, a negative error code otherwise
  -- * @deprecated use graph_alloc_filter() instead
  --

   function open
     (filter_ctx : System.Address;
      filter : access AVFilter;
      inst_name : Interfaces.C.Strings.chars_ptr) return int;


  --*
  -- * Initialize a filter.
  -- *
  -- * @param filter the filter to initialize
  -- * @param args   A string of parameters to use when initializing the filter.
  -- *               The format and meaning of this string varies by filter.
  -- * @param opaque Any extra non-string data needed by the filter. The meaning
  -- *               of this parameter varies by filter.
  -- * @return       zero on success
  --

   function init_filter
     (filter : access AVFilterContext;
      args : Interfaces.C.Strings.chars_ptr;
      opaque : System.Address) return int;


  --*
  -- * Initialize a filter with the supplied parameters.
  -- *
  -- * @param ctx  uninitialized filter context to initialize
  -- * @param args Options to initialize the filter with. This must be a
  -- *             ':'-separated list of options in the 'key=value' form.
  -- *             May be NULL if the options have been set directly using the
  -- *             AVOptions API or there are no options that need to be set.
  -- * @return 0 on success, a negative AVERROR on failure
  --

   function init_str (ctx : access AVFilterContext; args : Interfaces.C.Strings.chars_ptr) return int;


  --*
  -- * Initialize a filter with the supplied dictionary of options.
  -- *
  -- * @param ctx     uninitialized filter context to initialize
  -- * @param options An AVDictionary filled with options for this filter. On
  -- *                return this parameter will be destroyed and replaced with
  -- *                a dict containing options that were not found. This dictionary
  -- *                must be freed by the caller.
  -- *                May be NULL, then this function is equivalent to
  -- *                init_str() with the second parameter set to NULL.
  -- * @return 0 on success, a negative AVERROR on failure
  -- *
  -- * @note This function and init_str() do essentially the same thing,
  -- * the difference is in manner in which the options are passed. It is up to the
  -- * calling code to choose whichever is more preferable. The two functions also
  -- * behave differently when some of the provided options are not declared as
  -- * supported by the filter. In such a case, init_str() will fail, but
  -- * this function will leave those extra options in the options AVDictionary and
  -- * continue as usual.
  --

   function init_dict (ctx : access AVFilterContext; options : System.Address) return int;


  --*
  -- * Free a filter context. This will also remove the filter from its
  -- * filtergraph's list of filters.
  -- *
  -- * @param filter the filter to free
  --

   procedure free (filter : access AVFilterContext);


  --*
  -- * Insert a filter in the middle of an existing link.
  -- *
  -- * @param link the link into which the filter should be inserted
  -- * @param filt the filter to be inserted
  -- * @param filt_srcpad_idx the input pad on the filter to connect
  -- * @param filt_dstpad_idx the output pad on the filter to connect
  -- * @return     zero on success
  --

   function insert_filter
     (link : access AVFilterLink;
      filt : access AVFilterContext;
      filt_srcpad_idx : unsigned;
      filt_dstpad_idx : unsigned) return int;


  --*
  -- * @return AVClass for AVFilterContext.
  -- *
  -- * @see av_opt_find().
  --

   function get_class return access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;


   --  skipped empty struct AVFilterGraphInternal

  --*
  -- * A function pointer passed to the @ref AVFilterGraph.execute callback to be
  -- * executed multiple times, possibly in parallel.
  -- *
  -- * @param ctx the filter context the job belongs to
  -- * @param arg an opaque parameter passed through from @ref
  -- *            AVFilterGraph.execute
  -- * @param jobnr the index of the job being executed
  -- * @param nb_jobs the total number of jobs
  -- *
  -- * @return 0 on success, a negative AVERROR on error
  --

   --  skipped function type action_func

  --*
  -- * A function executing multiple jobs, possibly in parallel.
  -- *
  -- * @param ctx the filter context to which the jobs belong
  -- * @param func the function to be called multiple times
  -- * @param arg the argument to be passed to func
  -- * @param ret a nb_jobs-sized array to be filled with return values from each
  -- *            invocation of func
  -- * @param nb_jobs the number of jobs to execute
  -- *
  -- * @return 0 on success, a negative AVERROR on error
  --

   --  skipped function type execute_func

   type AVFilterGraph is record
      av_class : access constant FFMpeg.Low_Level.ffmpeg_libavutil_log_h.AVClass;
      filters : System.Address;
      nb_filters : aliased unsigned;
      scale_sws_opts : Interfaces.C.Strings.chars_ptr;
      resample_lavr_opts : Interfaces.C.Strings.chars_ptr;
      thread_type : aliased int;
      nb_threads : aliased int;
      internal : System.Address;
      opaque : System.Address;
      execute : access function
           (arg1 : access AVFilterContext;
            arg2 : access function
              (arg1 : access AVFilterContext;
               arg2 : System.Address;
               arg3 : int;
               arg4 : int) return int;
            arg3 : System.Address;
            arg4 : access int;
            arg5 : int) return int;
      aresample_swr_opts : Interfaces.C.Strings.chars_ptr;
      sink_links : System.Address;
      sink_links_count : aliased int;
      disable_auto_convert : aliased unsigned;
   end record;
   pragma Convention (C_Pass_By_Copy, AVFilterGraph);

  --/< sws options to use for the auto-inserted scale filters
  --/< libavresample options to use for the auto-inserted resample filters
  --*
  --     * Type of multithreading allowed for filters in this graph. A combination
  --     * of AVFILTER_THREAD_* flags.
  --     *
  --     * May be set by the caller at any point, the setting will apply to all
  --     * filters initialized after that. The default is allowing everything.
  --     *
  --     * When a filter in this graph is initialized, this field is combined using
  --     * bit AND with AVFilterContext.thread_type to get the final mask used for
  --     * determining allowed threading types. I.e. a threading type needs to be
  --     * set in both to be allowed.
  --

  --*
  --     * Maximum number of threads used by filters in this graph. May be set by
  --     * the caller before adding any filters to the filtergraph. Zero (the
  --     * default) means that the number of threads is determined automatically.
  --

  --*
  --     * Opaque object for libavfilter internal use.
  --

  --*
  --     * Opaque user data. May be set by the caller to an arbitrary value, e.g. to
  --     * be used from callbacks like @ref AVFilterGraph.execute.
  --     * Libavfilter will not touch this field in any way.
  --

  --*
  --     * This callback may be set by the caller immediately after allocating the
  --     * graph and before adding any filters to it, to provide a custom
  --     * multithreading implementation.
  --     *
  --     * If set, filters with slice threading capability will call this callback
  --     * to execute multiple jobs in parallel.
  --     *
  --     * If this field is left unset, libavfilter will use its internal
  --     * implementation, which may or may not be multithreaded depending on the
  --     * platform and build options.
  --

  --/< swr options to use for the auto-inserted aresample filters, Access ONLY through AVOptions
  --*
  --     * Private fields
  --     *
  --     * The following fields are for internal use only.
  --     * Their type, offset, number and semantic can change without notice.
  --

  --*
  -- * Allocate a filter graph.
  -- *
  -- * @return the allocated filter graph on success or NULL.
  --

   function graph_alloc return access AVFilterGraph;


  --*
  -- * Create a new filter instance in a filter graph.
  -- *
  -- * @param graph graph in which the new filter will be used
  -- * @param filter the filter to create an instance of
  -- * @param name Name to give to the new instance (will be copied to
  -- *             AVFilterContext.name). This may be used by the caller to identify
  -- *             different filters, libavfilter itself assigns no semantics to
  -- *             this parameter. May be NULL.
  -- *
  -- * @return the context of the newly created filter instance (note that it is
  -- *         also retrievable directly through AVFilterGraph.filters or with
  -- *         graph_get_filter()) on success or NULL on failure.
  --

   function graph_alloc_filter
     (graph : access AVFilterGraph;
      filter : access constant AVFilter;
      name : Interfaces.C.Strings.chars_ptr) return access AVFilterContext;


  --*
  -- * Get a filter instance identified by instance name from graph.
  -- *
  -- * @param graph filter graph to search through.
  -- * @param name filter instance name (should be unique in the graph).
  -- * @return the pointer to the found filter instance or NULL if it
  -- * cannot be found.
  --

   function graph_get_filter (graph : access AVFilterGraph; name : Interfaces.C.Strings.chars_ptr) return access AVFilterContext;


  --*
  -- * Add an existing filter instance to a filter graph.
  -- *
  -- * @param graphctx  the filter graph
  -- * @param filter the filter to be added
  -- *
  -- * @deprecated use graph_alloc_filter() to allocate a filter in a
  -- * filter graph
  --

   function graph_add_filter (graphctx : access AVFilterGraph; filter : access AVFilterContext) return int;


  --*
  -- * Create and add a filter instance into an existing graph.
  -- * The filter instance is created from the filter filt and inited
  -- * with the parameters args and opaque.
  -- *
  -- * In case of success put in *filt_ctx the pointer to the created
  -- * filter instance, otherwise set *filt_ctx to NULL.
  -- *
  -- * @param name the instance name to give to the created filter instance
  -- * @param graph_ctx the filter graph
  -- * @return a negative AVERROR error code in case of failure, a non
  -- * negative value otherwise
  --

   function graph_create_filter
     (filt_ctx : System.Address;
      filt : access constant AVFilter;
      name : Interfaces.C.Strings.chars_ptr;
      args : Interfaces.C.Strings.chars_ptr;
      opaque : System.Address;
      graph_ctx : access AVFilterGraph) return int;


  --*
  -- * Enable or disable automatic format conversion inside the graph.
  -- *
  -- * Note that format conversion can still happen inside explicitly inserted
  -- * scale and aresample filters.
  -- *
  -- * @param flags  any of the AVFILTER_AUTO_CONVERT_* constants
  --

   procedure graph_set_auto_convert (graph : access AVFilterGraph; flags : unsigned);


  --*< all automatic conversions enabled
  --*< all automatic conversions disabled
  --*
  -- * Check validity and configure all the links and formats in the graph.
  -- *
  -- * @param graphctx the filter graph
  -- * @param log_ctx context used for logging
  -- * @return >= 0 in case of success, a negative AVERROR code otherwise
  --

   function graph_config (graphctx : access AVFilterGraph; log_ctx : System.Address) return int;


  --*
  -- * Free a graph, destroy its links, and set *graph to NULL.
  -- * If *graph is NULL, do nothing.
  --

   procedure graph_free (graph : System.Address);


  --*
  -- * A linked-list of the inputs/outputs of the filter chain.
  -- *
  -- * This is mainly useful for graph_parse() / graph_parse2(),
  -- * where it is used to communicate open (unlinked) inputs and outputs from and
  -- * to the caller.
  -- * This struct specifies, per each not connected pad contained in the graph, the
  -- * filter context and the pad index required for establishing a link.
  --

  --* unique name for this input/output in the list
   type AVFilterInOut is record
      name : Interfaces.C.Strings.chars_ptr;
      filter_ctx : access AVFilterContext;
      pad_idx : aliased int;
      next : access AVFilterInOut;
   end record;
   pragma Convention (C_Pass_By_Copy, AVFilterInOut);

  --* filter context associated to this input/output
  --* index of the filt_ctx pad to use for linking
  --* next input/input in the list, NULL if this is the last
  --*
  -- * Allocate a single AVFilterInOut entry.
  -- * Must be freed with inout_free().
  -- * @return allocated AVFilterInOut on success, NULL on failure.
  --

   function inout_alloc return access AVFilterInOut;


  --*
  -- * Free the supplied list of AVFilterInOut and set *inout to NULL.
  -- * If *inout is NULL, do nothing.
  --

   procedure inout_free (inout : System.Address);


  --*
  -- * Add a graph described by a string to a graph.
  -- *
  -- * @note The caller must provide the lists of inputs and outputs,
  -- * which therefore must be known before calling the function.
  -- *
  -- * @note The inputs parameter describes inputs of the already existing
  -- * part of the graph; i.e. from the point of view of the newly created
  -- * part, they are outputs. Similarly the outputs parameter describes
  -- * outputs of the already existing filters, which are provided as
  -- * inputs to the parsed filters.
  -- *
  -- * @param graph   the filter graph where to link the parsed graph context
  -- * @param filters string to be parsed
  -- * @param inputs  linked list to the inputs of the graph
  -- * @param outputs linked list to the outputs of the graph
  -- * @return zero on success, a negative AVERROR code on error
  --

   function graph_parse
     (graph : access AVFilterGraph;
      filters : Interfaces.C.Strings.chars_ptr;
      inputs : access AVFilterInOut;
      outputs : access AVFilterInOut;
      log_ctx : System.Address) return int;


  --*
  -- * Add a graph described by a string to a graph.
  -- *
  -- * In the graph filters description, if the input label of the first
  -- * filter is not specified, "in" is assumed; if the output label of
  -- * the last filter is not specified, "out" is assumed.
  -- *
  -- * @param graph   the filter graph where to link the parsed graph context
  -- * @param filters string to be parsed
  -- * @param inputs  pointer to a linked list to the inputs of the graph, may be NULL.
  -- *                If non-NULL, *inputs is updated to contain the list of open inputs
  -- *                after the parsing, should be freed with inout_free().
  -- * @param outputs pointer to a linked list to the outputs of the graph, may be NULL.
  -- *                If non-NULL, *outputs is updated to contain the list of open outputs
  -- *                after the parsing, should be freed with inout_free().
  -- * @return non negative on success, a negative AVERROR code on error
  --

   function graph_parse_ptr
     (graph : access AVFilterGraph;
      filters : Interfaces.C.Strings.chars_ptr;
      inputs : System.Address;
      outputs : System.Address;
      log_ctx : System.Address) return int;


  --*
  -- * Add a graph described by a string to a graph.
  -- *
  -- * @param[in]  graph   the filter graph where to link the parsed graph context
  -- * @param[in]  filters string to be parsed
  -- * @param[out] inputs  a linked list of all free (unlinked) inputs of the
  -- *                     parsed graph will be returned here. It is to be freed
  -- *                     by the caller using inout_free().
  -- * @param[out] outputs a linked list of all free (unlinked) outputs of the
  -- *                     parsed graph will be returned here. It is to be freed by the
  -- *                     caller using inout_free().
  -- * @return zero on success, a negative AVERROR code on error
  -- *
  -- * @note This function returns the inputs and outputs that are left
  -- * unlinked after parsing the graph and the caller then deals with
  -- * them.
  -- * @note This function makes no reference whatsoever to already
  -- * existing parts of the graph and the inputs parameter will on return
  -- * contain inputs of the newly parsed part of the graph.  Analogously
  -- * the outputs parameter will contain outputs of the newly created
  -- * filters.
  --

   function graph_parse2
     (graph : access AVFilterGraph;
      filters : Interfaces.C.Strings.chars_ptr;
      inputs : System.Address;
      outputs : System.Address) return int;


  --*
  -- * Send a command to one or more filter instances.
  -- *
  -- * @param graph  the filter graph
  -- * @param target the filter(s) to which the command should be sent
  -- *               "all" sends to all filters
  -- *               otherwise it can be a filter or filter instance name
  -- *               which will send the command to all matching filters.
  -- * @param cmd    the command to send, for handling simplicity all commands must be alphanumeric only
  -- * @param arg    the argument for the command
  -- * @param res    a buffer with size res_size where the filter(s) can return a response.
  -- *
  -- * @returns >=0 on success otherwise an error code.
  -- *              AVERROR(ENOSYS) on unsupported commands
  --

   function graph_send_command
     (graph : access AVFilterGraph;
      target : Interfaces.C.Strings.chars_ptr;
      cmd : Interfaces.C.Strings.chars_ptr;
      arg : Interfaces.C.Strings.chars_ptr;
      res : Interfaces.C.Strings.chars_ptr;
      res_len : int;
      flags : int) return int;


  --*
  -- * Queue a command for one or more filter instances.
  -- *
  -- * @param graph  the filter graph
  -- * @param target the filter(s) to which the command should be sent
  -- *               "all" sends to all filters
  -- *               otherwise it can be a filter or filter instance name
  -- *               which will send the command to all matching filters.
  -- * @param cmd    the command to sent, for handling simplicity all commands must be alphanumeric only
  -- * @param arg    the argument for the command
  -- * @param ts     time at which the command should be sent to the filter
  -- *
  -- * @note As this executes commands after this function returns, no return code
  -- *       from the filter is provided, also AVFILTER_CMD_FLAG_ONE is not supported.
  --

   function graph_queue_command
     (graph : access AVFilterGraph;
      target : Interfaces.C.Strings.chars_ptr;
      cmd : Interfaces.C.Strings.chars_ptr;
      arg : Interfaces.C.Strings.chars_ptr;
      flags : int;
      ts : double) return int;


  --*
  -- * Dump a graph into a human-readable string representation.
  -- *
  -- * @param graph    the graph to dump
  -- * @param options  formatting options; currently ignored
  -- * @return  a string, or NULL in case of memory allocation failure;
  -- *          the string must be freed using av_free
  --

   function graph_dump (graph : access AVFilterGraph; options : Interfaces.C.Strings.chars_ptr) return String;


  --*
  -- * Request a frame on the oldest sink link.
  -- *
  -- * If the request returns AVERROR_EOF, try the next.
  -- *
  -- * Note that this function is not meant to be the sole scheduling mechanism
  -- * of a filtergraph, only a convenience function to help drain a filtergraph
  -- * in a balanced way under normal circumstances.
  -- *
  -- * Also note that AVERROR_EOF does not mean that frames did not arrive on
  -- * some of the sinks during the process.
  -- * When there are multiple sink links, in case the requested link
  -- * returns an EOF, this may cause a filter to flush pending frames
  -- * which are sent to another sink link, although unrequested.
  -- *
  -- * @return  the return value of ff_request_frame(),
  -- *          or AVERROR_EOF if all links returned AVERROR_EOF
  --

   function graph_request_oldest (graph : access AVFilterGraph) return int;


  --*
  -- * @}
  --

end FFMpeg.avfilter;
