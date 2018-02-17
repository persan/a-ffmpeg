pragma Ada_2012;
package body FFMpeg.avio is

   ------------------------
   -- find_protocol_name --
   ------------------------

   function find_protocol_name
     (url : Interfaces.C.Strings.chars_ptr)
      return String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "find_protocol_name unimplemented");
      return raise Program_Error with "Unimplemented function find_protocol_name";
   end find_protocol_name;

   -----------
   -- check --
   -----------

   function check
     (url : Interfaces.C.Strings.chars_ptr;
      flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "check unimplemented");
      return raise Program_Error with "Unimplemented function check";
   end check;

   --------------------
   -- avpriv_io_move --
   --------------------

   function avpriv_io_move
     (url_src : Interfaces.C.Strings.chars_ptr;
      url_dst : Interfaces.C.Strings.chars_ptr)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "avpriv_io_move unimplemented");
      return raise Program_Error with "Unimplemented function avpriv_io_move";
   end avpriv_io_move;

   ----------------------
   -- avpriv_io_delete --
   ----------------------

   function avpriv_io_delete
     (url : Interfaces.C.Strings.chars_ptr)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "avpriv_io_delete unimplemented");
      return raise Program_Error with "Unimplemented function avpriv_io_delete";
   end avpriv_io_delete;

   --------------
   -- open_dir --
   --------------

   function open_dir
     (s : System.Address;
      url : Interfaces.C.Strings.chars_ptr;
      options : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "open_dir unimplemented");
      return raise Program_Error with "Unimplemented function open_dir";
   end open_dir;

   --------------
   -- read_dir --
   --------------

   function read_dir
     (s : access AVIODirContext;
      next : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "read_dir unimplemented");
      return raise Program_Error with "Unimplemented function read_dir";
   end read_dir;

   ---------------
   -- close_dir --
   ---------------

   function close_dir (s : System.Address) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "close_dir unimplemented");
      return raise Program_Error with "Unimplemented function close_dir";
   end close_dir;

   --------------------------
   -- free_directory_entry --
   --------------------------

   procedure free_directory_entry (c_entry : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free_directory_entry unimplemented");
      raise Program_Error with "Unimplemented procedure free_directory_entry";
   end free_directory_entry;

   -------------------
   -- alloc_context --
   -------------------

   function alloc_context
     (buffer : access unsigned_char;
      buffer_size : int;
      write_flag : int;
      opaque : System.Address;
      read_packet : access function
        (arg1 : System.Address;
         arg2 : access Interfaces.Unsigned_8;
         arg3 : int) return int;
      write_packet : access function
        (arg1 : System.Address;
         arg2 : access Interfaces.Unsigned_8;
         arg3 : int) return int;
      seek : access function
        (arg1 : System.Address;
         arg2 : Interfaces.Integer_64;
         arg3 : int) return Interfaces.Integer_64)
      return access AVIOContext
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "alloc_context unimplemented");
      return raise Program_Error with "Unimplemented function alloc_context";
   end alloc_context;

   --------
   -- w8 --
   --------

   procedure w8 (s : access AVIOContext; b : int) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "w8 unimplemented");
      raise Program_Error with "Unimplemented procedure w8";
   end w8;

   -----------
   -- write --
   -----------

   procedure write
     (s : access AVIOContext;
      buf : access unsigned_char;
      size : int)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "write unimplemented");
      raise Program_Error with "Unimplemented procedure write";
   end write;

   ----------
   -- wl64 --
   ----------

   procedure wl64 (s : access AVIOContext; val : Interfaces.Unsigned_64) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "wl64 unimplemented");
      raise Program_Error with "Unimplemented procedure wl64";
   end wl64;

   ----------
   -- wb64 --
   ----------

   procedure wb64 (s : access AVIOContext; val : Interfaces.Unsigned_64) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "wb64 unimplemented");
      raise Program_Error with "Unimplemented procedure wb64";
   end wb64;

   ----------
   -- wl32 --
   ----------

   procedure wl32 (s : access AVIOContext; val : unsigned) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "wl32 unimplemented");
      raise Program_Error with "Unimplemented procedure wl32";
   end wl32;

   ----------
   -- wb32 --
   ----------

   procedure wb32 (s : access AVIOContext; val : unsigned) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "wb32 unimplemented");
      raise Program_Error with "Unimplemented procedure wb32";
   end wb32;

   ----------
   -- wl24 --
   ----------

   procedure wl24 (s : access AVIOContext; val : unsigned) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "wl24 unimplemented");
      raise Program_Error with "Unimplemented procedure wl24";
   end wl24;

   ----------
   -- wb24 --
   ----------

   procedure wb24 (s : access AVIOContext; val : unsigned) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "wb24 unimplemented");
      raise Program_Error with "Unimplemented procedure wb24";
   end wb24;

   ----------
   -- wl16 --
   ----------

   procedure wl16 (s : access AVIOContext; val : unsigned) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "wl16 unimplemented");
      raise Program_Error with "Unimplemented procedure wl16";
   end wl16;

   ----------
   -- wb16 --
   ----------

   procedure wb16 (s : access AVIOContext; val : unsigned) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "wb16 unimplemented");
      raise Program_Error with "Unimplemented procedure wb16";
   end wb16;

   -------------
   -- put_str --
   -------------

   function put_str
     (s : access AVIOContext;
      str : Interfaces.C.Strings.chars_ptr)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "put_str unimplemented");
      return raise Program_Error with "Unimplemented function put_str";
   end put_str;

   -----------------
   -- put_str16le --
   -----------------

   function put_str16le
     (s : access AVIOContext;
      str : Interfaces.C.Strings.chars_ptr)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "put_str16le unimplemented");
      return raise Program_Error with "Unimplemented function put_str16le";
   end put_str16le;

   -----------------
   -- put_str16be --
   -----------------

   function put_str16be
     (s : access AVIOContext;
      str : Interfaces.C.Strings.chars_ptr)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "put_str16be unimplemented");
      return raise Program_Error with "Unimplemented function put_str16be";
   end put_str16be;

   ------------------
   -- write_marker --
   ------------------

   procedure write_marker
     (s : access AVIOContext;
      time : Interfaces.Integer_64;
      c_type : AVIODataMarkerType)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "write_marker unimplemented");
      raise Program_Error with "Unimplemented procedure write_marker";
   end write_marker;

   ----------
   -- seek --
   ----------

   function seek
     (s : access AVIOContext;
      offset : Interfaces.Integer_64;
      whence : int)
      return Interfaces.Integer_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "seek unimplemented");
      return raise Program_Error with "Unimplemented function seek";
   end seek;

   ----------
   -- skip --
   ----------

   function skip
     (s : access AVIOContext;
      offset : Interfaces.Integer_64)
      return Interfaces.Integer_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "skip unimplemented");
      return raise Program_Error with "Unimplemented function skip";
   end skip;

   ----------
   -- tell --
   ----------

   function tell (s : access AVIOContext) return Interfaces.Integer_64 is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "tell unimplemented");
      return raise Program_Error with "Unimplemented function tell";
   end tell;

   ----------
   -- size --
   ----------

   function size (s : access AVIOContext) return Interfaces.Integer_64 is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "size unimplemented");
      return raise Program_Error with "Unimplemented function size";
   end size;

   ----------
   -- feof --
   ----------

   function feof (s : access AVIOContext) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "feof unimplemented");
      return raise Program_Error with "Unimplemented function feof";
   end feof;

   --------------
   -- url_feof --
   --------------

   function url_feof (s : access AVIOContext) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "url_feof unimplemented");
      return raise Program_Error with "Unimplemented function url_feof";
   end url_feof;

   ------------
   -- printf --
   ------------

   function printf
     (s : access AVIOContext;
      fmt : Interfaces.C.Strings.chars_ptr)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "printf unimplemented");
      return raise Program_Error with "Unimplemented function printf";
   end printf;

   -----------
   -- flush --
   -----------

   procedure flush (s : access AVIOContext) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "flush unimplemented");
      raise Program_Error with "Unimplemented procedure flush";
   end flush;

   ----------
   -- read --
   ----------

   function read
     (s : access AVIOContext;
      buf : access unsigned_char;
      size : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "read unimplemented");
      return raise Program_Error with "Unimplemented function read";
   end read;

   --------
   -- r8 --
   --------

   function r8 (s : access AVIOContext) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "r8 unimplemented");
      return raise Program_Error with "Unimplemented function r8";
   end r8;

   ----------
   -- rl16 --
   ----------

   function rl16 (s : access AVIOContext) return unsigned is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "rl16 unimplemented");
      return raise Program_Error with "Unimplemented function rl16";
   end rl16;

   ----------
   -- rl24 --
   ----------

   function rl24 (s : access AVIOContext) return unsigned is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "rl24 unimplemented");
      return raise Program_Error with "Unimplemented function rl24";
   end rl24;

   ----------
   -- rl32 --
   ----------

   function rl32 (s : access AVIOContext) return unsigned is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "rl32 unimplemented");
      return raise Program_Error with "Unimplemented function rl32";
   end rl32;

   ----------
   -- rl64 --
   ----------

   function rl64 (s : access AVIOContext) return Interfaces.Unsigned_64 is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "rl64 unimplemented");
      return raise Program_Error with "Unimplemented function rl64";
   end rl64;

   ----------
   -- rb16 --
   ----------

   function rb16 (s : access AVIOContext) return unsigned is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "rb16 unimplemented");
      return raise Program_Error with "Unimplemented function rb16";
   end rb16;

   ----------
   -- rb24 --
   ----------

   function rb24 (s : access AVIOContext) return unsigned is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "rb24 unimplemented");
      return raise Program_Error with "Unimplemented function rb24";
   end rb24;

   ----------
   -- rb32 --
   ----------

   function rb32 (s : access AVIOContext) return unsigned is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "rb32 unimplemented");
      return raise Program_Error with "Unimplemented function rb32";
   end rb32;

   ----------
   -- rb64 --
   ----------

   function rb64 (s : access AVIOContext) return Interfaces.Unsigned_64 is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "rb64 unimplemented");
      return raise Program_Error with "Unimplemented function rb64";
   end rb64;

   -------------
   -- get_str --
   -------------

   function get_str
     (pb : access AVIOContext;
      maxlen : int;
      buf : Interfaces.C.Strings.chars_ptr;
      buflen : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_str unimplemented");
      return raise Program_Error with "Unimplemented function get_str";
   end get_str;

   -----------------
   -- get_str16le --
   -----------------

   function get_str16le
     (pb : access AVIOContext;
      maxlen : int;
      buf : Interfaces.C.Strings.chars_ptr;
      buflen : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_str16le unimplemented");
      return raise Program_Error with "Unimplemented function get_str16le";
   end get_str16le;

   -----------------
   -- get_str16be --
   -----------------

   function get_str16be
     (pb : access AVIOContext;
      maxlen : int;
      buf : Interfaces.C.Strings.chars_ptr;
      buflen : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_str16be unimplemented");
      return raise Program_Error with "Unimplemented function get_str16be";
   end get_str16be;

   ----------
   -- open --
   ----------

   function open
     (s : System.Address;
      url : Interfaces.C.Strings.chars_ptr;
      flags : int)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "open unimplemented");
      return raise Program_Error with "Unimplemented function open";
   end open;

   -----------
   -- open2 --
   -----------

   function open2
     (s : System.Address;
      url : Interfaces.C.Strings.chars_ptr;
      flags : int;
      int_cb : access constant AVIOInterruptCB;
      options : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "open2 unimplemented");
      return raise Program_Error with "Unimplemented function open2";
   end open2;

   -----------
   -- close --
   -----------

   function close (s : access AVIOContext) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "close unimplemented");
      return raise Program_Error with "Unimplemented function close";
   end close;

   ------------
   -- closep --
   ------------

   function closep (s : System.Address) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "closep unimplemented");
      return raise Program_Error with "Unimplemented function closep";
   end closep;

   ------------------
   -- open_dyn_buf --
   ------------------

   function open_dyn_buf (s : System.Address) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "open_dyn_buf unimplemented");
      return raise Program_Error with "Unimplemented function open_dyn_buf";
   end open_dyn_buf;

   -----------------
   -- get_dyn_buf --
   -----------------

   function get_dyn_buf
     (s : access AVIOContext;
      pbuffer : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_dyn_buf unimplemented");
      return raise Program_Error with "Unimplemented function get_dyn_buf";
   end get_dyn_buf;

   -------------------
   -- close_dyn_buf --
   -------------------

   function close_dyn_buf
     (s : access AVIOContext;
      pbuffer : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "close_dyn_buf unimplemented");
      return raise Program_Error with "Unimplemented function close_dyn_buf";
   end close_dyn_buf;

   --------------------
   -- enum_protocols --
   --------------------

   function enum_protocols
     (opaque : System.Address;
      output : int)
      return String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "enum_protocols unimplemented");
      return raise Program_Error with "Unimplemented function enum_protocols";
   end enum_protocols;

   -----------
   -- pause --
   -----------

   function pause (h : access AVIOContext; pause : int) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "pause unimplemented");
      return raise Program_Error with "Unimplemented function pause";
   end pause;

   ---------------
   -- seek_time --
   ---------------

   function seek_time
     (h : access AVIOContext;
      stream_index : int;
      timestamp : Interfaces.Integer_64;
      flags : int)
      return Interfaces.Integer_64
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "seek_time unimplemented");
      return raise Program_Error with "Unimplemented function seek_time";
   end seek_time;

   --------------------
   -- read_to_bprint --
   --------------------

   function read_to_bprint
     (h : access AVIOContext;
      pb : System.Address;
      max_size : size_t)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "read_to_bprint unimplemented");
      return raise Program_Error with "Unimplemented function read_to_bprint";
   end read_to_bprint;

   ---------------
   -- av_accept --
   ---------------

   function av_accept
     (s : access AVIOContext;
      c : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "av_accept unimplemented");
      return raise Program_Error with "Unimplemented function av_accept";
   end av_accept;

   ---------------
   -- handshake --
   ---------------

   function handshake (c : access AVIOContext) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "handshake unimplemented");
      return raise Program_Error with "Unimplemented function handshake";
   end handshake;

end FFMpeg.avio;
