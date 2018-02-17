pragma Ada_2012;
package body FFMpeg.buffer is

   -----------
   -- alloc --
   -----------

   function alloc (size : int) return access AVBufferRef is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "alloc unimplemented");
      return raise Program_Error with "Unimplemented function alloc";
   end alloc;

   ------------
   -- allocz --
   ------------

   function allocz (size : int) return access AVBufferRef is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "allocz unimplemented");
      return raise Program_Error with "Unimplemented function allocz";
   end allocz;

   ------------
   -- create --
   ------------

   function create
     (data : access Interfaces.Unsigned_8;
      size : int;
      free : access procedure  (arg1 : System.Address; arg2 : access Interfaces.Unsigned_8);
      opaque : System.Address;
      flags : int)
      return access AVBufferRef
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "create unimplemented");
      return raise Program_Error with "Unimplemented function create";
   end create;

   ------------------
   -- default_free --
   ------------------

   procedure default_free
     (opaque : System.Address;
      data : access Interfaces.Unsigned_8)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "default_free unimplemented");
      raise Program_Error with "Unimplemented procedure default_free";
   end default_free;

   ---------
   -- ref --
   ---------

   function ref (buf : access AVBufferRef) return access AVBufferRef is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "ref unimplemented");
      return raise Program_Error with "Unimplemented function ref";
   end ref;

   -----------
   -- unref --
   -----------

   procedure unref (buf : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "unref unimplemented");
      raise Program_Error with "Unimplemented procedure unref";
   end unref;

   -----------------
   -- is_writable --
   -----------------

   function is_writable (buf : access constant AVBufferRef) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "is_writable unimplemented");
      return raise Program_Error with "Unimplemented function is_writable";
   end is_writable;

   ----------------
   -- get_opaque --
   ----------------

   function get_opaque
     (buf : access constant AVBufferRef)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_opaque unimplemented");
      return raise Program_Error with "Unimplemented function get_opaque";
   end get_opaque;

   -------------------
   -- get_ref_count --
   -------------------

   function get_ref_count (buf : access constant AVBufferRef) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_ref_count unimplemented");
      return raise Program_Error with "Unimplemented function get_ref_count";
   end get_ref_count;

   -------------------
   -- make_writable --
   -------------------

   function make_writable (buf : System.Address) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "make_writable unimplemented");
      return raise Program_Error with "Unimplemented function make_writable";
   end make_writable;

   -------------
   -- realloc --
   -------------

   function realloc (buf : System.Address; size : int) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "realloc unimplemented");
      return raise Program_Error with "Unimplemented function realloc";
   end realloc;

   ---------------
   -- pool_init --
   ---------------

   function pool_init
     (size : int;
      alloc : access function  (arg1 : int) return access AVBufferRef)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "pool_init unimplemented");
      return raise Program_Error with "Unimplemented function pool_init";
   end pool_init;

   ----------------
   -- pool_init2 --
   ----------------

   function pool_init2
     (size : int;
      opaque : System.Address;
      alloc : access function  (arg1 : System.Address; arg2 : int) return access AVBufferRef;
      pool_free : access procedure  (arg1 : System.Address))
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "pool_init2 unimplemented");
      return raise Program_Error with "Unimplemented function pool_init2";
   end pool_init2;

   -----------------
   -- pool_uninit --
   -----------------

   procedure pool_uninit (pool : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "pool_uninit unimplemented");
      raise Program_Error with "Unimplemented procedure pool_uninit";
   end pool_uninit;

   --------------
   -- pool_get --
   --------------

   function pool_get (pool : System.Address) return access AVBufferRef is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "pool_get unimplemented");
      return raise Program_Error with "Unimplemented function pool_get";
   end pool_get;

end FFMpeg.buffer;
