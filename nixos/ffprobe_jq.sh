ffprobe -of json -show_format -show_streams -pretty "$1" | \
	jq  "{ \
	     title: .format.tags.title, \
	     duration: .format.duration, \
	     format_name: .format.format_name, \
	     size: .format.size, \
	     bit_rate: .format.bit_rate, \
	     encoder: .format.tags.encoder \
	     }"
