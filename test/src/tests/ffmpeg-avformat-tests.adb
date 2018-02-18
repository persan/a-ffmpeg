
with GNAT.Source_Info;
with AUnit.Assertions;
with Interfaces.C;
package body Ffmpeg.Avformat.Tests is
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

   procedure Test_Get_Probe_Score (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Get_Probe_Score;


   procedure Test_Get_Video_Codec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Get_Video_Codec;


   procedure Test_Set_Video_Codec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Set_Video_Codec;


   procedure Test_Get_Audio_Codec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Get_Audio_Codec;


   procedure Test_Set_Audio_Codec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Set_Audio_Codec;


   procedure Test_Get_Subtitle_Codec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Get_Subtitle_Codec;


   procedure Test_Set_Subtitle_Codec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Set_Subtitle_Codec;


   procedure Test_Get_Data_Codec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Get_Data_Codec;


   procedure Test_Set_Data_Codec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Set_Data_Codec;


   procedure Test_Get_Metadata_Header_Padding (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Get_Metadata_Header_Padding;


   procedure Test_Set_Metadata_Header_Padding (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Set_Metadata_Header_Padding;


   procedure Test_Get_Opaque (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Get_Opaque;


   procedure Test_Set_Opaque (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Set_Opaque;


   procedure Test_Get_Control_Message_Cb (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Get_Control_Message_Cb;


   procedure Test_Set_Control_Message_Cb (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Set_Control_Message_Cb;


   procedure Test_Get_Open_Cb (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Get_Open_Cb;


   procedure Test_Set_Open_Cb (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Set_Open_Cb;


   procedure Test_Inject_Global_Side_Data (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Inject_Global_Side_Data;


   procedure Test_Fmt_Ctx_Get_Duration_Estimation_Method (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Fmt_Ctx_Get_Duration_Estimation_Method;


   procedure Test_Version (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Version;


   procedure Test_Configuration (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Configuration;


   procedure Test_License (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_License;


   procedure Test_Register_All (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Register_All;


   procedure Test_Register_Input_Format (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Register_Input_Format;


   procedure Test_Register_Output_Format (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Register_Output_Format;


   procedure Test_Avformat_Network_Init (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Avformat_Network_Init;


   procedure Test_Avformat_Network_Deinit (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Avformat_Network_Deinit;


   procedure Test_Iformat_Next (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Iformat_Next;


   procedure Test_Oformat_Next (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Oformat_Next;


   procedure Test_Get_Class (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Get_Class;


   procedure Test_Avformat_New_Stream (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Avformat_New_Stream;


   procedure Test_Stream_Add_Side_Data (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Stream_Add_Side_Data;


   procedure Test_Stream_New_Side_Data (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Stream_New_Side_Data;


   procedure Test_Stream_Get_Side_Data (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Stream_Get_Side_Data;


   procedure Test_New_Program (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_New_Program;


   procedure Test_Alloc_Output_Context2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Alloc_Output_Context2;


   procedure Test_Find_Input_Format (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Find_Input_Format;


   procedure Test_Probe_Input_Format (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Probe_Input_Format;


   procedure Test_Probe_Input_Format2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Probe_Input_Format2;


   procedure Test_Probe_Input_Format3 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Probe_Input_Format3;


   procedure Test_Probe_Input_Buffer2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Probe_Input_Buffer2;


   procedure Test_Probe_Input_Buffer (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Probe_Input_Buffer;


   procedure Test_Open_Input (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Open_Input;


   procedure Test_Demuxer_Open (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Demuxer_Open;


   procedure Test_Find_Stream_Info (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Find_Stream_Info;


   procedure Test_Find_Program_From_Stream (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Find_Program_From_Stream;


   procedure Test_Program_Add_Stream_Index (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Program_Add_Stream_Index;


   procedure Test_Find_Best_Stream (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Find_Best_Stream;


   procedure Test_Read_Frame (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Read_Frame;


   procedure Test_Seek_Frame (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Seek_Frame;


   procedure Test_Seek_File (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Seek_File;


   procedure Test_Flush (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Flush;


   procedure Test_Read_Play (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Read_Play;


   procedure Test_Read_Pause (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Read_Pause;


   procedure Test_Close_Input (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Close_Input;


   procedure Test_Write_Header (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Write_Header;


   procedure Test_Init_Output (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Init_Output;


   procedure Test_Write_Frame (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Write_Frame;


   procedure Test_Interleaved_Write_Frame (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Interleaved_Write_Frame;


   procedure Test_Write_Uncoded_Frame (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Write_Uncoded_Frame;


   procedure Test_Interleaved_Write_Uncoded_Frame (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Interleaved_Write_Uncoded_Frame;


   procedure Test_Write_Uncoded_Frame_Query (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Write_Uncoded_Frame_Query;


   procedure Test_Write_Trailer (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Write_Trailer;


   procedure Test_Guess_Format (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Guess_Format;


   procedure Test_Guess_Codec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Guess_Codec;


   procedure Test_Get_Output_Timestamp (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Get_Output_Timestamp;


   procedure Test_Hex_Dump (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Hex_Dump;


   procedure Test_Hex_Dump_Log (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Hex_Dump_Log;


   procedure Test_Pkt_Dump2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Pkt_Dump2;


   procedure Test_Pkt_Dump_Log2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Pkt_Dump_Log2;


   procedure Test_Codec_Get_Id (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Codec_Get_Id;


   procedure Test_Codec_Get_Tag (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Codec_Get_Tag;


   procedure Test_Codec_Get_Tag2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Codec_Get_Tag2;


   procedure Test_Find_Default_Stream_Index (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Find_Default_Stream_Index;


   procedure Test_Index_Search_Timestamp (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Index_Search_Timestamp;


   procedure Test_Add_Index_Entry (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Add_Index_Entry;


   procedure Test_Url_Split (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Url_Split;


   procedure Test_Dump_Format (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Dump_Format;


   procedure Test_Get_Frame_Filename2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Get_Frame_Filename2;


   procedure Test_Get_Frame_Filename (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Get_Frame_Filename;


   procedure Test_Filename_Number_Test (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Filename_Number_Test;


   procedure Test_Sdp_Create (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Sdp_Create;


   procedure Test_Match_Ext (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Match_Ext;


   procedure Test_Query_Codec (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Query_Codec;


   procedure Test_Get_Riff_Video_Tags (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Get_Riff_Video_Tags;


   procedure Test_Get_Riff_Audio_Tags (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Get_Riff_Audio_Tags;


   procedure Test_Get_Mov_Video_Tags (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Get_Mov_Video_Tags;


   procedure Test_Get_Mov_Audio_Tags (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Get_Mov_Audio_Tags;


   procedure Test_Guess_Sample_Aspect_Ratio (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Guess_Sample_Aspect_Ratio;


   procedure Test_Guess_Frame_Rate (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Guess_Frame_Rate;


   procedure Test_Match_Stream_Specifier (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Match_Stream_Specifier;


   procedure Test_Queue_Attached_Pictures (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Queue_Attached_Pictures;


   procedure Test_Apply_Bitstream_Filters (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Apply_Bitstream_Filters;


   procedure Test_Transfer_Internal_Stream_Timing_Info (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Transfer_Internal_Stream_Timing_Info;


   procedure Test_Stream_Get_Codec_Timebase (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Stream_Get_Codec_Timebase;


   procedure Test_Initialize (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Initialize;


   procedure Test_Finalize (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Actual   : constant integer := 1;
      Expected : constant integer := 2;
   begin
      Assert (Actual = Expected, "Expected => " & Expected'img & ", Actual => " & Actual'img);
   end Test_Finalize;




   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
      use AUnit.Test_Cases.Registration;
   begin
      Register_Routine (Test => Test, Routine => Test_Get_Probe_Score'Access, Name => "Test_Get_Probe_Score");
      Register_Routine (Test => Test, Routine => Test_Get_Video_Codec'Access, Name => "Test_Get_Video_Codec");
      Register_Routine (Test => Test, Routine => Test_Set_Video_Codec'Access, Name => "Test_Set_Video_Codec");
      Register_Routine (Test => Test, Routine => Test_Get_Audio_Codec'Access, Name => "Test_Get_Audio_Codec");
      Register_Routine (Test => Test, Routine => Test_Set_Audio_Codec'Access, Name => "Test_Set_Audio_Codec");
      Register_Routine (Test => Test, Routine => Test_Get_Subtitle_Codec'Access, Name => "Test_Get_Subtitle_Codec");
      Register_Routine (Test => Test, Routine => Test_Set_Subtitle_Codec'Access, Name => "Test_Set_Subtitle_Codec");
      Register_Routine (Test => Test, Routine => Test_Get_Data_Codec'Access, Name => "Test_Get_Data_Codec");
      Register_Routine (Test => Test, Routine => Test_Set_Data_Codec'Access, Name => "Test_Set_Data_Codec");
      Register_Routine (Test => Test, Routine => Test_Get_Metadata_Header_Padding'Access, Name => "Test_Get_Metadata_Header_Padding");
      Register_Routine (Test => Test, Routine => Test_Set_Metadata_Header_Padding'Access, Name => "Test_Set_Metadata_Header_Padding");
      Register_Routine (Test => Test, Routine => Test_Get_Opaque'Access, Name => "Test_Get_Opaque");
      Register_Routine (Test => Test, Routine => Test_Set_Opaque'Access, Name => "Test_Set_Opaque");
      Register_Routine (Test => Test, Routine => Test_Get_Control_Message_Cb'Access, Name => "Test_Get_Control_Message_Cb");
      Register_Routine (Test => Test, Routine => Test_Set_Control_Message_Cb'Access, Name => "Test_Set_Control_Message_Cb");
      Register_Routine (Test => Test, Routine => Test_Get_Open_Cb'Access, Name => "Test_Get_Open_Cb");
      Register_Routine (Test => Test, Routine => Test_Set_Open_Cb'Access, Name => "Test_Set_Open_Cb");
      Register_Routine (Test => Test, Routine => Test_Inject_Global_Side_Data'Access, Name => "Test_Inject_Global_Side_Data");
      Register_Routine (Test => Test, Routine => Test_Fmt_Ctx_Get_Duration_Estimation_Method'Access, Name => "Test_Fmt_Ctx_Get_Duration_Estimation_Method");
      Register_Routine (Test => Test, Routine => Test_Version'Access, Name => "Test_Version");
      Register_Routine (Test => Test, Routine => Test_Configuration'Access, Name => "Test_Configuration");
      Register_Routine (Test => Test, Routine => Test_License'Access, Name => "Test_License");
      Register_Routine (Test => Test, Routine => Test_Register_All'Access, Name => "Test_Register_All;");
      Register_Routine (Test => Test, Routine => Test_Register_Input_Format'Access, Name => "Test_Register_Input_Format");
      Register_Routine (Test => Test, Routine => Test_Register_Output_Format'Access, Name => "Test_Register_Output_Format");
      Register_Routine (Test => Test, Routine => Test_Avformat_Network_Init'Access, Name => "Test_Avformat_Network_Init");
      Register_Routine (Test => Test, Routine => Test_Avformat_Network_Deinit'Access, Name => "Test_Avformat_Network_Deinit");
      Register_Routine (Test => Test, Routine => Test_Iformat_Next'Access, Name => "Test_Iformat_Next");
      Register_Routine (Test => Test, Routine => Test_Oformat_Next'Access, Name => "Test_Oformat_Next");
      Register_Routine (Test => Test, Routine => Test_Get_Class'Access, Name => "Test_Get_Class");
      Register_Routine (Test => Test, Routine => Test_Avformat_New_Stream'Access, Name => "Test_Avformat_New_Stream");
      Register_Routine (Test => Test, Routine => Test_Stream_Add_Side_Data'Access, Name => "Test_Stream_Add_Side_Data");
      Register_Routine (Test => Test, Routine => Test_Stream_New_Side_Data'Access, Name => "Test_Stream_New_Side_Data");
      Register_Routine (Test => Test, Routine => Test_Stream_Get_Side_Data'Access, Name => "Test_Stream_Get_Side_Data");
      Register_Routine (Test => Test, Routine => Test_New_Program'Access, Name => "Test_New_Program");
      Register_Routine (Test => Test, Routine => Test_Alloc_Output_Context2'Access, Name => "Test_Alloc_Output_Context2");
      Register_Routine (Test => Test, Routine => Test_Find_Input_Format'Access, Name => "Test_Find_Input_Format");
      Register_Routine (Test => Test, Routine => Test_Probe_Input_Format'Access, Name => "Test_Probe_Input_Format");
      Register_Routine (Test => Test, Routine => Test_Probe_Input_Format2'Access, Name => "Test_Probe_Input_Format2");
      Register_Routine (Test => Test, Routine => Test_Probe_Input_Format3'Access, Name => "Test_Probe_Input_Format3");
      Register_Routine (Test => Test, Routine => Test_Probe_Input_Buffer2'Access, Name => "Test_Probe_Input_Buffer2");
      Register_Routine (Test => Test, Routine => Test_Probe_Input_Buffer'Access, Name => "Test_Probe_Input_Buffer");
      Register_Routine (Test => Test, Routine => Test_Open_Input'Access, Name => "Test_Open_Input");
      Register_Routine (Test => Test, Routine => Test_Demuxer_Open'Access, Name => "Test_Demuxer_Open");
      Register_Routine (Test => Test, Routine => Test_Find_Stream_Info'Access, Name => "Test_Find_Stream_Info");
      Register_Routine (Test => Test, Routine => Test_Find_Program_From_Stream'Access, Name => "Test_Find_Program_From_Stream");
      Register_Routine (Test => Test, Routine => Test_Program_Add_Stream_Index'Access, Name => "Test_Program_Add_Stream_Index");
      Register_Routine (Test => Test, Routine => Test_Find_Best_Stream'Access, Name => "Test_Find_Best_Stream");
      Register_Routine (Test => Test, Routine => Test_Read_Frame'Access, Name => "Test_Read_Frame");
      Register_Routine (Test => Test, Routine => Test_Seek_Frame'Access, Name => "Test_Seek_Frame");
      Register_Routine (Test => Test, Routine => Test_Seek_File'Access, Name => "Test_Seek_File");
      Register_Routine (Test => Test, Routine => Test_Flush'Access, Name => "Test_Flush");
      Register_Routine (Test => Test, Routine => Test_Read_Play'Access, Name => "Test_Read_Play");
      Register_Routine (Test => Test, Routine => Test_Read_Pause'Access, Name => "Test_Read_Pause");
      Register_Routine (Test => Test, Routine => Test_Close_Input'Access, Name => "Test_Close_Input");
      Register_Routine (Test => Test, Routine => Test_Write_Header'Access, Name => "Test_Write_Header");
      Register_Routine (Test => Test, Routine => Test_Init_Output'Access, Name => "Test_Init_Output");
      Register_Routine (Test => Test, Routine => Test_Write_Frame'Access, Name => "Test_Write_Frame");
      Register_Routine (Test => Test, Routine => Test_Interleaved_Write_Frame'Access, Name => "Test_Interleaved_Write_Frame");
      Register_Routine (Test => Test, Routine => Test_Write_Uncoded_Frame'Access, Name => "Test_Write_Uncoded_Frame");
      Register_Routine (Test => Test, Routine => Test_Interleaved_Write_Uncoded_Frame'Access, Name => "Test_Interleaved_Write_Uncoded_Frame");
      Register_Routine (Test => Test, Routine => Test_Write_Uncoded_Frame_Query'Access, Name => "Test_Write_Uncoded_Frame_Query");
      Register_Routine (Test => Test, Routine => Test_Write_Trailer'Access, Name => "Test_Write_Trailer");
      Register_Routine (Test => Test, Routine => Test_Guess_Format'Access, Name => "Test_Guess_Format");
      Register_Routine (Test => Test, Routine => Test_Guess_Codec'Access, Name => "Test_Guess_Codec");
      Register_Routine (Test => Test, Routine => Test_Get_Output_Timestamp'Access, Name => "Test_Get_Output_Timestamp");
      Register_Routine (Test => Test, Routine => Test_Hex_Dump'Access, Name => "Test_Hex_Dump");
      Register_Routine (Test => Test, Routine => Test_Hex_Dump_Log'Access, Name => "Test_Hex_Dump_Log");
      Register_Routine (Test => Test, Routine => Test_Pkt_Dump2'Access, Name => "Test_Pkt_Dump2");
      Register_Routine (Test => Test, Routine => Test_Pkt_Dump_Log2'Access, Name => "Test_Pkt_Dump_Log2");
      Register_Routine (Test => Test, Routine => Test_Codec_Get_Id'Access, Name => "Test_Codec_Get_Id");
      Register_Routine (Test => Test, Routine => Test_Codec_Get_Tag'Access, Name => "Test_Codec_Get_Tag");
      Register_Routine (Test => Test, Routine => Test_Codec_Get_Tag2'Access, Name => "Test_Codec_Get_Tag2");
      Register_Routine (Test => Test, Routine => Test_Find_Default_Stream_Index'Access, Name => "Test_Find_Default_Stream_Index");
      Register_Routine (Test => Test, Routine => Test_Index_Search_Timestamp'Access, Name => "Test_Index_Search_Timestamp");
      Register_Routine (Test => Test, Routine => Test_Add_Index_Entry'Access, Name => "Test_Add_Index_Entry");
      Register_Routine (Test => Test, Routine => Test_Url_Split'Access, Name => "Test_Url_Split");
      Register_Routine (Test => Test, Routine => Test_Dump_Format'Access, Name => "Test_Dump_Format");
      Register_Routine (Test => Test, Routine => Test_Get_Frame_Filename2'Access, Name => "Test_Get_Frame_Filename2");
      Register_Routine (Test => Test, Routine => Test_Get_Frame_Filename'Access, Name => "Test_Get_Frame_Filename");
      Register_Routine (Test => Test, Routine => Test_Filename_Number_Test'Access, Name => "Test_Filename_Number_Test");
      Register_Routine (Test => Test, Routine => Test_Sdp_Create'Access, Name => "Test_Sdp_Create");
      Register_Routine (Test => Test, Routine => Test_Match_Ext'Access, Name => "Test_Match_Ext");
      Register_Routine (Test => Test, Routine => Test_Query_Codec'Access, Name => "Test_Query_Codec");
      Register_Routine (Test => Test, Routine => Test_Get_Riff_Video_Tags'Access, Name => "Test_Get_Riff_Video_Tags");
      Register_Routine (Test => Test, Routine => Test_Get_Riff_Audio_Tags'Access, Name => "Test_Get_Riff_Audio_Tags");
      Register_Routine (Test => Test, Routine => Test_Get_Mov_Video_Tags'Access, Name => "Test_Get_Mov_Video_Tags");
      Register_Routine (Test => Test, Routine => Test_Get_Mov_Audio_Tags'Access, Name => "Test_Get_Mov_Audio_Tags");
      Register_Routine (Test => Test, Routine => Test_Guess_Sample_Aspect_Ratio'Access, Name => "Test_Guess_Sample_Aspect_Ratio");
      Register_Routine (Test => Test, Routine => Test_Guess_Frame_Rate'Access, Name => "Test_Guess_Frame_Rate");
      Register_Routine (Test => Test, Routine => Test_Match_Stream_Specifier'Access, Name => "Test_Match_Stream_Specifier");
      Register_Routine (Test => Test, Routine => Test_Queue_Attached_Pictures'Access, Name => "Test_Queue_Attached_Pictures");
      Register_Routine (Test => Test, Routine => Test_Apply_Bitstream_Filters'Access, Name => "Test_Apply_Bitstream_Filters");
      Register_Routine (Test => Test, Routine => Test_Transfer_Internal_Stream_Timing_Info'Access, Name => "Test_Transfer_Internal_Stream_Timing_Info");
      Register_Routine (Test => Test, Routine => Test_Stream_Get_Codec_Timebase'Access, Name => "Test_Stream_Get_Codec_Timebase");
      Register_Routine (Test => Test, Routine => Test_Initialize'Access, Name => "Test_Initialize");
      Register_Routine (Test => Test, Routine => Test_Finalize'Access, Name => "Test_Finalize");
   end Register_Tests;

end Ffmpeg.Avformat.Tests;
