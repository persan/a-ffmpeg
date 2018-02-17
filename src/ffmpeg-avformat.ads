with FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H;
with FFMpeg.Low_Level.Ffmpeg_Libavutil_Log_H;
with System;
with Ffmpeg.Low_Level.Ffmpeg_Libavutil_Avutil_H;
with Ffmpeg.Rational;
with FFMpeg.Low_Level.Ffmpeg_Libavformat_Avio_H;
with FFMpeg.Low_Level.Ffmpeg_Libavutil_Frame_H;
with Interfaces;
with Interfaces.C; use Interfaces.C;
with Interfaces.C_Streams;
with Ffmpeg.Avcodec;
private with Ffmpeg.Low_Level.Ffmpeg_Libavformat_Avformat_H;
private with Ada.Finalization;
package Ffmpeg.Avformat is

   type AVFormatContext (<>)is tagged limited private;
   type AVOpenCallback is private;
   type Control_Message is private;
   type AVProgram is private;
   type AVProbeData is private;
   type AVInputFormat is private;
   type AVOutputFormat is private;
   type AVStream is private;

   type Int is new Integer;
   type Unsigned is mod 2 ** 16;

   type AVDurationEstimationMethod is new Integer;

   type AVPacketList is private;


   function Get_Probe_Score (S : access constant AVFormatContext) return Int;

   function Get_Video_Codec (S : access constant AVFormatContext) return access FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVCodec;


   procedure Set_Video_Codec (S : access AVFormatContext; C : access FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVCodec);


   function Get_Audio_Codec (S : access constant AVFormatContext) return access FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVCodec;


   procedure Set_Audio_Codec (S : access AVFormatContext; C : access FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVCodec);


   function Get_Subtitle_Codec (S : access constant AVFormatContext) return access FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVCodec;


    procedure Set_Subtitle_Codec (S : access AVFormatContext; C : access FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVCodec);


   function Get_Data_Codec (S : access constant AVFormatContext) return access FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVCodec;


   procedure Set_Data_Codec (S : access AVFormatContext; C : access FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVCodec);


   function Get_Metadata_Header_Padding (S : access constant AVFormatContext) return Int;


   procedure Set_Metadata_Header_Padding (S : access AVFormatContext; C : Int);


   function Get_Opaque (S : access constant AVFormatContext) return System.Address;


   procedure Set_Opaque (S : access AVFormatContext; Opaque : System.Address);


   function Get_Control_Message_Cb (S : access constant AVFormatContext) return Control_Message;


   procedure Set_Control_Message_Cb (S : access AVFormatContext; Callback : Control_Message);


   function Get_Open_Cb (S : access constant AVFormatContext) return AVOpenCallback;


   procedure Set_Open_Cb (S : access AVFormatContext; Callback : AVOpenCallback);



   procedure Inject_Global_Side_Data (S : access AVFormatContext);





   function Fmt_Ctx_Get_Duration_Estimation_Method (Ctx : access constant AVFormatContext) return AVDurationEstimationMethod;


   function Version return Unsigned;


   function Configuration return String;

   function License return String;


   procedure Register_All;

   procedure Register_Input_Format (Format : access AVInputFormat);


   procedure Register_Output_Format (Format : access AVOutputFormat);


   function Avformat_Network_Init return Int;


   function Avformat_Network_Deinit return Int;

   function Iformat_Next (F : access constant AVInputFormat) return access AVInputFormat;

   function Oformat_Next (F : access constant AVOutputFormat) return access AVOutputFormat;

   function Get_Class return access constant FFMpeg.Low_Level.Ffmpeg_Libavutil_Log_H.AVClass;

   function Avformat_New_Stream (S : access AVFormatContext; C : access constant FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVCodec) return access AVStream;





   function Stream_Add_Side_Data
     (St     : access AVStream;
      C_Type : ffmpeg.Avcodec.AVPacketSideDataType;
      Data   : access Interfaces.Unsigned_8;
      Size   : Size_T) return Int;







   function Stream_New_Side_Data
     (Stream : access AVStream;
      C_Type : ffmpeg.Avcodec.AVPacketSideDataType;
      Size   : Int) return access Interfaces.Unsigned_8;


   function Stream_Get_Side_Data
     (Stream : access AVStream;
      C_Type : ffmpeg.Avcodec.AVPacketSideDataType;
      Size   : access Int) return access Interfaces.Unsigned_8;


   function New_Program (S : access AVFormatContext; Id : Int) return access AVProgram;























   function Alloc_Output_Context2
     (Ctx         : System.Address;
      Oformat     : access AVOutputFormat;
      Format_Name : String;
      Filename    : String) return Int;











   function Find_Input_Format (Short_Name : String) return access AVInputFormat;










   function Probe_Input_Format (Pd : access AVProbeData; Is_Opened : Int) return access AVInputFormat;















   function Probe_Input_Format2
     (Pd        : access AVProbeData;
      Is_Opened : Int;
      Score_Max : access Int) return access AVInputFormat;










   function Probe_Input_Format3
     (Pd        : access AVProbeData;
      Is_Opened : Int;
      Score_Ret : access Int) return access AVInputFormat;



















   function Probe_Input_Buffer2
     (Pb             : access FFMpeg.Low_Level.Ffmpeg_Libavformat_Avio_H.AVIOContext;
      Fmt            : System.Address;
      Url            : String;
      Logctx         : System.Address;
      Offset         : Unsigned;
      Max_Probe_Size : Unsigned) return Int;






   function Probe_Input_Buffer
     (Pb             : access FFMpeg.Low_Level.Ffmpeg_Libavformat_Avio_H.AVIOContext;
      Fmt            : System.Address;
      Url            : String;
      Logctx         : System.Address;
      Offset         : Unsigned;
      Max_Probe_Size : Unsigned) return Int;






















   function Open_Input
     (Ps      : System.Address;
      Url     : String;
      Fmt     : access AVInputFormat;
      Options : System.Address) return Int;


   function Demuxer_Open (Ic : access AVFormatContext) return Int;
























   function Find_Stream_Info (Ic : access AVFormatContext; Options : System.Address) return Int;













   function Find_Program_From_Stream
     (Ic   : access AVFormatContext;
      Last : access AVProgram;
      S    : Int) return access AVProgram;


   procedure Program_Add_Stream_Index
     (Ac     : access AVFormatContext;
      Progid : Int;
      Idx    : Unsigned);



























   function Find_Best_Stream
     (Ic               : access AVFormatContext;
      C_Type           : FFMpeg.Low_Level.Ffmpeg_Libavutil_Avutil_H.AVMediaType;
      Wanted_Stream_Nb : Int;
      Related_Stream   : Int;
      Decoder_Ret      : System.Address;
      Flags            : Int) return Int;



























   function Read_Frame (S : access AVFormatContext; Pkt : access FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVPacket) return Int;
















   function Seek_Frame
     (S            : access AVFormatContext;
      Stream_Index : Int;
      Timestamp    : Interfaces.Integer_64;
      Flags        : Int) return Int;































   function Seek_File
     (S            : access AVFormatContext;
      Stream_Index : Int;
      Min_Ts       : Interfaces.Integer_64;
      Ts           : Interfaces.Integer_64;
      Max_Ts       : Interfaces.Integer_64;
      Flags        : Int) return Int;



















   function Flush (S : access AVFormatContext) return Int;







   function Read_Play (S : access AVFormatContext) return Int;








   function Read_Pause (S : access AVFormatContext) return Int;







   procedure Close_Input (S : System.Address);





























   function Write_Header (S : access AVFormatContext; Options : System.Address) return Int;






















   function Init_Output (S : access AVFormatContext; Options : System.Address) return Int;








































   function Write_Frame (S : access AVFormatContext; Pkt : access FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVPacket) return Int;




   function Interleaved_Write_Frame (S : access AVFormatContext; Pkt : access FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVPacket) return Int;



   function Write_Uncoded_Frame
     (S            : access AVFormatContext;
      Stream_Index : Int;
      Frame        : access FFMpeg.Low_Level.Ffmpeg_Libavutil_Frame_H.AVFrame) return Int;



   function Interleaved_Write_Uncoded_Frame
     (S            : access AVFormatContext;
      Stream_Index : Int;
      Frame        : access FFMpeg.Low_Level.Ffmpeg_Libavutil_Frame_H.AVFrame) return Int;

   function Write_Uncoded_Frame_Query (S : access AVFormatContext; Stream_Index : Int) return Int;


   function Write_Trailer (S : access AVFormatContext) return Int;



   function Guess_Format
     (Short_Name : String;
      Filename   : String;
      Mime_Type  : String) return access AVOutputFormat;




   function Guess_Codec
     (Fmt        : access AVOutputFormat;
      Short_Name : String;
      Filename   : String;
      Mime_Type  : String;
      C_Type     : FFMpeg.Low_Level.Ffmpeg_Libavutil_Avutil_H.AVMediaType) return FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVCodecID;




   function Get_Output_Timestamp
     (S      : access AVFormatContext;
      Stream : Int;
      Dts    : access Interfaces.Integer_64;
      Wall   : access Interfaces.Integer_64) return Int;



   procedure Hex_Dump
     (F    : access Interfaces.C_Streams.FILEs;
      Buf  : access Interfaces.Unsigned_8;
      Size : Int);



   procedure Hex_Dump_Log
     (Avcl  : System.Address;
      Level : Int;
      Buf   : access Interfaces.Unsigned_8;
      Size  : Int);

   procedure Pkt_Dump2
     (F            : access Interfaces.C_Streams.FILEs;
      Pkt          : access constant FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVPacket;
      Dump_Payload : Int;
      St           : access constant AVStream);

   procedure Pkt_Dump_Log2
     (Avcl         : System.Address;
      Level        : Int;
      Pkt          : access constant FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVPacket;
      Dump_Payload : Int;
      St           : access constant AVStream);

   function Codec_Get_Id (Tags : System.Address; Tag : Unsigned) return FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVCodecID;

   function Codec_Get_Tag (Tags : System.Address; Id : FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVCodecID) return Unsigned;

   function Codec_Get_Tag2
     (Tags : System.Address;
      Id   : FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVCodecID;
      Tag  : access Unsigned) return Int;


   function Find_Default_Stream_Index (S : access AVFormatContext) return Int;

   function Index_Search_Timestamp
     (St        : access AVStream;
      Timestamp : Interfaces.Integer_64;
      Flags     : Int) return Int;

   function Add_Index_Entry
     (St        : access AVStream;
      Pos       : Interfaces.Integer_64;
      Timestamp : Interfaces.Integer_64;
      Size      : Int;
      Distance  : Int;
      Flags     : Int) return Int;



   procedure Url_Split
     (Proto              : String;
      Proto_Size         : Int;
      Authorization      : String;
      Authorization_Size : Int;
      Hostname           : String;
      Hostname_Size      : Int;
      Port_Ptr           : access Int;
      Path               : String;
      Path_Size          : Int;
      Url                : String);





   procedure Dump_Format
     (Ic        : access AVFormatContext;
      Index     : Int;
      Url       : String;
      Is_Output : Int);


   function Get_Frame_Filename2
     (Buf      : String;
      Buf_Size : Int;
      Path     : String;
      Number   : Int;
      Flags    : Int) return Int;


   function Get_Frame_Filename
     (Buf      : String;
      Buf_Size : Int;
      Path     : String;
      Number   : Int) return Int;


   function Filename_Number_Test (Filename : String) return Int;

   function Sdp_Create
     (Ac      : System.Address;
      N_Files : Int;
      Buf     : String;
      Size    : Int) return Int;

   function Match_Ext (Filename : String; Extensions : String) return Int;

   function Query_Codec
     (Ofmt           : access constant AVOutputFormat;
      Codec_Id       : FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVCodecID;
      Std_Compliance : Int) return Int;

   function Get_Riff_Video_Tags return System.Address;

   function Get_Riff_Audio_Tags return System.Address;

   function Get_Mov_Video_Tags return System.Address;

   function Get_Mov_Audio_Tags return System.Address;

   function Guess_Sample_Aspect_Ratio
     (Format : access AVFormatContext;
      Stream : access AVStream;
      Frame  : access FFMpeg.Low_Level.Ffmpeg_Libavutil_Frame_H.AVFrame) return FFMpeg.Rational.AVRational;


   function Guess_Frame_Rate
     (Ctx    : access AVFormatContext;
      Stream : access AVStream;
      Frame  : access FFMpeg.Low_Level.Ffmpeg_Libavutil_Frame_H.AVFrame) return FFMpeg.Rational.AVRational;


   function Match_Stream_Specifier
     (S    : access AVFormatContext;
      St   : access AVStream;
      Spec : String) return Int;


   function Queue_Attached_Pictures (S : access AVFormatContext) return Int;



   function Apply_Bitstream_Filters
     (Codec : access FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVCodecContext;
      Pkt   : access FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVPacket;
      Bsfc  : access FFMpeg.Low_Level.Ffmpeg_Libavcodec_Avcodec_H.AVBitStreamFilterContext) return Int;


   type AVTimebaseSource is new Integer;
   AVFMT_TBCF_AUTO : constant AVTimebaseSource := -1;
   AVFMT_TBCF_DECODER : constant AVTimebaseSource := 0;
   AVFMT_TBCF_DEMUXER : constant AVTimebaseSource := 1;
   AVFMT_TBCF_R_FRAMERATE : constant AVTimebaseSource := 2;

   function Transfer_Internal_Stream_Timing_Info
     (Ofmt    : access constant AVOutputFormat;
      Ost     : access AVStream;
      Ist     : access constant AVStream;
      Copy_Tb : AVTimebaseSource) return Int;



   function Stream_Get_Codec_Timebase (St : access constant AVStream) return FFMpeg.Rational.AVRational;

