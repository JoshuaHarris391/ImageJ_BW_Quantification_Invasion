run("Image Sequence...", "open=[INPUT_IMAGES] sort");
run("8-bit");
setAutoThreshold("Default dark");
//run("Threshold...");
setOption("BlackBackground", true);
run("Convert to Mask", "method=Default background=Dark calculate black");
