/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
image_xscale += 0.2;
image_yscale += 0.2;
image_alpha -= 0.05;
if (!image_alpha){
	instance_destroy();
}