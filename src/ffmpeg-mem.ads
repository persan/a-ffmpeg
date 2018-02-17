pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with System;
with Interfaces.C.Strings;


package FFMpeg.mem is

   --  arg-macro: procedure DECLARE_ALIGNED (n, t, v)
   --    t __attribute__ ((aligned (n))) v
   --  arg-macro: procedure DECLARE_ASM_CONST (n, t, v)
   --    static const t used __attribute__ ((aligned (n))) v
   --  unsupported macro: malloc_attrib __attribute__((__malloc__))
   --  unsupported macro: alloc_size(...) __attribute__((alloc_size(__VA_ARGS__)))
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
  -- * @ingroup lavu_mem
  -- * Memory handling functions
  --

  --*
  -- * @addtogroup lavu_mem
  -- * Utilities for manipulating memory.
  -- *
  -- * FFmpeg has several applications of memory that are not required of a typical
  -- * program. For example, the computing-heavy components like video decoding and
  -- * encoding can be sped up significantly through the use of aligned memory.
  -- *
  -- * However, for each of FFmpeg's applications of memory, there might not be a
  -- * recognized or standardized API for that specific use. Memory alignment, for
  -- * instance, varies wildly depending on operating systems, architectures, and
  -- * compilers. Hence, this component of @ref libavutil is created to make
  -- * dealing with memory consistently possible on all platforms.
  -- *
  -- * @{
  -- *
  -- * @defgroup lavu_mem_macros Alignment Macros
  -- * Helper macros for declaring aligned variables.
  -- * @{
  --

  --*
  -- * @def DECLARE_ALIGNED(n,t,v)
  -- * Declare a variable that is aligned in memory.
  -- *
  -- * @code{.c}
  -- * DECLARE_ALIGNED(16, uint16_t, aligned_int) = 42;
  -- * DECLARE_ALIGNED(32, uint8_t, aligned_array)[128];
  -- *
  -- * // The default-alignment equivalent would be
  -- * uint16_t aligned_int = 42;
  -- * uint8_t aligned_array[128];
  -- * @endcode
  -- *
  -- * @param n Minimum alignment in bytes
  -- * @param t Type of the variable (or array element)
  -- * @param v Name of the variable
  --

  --*
  -- * @def DECLARE_ASM_CONST(n,t,v)
  -- * Declare a static constant aligned variable appropriate for use in inline
  -- * assembly code.
  -- *
  -- * @code{.c}
  -- * DECLARE_ASM_CONST(16, uint64_t, pw_08) = UINT64_C(0x0008000800080008);
  -- * @endcode
  -- *
  -- * @param n Minimum alignment in bytes
  -- * @param t Type of the variable (or array element)
  -- * @param v Name of the variable
  --

  --*
  -- * @}
  --

  --*
  -- * @defgroup lavu_mem_attrs Function Attributes
  -- * Function attributes applicable to memory handling functions.
  -- *
  -- * These function attributes can help compilers emit more useful warnings, or
  -- * generate better code.
  -- * @{
  --

  --*
  -- * @def malloc_attrib
  -- * Function attribute denoting a malloc-like function.
  -- *
  -- * @see <a href="https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-g_t_0040code_007bmalloc_007d-function-attribute-3251">Function attribute `malloc` in GCC's documentation</a>
  --

  --*
  -- * @def alloc_size(...)
  -- * Function attribute used on a function that allocates memory, whose size is
  -- * given by the specified parameter(s).
  -- *
  -- * @code{.c}
  -- * void *av_malloc(size_t size) alloc_size(1);
  -- * void *av_calloc(size_t nmemb, size_t size) alloc_size(1, 2);
  -- * @endcode
  -- *
  -- * @param ... One or two parameter indexes, separated by a comma
  -- *
  -- * @see <a href="https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-g_t_0040code_007balloc_005fsize_007d-function-attribute-3220">Function attribute `alloc_size` in GCC's documentation</a>
  --

  --*
  -- * @}
  --

  --*
  -- * @defgroup lavu_mem_funcs Heap Management
  -- * Functions responsible for allocating, freeing, and copying memory.
  -- *
  -- * All memory allocation functions have a built-in upper limit of `INT_MAX`
  -- * bytes. This may be changed with max_alloc(), although exercise extreme
  -- * caution when doing so.
  -- *
  -- * @{
  --

  --*
  -- * Allocate a memory block with alignment suitable for all memory accesses
  -- * (including vectors if available on the CPU).
  -- *
  -- * @param size Size in bytes for the memory block to be allocated
  -- * @return Pointer to the allocated block, or `NULL` if the block cannot
  -- *         be allocated
  -- * @see mallocz()
  --

   function malloc (size : size_t) return System.Address;


  --*
  -- * Allocate a memory block with alignment suitable for all memory accesses
  -- * (including vectors if available on the CPU) and zero all the bytes of the
  -- * block.
  -- *
  -- * @param size Size in bytes for the memory block to be allocated
  -- * @return Pointer to the allocated block, or `NULL` if it cannot be allocated
  -- * @see malloc()
  --

   function mallocz (size : size_t) return System.Address;


  --*
  -- * Allocate a memory block for an array with malloc().
  -- *
  -- * The allocated memory will have size `size * nmemb` bytes.
  -- *
  -- * @param nmemb Number of element
  -- * @param size  Size of a single element
  -- * @return Pointer to the allocated block, or `NULL` if the block cannot
  -- *         be allocated
  -- * @see malloc()
  --

   function malloc_array (nmemb : size_t; size : size_t) return System.Address;


  --*
  -- * Allocate a memory block for an array with mallocz().
  -- *
  -- * The allocated memory will have size `size * nmemb` bytes.
  -- *
  -- * @param nmemb Number of elements
  -- * @param size  Size of the single element
  -- * @return Pointer to the allocated block, or `NULL` if the block cannot
  -- *         be allocated
  -- *
  -- * @see mallocz()
  -- * @see malloc_array()
  --

   function mallocz_array (nmemb : size_t; size : size_t) return System.Address;


  --*
  -- * Non-inlined equivalent of mallocz_array().
  -- *
  -- * Created for symmetry with the calloc() C function.
  --

   function calloc (nmemb : size_t; size : size_t) return System.Address;


  --*
  -- * Allocate, reallocate, or free a block of memory.
  -- *
  -- * If `ptr` is `NULL` and `size` > 0, allocate a new block. If `size` is
  -- * zero, free the memory block pointed to by `ptr`. Otherwise, expand or
  -- * shrink that block of memory according to `size`.
  -- *
  -- * @param ptr  Pointer to a memory block already allocated with
  -- *             realloc() or `NULL`
  -- * @param size Size in bytes of the memory block to be allocated or
  -- *             reallocated
  -- *
  -- * @return Pointer to a newly-reallocated block or `NULL` if the block
  -- *         cannot be reallocated or the function is used to free the memory block
  -- *
  -- * @warning Unlike malloc(), the returned pointer is not guaranteed to be
  -- *          correctly aligned.
  -- * @see fast_realloc()
  -- * @see reallocp()
  --

   function realloc (ptr : System.Address; size : size_t) return System.Address;


  --*
  -- * Allocate, reallocate, or free a block of memory through a pointer to a
  -- * pointer.
  -- *
  -- * If `*ptr` is `NULL` and `size` > 0, allocate a new block. If `size` is
  -- * zero, free the memory block pointed to by `*ptr`. Otherwise, expand or
  -- * shrink that block of memory according to `size`.
  -- *
  -- * @param[in,out] ptr  Pointer to a pointer to a memory block already allocated
  -- *                     with realloc(), or a pointer to `NULL`. The pointer
  -- *                     is updated on success, or freed on failure.
  -- * @param[in]     size Size in bytes for the memory block to be allocated or
  -- *                     reallocated
  -- *
  -- * @return Zero on success, an AVERROR error code on failure
  -- *
  -- * @warning Unlike malloc(), the allocated memory is not guaranteed to be
  -- *          correctly aligned.
  --

   function reallocp (ptr : System.Address; size : size_t) return int;


  --*
  -- * Allocate, reallocate, or free a block of memory.
  -- *
  -- * This function does the same thing as realloc(), except:
  -- * - It takes two size arguments and allocates `nelem * elsize` bytes,
  -- *   after checking the result of the multiplication for integer overflow.
  -- * - It frees the input block in case of failure, thus avoiding the memory
  -- *   leak with the classic
  -- *   @code{.c}
  -- *   buf = realloc(buf);
  -- *   if (!buf)
  -- *       return -1;
  -- *   @endcode
  -- *   pattern.
  --

   function realloc_f
     (ptr : System.Address;
      nelem : size_t;
      elsize : size_t) return System.Address;


  --*
  -- * Allocate, reallocate, or free an array.
  -- *
  -- * If `ptr` is `NULL` and `nmemb` > 0, allocate a new block. If
  -- * `nmemb` is zero, free the memory block pointed to by `ptr`.
  -- *
  -- * @param ptr   Pointer to a memory block already allocated with
  -- *              realloc() or `NULL`
  -- * @param nmemb Number of elements in the array
  -- * @param size  Size of the single element of the array
  -- *
  -- * @return Pointer to a newly-reallocated block or NULL if the block
  -- *         cannot be reallocated or the function is used to free the memory block
  -- *
  -- * @warning Unlike malloc(), the allocated memory is not guaranteed to be
  -- *          correctly aligned.
  -- * @see reallocp_array()
  --

   function realloc_array
     (ptr : System.Address;
      nmemb : size_t;
      size : size_t) return System.Address;


  --*
  -- * Allocate, reallocate, or free an array through a pointer to a pointer.
  -- *
  -- * If `*ptr` is `NULL` and `nmemb` > 0, allocate a new block. If `nmemb` is
  -- * zero, free the memory block pointed to by `*ptr`.
  -- *
  -- * @param[in,out] ptr   Pointer to a pointer to a memory block already
  -- *                      allocated with realloc(), or a pointer to `NULL`.
  -- *                      The pointer is updated on success, or freed on failure.
  -- * @param[in]     nmemb Number of elements
  -- * @param[in]     size  Size of the single element
  -- *
  -- * @return Zero on success, an AVERROR error code on failure
  -- *
  -- * @warning Unlike malloc(), the allocated memory is not guaranteed to be
  -- *          correctly aligned.
  --

   function reallocp_array
     (ptr : System.Address;
      nmemb : size_t;
      size : size_t) return int;


  --*
  -- * Reallocate the given buffer if it is not large enough, otherwise do nothing.
  -- *
  -- * If the given buffer is `NULL`, then a new uninitialized buffer is allocated.
  -- *
  -- * If the given buffer is not large enough, and reallocation fails, `NULL` is
  -- * returned and `*size` is set to 0, but the original buffer is not changed or
  -- * freed.
  -- *
  -- * A typical use pattern follows:
  -- *
  -- * @code{.c}
  -- * uint8_t *buf = ...;
  -- * uint8_t *new_buf = fast_realloc(buf, &current_size, size_needed);
  -- * if (!new_buf) {
  -- *     // Allocation failed; clean up original buffer
  -- *     freep(&buf);
  -- *     return AVERROR(ENOMEM);
  -- * }
  -- * @endcode
  -- *
  -- * @param[in,out] ptr      Already allocated buffer, or `NULL`
  -- * @param[in,out] size     Pointer to current size of buffer `ptr`. `*size` is
  -- *                         changed to `min_size` in case of success or 0 in
  -- *                         case of failure
  -- * @param[in]     min_size New size of buffer `ptr`
  -- * @return `ptr` if the buffer is large enough, a pointer to newly reallocated
  -- *         buffer if the buffer was not large enough, or `NULL` in case of
  -- *         error
  -- * @see realloc()
  -- * @see fast_malloc()
  --

   function fast_realloc
     (ptr : System.Address;
      size : access unsigned;
      min_size : size_t) return System.Address;


  --*
  -- * Allocate a buffer, reusing the given one if large enough.
  -- *
  -- * Contrary to fast_realloc(), the current buffer contents might not be
  -- * preserved and on error the old buffer is freed, thus no special handling to
  -- * avoid memleaks is necessary.
  -- *
  -- * `*ptr` is allowed to be `NULL`, in which case allocation always happens if
  -- * `size_needed` is greater than 0.
  -- *
  -- * @code{.c}
  -- * uint8_t *buf = ...;
  -- * fast_malloc(&buf, &current_size, size_needed);
  -- * if (!buf) {
  -- *     // Allocation failed; buf already freed
  -- *     return AVERROR(ENOMEM);
  -- * }
  -- * @endcode
  -- *
  -- * @param[in,out] ptr      Pointer to pointer to an already allocated buffer.
  -- *                         `*ptr` will be overwritten with pointer to new
  -- *                         buffer on success or `NULL` on failure
  -- * @param[in,out] size     Pointer to current size of buffer `*ptr`. `*size` is
  -- *                         changed to `min_size` in case of success or 0 in
  -- *                         case of failure
  -- * @param[in]     min_size New size of buffer `*ptr`
  -- * @see realloc()
  -- * @see fast_mallocz()
  --

   procedure fast_malloc
     (ptr : System.Address;
      size : access unsigned;
      min_size : size_t);


  --*
  -- * Allocate and clear a buffer, reusing the given one if large enough.
  -- *
  -- * Like fast_malloc(), but all newly allocated space is initially cleared.
  -- * Reused buffer is not cleared.
  -- *
  -- * `*ptr` is allowed to be `NULL`, in which case allocation always happens if
  -- * `size_needed` is greater than 0.
  -- *
  -- * @param[in,out] ptr      Pointer to pointer to an already allocated buffer.
  -- *                         `*ptr` will be overwritten with pointer to new
  -- *                         buffer on success or `NULL` on failure
  -- * @param[in,out] size     Pointer to current size of buffer `*ptr`. `*size` is
  -- *                         changed to `min_size` in case of success or 0 in
  -- *                         case of failure
  -- * @param[in]     min_size New size of buffer `*ptr`
  -- * @see fast_malloc()
  --

   procedure fast_mallocz
     (ptr : System.Address;
      size : access unsigned;
      min_size : size_t);


  --*
  -- * Free a memory block which has been allocated with a function of malloc()
  -- * or realloc() family.
  -- *
  -- * @param ptr Pointer to the memory block which should be freed.
  -- *
  -- * @note `ptr = NULL` is explicitly allowed.
  -- * @note It is recommended that you use freep() instead, to prevent leaving
  -- *       behind dangling pointers.
  -- * @see freep()
  --

   procedure free (ptr : System.Address);


  --*
  -- * Free a memory block which has been allocated with a function of malloc()
  -- * or realloc() family, and set the pointer pointing to it to `NULL`.
  -- *
  -- * @code{.c}
  -- * uint8_t *buf = malloc(16);
  -- * free(buf);
  -- * // buf now contains a dangling pointer to freed memory, and accidental
  -- * // dereference of buf will result in a use-after-free, which may be a
  -- * // security risk.
  -- *
  -- * uint8_t *buf = malloc(16);
  -- * freep(&buf);
  -- * // buf is now NULL, and accidental dereference will only result in a
  -- * // NULL-pointer dereference.
  -- * @endcode
  -- *
  -- * @param ptr Pointer to the pointer to the memory block which should be freed
  -- * @note `*ptr = NULL` is safe and leads to no action.
  -- * @see free()
  --

   procedure freep (ptr : System.Address);


  --*
  -- * Duplicate a string.
  -- *
  -- * @param s String to be duplicated
  -- * @return Pointer to a newly-allocated string containing a
  -- *         copy of `s` or `NULL` if the string cannot be allocated
  -- * @see strndup()
  --

   function strdup (s : Interfaces.C.Strings.chars_ptr) return String;


  --*
  -- * Duplicate a substring of a string.
  -- *
  -- * @param s   String to be duplicated
  -- * @param len Maximum length of the resulting string (not counting the
  -- *            terminating byte)
  -- * @return Pointer to a newly-allocated string containing a
  -- *         substring of `s` or `NULL` if the string cannot be allocated
  --

   function strndup (s : Interfaces.C.Strings.chars_ptr; len : size_t) return String;


  --*
  -- * Duplicate a buffer with malloc().
  -- *
  -- * @param p    Buffer to be duplicated
  -- * @param size Size in bytes of the buffer copied
  -- * @return Pointer to a newly allocated buffer containing a
  -- *         copy of `p` or `NULL` if the buffer cannot be allocated
  --

   function memdup (p : System.Address; size : size_t) return System.Address;


  --*
  -- * Overlapping memcpy() implementation.
  -- *
  -- * @param dst  Destination buffer
  -- * @param back Number of bytes back to start copying (i.e. the initial size of
  -- *             the overlapping window); must be > 0
  -- * @param cnt  Number of bytes to copy; must be >= 0
  -- *
  -- * @note `cnt > back` is valid, this will copy the bytes we just copied,
  -- *       thus creating a repeating pattern with a period length of `back`.
  --

   procedure memcpy_backptr
     (dst : access Interfaces.Unsigned_8;
      back : int;
      cnt : int);


  --*
  -- * @}
  --

  --*
  -- * @defgroup lavu_mem_dynarray Dynamic Array
  -- *
  -- * Utilities to make an array grow when needed.
  -- *
  -- * Sometimes, the programmer would want to have an array that can grow when
  -- * needed. The libavutil dynamic array utilities fill that need.
  -- *
  -- * libavutil supports two systems of appending elements onto a dynamically
  -- * allocated array, the first one storing the pointer to the value in the
  -- * array, and the second storing the value directly. In both systems, the
  -- * caller is responsible for maintaining a variable containing the length of
  -- * the array, as well as freeing of the array after use.
  -- *
  -- * The first system stores pointers to values in a block of dynamically
  -- * allocated memory. Since only pointers are stored, the function does not need
  -- * to know the size of the type. Both dynarray_add() and
  -- * dynarray_add_nofree() implement this system.
  -- *
  -- * @code
  -- * type **array = NULL; //< an array of pointers to values
  -- * int    nb    = 0;    //< a variable to keep track of the length of the array
  -- *
  -- * type to_be_added  = ...;
  -- * type to_be_added2 = ...;
  -- *
  -- * dynarray_add(&array, &nb, &to_be_added);
  -- * if (nb == 0)
  -- *     return AVERROR(ENOMEM);
  -- *
  -- * dynarray_add(&array, &nb, &to_be_added2);
  -- * if (nb == 0)
  -- *     return AVERROR(ENOMEM);
  -- *
  -- * // Now:
  -- * //  nb           == 2
  -- * // &to_be_added  == array[0]
  -- * // &to_be_added2 == array[1]
  -- *
  -- * freep(&array);
  -- * @endcode
  -- *
  -- * The second system stores the value directly in a block of memory. As a
  -- * result, the function has to know the size of the type. dynarray2_add()
  -- * implements this mechanism.
  -- *
  -- * @code
  -- * type *array = NULL; //< an array of values
  -- * int   nb    = 0;    //< a variable to keep track of the length of the array
  -- *
  -- * type to_be_added  = ...;
  -- * type to_be_added2 = ...;
  -- *
  -- * type *addr = dynarray2_add((void **)&array, &nb, sizeof(*array), NULL);
  -- * if (!addr)
  -- *     return AVERROR(ENOMEM);
  -- * memcpy(addr, &to_be_added, sizeof(to_be_added));
  -- *
  -- * // Shortcut of the above.
  -- * type *addr = dynarray2_add((void **)&array, &nb, sizeof(*array),
  -- *                               (const void *)&to_be_added2);
  -- * if (!addr)
  -- *     return AVERROR(ENOMEM);
  -- *
  -- * // Now:
  -- * //  nb           == 2
  -- * //  to_be_added  == array[0]
  -- * //  to_be_added2 == array[1]
  -- *
  -- * freep(&array);
  -- * @endcode
  -- *
  -- * @{
  --

  --*
  -- * Add the pointer to an element to a dynamic array.
  -- *
  -- * The array to grow is supposed to be an array of pointers to
  -- * structures, and the element to add must be a pointer to an already
  -- * allocated structure.
  -- *
  -- * The array is reallocated when its size reaches powers of 2.
  -- * Therefore, the amortized cost of adding an element is constant.
  -- *
  -- * In case of success, the pointer to the array is updated in order to
  -- * point to the new grown array, and the number pointed to by `nb_ptr`
  -- * is incremented.
  -- * In case of failure, the array is freed, `*tab_ptr` is set to `NULL` and
  -- * `*nb_ptr` is set to 0.
  -- *
  -- * @param[in,out] tab_ptr Pointer to the array to grow
  -- * @param[in,out] nb_ptr  Pointer to the number of elements in the array
  -- * @param[in]     elem    Element to add
  -- * @see dynarray_add_nofree(), dynarray2_add()
  --

   procedure dynarray_add
     (tab_ptr : System.Address;
      nb_ptr : access int;
      elem : System.Address);


  --*
  -- * Add an element to a dynamic array.
  -- *
  -- * Function has the same functionality as dynarray_add(),
  -- * but it doesn't free memory on fails. It returns error code
  -- * instead and leave current buffer untouched.
  -- *
  -- * @return >=0 on success, negative otherwise
  -- * @see dynarray_add(), dynarray2_add()
  --

   function dynarray_add_nofree
     (tab_ptr : System.Address;
      nb_ptr : access int;
      elem : System.Address) return int;


  --*
  -- * Add an element of size `elem_size` to a dynamic array.
  -- *
  -- * The array is reallocated when its number of elements reaches powers of 2.
  -- * Therefore, the amortized cost of adding an element is constant.
  -- *
  -- * In case of success, the pointer to the array is updated in order to
  -- * point to the new grown array, and the number pointed to by `nb_ptr`
  -- * is incremented.
  -- * In case of failure, the array is freed, `*tab_ptr` is set to `NULL` and
  -- * `*nb_ptr` is set to 0.
  -- *
  -- * @param[in,out] tab_ptr   Pointer to the array to grow
  -- * @param[in,out] nb_ptr    Pointer to the number of elements in the array
  -- * @param[in]     elem_size Size in bytes of an element in the array
  -- * @param[in]     elem_data Pointer to the data of the element to add. If
  -- *                          `NULL`, the space of the newly added element is
  -- *                          allocated but left uninitialized.
  -- *
  -- * @return Pointer to the data of the element to copy in the newly allocated
  -- *         space
  -- * @see dynarray_add(), dynarray_add_nofree()
  --

   function dynarray2_add
     (tab_ptr : System.Address;
      nb_ptr : access int;
      elem_size : size_t;
      elem_data : access Interfaces.Unsigned_8) return System.Address;


  --*
  -- * @}
  --

  --*
  -- * @defgroup lavu_mem_misc Miscellaneous Functions
  -- *
  -- * Other functions related to memory allocation.
  -- *
  -- * @{
  --

  --*
  -- * Multiply two `size_t` values checking for overflow.
  -- *
  -- * @param[in]  a,b Operands of multiplication
  -- * @param[out] r   Pointer to the result of the operation
  -- * @return 0 on success, AVERROR(EINVAL) on overflow
  --

   function size_mult
     (a : size_t;
      b : size_t;
      r : access size_t) return int;


  -- Hack inspired from glibc: don't try the division if nelem and elsize
  --     * are both less than sqrt(SIZE_MAX).

  --*
  -- * Set the maximum size that may be allocated in one block.
  -- *
  -- * The value specified with this function is effective for all libavutil's @ref
  -- * lavu_mem_funcs "heap management functions."
  -- *
  -- * By default, the max value is defined as `INT_MAX`.
  -- *
  -- * @param max Value to be set as the new maximum size
  -- *
  -- * @warning Exercise extreme caution when using this function. Don't touch
  -- *          this if you do not understand the full consequence of doing so.
  --

   procedure max_alloc (max : size_t);


  --*
  -- * @}
  -- * @}
  --

end FFMpeg.mem;
