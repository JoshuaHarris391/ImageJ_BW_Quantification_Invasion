input = "/Users/joshua_harris/Dropbox/Research/Protocols/Invasion Assay/ImageJ_BW_Quantification_Invasion/Input_Images/";
list = getFileList(input);
for (i = 0; i < list.length; i++){
				print(input, list[i]);
        open(input + list[i]);
				runMacro("/Users/joshua_harris/Dropbox/Research/Protocols/Invasion Assay/ImageJ_BW_Quantification_Invasion/autothresh.ijm");
}
run("Images to Stack", "name=Stack title=[] use");
