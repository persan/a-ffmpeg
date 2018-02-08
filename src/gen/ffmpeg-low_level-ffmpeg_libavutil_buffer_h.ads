pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with System;


package FFMpeg.Low_Level.ffmpeg_libavutil_buffer_h is

   AV_BUFFER_FLAG_READONLY : constant := (2 ** 0);  --  /usr/include/ffmpeg/libavutil/buffer.h:113

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
  -- * @ingroup lavu_buffer
  -- * refcounted data buffer API
  --  

  --*
  -- * @defgroup lavu_buffer AVBuffer
  -- * @ingroup lavu_data
  -- *
  -- * @{
  -- * AVBuffer is an API for reference-counted data buffers.
  -- *
  -- * There are two core objects in this API -- AVBuffer and AVBufferRef. AVBuffer
  -- * represents the data buffer itself; it is opaque and not meant to be accessed
  -- * by the caller directly, but only through AVBufferRef. However, the caller may
  -- * e.g. compare two AVBuffer pointers to check whether two different references
  -- * are describing the same data buffer. AVBufferRef represents a single
  -- * reference to an AVBuffer and it is the object that may be manipulated by the
  -- * caller directly.
  -- *
  -- * There are two functions provided for creating a new AVBuffer with a single
  -- * reference -- av_buffer_alloc() to just allocate a new buffer, and
  -- * av_buffer_create() to wrap an existing array in an AVBuffer. From an existing
  -- * reference, additional references may be created with av_buffer_ref().
  -- * Use av_buffer_unref() to free a reference (this will automatically free the
  -- * data once all the references are freed).
  -- *
  -- * The convention throughout this API and the rest of FFmpeg is such that the
  -- * buffer is considered writable if there exists only one reference to it (and
  -- * it has not been marked as read-only). The av_buffer_is_writable() function is
  -- * provided to check whether this is true and av_buffer_make_writable() will
  -- * automatically create a new writable buffer when necessary.
  -- * Of course nothing prevents the calling code from violating this convention,
  -- * however that is safe only when all the existing references are under its
  -- * control.
  -- *
  -- * @note Referencing and unreferencing the buffers is thread-safe and thus
  -- * may be done from multiple threads simultaneously without any need for
  -- * additional locking.
  -- *
  -- * @note Two different references to the same buffer can point to different
  -- * parts of the buffer (i.e. their AVBufferRef.data will not be equal).
  --  

  --*
  -- * A reference counted buffer type. It is opaque and is meant to be used through
  -- * references (AVBufferRef).
  --  

   --  skipped empty struct AVBuffer

  --*
  -- * A reference to a data buffer.
  -- *
  -- * The size of this struct is not a part of the public ABI and it is not meant
  -- * to be allocated directly.
  --  

   type AVBufferRef is record
      buffer : System.Address;  -- /usr/include/ffmpeg/libavutil/buffer.h:82
      data : access Interfaces.Unsigned_8;  -- /usr/include/ffmpeg/libavutil/buffer.h:89
      size : aliased int;  -- /usr/include/ffmpeg/libavutil/buffer.h:93
   end record;
   pragma Convention (C_Pass_By_Copy, AVBufferRef);  -- /usr/include/ffmpeg/libavutil/buffer.h:81

  --*
  --     * The data buffer. It is considered writable if and only if
  --     * this is the only reference to the buffer, in which case
  --     * av_buffer_is_writable() returns 1.
  --      

  --*
  --     * Size of data in bytes.
  --      

  --*
  -- * Allocate an AVBuffer of the given size using av_malloc().
  -- *
  -- * @return an AVBufferRef of given size or NULL when out of memory
  --  

   function av_buffer_alloc (size : int) return access AVBufferRef;  -- /usr/include/ffmpeg/libavutil/buffer.h:101
   pragma Import (C, av_buffer_alloc, "av_buffer_alloc");

  --*
  -- * Same as av_buffer_alloc(), except the returned buffer will be initialized
  -- * to zero.
  --  

   function av_buffer_allocz (size : int) return access AVBufferRef;  -- /usr/include/ffmpeg/libavutil/buffer.h:107
   pragma Import (C, av_buffer_allocz, "av_buffer_allocz");

  --*
  -- * Always treat the buffer as read-only, even when it has only one
  -- * reference.
  --  

  --*
  -- * Create an AVBuffer from an existing array.
  -- *
  -- * If this function is successful, data is owned by the AVBuffer. The caller may
  -- * only access data through the returned AVBufferRef and references derived from
  -- * it.
  -- * If this function fails, data is left untouched.
  -- * @param data   data array
  -- * @param size   size of data in bytes
  -- * @param free   a callback for freeing this buffer's data
  -- * @param opaque parameter to be got for processing or passed to free
  -- * @param flags  a combination of AV_BUFFER_FLAG_*
  -- *
  -- * @return an AVBufferRef referring to data on success, NULL on failure.
  --  

   function av_buffer_create
     (data : access Interfaces.Unsigned_8;
      size : int;
      free : access procedure  (arg1 : System.Address; arg2 : access Interfaces.Unsigned_8);
      opaque : System.Address;
      flags : int) return access AVBufferRef;  -- /usr/include/ffmpeg/libavutil/buffer.h:130
   pragma Import (C, av_buffer_create, "av_buffer_create");

  --*
  -- * Default free callback, which calls av_free() on the buffer data.
  -- * This function is meant to be passed to av_buffer_create(), not called
  -- * directly.
  --  

   procedure av_buffer_default_free (opaque : System.Address; data : access Interfaces.Unsigned_8);  -- /usr/include/ffmpeg/libavutil/buffer.h:139
   pragma Import (C, av_buffer_default_free, "av_buffer_default_free");

  --*
  -- * Create a new reference to an AVBuffer.
  -- *
  -- * @return a new AVBufferRef referring to the same AVBuffer as buf or NULL on
  -- * failure.
  --  

   function av_buffer_ref (buf : access AVBufferRef) return access AVBufferRef;  -- /usr/include/ffmpeg/libavutil/buffer.h:147
   pragma Import (C, av_buffer_ref, "av_buffer_ref");

  --*
  -- * Free a given reference and automatically free the buffer if there are no more
  -- * references to it.
  -- *
  -- * @param buf the reference to be freed. The pointer is set to NULL on return.
  --  

   procedure av_buffer_unref (buf : System.Address);  -- /usr/include/ffmpeg/libavutil/buffer.h:155
   pragma Import (C, av_buffer_unref, "av_buffer_unref");

  --*
  -- * @return 1 if the caller may write to the data referred to by buf (which is
  -- * true if and only if buf is the only reference to the underlying AVBuffer).
  -- * Return 0 otherwise.
  -- * A positive answer is valid until av_buffer_ref() is called on buf.
  --  

   function av_buffer_is_writable (buf : access constant AVBufferRef) return int;  -- /usr/include/ffmpeg/libavutil/buffer.h:163
   pragma Import (C, av_buffer_is_writable, "av_buffer_is_writable");

  --*
  -- * @return the opaque parameter set by av_buffer_create.
  --  

   function av_buffer_get_opaque (buf : access constant AVBufferRef) return System.Address;  -- /usr/include/ffmpeg/libavutil/buffer.h:168
   pragma Import (C, av_buffer_get_opaque, "av_buffer_get_opaque");

   function av_buffer_get_ref_count (buf : access constant AVBufferRef) return int;  -- /usr/include/ffmpeg/libavutil/buffer.h:170
   pragma Import (C, av_buffer_get_ref_count, "av_buffer_get_ref_count");

  --*
  -- * Create a writable reference from a given buffer reference, avoiding data copy
  -- * if possible.
  -- *
  -- * @param buf buffer reference to make writable. On success, buf is either left
  -- *            untouched, or it is unreferenced and a new writable AVBufferRef is
  -- *            written in its place. On failure, buf is left untouched.
  -- * @return 0 on success, a negative AVERROR on failure.
  --  

   function av_buffer_make_writable (buf : System.Address) return int;  -- /usr/include/ffmpeg/libavutil/buffer.h:181
   pragma Import (C, av_buffer_make_writable, "av_buffer_make_writable");

  --*
  -- * Reallocate a given buffer.
  -- *
  -- * @param buf  a buffer reference to reallocate. On success, buf will be
  -- *             unreferenced and a new reference with the required size will be
  -- *             written in its place. On failure buf will be left untouched. *buf
  -- *             may be NULL, then a new buffer is allocated.
  -- * @param size required new buffer size.
  -- * @return 0 on success, a negative AVERROR on failure.
  -- *
  -- * @note the buffer is actually reallocated with av_realloc() only if it was
  -- * initially allocated through av_buffer_realloc(NULL) and there is only one
  -- * reference to it (i.e. the one passed to this function). In all other cases
  -- * a new buffer is allocated and the data is copied.
  --  

   function av_buffer_realloc (buf : System.Address; size : int) return int;  -- /usr/include/ffmpeg/libavutil/buffer.h:198
   pragma Import (C, av_buffer_realloc, "av_buffer_realloc");

  --*
  -- * @}
  --  

  --*
  -- * @defgroup lavu_bufferpool AVBufferPool
  -- * @ingroup lavu_data
  -- *
  -- * @{
  -- * AVBufferPool is an API for a lock-free thread-safe pool of AVBuffers.
  -- *
  -- * Frequently allocating and freeing large buffers may be slow. AVBufferPool is
  -- * meant to solve this in cases when the caller needs a set of buffers of the
  -- * same size (the most obvious use case being buffers for raw video or audio
  -- * frames).
  -- *
  -- * At the beginning, the user must call av_buffer_pool_init() to create the
  -- * buffer pool. Then whenever a buffer is needed, call av_buffer_pool_get() to
  -- * get a reference to a new buffer, similar to av_buffer_alloc(). This new
  -- * reference works in all aspects the same way as the one created by
  -- * av_buffer_alloc(). However, when the last reference to this buffer is
  -- * unreferenced, it is returned to the pool instead of being freed and will be
  -- * reused for subsequent av_buffer_pool_get() calls.
  -- *
  -- * When the caller is done with the pool and no longer needs to allocate any new
  -- * buffers, av_buffer_pool_uninit() must be called to mark the pool as freeable.
  -- * Once all the buffers are released, it will automatically be freed.
  -- *
  -- * Allocating and releasing buffers with this API is thread-safe as long as
  -- * either the default alloc callback is used, or the user-supplied one is
  -- * thread-safe.
  --  

  --*
  -- * The buffer pool. This structure is opaque and not meant to be accessed
  -- * directly. It is allocated with av_buffer_pool_init() and freed with
  -- * av_buffer_pool_uninit().
  --  

   --  skipped empty struct AVBufferPool

  --*
  -- * Allocate and initialize a buffer pool.
  -- *
  -- * @param size size of each buffer in this pool
  -- * @param alloc a function that will be used to allocate new buffers when the
  -- * pool is empty. May be NULL, then the default allocator will be used
  -- * (av_buffer_alloc()).
  -- * @return newly created buffer pool on success, NULL on error.
  --  

   function av_buffer_pool_init (size : int; alloc : access function  (arg1 : int) return access AVBufferRef) return System.Address;  -- /usr/include/ffmpeg/libavutil/buffer.h:249
   pragma Import (C, av_buffer_pool_init, "av_buffer_pool_init");

  --*
  -- * Allocate and initialize a buffer pool with a more complex allocator.
  -- *
  -- * @param size size of each buffer in this pool
  -- * @param opaque arbitrary user data used by the allocator
  -- * @param alloc a function that will be used to allocate new buffers when the
  -- *              pool is empty.
  -- * @param pool_free a function that will be called immediately before the pool
  -- *                  is freed. I.e. after av_buffer_pool_uninit() is called
  -- *                  by the caller and all the frames are returned to the pool
  -- *                  and freed. It is intended to uninitialize the user opaque
  -- *                  data.
  -- * @return newly created buffer pool on success, NULL on error.
  --  

   function av_buffer_pool_init2
     (size : int;
      opaque : System.Address;
      alloc : access function  (arg1 : System.Address; arg2 : int) return access AVBufferRef;
      pool_free : access procedure  (arg1 : System.Address)) return System.Address;  -- /usr/include/ffmpeg/libavutil/buffer.h:265
   pragma Import (C, av_buffer_pool_init2, "av_buffer_pool_init2");

  --*
  -- * Mark the pool as being available for freeing. It will actually be freed only
  -- * once all the allocated buffers associated with the pool are released. Thus it
  -- * is safe to call this function while some of the allocated buffers are still
  -- * in use.
  -- *
  -- * @param pool pointer to the pool to be freed. It will be set to NULL.
  --  

   procedure av_buffer_pool_uninit (pool : System.Address);  -- /usr/include/ffmpeg/libavutil/buffer.h:277
   pragma Import (C, av_buffer_pool_uninit, "av_buffer_pool_uninit");

  --*
  -- * Allocate a new AVBuffer, reusing an old buffer from the pool when available.
  -- * This function may be called simultaneously from multiple threads.
  -- *
  -- * @return a reference to the new buffer on success, NULL on error.
  --  

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

   function av_buffer_pool_get (pool : System.Address) return access AVBufferRef;  -- /usr/include/ffmpeg/libavutil/buffer.h:285
   pragma Import (C, av_buffer_pool_get, "av_buffer_pool_get");

  --*
  -- * @}
  --  

end FFMpeg.Low_Level.ffmpeg_libavutil_buffer_h;
