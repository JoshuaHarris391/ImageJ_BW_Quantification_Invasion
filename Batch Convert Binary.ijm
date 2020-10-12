run("Image Sequence...", "open=[/Users/joshuaharris/Desktop/Image count folder] sort");
run("8-bit");
setAutoThreshold("Default dark");
//run("Threshold...");
setOption("BlackBackground", true);
run("Convert to Mask", "method=Default background=Dark calculate black");
