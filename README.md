# seqplay
(requires ffplay ffmpeg package)  

A quick and super simple image sequence playback shell utility (bash script) that uses ffplay for quick and easy play back of image sequences that are saved to disk in the standard way used widely by the animation industry:   **imagename.#.ext**  
For example:  

myimageseq.00.jpg  
myimageseq.02.jpg  
myimageseq.03.jpg  
myimageseq.04.jpg  
   
###Description:  
Simple util to view full image sequences, like:  img.000.png  img.001.png  [...]  img.300.png  

Play any image sequence filetype ffplay supports. I.e. jpg png (check your build of ffplay)   
Supports relative paths. Pass in a directory path if that folder only contains one sequence.  
Or just run `seqplay` with no args in the current directory if it contains only a single sequence of images.  
If there are multiple file types and image sequences in a directory you can easily use wildcards as shown below.  
####Usage Example (in current dir):  
	seqplay  
####Usage Example (in current dir):  
	seqplay *.png  
####Usage Example (in current dir):  
	seqplay imgname.*.png  
####Usage Example (directory):  
	seqplay /path/to/imgseq/  
####Usage Example (full or relative path):  
	seqplay /path/to/imgseq/imgname.*.png  

###Requires: 
ffplay from ffmpeg   
Install ffmpeg with:  
	`sudo apt-get install ffmpeg`  

**Written for bash on Linux (Ubuntu) Guessing it works in other bash enviornments but, untested.**  

###Install instructions:  
Clone the repo to your home directory, and source `seqplay.sh` from your `.bashrc` file, ie add this line to the end of the `.bashrc` file that's in your home directory:  

`source ~/seqplay/seqplay.sh`

