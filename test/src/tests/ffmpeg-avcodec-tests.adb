
with GNAT.Source_Info;
with AUnit.Assertions;
with Interfaces.C;
package body FFMpeg.avcodec.Tests is
   use AUnit.Assertions;
   use Interfaces.C;
   ----------
   -- Name --
   ----------
   Test_Name : constant String := GNAT.Source_Info.Enclosing_Entity;
   function Name (Test : Test_Case) return Aunit.Message_String is
   begin
      return Aunit.Format (Test_Name);
   end Name;

   procedure Test_get_pkt_timebase (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_pkt_timebase;


   procedure Test_set_pkt_timebase (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_pkt_timebase;


   procedure Test_get_codec_descriptor (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_codec_descriptor;


   procedure Test_set_codec_descriptor (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_codec_descriptor;


   procedure Test_get_codec_properties (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_codec_properties;


   procedure Test_get_lowres (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_lowres;


   procedure Test_set_lowres (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_lowres;


   procedure Test_get_seek_preroll (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_seek_preroll;


   procedure Test_set_seek_preroll (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_seek_preroll;


   procedure Test_get_chroma_intra_matrix (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_chroma_intra_matrix;


   procedure Test_set_chroma_intra_matrix (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_chroma_intra_matrix;


   procedure Test_get_max_lowres (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_max_lowres;


   procedure Test_next (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_next;


   procedure Test_version (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_version;


   procedure Test_configuration (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_configuration;


   procedure Test_license (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_license;


   procedure Test_register (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_register;


   procedure Test_register_all (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_register_all;


   procedure Test_alloc_context3 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_alloc_context3;


   procedure Test_free_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_free_context;


   procedure Test_get_context_defaults3 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_context_defaults3;


   procedure Test_get_class (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_class;


   procedure Test_get_frame_class (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_frame_class;


   procedure Test_get_subtitle_rect_class (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_subtitle_rect_class;


   procedure Test_copy_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_copy_context;


   procedure Test_parameters_alloc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_parameters_alloc;


   procedure Test_parameters_free (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_parameters_free;


   procedure Test_parameters_copy (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_parameters_copy;


   procedure Test_parameters_from_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_parameters_from_context;


   procedure Test_parameters_to_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_parameters_to_context;


   procedure Test_open2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_open2;


   procedure Test_close (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_close;


   procedure Test_avsubtitle_free (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_avsubtitle_free;


   procedure Test_packet_alloc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_packet_alloc;


   procedure Test_packet_clone (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_packet_clone;


   procedure Test_packet_free (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_packet_free;


   procedure Test_init_packet (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_init_packet;


   procedure Test_new_packet (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_new_packet;


   procedure Test_shrink_packet (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_shrink_packet;


   procedure Test_grow_packet (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_grow_packet;


   procedure Test_packet_from_data (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_packet_from_data;


   procedure Test_dup_packet (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_dup_packet;


   procedure Test_copy_packet (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_copy_packet;


   procedure Test_copy_packet_side_data (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_copy_packet_side_data;


   procedure Test_free_packet (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_free_packet;


   procedure Test_packet_new_side_data (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_packet_new_side_data;


   procedure Test_packet_add_side_data (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_packet_add_side_data;


   procedure Test_packet_shrink_side_data (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_packet_shrink_side_data;


   procedure Test_packet_get_side_data (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_packet_get_side_data;


   procedure Test_packet_merge_side_data (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_packet_merge_side_data;


   procedure Test_packet_split_side_data (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_packet_split_side_data;


   procedure Test_packet_side_data_name (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_packet_side_data_name;


   procedure Test_packet_pack_dictionary (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_packet_pack_dictionary;


   procedure Test_packet_unpack_dictionary (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_packet_unpack_dictionary;


   procedure Test_packet_free_side_data (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_packet_free_side_data;


   procedure Test_packet_ref (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_packet_ref;


   procedure Test_packet_unref (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_packet_unref;


   procedure Test_packet_move_ref (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_packet_move_ref;


   procedure Test_packet_copy_props (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_packet_copy_props;


   procedure Test_packet_rescale_ts (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_packet_rescale_ts;


   procedure Test_find_decoder (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_find_decoder;


   procedure Test_find_decoder_by_name (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_find_decoder_by_name;


   procedure Test_default_get_buffer2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_default_get_buffer2;


   procedure Test_get_edge_width (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_edge_width;


   procedure Test_align_dimensions (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_align_dimensions;


   procedure Test_align_dimensions2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_align_dimensions2;


   procedure Test_enum_to_chroma_pos (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_enum_to_chroma_pos;


   procedure Test_chroma_pos_to_enum (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_chroma_pos_to_enum;


   procedure Test_decode_audio4 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_decode_audio4;


   procedure Test_decode_video2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_decode_video2;


   procedure Test_decode_subtitle2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_decode_subtitle2;


   procedure Test_send_packet (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_send_packet;


   procedure Test_receive_frame (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_receive_frame;


   procedure Test_send_frame (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_send_frame;


   procedure Test_receive_packet (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_receive_packet;


   procedure Test_parser_next (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_parser_next;


   procedure Test_register_codec_parser (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_register_codec_parser;


   procedure Test_parser_init (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_parser_init;


   procedure Test_parser_parse2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_parser_parse2;


   procedure Test_parser_change (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_parser_change;


   procedure Test_parser_close (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_parser_close;


   procedure Test_find_encoder (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_find_encoder;


   procedure Test_find_encoder_by_name (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_find_encoder_by_name;


   procedure Test_encode_audio2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_encode_audio2;


   procedure Test_encode_video2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_encode_video2;


   procedure Test_encode_subtitle (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_encode_subtitle;


   procedure Test_audio_resample_init (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_audio_resample_init;


   procedure Test_audio_resample (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_audio_resample;


   procedure Test_audio_resample_close (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_audio_resample_close;


   procedure Test_resample_init (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_resample_init;


   procedure Test_resample (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_resample;


   procedure Test_resample_compensate (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_resample_compensate;


   procedure Test_resample_close (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_resample_close;


   procedure Test_avpicture_alloc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_avpicture_alloc;


   procedure Test_avpicture_free (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_avpicture_free;


   procedure Test_avpicture_fill (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_avpicture_fill;


   procedure Test_avpicture_layout (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_avpicture_layout;


   procedure Test_avpicture_get_size (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_avpicture_get_size;


   procedure Test_picture_copy (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_picture_copy;


   procedure Test_picture_crop (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_picture_crop;


   procedure Test_picture_pad (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_picture_pad;


   procedure Test_get_chroma_sub_sample (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_chroma_sub_sample;


   procedure Test_pix_fmt_to_codec_tag (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_pix_fmt_to_codec_tag;


   procedure Test_get_pix_fmt_loss (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_pix_fmt_loss;


   procedure Test_find_best_pix_fmt_of_list (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_find_best_pix_fmt_of_list;


   procedure Test_find_best_pix_fmt_of_2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_find_best_pix_fmt_of_2;


   procedure Test_find_best_pix_fmt2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_find_best_pix_fmt2;


   procedure Test_default_get_format (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_default_get_format;


   procedure Test_set_dimensions (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_set_dimensions;


   procedure Test_get_codec_tag_string (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_codec_tag_string;


   procedure Test_av_string (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_av_string;


   procedure Test_get_profile_name (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_profile_name;


   procedure Test_profile_name (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_profile_name;


   procedure Test_default_execute (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_default_execute;


   procedure Test_default_execute2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_default_execute2;


   procedure Test_fill_audio_frame (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_fill_audio_frame;


   procedure Test_flush_buffers (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_flush_buffers;


   procedure Test_get_bits_per_sample (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_bits_per_sample;


   procedure Test_get_pcm_codec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_pcm_codec;


   procedure Test_get_exact_bits_per_sample (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_exact_bits_per_sample;


   procedure Test_get_audio_frame_duration (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_audio_frame_duration;


   procedure Test_get_audio_frame_duration2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_audio_frame_duration2;


   procedure Test_register_bitstream_filter (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_register_bitstream_filter;


   procedure Test_bitstream_filter_init (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_bitstream_filter_init;


   procedure Test_bitstream_filter_filter (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_bitstream_filter_filter;


   procedure Test_bitstream_filter_close (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_bitstream_filter_close;


   procedure Test_bitstream_filter_next (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_bitstream_filter_next;


   procedure Test_bsf_get_by_name (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_bsf_get_by_name;


   procedure Test_bsf_next (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_bsf_next;


   procedure Test_bsf_alloc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_bsf_alloc;


   procedure Test_bsf_init (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_bsf_init;


   procedure Test_bsf_send_packet (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_bsf_send_packet;


   procedure Test_bsf_receive_packet (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_bsf_receive_packet;


   procedure Test_bsf_free (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_bsf_free;


   procedure Test_bsf_get_class (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_bsf_get_class;


   procedure Test_bsf_list_alloc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_bsf_list_alloc;


   procedure Test_bsf_list_free (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_bsf_list_free;


   procedure Test_bsf_list_append (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_bsf_list_append;


   procedure Test_bsf_list_append2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_bsf_list_append2;


   procedure Test_bsf_list_finalize (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_bsf_list_finalize;


   procedure Test_bsf_list_parse_str (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_bsf_list_parse_str;


   procedure Test_bsf_get_null_filter (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_bsf_get_null_filter;


   procedure Test_fast_padded_malloc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_fast_padded_malloc;


   procedure Test_fast_padded_mallocz (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_fast_padded_mallocz;


   procedure Test_xiphlacing (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_xiphlacing;


   procedure Test_log_missing_feature (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_log_missing_feature;


   procedure Test_log_ask_for_sample (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_log_ask_for_sample;


   procedure Test_register_hwaccel (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_register_hwaccel;


   procedure Test_hwaccel_next (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_hwaccel_next;


   procedure Test_lockmgr_register (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_lockmgr_register;


   procedure Test_get_type (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_type;


   procedure Test_get_name (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_get_name;


   procedure Test_is_open (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_is_open;


   procedure Test_is_encoder (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_is_encoder;


   procedure Test_is_decoder (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_is_decoder;


   procedure Test_descriptor_get (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_descriptor_get;


   procedure Test_descriptor_next (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_descriptor_next;


   procedure Test_descriptor_get_by_name (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_descriptor_get_by_name;


   procedure Test_cpb_properties_alloc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_cpb_properties_alloc;




   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
      use AUnit.Test_Cases.Registration;
   begin
      Register_Routine (Test => Test, Routine => Test_get_pkt_timebase'Access, Name => "Test_get_pkt_timebase");
      Register_Routine (Test => Test, Routine => Test_set_pkt_timebase'Access, Name => "Test_set_pkt_timebase");
      Register_Routine (Test => Test, Routine => Test_get_codec_descriptor'Access, Name => "Test_get_codec_descriptor");
      Register_Routine (Test => Test, Routine => Test_set_codec_descriptor'Access, Name => "Test_set_codec_descriptor");
      Register_Routine (Test => Test, Routine => Test_get_codec_properties'Access, Name => "Test_get_codec_properties");
      Register_Routine (Test => Test, Routine => Test_get_lowres'Access, Name => "Test_get_lowres");
      Register_Routine (Test => Test, Routine => Test_set_lowres'Access, Name => "Test_set_lowres");
      Register_Routine (Test => Test, Routine => Test_get_seek_preroll'Access, Name => "Test_get_seek_preroll");
      Register_Routine (Test => Test, Routine => Test_set_seek_preroll'Access, Name => "Test_set_seek_preroll");
      Register_Routine (Test => Test, Routine => Test_get_chroma_intra_matrix'Access, Name => "Test_get_chroma_intra_matrix");
      Register_Routine (Test => Test, Routine => Test_set_chroma_intra_matrix'Access, Name => "Test_set_chroma_intra_matrix");
      Register_Routine (Test => Test, Routine => Test_get_max_lowres'Access, Name => "Test_get_max_lowres");
      Register_Routine (Test => Test, Routine => Test_next'Access, Name => "Test_next");
      Register_Routine (Test => Test, Routine => Test_version'Access, Name => "Test_version");
      Register_Routine (Test => Test, Routine => Test_configuration'Access, Name => "Test_configuration");
      Register_Routine (Test => Test, Routine => Test_license'Access, Name => "Test_license");
      Register_Routine (Test => Test, Routine => Test_register'Access, Name => "Test_register");
      Register_Routine (Test => Test, Routine => Test_register_all'Access, Name => "Test_register_all;");
      Register_Routine (Test => Test, Routine => Test_alloc_context3'Access, Name => "Test_alloc_context3");
      Register_Routine (Test => Test, Routine => Test_free_context'Access, Name => "Test_free_context");
      Register_Routine (Test => Test, Routine => Test_get_context_defaults3'Access, Name => "Test_get_context_defaults3");
      Register_Routine (Test => Test, Routine => Test_get_class'Access, Name => "Test_get_class");
      Register_Routine (Test => Test, Routine => Test_get_frame_class'Access, Name => "Test_get_frame_class");
      Register_Routine (Test => Test, Routine => Test_get_subtitle_rect_class'Access, Name => "Test_get_subtitle_rect_class");
      Register_Routine (Test => Test, Routine => Test_copy_context'Access, Name => "Test_copy_context");
      Register_Routine (Test => Test, Routine => Test_parameters_alloc'Access, Name => "Test_parameters_alloc");
      Register_Routine (Test => Test, Routine => Test_parameters_free'Access, Name => "Test_parameters_free");
      Register_Routine (Test => Test, Routine => Test_parameters_copy'Access, Name => "Test_parameters_copy");
      Register_Routine (Test => Test, Routine => Test_parameters_from_context'Access, Name => "Test_parameters_from_context");
      Register_Routine (Test => Test, Routine => Test_parameters_to_context'Access, Name => "Test_parameters_to_context");
      Register_Routine (Test => Test, Routine => Test_open2'Access, Name => "Test_open2");
      Register_Routine (Test => Test, Routine => Test_close'Access, Name => "Test_close");
      Register_Routine (Test => Test, Routine => Test_avsubtitle_free'Access, Name => "Test_avsubtitle_free");
      Register_Routine (Test => Test, Routine => Test_packet_alloc'Access, Name => "Test_packet_alloc");
      Register_Routine (Test => Test, Routine => Test_packet_clone'Access, Name => "Test_packet_clone");
      Register_Routine (Test => Test, Routine => Test_packet_free'Access, Name => "Test_packet_free");
      Register_Routine (Test => Test, Routine => Test_init_packet'Access, Name => "Test_init_packet");
      Register_Routine (Test => Test, Routine => Test_new_packet'Access, Name => "Test_new_packet");
      Register_Routine (Test => Test, Routine => Test_shrink_packet'Access, Name => "Test_shrink_packet");
      Register_Routine (Test => Test, Routine => Test_grow_packet'Access, Name => "Test_grow_packet");
      Register_Routine (Test => Test, Routine => Test_packet_from_data'Access, Name => "Test_packet_from_data");
      Register_Routine (Test => Test, Routine => Test_dup_packet'Access, Name => "Test_dup_packet");
      Register_Routine (Test => Test, Routine => Test_copy_packet'Access, Name => "Test_copy_packet");
      Register_Routine (Test => Test, Routine => Test_copy_packet_side_data'Access, Name => "Test_copy_packet_side_data");
      Register_Routine (Test => Test, Routine => Test_free_packet'Access, Name => "Test_free_packet");
      Register_Routine (Test => Test, Routine => Test_packet_new_side_data'Access, Name => "Test_packet_new_side_data");
      Register_Routine (Test => Test, Routine => Test_packet_add_side_data'Access, Name => "Test_packet_add_side_data");
      Register_Routine (Test => Test, Routine => Test_packet_shrink_side_data'Access, Name => "Test_packet_shrink_side_data");
      Register_Routine (Test => Test, Routine => Test_packet_get_side_data'Access, Name => "Test_packet_get_side_data");
      Register_Routine (Test => Test, Routine => Test_packet_merge_side_data'Access, Name => "Test_packet_merge_side_data");
      Register_Routine (Test => Test, Routine => Test_packet_split_side_data'Access, Name => "Test_packet_split_side_data");
      Register_Routine (Test => Test, Routine => Test_packet_side_data_name'Access, Name => "Test_packet_side_data_name");
      Register_Routine (Test => Test, Routine => Test_packet_pack_dictionary'Access, Name => "Test_packet_pack_dictionary");
      Register_Routine (Test => Test, Routine => Test_packet_unpack_dictionary'Access, Name => "Test_packet_unpack_dictionary");
      Register_Routine (Test => Test, Routine => Test_packet_free_side_data'Access, Name => "Test_packet_free_side_data");
      Register_Routine (Test => Test, Routine => Test_packet_ref'Access, Name => "Test_packet_ref");
      Register_Routine (Test => Test, Routine => Test_packet_unref'Access, Name => "Test_packet_unref");
      Register_Routine (Test => Test, Routine => Test_packet_move_ref'Access, Name => "Test_packet_move_ref");
      Register_Routine (Test => Test, Routine => Test_packet_copy_props'Access, Name => "Test_packet_copy_props");
      Register_Routine (Test => Test, Routine => Test_packet_rescale_ts'Access, Name => "Test_packet_rescale_ts");
      Register_Routine (Test => Test, Routine => Test_find_decoder'Access, Name => "Test_find_decoder");
      Register_Routine (Test => Test, Routine => Test_find_decoder_by_name'Access, Name => "Test_find_decoder_by_name");
      Register_Routine (Test => Test, Routine => Test_default_get_buffer2'Access, Name => "Test_default_get_buffer2");
      Register_Routine (Test => Test, Routine => Test_get_edge_width'Access, Name => "Test_get_edge_width");
      Register_Routine (Test => Test, Routine => Test_align_dimensions'Access, Name => "Test_align_dimensions");
      Register_Routine (Test => Test, Routine => Test_align_dimensions2'Access, Name => "Test_align_dimensions2");
      Register_Routine (Test => Test, Routine => Test_enum_to_chroma_pos'Access, Name => "Test_enum_to_chroma_pos");
      Register_Routine (Test => Test, Routine => Test_chroma_pos_to_enum'Access, Name => "Test_chroma_pos_to_enum");
      Register_Routine (Test => Test, Routine => Test_decode_audio4'Access, Name => "Test_decode_audio4");
      Register_Routine (Test => Test, Routine => Test_decode_video2'Access, Name => "Test_decode_video2");
      Register_Routine (Test => Test, Routine => Test_decode_subtitle2'Access, Name => "Test_decode_subtitle2");
      Register_Routine (Test => Test, Routine => Test_send_packet'Access, Name => "Test_send_packet");
      Register_Routine (Test => Test, Routine => Test_receive_frame'Access, Name => "Test_receive_frame");
      Register_Routine (Test => Test, Routine => Test_send_frame'Access, Name => "Test_send_frame");
      Register_Routine (Test => Test, Routine => Test_receive_packet'Access, Name => "Test_receive_packet");
      Register_Routine (Test => Test, Routine => Test_parser_next'Access, Name => "Test_parser_next");
      Register_Routine (Test => Test, Routine => Test_register_codec_parser'Access, Name => "Test_register_codec_parser");
      Register_Routine (Test => Test, Routine => Test_parser_init'Access, Name => "Test_parser_init");
      Register_Routine (Test => Test, Routine => Test_parser_parse2'Access, Name => "Test_parser_parse2");
      Register_Routine (Test => Test, Routine => Test_parser_change'Access, Name => "Test_parser_change");
      Register_Routine (Test => Test, Routine => Test_parser_close'Access, Name => "Test_parser_close");
      Register_Routine (Test => Test, Routine => Test_find_encoder'Access, Name => "Test_find_encoder");
      Register_Routine (Test => Test, Routine => Test_find_encoder_by_name'Access, Name => "Test_find_encoder_by_name");
      Register_Routine (Test => Test, Routine => Test_encode_audio2'Access, Name => "Test_encode_audio2");
      Register_Routine (Test => Test, Routine => Test_encode_video2'Access, Name => "Test_encode_video2");
      Register_Routine (Test => Test, Routine => Test_encode_subtitle'Access, Name => "Test_encode_subtitle");
      Register_Routine (Test => Test, Routine => Test_audio_resample_init'Access, Name => "Test_audio_resample_init");
      Register_Routine (Test => Test, Routine => Test_audio_resample'Access, Name => "Test_audio_resample");
      Register_Routine (Test => Test, Routine => Test_audio_resample_close'Access, Name => "Test_audio_resample_close");
      Register_Routine (Test => Test, Routine => Test_resample_init'Access, Name => "Test_resample_init");
      Register_Routine (Test => Test, Routine => Test_resample'Access, Name => "Test_resample");
      Register_Routine (Test => Test, Routine => Test_resample_compensate'Access, Name => "Test_resample_compensate");
      Register_Routine (Test => Test, Routine => Test_resample_close'Access, Name => "Test_resample_close");
      Register_Routine (Test => Test, Routine => Test_avpicture_alloc'Access, Name => "Test_avpicture_alloc");
      Register_Routine (Test => Test, Routine => Test_avpicture_free'Access, Name => "Test_avpicture_free");
      Register_Routine (Test => Test, Routine => Test_avpicture_fill'Access, Name => "Test_avpicture_fill");
      Register_Routine (Test => Test, Routine => Test_avpicture_layout'Access, Name => "Test_avpicture_layout");
      Register_Routine (Test => Test, Routine => Test_avpicture_get_size'Access, Name => "Test_avpicture_get_size");
      Register_Routine (Test => Test, Routine => Test_picture_copy'Access, Name => "Test_picture_copy");
      Register_Routine (Test => Test, Routine => Test_picture_crop'Access, Name => "Test_picture_crop");
      Register_Routine (Test => Test, Routine => Test_picture_pad'Access, Name => "Test_picture_pad");
      Register_Routine (Test => Test, Routine => Test_get_chroma_sub_sample'Access, Name => "Test_get_chroma_sub_sample");
      Register_Routine (Test => Test, Routine => Test_pix_fmt_to_codec_tag'Access, Name => "Test_pix_fmt_to_codec_tag");
      Register_Routine (Test => Test, Routine => Test_get_pix_fmt_loss'Access, Name => "Test_get_pix_fmt_loss");
      Register_Routine (Test => Test, Routine => Test_find_best_pix_fmt_of_list'Access, Name => "Test_find_best_pix_fmt_of_list");
      Register_Routine (Test => Test, Routine => Test_find_best_pix_fmt_of_2'Access, Name => "Test_find_best_pix_fmt_of_2");
      Register_Routine (Test => Test, Routine => Test_find_best_pix_fmt2'Access, Name => "Test_find_best_pix_fmt2");
      Register_Routine (Test => Test, Routine => Test_default_get_format'Access, Name => "Test_default_get_format");
      Register_Routine (Test => Test, Routine => Test_set_dimensions'Access, Name => "Test_set_dimensions");
      Register_Routine (Test => Test, Routine => Test_get_codec_tag_string'Access, Name => "Test_get_codec_tag_string");
      Register_Routine (Test => Test, Routine => Test_av_string'Access, Name => "Test_av_string");
      Register_Routine (Test => Test, Routine => Test_get_profile_name'Access, Name => "Test_get_profile_name");
      Register_Routine (Test => Test, Routine => Test_profile_name'Access, Name => "Test_profile_name");
      Register_Routine (Test => Test, Routine => Test_default_execute'Access, Name => "Test_default_execute");
      Register_Routine (Test => Test, Routine => Test_default_execute2'Access, Name => "Test_default_execute2");
      Register_Routine (Test => Test, Routine => Test_fill_audio_frame'Access, Name => "Test_fill_audio_frame");
      Register_Routine (Test => Test, Routine => Test_flush_buffers'Access, Name => "Test_flush_buffers");
      Register_Routine (Test => Test, Routine => Test_get_bits_per_sample'Access, Name => "Test_get_bits_per_sample");
      Register_Routine (Test => Test, Routine => Test_get_pcm_codec'Access, Name => "Test_get_pcm_codec");
      Register_Routine (Test => Test, Routine => Test_get_exact_bits_per_sample'Access, Name => "Test_get_exact_bits_per_sample");
      Register_Routine (Test => Test, Routine => Test_get_audio_frame_duration'Access, Name => "Test_get_audio_frame_duration");
      Register_Routine (Test => Test, Routine => Test_get_audio_frame_duration2'Access, Name => "Test_get_audio_frame_duration2");
      Register_Routine (Test => Test, Routine => Test_register_bitstream_filter'Access, Name => "Test_register_bitstream_filter");
      Register_Routine (Test => Test, Routine => Test_bitstream_filter_init'Access, Name => "Test_bitstream_filter_init");
      Register_Routine (Test => Test, Routine => Test_bitstream_filter_filter'Access, Name => "Test_bitstream_filter_filter");
      Register_Routine (Test => Test, Routine => Test_bitstream_filter_close'Access, Name => "Test_bitstream_filter_close");
      Register_Routine (Test => Test, Routine => Test_bitstream_filter_next'Access, Name => "Test_bitstream_filter_next");
      Register_Routine (Test => Test, Routine => Test_bsf_get_by_name'Access, Name => "Test_bsf_get_by_name");
      Register_Routine (Test => Test, Routine => Test_bsf_next'Access, Name => "Test_bsf_next");
      Register_Routine (Test => Test, Routine => Test_bsf_alloc'Access, Name => "Test_bsf_alloc");
      Register_Routine (Test => Test, Routine => Test_bsf_init'Access, Name => "Test_bsf_init");
      Register_Routine (Test => Test, Routine => Test_bsf_send_packet'Access, Name => "Test_bsf_send_packet");
      Register_Routine (Test => Test, Routine => Test_bsf_receive_packet'Access, Name => "Test_bsf_receive_packet");
      Register_Routine (Test => Test, Routine => Test_bsf_free'Access, Name => "Test_bsf_free");
      Register_Routine (Test => Test, Routine => Test_bsf_get_class'Access, Name => "Test_bsf_get_class");
      Register_Routine (Test => Test, Routine => Test_bsf_list_alloc'Access, Name => "Test_bsf_list_alloc");
      Register_Routine (Test => Test, Routine => Test_bsf_list_free'Access, Name => "Test_bsf_list_free");
      Register_Routine (Test => Test, Routine => Test_bsf_list_append'Access, Name => "Test_bsf_list_append");
      Register_Routine (Test => Test, Routine => Test_bsf_list_append2'Access, Name => "Test_bsf_list_append2");
      Register_Routine (Test => Test, Routine => Test_bsf_list_finalize'Access, Name => "Test_bsf_list_finalize");
      Register_Routine (Test => Test, Routine => Test_bsf_list_parse_str'Access, Name => "Test_bsf_list_parse_str");
      Register_Routine (Test => Test, Routine => Test_bsf_get_null_filter'Access, Name => "Test_bsf_get_null_filter");
      Register_Routine (Test => Test, Routine => Test_fast_padded_malloc'Access, Name => "Test_fast_padded_malloc");
      Register_Routine (Test => Test, Routine => Test_fast_padded_mallocz'Access, Name => "Test_fast_padded_mallocz");
      Register_Routine (Test => Test, Routine => Test_xiphlacing'Access, Name => "Test_xiphlacing");
      Register_Routine (Test => Test, Routine => Test_log_missing_feature'Access, Name => "Test_log_missing_feature");
      Register_Routine (Test => Test, Routine => Test_log_ask_for_sample'Access, Name => "Test_log_ask_for_sample");
      Register_Routine (Test => Test, Routine => Test_register_hwaccel'Access, Name => "Test_register_hwaccel");
      Register_Routine (Test => Test, Routine => Test_hwaccel_next'Access, Name => "Test_hwaccel_next");
      Register_Routine (Test => Test, Routine => Test_lockmgr_register'Access, Name => "Test_lockmgr_register");
      Register_Routine (Test => Test, Routine => Test_get_type'Access, Name => "Test_get_type");
      Register_Routine (Test => Test, Routine => Test_get_name'Access, Name => "Test_get_name");
      Register_Routine (Test => Test, Routine => Test_is_open'Access, Name => "Test_is_open");
      Register_Routine (Test => Test, Routine => Test_is_encoder'Access, Name => "Test_is_encoder");
      Register_Routine (Test => Test, Routine => Test_is_decoder'Access, Name => "Test_is_decoder");
      Register_Routine (Test => Test, Routine => Test_descriptor_get'Access, Name => "Test_descriptor_get");
      Register_Routine (Test => Test, Routine => Test_descriptor_next'Access, Name => "Test_descriptor_next");
      Register_Routine (Test => Test, Routine => Test_descriptor_get_by_name'Access, Name => "Test_descriptor_get_by_name");
      Register_Routine (Test => Test, Routine => Test_cpb_properties_alloc'Access, Name => "Test_cpb_properties_alloc");
   end Register_Tests;

end FFMpeg.avcodec.Tests;
