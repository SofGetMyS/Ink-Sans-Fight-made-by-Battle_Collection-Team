direction = point_direction(x, y, global.hx, global.hy);
speed = 10;
var i = 0;
if (drawAble){
	repeat (_repeat_num) { 
		draw_line_width_color(random_range(10, 630), 0, x + (choose(lev_x[i], -lev_x[i])), y, 4, c_blue, c_blue); 
		if (lev_x[i] > 0) then lev_x[i] -= 5;
		i++; 
	};
};
