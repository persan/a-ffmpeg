s!with FFMpeg.Low_Level.stddef_h;!!
s!with FFMpeg.Low_Level.bits_stdint_uintn_h;!!
s!with FFMpeg.Low_Level.bits_stdint_intn_h;!!

s!limited with FFMpeg.Low_Level.bits_types_FILE_h;!with Interfaces.C_Streams;!
s!FFMpeg.Low_Level.bits_types_FILE_h.FILE!Interfaces.C_Streams.FILEs!g

s!FFMpeg.Low_Level.bits_stdint_intn_h.int8_t!Interfaces.Integer_8!g
s!FFMpeg.Low_Level.bits_stdint_intn_h.int16_t!Interfaces.Integer_16!g
s!FFMpeg.Low_Level.bits_stdint_intn_h.int32_t!Interfaces.Integer_32!g
s!FFMpeg.Low_Level.bits_stdint_intn_h.int64_t!Interfaces.Integer_64!g
s!FFMpeg.Low_Level.bits_stdint_uintn_h.uint8_t!Interfaces.Unsigned_8!g
s!FFMpeg.Low_Level.bits_stdint_uintn_h.uint16_t!Interfaces.Unsigned_16!g
s!FFMpeg.Low_Level.bits_stdint_uintn_h.uint32_t!Interfaces.Unsigned_32!g
s!FFMpeg.Low_Level.bits_stdint_uintn_h.uint64_t!Interfaces.Unsigned_64!g

s!FFMpeg.Low_Level.stddef_h.size_t!size_t!g


#-------------------------------------------------------
# for ffmpeg-low_level-ffmpeg_libavfilter_avfilter_h.ads
#
s!   type AVFilter is record!   type AVFilterContext;\
   type AVFilter is record!


#-------------------------------------------------------
# ffmpeg-low_level-ffmpeg_libavcodec_avcodec_h.ads
#
s!   type AVCodecParser is record!   type AVCodecParser_codec_ids_array is array(1..5) of int;\
\
   type AVCodecParser is record!

#-------------------------------------------------------
#ffmpeg-low_level-ffmpeg_libavfilter_avfilter_h.ads
#
s!   type AVFilterLink is record!   type anon_69 is (AVLINK_UNINIT, AVLINK_STARTINIT, AVLINK_INIT);\
   type AVFilterLink is record!
