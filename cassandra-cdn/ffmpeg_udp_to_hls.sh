ffmpeg -fflags +sortdts+bitexact+genpts+nofillin+igndts+discardcorrupt -i udp://224.110.0.7:30000 -vf fps=25 -aspect:v 16:9 -s 1280x576 -crf 1 -r 25 -c:v libx264 -x264opts weightb:bframes=16:keyint=125:min-keyint=125:scenecut=-1 -preset veryfast -b:v 1300000 -maxrate 1300000 -bufsize 2600000 -profile:v high -level 3.1 -trellis 1 -partitions all -acodec libfdk_aac -ac 2 -ab 128k -ar 48000 -flush_packets 0 -max_interleave_delta 0 -mpegts_original_network_id 0x1122 -mpegts_transport_stream_id 0x3344 -mpegts_service_id 0x5566 -mpegts_pmt_start_pid 0x1500 -mpegts_start_pid 0x150 -metadata service_provider=me -metadata service_name=meTV -muxrate 1600k -f hls -hls_list_size 3 -hls_allow_cache 1 -hls_segment_filename bnt1_480p_%01d.ts -hls_flags delete_segments bnt1_480p.m3u8
