///draw_fov_primitive(x, y, radius, dir, angle_width_in_deg, circle_precision_dec, precise, obj)
var x_1 = argument0;
var y_1 = argument1;
var r = argument2;
var dir = argument3;
var ang = argument4;
var c_prec = argument5; //typically the angle_width
var prec = argument6;
var obj = argument7;


draw_primitive_begin(pr_trianglefan);
draw_vertex(x_1, y_1);

for( i=dir-ang/2; i < dir+ang/2; i += ang/c_prec )
{
    var p = collision_line_point(x_1, y_1, x_1+lengthdir_x(r, i), y_1+lengthdir_y(r, i), obj, prec, true);
    draw_vertex(p[1], p[2]);
}
draw_primitive_end();