private
  pragma Linker_Options("-lavformat");

   type AVFormatContext is new Ada.Finalization.Limited_Controlled with record
      Data :  access Ffmpeg.Low_Level.Ffmpeg_Libavformat_Avformat_H.AVFormatContext;
   end record;
   procedure Initialize (Ctx : in out AVFormatContext);
   procedure Finalize   (Ctx : in out AVFormatContext);

   type AVPacketList is new Ffmpeg.Low_Level.Ffmpeg_Libavformat_Avformat_H.AVPacketList;
   type AVOpenCallback is new Ffmpeg.Low_Level.Ffmpeg_Libavformat_Avformat_H.AVOpenCallback;
   type Control_Message is new Ffmpeg.Low_Level.Ffmpeg_Libavformat_Avformat_H.Av_Format_Control_Message;
   type AVProgram is new Ffmpeg.Low_Level.Ffmpeg_Libavformat_Avformat_H.AVProgram;
   type AVProbeData is new Ffmpeg.Low_Level.Ffmpeg_Libavformat_Avformat_H.AVProbeData;
   type AVInputFormat is tagged record
      Data : access Ffmpeg.Low_Level.Ffmpeg_Libavformat_Avformat_H.AVInputFormat;
   end record;
   type AVOutputFormat is new Ffmpeg.Low_Level.Ffmpeg_Libavformat_Avformat_H.AVOutputFormat;
   type AVStream is new Ffmpeg.Low_Level.Ffmpeg_Libavformat_Avformat_H.AVStream;


end Ffmpeg.Avformat;
