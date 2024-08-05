/// @desc Prevents Automatic Drawing
/*
Gamemaker draws objects by default unless the draw event is created
We can't make the object invisible if we want to draw other things via this object
such as the application surface or gui so we make an empty event instead
*/