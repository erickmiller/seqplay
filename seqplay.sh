
#
# Quick simple image sequence playback utility in bash using ffplay
#

seqls() {
	RELPATH=$(find $* -maxdepth 1 -type f | sort -n | head -1)
	FILE=$(basename $RELPATH)
	STARTFRAME=$(echo $FILE | grep -Eo "[0-9]+")
	echo $(dirname $RELPATH)"/"${FILE%%.*}".%0"${#STARTFRAME}"d."${FILE##*.}
}

show_seqplay_msg() {
	echo -e "\n\n$(tput bold)seqplay$(tput sgr0) (requires ffplay ffmpeg package)"
	echo -e "$(tput bold)Description:$(tput sgr0)"
	echo -e "Simple util to view full image sequences, like: img.000.png img.001.png [...] img.300.png"
	echo -e "Play any image sequence filetype ffplay supports. I.e. jpg png (check your build of ffplay) "
	echo -e "Supports relative paths. Pass in a directory path if it only contains an image sequence."
	echo -e "Or just run seqplay with no args in the current directory if there only an image sequence there."
	echo -e "If there are multiple files and image sequences in directory pass in shell wildcards, like ls."
	echo -e "$(tput bold)Usage Example (in current dir):$(tput sgr0)\n\tseqplay"
	echo -e "$(tput bold)Usage Example (in current dir):$(tput sgr0)\n\tseqplay *.png"
	echo -e "$(tput bold)Usage Example (in current dir):$(tput sgr0)\n\tseqplay imgname.*.png"
	echo -e "$(tput bold)Usage Example (directory):$(tput sgr0)\n\tseqplay /path/to/imgseq/"
	echo -e "$(tput bold)Usage Example (full or relative path):$(tput sgr0)\n\tseqplay /path/to/imgseq/imgname.*.png\n\n"
}

seqplay() { 
	success=`ffplay -loglevel error -loop 0 -framerate 24 -i $(seqls $*) 2>&1`
	if [ -n "$success" ];
	then
		show_seqplay_msg
	fi
}

