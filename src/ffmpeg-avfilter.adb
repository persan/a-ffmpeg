pragma Ada_2012;
package body FFMpeg.avfilter is

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

   ---------------
   -- pad_count --
   ---------------

   function pad_count (pads : System.Address) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "pad_count unimplemented");
      return raise Program_Error with "Unimplemented function pad_count";
   end pad_count;

   ------------------
   -- pad_get_name --
   ------------------

   function pad_get_name
     (pads : System.Address;
      pad_idx : int)
      return String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "pad_get_name unimplemented");
      return raise Program_Error with "Unimplemented function pad_get_name";
   end pad_get_name;

   ------------------
   -- pad_get_type --
   ------------------

   function pad_get_type
     (pads : System.Address;
      pad_idx : int)
      return FFMpeg.Low_Level.ffmpeg_libavutil_avutil_h.AVMediaType
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "pad_get_type unimplemented");
      return raise Program_Error with "Unimplemented function pad_get_type";
   end pad_get_type;

   ----------
   -- link --
   ----------

   function link
     (src : access AVFilterContext;
      srcpad : unsigned;
      dst : access AVFilterContext;
      dstpad : unsigned)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "link unimplemented");
      return raise Program_Error with "Unimplemented function link";
   end link;

   ---------------
   -- link_free --
   ---------------

   procedure link_free (link : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "link_free unimplemented");
      raise Program_Error with "Unimplemented procedure link_free";
   end link_free;

   -----------------------
   -- link_get_channels --
   -----------------------

   function link_get_channels (link : access AVFilterLink) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "link_get_channels unimplemented");
      return raise Program_Error with "Unimplemented function link_get_channels";
   end link_get_channels;

   ---------------------
   -- link_set_closed --
   ---------------------

   procedure link_set_closed (link : access AVFilterLink; closed : int) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "link_set_closed unimplemented");
      raise Program_Error with "Unimplemented procedure link_set_closed";
   end link_set_closed;

   ------------------
   -- config_links --
   ------------------

   function config_links (filter : access AVFilterContext) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "config_links unimplemented");
      return raise Program_Error with "Unimplemented function config_links";
   end config_links;

   ---------------------
   -- process_command --
   ---------------------

   function process_command
     (filter : access AVFilterContext;
      cmd : Interfaces.C.Strings.chars_ptr;
      arg : Interfaces.C.Strings.chars_ptr;
      res : Interfaces.C.Strings.chars_ptr;
      res_len : int;
      flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "process_command unimplemented");
      return raise Program_Error with "Unimplemented function process_command";
   end process_command;

   ------------------
   -- register_all --
   ------------------

   procedure register_all is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "register_all unimplemented");
      raise Program_Error with "Unimplemented procedure register_all";
   end register_all;

   ------------
   -- uninit --
   ------------

   procedure uninit is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "uninit unimplemented");
      raise Program_Error with "Unimplemented procedure uninit";
   end uninit;

   --------------
   -- register --
   --------------

   function register (filter : access AVFilter) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "register unimplemented");
      return raise Program_Error with "Unimplemented function register";
   end register;

   -----------------
   -- get_by_name --
   -----------------

   function get_by_name
     (name : Interfaces.C.Strings.chars_ptr)
      return access AVFilter
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_by_name unimplemented");
      return raise Program_Error with "Unimplemented function get_by_name";
   end get_by_name;

   ----------
   -- next --
   ----------

   function next
     (prev : access constant AVFilter)
      return access constant AVFilter
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "next unimplemented");
      return raise Program_Error with "Unimplemented function next";
   end next;

   --------------------
   -- av_filter_next --
   --------------------

   function av_filter_next (filter : System.Address) return System.Address is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "av_filter_next unimplemented");
      return raise Program_Error with "Unimplemented function av_filter_next";
   end av_filter_next;

   ----------
   -- open --
   ----------

   function open
     (filter_ctx : System.Address;
      filter : access AVFilter;
      inst_name : Interfaces.C.Strings.chars_ptr)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "open unimplemented");
      return raise Program_Error with "Unimplemented function open";
   end open;

   -----------------
   -- init_filter --
   -----------------

   function init_filter
     (filter : access AVFilterContext;
      args : Interfaces.C.Strings.chars_ptr;
      opaque : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "init_filter unimplemented");
      return raise Program_Error with "Unimplemented function init_filter";
   end init_filter;

   --------------
   -- init_str --
   --------------

   function init_str
     (ctx : access AVFilterContext;
      args : Interfaces.C.Strings.chars_ptr)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "init_str unimplemented");
      return raise Program_Error with "Unimplemented function init_str";
   end init_str;

   ---------------
   -- init_dict --
   ---------------

   function init_dict
     (ctx : access AVFilterContext;
      options : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "init_dict unimplemented");
      return raise Program_Error with "Unimplemented function init_dict";
   end init_dict;

   ----------
   -- free --
   ----------

   procedure free (filter : access AVFilterContext) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free unimplemented");
      raise Program_Error with "Unimplemented procedure free";
   end free;

   -------------------
   -- insert_filter --
   -------------------

   function insert_filter
     (link : access AVFilterLink;
      filt : access AVFilterContext;
      filt_srcpad_idx : unsigned;
      filt_dstpad_idx : unsigned)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "insert_filter unimplemented");
      return raise Program_Error with "Unimplemented function insert_filter";
   end insert_filter;

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

   -----------------
   -- graph_alloc --
   -----------------

   function graph_alloc return access AVFilterGraph is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "graph_alloc unimplemented");
      return raise Program_Error with "Unimplemented function graph_alloc";
   end graph_alloc;

   ------------------------
   -- graph_alloc_filter --
   ------------------------

   function graph_alloc_filter
     (graph : access AVFilterGraph;
      filter : access constant AVFilter;
      name : Interfaces.C.Strings.chars_ptr)
      return access AVFilterContext
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "graph_alloc_filter unimplemented");
      return raise Program_Error with "Unimplemented function graph_alloc_filter";
   end graph_alloc_filter;

   ----------------------
   -- graph_get_filter --
   ----------------------

   function graph_get_filter
     (graph : access AVFilterGraph;
      name : Interfaces.C.Strings.chars_ptr)
      return access AVFilterContext
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "graph_get_filter unimplemented");
      return raise Program_Error with "Unimplemented function graph_get_filter";
   end graph_get_filter;

   ----------------------
   -- graph_add_filter --
   ----------------------

   function graph_add_filter
     (graphctx : access AVFilterGraph;
      filter : access AVFilterContext)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "graph_add_filter unimplemented");
      return raise Program_Error with "Unimplemented function graph_add_filter";
   end graph_add_filter;

   -------------------------
   -- graph_create_filter --
   -------------------------

   function graph_create_filter
     (filt_ctx : System.Address;
      filt : access constant AVFilter;
      name : Interfaces.C.Strings.chars_ptr;
      args : Interfaces.C.Strings.chars_ptr;
      opaque : System.Address;
      graph_ctx : access AVFilterGraph)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "graph_create_filter unimplemented");
      return raise Program_Error with "Unimplemented function graph_create_filter";
   end graph_create_filter;

   ----------------------------
   -- graph_set_auto_convert --
   ----------------------------

   procedure graph_set_auto_convert
     (graph : access AVFilterGraph;
      flags : unsigned)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "graph_set_auto_convert unimplemented");
      raise Program_Error with "Unimplemented procedure graph_set_auto_convert";
   end graph_set_auto_convert;

   ------------------
   -- graph_config --
   ------------------

   function graph_config
     (graphctx : access AVFilterGraph;
      log_ctx : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "graph_config unimplemented");
      return raise Program_Error with "Unimplemented function graph_config";
   end graph_config;

   ----------------
   -- graph_free --
   ----------------

   procedure graph_free (graph : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "graph_free unimplemented");
      raise Program_Error with "Unimplemented procedure graph_free";
   end graph_free;

   -----------------
   -- inout_alloc --
   -----------------

   function inout_alloc return access AVFilterInOut is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "inout_alloc unimplemented");
      return raise Program_Error with "Unimplemented function inout_alloc";
   end inout_alloc;

   ----------------
   -- inout_free --
   ----------------

   procedure inout_free (inout : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "inout_free unimplemented");
      raise Program_Error with "Unimplemented procedure inout_free";
   end inout_free;

   -----------------
   -- graph_parse --
   -----------------

   function graph_parse
     (graph : access AVFilterGraph;
      filters : Interfaces.C.Strings.chars_ptr;
      inputs : access AVFilterInOut;
      outputs : access AVFilterInOut;
      log_ctx : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "graph_parse unimplemented");
      return raise Program_Error with "Unimplemented function graph_parse";
   end graph_parse;

   ---------------------
   -- graph_parse_ptr --
   ---------------------

   function graph_parse_ptr
     (graph : access AVFilterGraph;
      filters : Interfaces.C.Strings.chars_ptr;
      inputs : System.Address;
      outputs : System.Address;
      log_ctx : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "graph_parse_ptr unimplemented");
      return raise Program_Error with "Unimplemented function graph_parse_ptr";
   end graph_parse_ptr;

   ------------------
   -- graph_parse2 --
   ------------------

   function graph_parse2
     (graph : access AVFilterGraph;
      filters : Interfaces.C.Strings.chars_ptr;
      inputs : System.Address;
      outputs : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "graph_parse2 unimplemented");
      return raise Program_Error with "Unimplemented function graph_parse2";
   end graph_parse2;

   ------------------------
   -- graph_send_command --
   ------------------------

   function graph_send_command
     (graph : access AVFilterGraph;
      target : Interfaces.C.Strings.chars_ptr;
      cmd : Interfaces.C.Strings.chars_ptr;
      arg : Interfaces.C.Strings.chars_ptr;
      res : Interfaces.C.Strings.chars_ptr;
      res_len : int;
      flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "graph_send_command unimplemented");
      return raise Program_Error with "Unimplemented function graph_send_command";
   end graph_send_command;

   -------------------------
   -- graph_queue_command --
   -------------------------

   function graph_queue_command
     (graph : access AVFilterGraph;
      target : Interfaces.C.Strings.chars_ptr;
      cmd : Interfaces.C.Strings.chars_ptr;
      arg : Interfaces.C.Strings.chars_ptr;
      flags : int;
      ts : double)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "graph_queue_command unimplemented");
      return raise Program_Error with "Unimplemented function graph_queue_command";
   end graph_queue_command;

   ----------------
   -- graph_dump --
   ----------------

   function graph_dump
     (graph : access AVFilterGraph;
      options : Interfaces.C.Strings.chars_ptr)
      return String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "graph_dump unimplemented");
      return raise Program_Error with "Unimplemented function graph_dump";
   end graph_dump;

   --------------------------
   -- graph_request_oldest --
   --------------------------

   function graph_request_oldest (graph : access AVFilterGraph) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "graph_request_oldest unimplemented");
      return raise Program_Error with "Unimplemented function graph_request_oldest";
   end graph_request_oldest;

end FFMpeg.avfilter;
