/// @desc Draws UI
if(room != rm_0) {
	var text = "Scalar: "+string(scalar);
	var sc = scalar*2;
	draw_set_color(c_purple);
	draw_text_transformed(5*sc,5*sc,text,sc,sc,0);
	draw_set_color(c_white);
	draw_text_transformed(5*sc,6*sc,text,sc,sc,0);
}