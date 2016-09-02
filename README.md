# seqplay
A quick and super simple image sequence playback shell utility (bash script) that uses ffplay for quick and easy play back of image sequences that are saved to disk in the standard way used widely by the animation industry:  imagename.###.ext 
For example: 

myimageseq.000.jpg
myimageseq.002.jpg
myimageseq.003.jpg
myimageseq.004.jpg

seqplay (requires ffplay ffmpeg package)
Description:
Simple util to view full image sequences, like: img.000.png img.001.png [...] img.300.png
Play any image sequence filetype ffplay supports. I.e. jpg png (check your build of ffplay) 
Supports relative paths. Pass in a directory path if it only contains an image sequence.
Or just run seqplay with no args in the current directory if there only an image sequence there.
If there are multiple files and image sequences in directory pass in shell wildcards, like ls.
Usage Example (in current dir):
	seqplay
Usage Example (in current dir):
	seqplay *.png
Usage Example (in current dir):
	seqplay imgname.*.png
Usage Example (directory):
	seqplay /path/to/imgseq/
Usage Example (full or relative path):
	seqplay /path/to/imgseq/imgname.*.png

Requires: ffmpeg (ffplay)
Install it with:
 sudo apt-get install ffmpeg

Written and tested on Linux (Ubunutu) Guessing it works in other bash enviornments but untested.

Install instructions:
Clone the repo, copy seqplay.sh to your home directory, and source seqplay.sh from your .bashrc, ie add this line to the end of your .bashrc:

source ~/seqplay.sh
