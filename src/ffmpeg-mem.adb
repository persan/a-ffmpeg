pragma Ada_2012;
package body FFMpeg.mem is

   ------------
   -- malloc --
   ------------

   function malloc (size : size_t) return System.Address is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "malloc unimplemented");
      return raise Program_Error with "Unimplemented function malloc";
   end malloc;

   -------------
   -- mallocz --
   -------------

   function mallocz (size : size_t) return System.Address is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "mallocz unimplemented");
      return raise Program_Error with "Unimplemented function mallocz";
   end mallocz;

   ------------------
   -- malloc_array --
   ------------------

   function malloc_array
     (nmemb : size_t;
      size : size_t)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "malloc_array unimplemented");
      return raise Program_Error with "Unimplemented function malloc_array";
   end malloc_array;

   -------------------
   -- mallocz_array --
   -------------------

   function mallocz_array
     (nmemb : size_t;
      size : size_t)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "mallocz_array unimplemented");
      return raise Program_Error with "Unimplemented function mallocz_array";
   end mallocz_array;

   ------------
   -- calloc --
   ------------

   function calloc (nmemb : size_t; size : size_t) return System.Address is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "calloc unimplemented");
      return raise Program_Error with "Unimplemented function calloc";
   end calloc;

   -------------
   -- realloc --
   -------------

   function realloc
     (ptr : System.Address;
      size : size_t)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "realloc unimplemented");
      return raise Program_Error with "Unimplemented function realloc";
   end realloc;

   --------------
   -- reallocp --
   --------------

   function reallocp (ptr : System.Address; size : size_t) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "reallocp unimplemented");
      return raise Program_Error with "Unimplemented function reallocp";
   end reallocp;

   ---------------
   -- realloc_f --
   ---------------

   function realloc_f
     (ptr : System.Address;
      nelem : size_t;
      elsize : size_t)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "realloc_f unimplemented");
      return raise Program_Error with "Unimplemented function realloc_f";
   end realloc_f;

   -------------------
   -- realloc_array --
   -------------------

   function realloc_array
     (ptr : System.Address;
      nmemb : size_t;
      size : size_t)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "realloc_array unimplemented");
      return raise Program_Error with "Unimplemented function realloc_array";
   end realloc_array;

   --------------------
   -- reallocp_array --
   --------------------

   function reallocp_array
     (ptr : System.Address;
      nmemb : size_t;
      size : size_t)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "reallocp_array unimplemented");
      return raise Program_Error with "Unimplemented function reallocp_array";
   end reallocp_array;

   ------------------
   -- fast_realloc --
   ------------------

   function fast_realloc
     (ptr : System.Address;
      size : access unsigned;
      min_size : size_t)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "fast_realloc unimplemented");
      return raise Program_Error with "Unimplemented function fast_realloc";
   end fast_realloc;

   -----------------
   -- fast_malloc --
   -----------------

   procedure fast_malloc
     (ptr : System.Address;
      size : access unsigned;
      min_size : size_t)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "fast_malloc unimplemented");
      raise Program_Error with "Unimplemented procedure fast_malloc";
   end fast_malloc;

   ------------------
   -- fast_mallocz --
   ------------------

   procedure fast_mallocz
     (ptr : System.Address;
      size : access unsigned;
      min_size : size_t)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "fast_mallocz unimplemented");
      raise Program_Error with "Unimplemented procedure fast_mallocz";
   end fast_mallocz;

   ----------
   -- free --
   ----------

   procedure free (ptr : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free unimplemented");
      raise Program_Error with "Unimplemented procedure free";
   end free;

   -----------
   -- freep --
   -----------

   procedure freep (ptr : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "freep unimplemented");
      raise Program_Error with "Unimplemented procedure freep";
   end freep;

   ------------
   -- strdup --
   ------------

   function strdup (s : Interfaces.C.Strings.chars_ptr) return String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "strdup unimplemented");
      return raise Program_Error with "Unimplemented function strdup";
   end strdup;

   -------------
   -- strndup --
   -------------

   function strndup
     (s : Interfaces.C.Strings.chars_ptr;
      len : size_t)
      return String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "strndup unimplemented");
      return raise Program_Error with "Unimplemented function strndup";
   end strndup;

   ------------
   -- memdup --
   ------------

   function memdup
     (p : System.Address;
      size : size_t)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "memdup unimplemented");
      return raise Program_Error with "Unimplemented function memdup";
   end memdup;

   --------------------
   -- memcpy_backptr --
   --------------------

   procedure memcpy_backptr
     (dst : access Interfaces.Unsigned_8;
      back : int;
      cnt : int)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "memcpy_backptr unimplemented");
      raise Program_Error with "Unimplemented procedure memcpy_backptr";
   end memcpy_backptr;

   ------------------
   -- dynarray_add --
   ------------------

   procedure dynarray_add
     (tab_ptr : System.Address;
      nb_ptr : access int;
      elem : System.Address)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "dynarray_add unimplemented");
      raise Program_Error with "Unimplemented procedure dynarray_add";
   end dynarray_add;

   -------------------------
   -- dynarray_add_nofree --
   -------------------------

   function dynarray_add_nofree
     (tab_ptr : System.Address;
      nb_ptr : access int;
      elem : System.Address)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "dynarray_add_nofree unimplemented");
      return raise Program_Error with "Unimplemented function dynarray_add_nofree";
   end dynarray_add_nofree;

   -------------------
   -- dynarray2_add --
   -------------------

   function dynarray2_add
     (tab_ptr : System.Address;
      nb_ptr : access int;
      elem_size : size_t;
      elem_data : access Interfaces.Unsigned_8)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "dynarray2_add unimplemented");
      return raise Program_Error with "Unimplemented function dynarray2_add";
   end dynarray2_add;

   ---------------
   -- size_mult --
   ---------------

   function size_mult
     (a : size_t;
      b : size_t;
      r : access size_t)
      return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "size_mult unimplemented");
      return raise Program_Error with "Unimplemented function size_mult";
   end size_mult;

   ---------------
   -- max_alloc --
   ---------------

   procedure max_alloc (max : size_t) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "max_alloc unimplemented");
      raise Program_Error with "Unimplemented procedure max_alloc";
   end max_alloc;

end FFMpeg.mem;
