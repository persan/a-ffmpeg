pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;


package FFMpeg.dict is

   AV_DICT_MATCH_CASE : constant := 1;  --  /usr/include/ffmpeg/libavutil/dict.h:69
   AV_DICT_IGNORE_SUFFIX : constant := 2;  --  /usr/include/ffmpeg/libavutil/dict.h:70

   AV_DICT_DONT_STRDUP_KEY : constant := 4;  --  /usr/include/ffmpeg/libavutil/dict.h:72

   AV_DICT_DONT_STRDUP_VAL : constant := 8;  --  /usr/include/ffmpeg/libavutil/dict.h:74

   AV_DICT_DONT_OVERWRITE : constant := 16;  --  /usr/include/ffmpeg/libavutil/dict.h:76
   AV_DICT_APPEND : constant := 32;  --  /usr/include/ffmpeg/libavutil/dict.h:77

   AV_DICT_MULTIKEY : constant := 64;  --  /usr/include/ffmpeg/libavutil/dict.h:79

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
  -- * Public dictionary API.
  -- * @deprecated
  -- *  AVDictionary is provided for compatibility with libav. It is both in
  -- *  implementation as well as API inefficient. It does not scale and is
  -- *  extremely slow with large dictionaries.
  -- *  It is recommended that new code uses our tree container from tree.c/h
  -- *  where applicable, which uses AVL trees to achieve O(log n) performance.
  --

  --*
  -- * @addtogroup lavu_dict AVDictionary
  -- * @ingroup lavu_data
  -- *
  -- * @brief Simple key:value store
  -- *
  -- * @{
  -- * Dictionaries are used for storing key:value pairs. To create
  -- * an AVDictionary, simply pass an address of a NULL pointer to
  -- * set(). NULL can be used as an empty dictionary wherever
  -- * a pointer to an AVDictionary is required.
  -- * Use get() to retrieve an entry or iterate over all
  -- * entries and finally free() to free the dictionary
  -- * and all its contents.
  -- *
  -- @code
  --   AVDictionary *d = NULL;           // "create" an empty dictionary
  --   AVDictionaryEntry *t = NULL;
  --   set(&d, "foo", "bar", 0); // add an entry
  --   char *k = av_strdup("key");       // if your strings are already allocated,
  --   char *v = av_strdup("value");     // you can avoid copying them like this
  --   set(&d, k, v, AV_DICT_DONT_STRDUP_KEY | AV_DICT_DONT_STRDUP_VAL);
  --   while (t = get(d, "", t, AV_DICT_IGNORE_SUFFIX)) {
  --       <....>                             // iterate over all entries in d
  --   }
  --   free(&d);
  -- @endcode
  --

   type AVDictionaryEntry is record
      key : Interfaces.C.Strings.chars_ptr;
      value : Interfaces.C.Strings.chars_ptr;
   end record;
   pragma Convention (C_Pass_By_Copy, AVDictionaryEntry);

   --  skipped empty struct AVDictionary

  --*
  -- * Get a dictionary entry with matching key.
  -- *
  -- * The returned entry key or value must not be changed, or it will
  -- * cause undefined behavior.
  -- *
  -- * To iterate through all the dictionary entries, you can set the matching key
  -- * to the null string "" and set the AV_DICT_IGNORE_SUFFIX flag.
  -- *
  -- * @param prev Set to the previous matching element to find the next.
  -- *             If set to NULL the first matching element is returned.
  -- * @param key matching key
  -- * @param flags a collection of AV_DICT_* flags controlling how the entry is retrieved
  -- * @return found entry or NULL in case no matching entry was found in the dictionary
  --

   function get
     (m : System.Address;
      key : Interfaces.C.Strings.chars_ptr;
      prev : access constant AVDictionaryEntry;
      flags : int) return access AVDictionaryEntry;


  --*
  -- * Get number of entries in dictionary.
  -- *
  -- * @param m dictionary
  -- * @return  number of entries in dictionary
  --

   function count (m : System.Address) return int;


  --*
  -- * Set the given entry in *pm, overwriting an existing entry.
  -- *
  -- * Note: If AV_DICT_DONT_STRDUP_KEY or AV_DICT_DONT_STRDUP_VAL is set,
  -- * these arguments will be freed on error.
  -- *
  -- * Warning: Adding a new entry to a dictionary invalidates all existing entries
  -- * previously returned with get.
  -- *
  -- * @param pm pointer to a pointer to a dictionary struct. If *pm is NULL
  -- * a dictionary struct is allocated and put in *pm.
  -- * @param key entry key to add to *pm (will either be av_strduped or added as a new key depending on flags)
  -- * @param value entry value to add to *pm (will be av_strduped or added as a new key depending on flags).
  -- *        Passing a NULL value will cause an existing entry to be deleted.
  -- * @return >= 0 on success otherwise an error code <0
  --

   function set
     (pm : System.Address;
      key : Interfaces.C.Strings.chars_ptr;
      value : Interfaces.C.Strings.chars_ptr;
      flags : int) return int;


  --*
  -- * Convenience wrapper for set that converts the value to a string
  -- * and stores it.
  -- *
  -- * Note: If AV_DICT_DONT_STRDUP_KEY is set, key will be freed on error.
  --

   function set_int
     (pm : System.Address;
      key : Interfaces.C.Strings.chars_ptr;
      value : Interfaces.Integer_64;
      flags : int) return int;


  --*
  -- * Parse the key/value pairs list and add the parsed entries to a dictionary.
  -- *
  -- * In case of failure, all the successfully set entries are stored in
  -- * *pm. You may need to manually free the created dictionary.
  -- *
  -- * @param key_val_sep  a 0-terminated list of characters used to separate
  -- *                     key from value
  -- * @param pairs_sep    a 0-terminated list of characters used to separate
  -- *                     two pairs from each other
  -- * @param flags        flags to use when adding to dictionary.
  -- *                     AV_DICT_DONT_STRDUP_KEY and AV_DICT_DONT_STRDUP_VAL
  -- *                     are ignored since the key/value tokens will always
  -- *                     be duplicated.
  -- * @return             0 on success, negative AVERROR code on failure
  --

   function parse_string
     (pm : System.Address;
      str : Interfaces.C.Strings.chars_ptr;
      key_val_sep : Interfaces.C.Strings.chars_ptr;
      pairs_sep : Interfaces.C.Strings.chars_ptr;
      flags : int) return int;


  --*
  -- * Copy entries from one AVDictionary struct into another.
  -- * @param dst pointer to a pointer to a AVDictionary struct. If *dst is NULL,
  -- *            this function will allocate a struct for you and put it in *dst
  -- * @param src pointer to source AVDictionary struct
  -- * @param flags flags to use when setting entries in *dst
  -- * @note metadata is read using the AV_DICT_IGNORE_SUFFIX flag
  -- * @return 0 on success, negative AVERROR code on failure. If dst was allocated
  -- *           by this function, callers should free the associated memory.
  --

   function copy
     (dst : System.Address;
      src : System.Address;
      flags : int) return int;


  --*
  -- * Free all the memory allocated for an AVDictionary struct
  -- * and all keys and values.
  --

   procedure free (m : System.Address);


  --*
  -- * Get dictionary entries as a string.
  -- *
  -- * Create a string containing dictionary's entries.
  -- * Such string may be passed back to parse_string().
  -- * @note String is escaped with backslashes ('\').
  -- *
  -- * @param[in]  m             dictionary
  -- * @param[out] buffer        Pointer to buffer that will be allocated with string containg entries.
  -- *                           Buffer must be freed by the caller when is no longer needed.
  -- * @param[in]  key_val_sep   character used to separate key from value
  -- * @param[in]  pairs_sep     character used to separate two pairs from each other
  -- * @return                   >= 0 on success, negative on error
  -- * @warning Separators cannot be neither '\\' nor '\0'. They also cannot be the same.
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
  -- * Public dictionary API.
  -- * @deprecated
  -- *  AVDictionary is provided for compatibility with libav. It is both in
  -- *  implementation as well as API inefficient. It does not scale and is
  -- *  extremely slow with large dictionaries.
  -- *  It is recommended that new code uses our tree container from tree.c/h
  -- *  where applicable, which uses AVL trees to achieve O(log n) performance.
  --

  --*
  -- * @addtogroup lavu_dict AVDictionary
  -- * @ingroup lavu_data
  -- *
  -- * @brief Simple key:value store
  -- *
  -- * @{
  -- * Dictionaries are used for storing key:value pairs. To create
  -- * an AVDictionary, simply pass an address of a NULL pointer to
  -- * set(). NULL can be used as an empty dictionary wherever
  -- * a pointer to an AVDictionary is required.
  -- * Use get() to retrieve an entry or iterate over all
  -- * entries and finally free() to free the dictionary
  -- * and all its contents.
  -- *
  -- @code
  --   AVDictionary *d = NULL;           // "create" an empty dictionary
  --   AVDictionaryEntry *t = NULL;
  --   set(&d, "foo", "bar", 0); // add an entry
  --   char *k = av_strdup("key");       // if your strings are already allocated,
  --   char *v = av_strdup("value");     // you can avoid copying them like this
  --   set(&d, k, v, AV_DICT_DONT_STRDUP_KEY | AV_DICT_DONT_STRDUP_VAL);
  --   while (t = get(d, "", t, AV_DICT_IGNORE_SUFFIX)) {
  --       <....>                             // iterate over all entries in d
  --   }
  --   free(&d);
  -- @endcode
  --

   function get_string
     (m : System.Address;
      buffer : System.Address;
      key_val_sep : char;
      pairs_sep : char) return int;


  --*
  -- * @}
  --

end FFMpeg.dict;
