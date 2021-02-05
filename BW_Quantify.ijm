root_dir = File.directory();
input_dir = root_dir + "Input_Images/";
list = getFileList(input_dir);
for (i = 0; i < list.length; i++){
				print(input_dir, list[i]);
        open(input_dir + list[i]);
				runMacro(root_dir + "autothresh.ijm");
}
run("Images to Stack", "name=Stack title=[] use");
