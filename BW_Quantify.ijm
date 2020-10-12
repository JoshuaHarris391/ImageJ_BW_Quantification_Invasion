INPUT_IMAGES_PATH = "/Users/joshua_harris/Dropbox/Research/Protocols/Invasion Assay/ImageJ_BW_Quantification_Invasion/Test_Images/";
NUMBER_OF_IMAGES = 32;



run("Image Sequence...", "open=[INPUT_IMAGES_PATH] sort");
run("8-bit");
setAutoThreshold("Default dark");
//run("Threshold...");
setOption("BlackBackground", true);
run("Convert to Mask", "method=Default background=Dark calculate black");


for(i = 0; i < NUMBER_OF_IMAGES; i++){
	run("Create Selection");
	run("Measure");
	run("Make Inverse");
	run("Measure");
	run("Make Inverse");
	run("Select None");
	run("Next Slice [>]");
}
