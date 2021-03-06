INPUT_IMAGES_PATH = "/Users/joshua_harris/Dropbox/Research/Protocols/Invasion Assay/ImageJ_BW_Quantification_Invasion/Input_Images/";
NUMBER_OF_IMAGES = 40;



run("Image Sequence...", "open=[INPUT_IMAGES_PATH] sort");


for(i = 0; i < NUMBER_OF_IMAGES; i++){


	run("Color Threshold...");
	// Color Thresholder 1.52k
	// Autogenerated macro, single images only!
	min=newArray(3);
	max=newArray(3);
	filter=newArray(3);
	a=getTitle();
	run("HSB Stack");
	run("Convert Stack to Images");
	selectWindow("Hue");
	rename("0");
	selectWindow("Saturation");
	rename("1");
	selectWindow("Brightness");
	rename("2");
	min[0]=131;
	max[0]=200;
	filter[0]="pass";
	min[1]=54;
	max[1]=255;
	filter[1]="pass";
	min[2]=0;
	max[2]=255;
	filter[2]="pass";
	for (i=0;i<3;i++){
	  selectWindow(""+i);
	  setThreshold(min[i], max[i]);
	  run("Convert to Mask");
	  if (filter[i]=="stop")  run("Invert");
	}
	imageCalculator("AND create", "0","1");
	imageCalculator("AND create", "Result of 0","2");
	for (i=0;i<3;i++){
	  selectWindow(""+i);
	  close();
	}
	selectWindow("Result of 0");
	close();
	selectWindow("Result of Result of 0");
	rename(a);
	// Colour Thresholding-------------

	run("Convert to Mask", "method=Default background=Dark calculate black");

	run("Create Selection");
	run("Measure");
	run("Make Inverse");
	run("Measure");
	run("Make Inverse");
	run("Select None");
	run("Next Slice [>]");
}
