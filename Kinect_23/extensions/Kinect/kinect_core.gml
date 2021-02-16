#define kinect_init
//#macro kinect_struct_ptr buffer_get_address(kinect_struct_buf)~
if (!kinect_init_raw()) show_debug_message("Failed to load Kinect dll");
kinect_init_structs();
globalvar kinect_struct_buf; kinect_struct_buf = buffer_create(1024, buffer_grow, 1);

#define kinect_struct_create
/// (...pairs)~
var _argc = argument_count;
var _size = _argc div 2;
var _types = array_create(_size);
var k = 0;
// GMS >= 2.3:
var _names =  array_create(_size);
var _out = { names: _names, types: _types };
for (var i = 0; i < argument_count; i += 2) {
	_names[@k] = argument[i];
	_types[@k] = argument[i + 1];
	k += 1;
}
return _out;
/*/
for (var i = 0; i < argument_count; i += 2) {
	_types[k] = argument[i + 1];
	k += 1;
}
return _types;
//*/

#define kinect_struct_read
/// (status, struct_t)~
var _status = argument0, _proto = argument1;
if (_status <= 0) return undefined;
var _buf = kinect_struct_buf;
buffer_seek(_buf, buffer_seek_start, 0);
// GMS >= 2.3:
var _types = _proto.types;
var _names = _proto.names;
var _size = array_length(_types);
var _obj = {};
for (var i = 0; i < _size; i++) {
	variable_struct_set(_obj, _names[i], buffer_read(_buf, _types[i]));
}
return _obj;
/*/
var _size = array_length_1d(_proto);
var _arr = array_create(_size);
for (var i = 0; i < _size; i++) {
	_arr[i] = buffer_read(_buf, _proto[i]);
}
return _arr;
//*/

#define kinect_get_frame_description
/// (kind)->kinect_frame_description
return kinect_struct_read(
	kinect_get_frame_description_raw(kinect_struct_ptr, argument0),
	global.__kinect_frame_description
);

#define kinect_reader_copy_raw_color_data
/// (out:buffer)
var _buf = argument0;
return kinect_reader_copy_raw_color_data_(buffer_get_address(_buf), buffer_get_size(_buf));

#define kinect_reader_copy_converted_color_data
/// (out:buffer, format)
var _buf = argument0, _format = argument1;
return kinect_reader_copy_converted_color_data_(buffer_get_address(_buf), buffer_get_size(_buf), _format);

#define kinect_reader_copy_converted_depth_data
/// (out:buffer, min:number, max:number, col:number)
var _out = argument0, _min = argument1, _max = argument2, _col = argument3;
var b = kinect_struct_buf;
buffer_seek(b, buffer_seek_start, 0);
buffer_write(b, buffer_f64, _min);
buffer_write(b, buffer_f64, _max);
buffer_write(b, buffer_u32, _col);
return kinect_reader_copy_converted_depth_data_(buffer_get_address(_out), buffer_get_size(_out), buffer_get_address(b));

#define kinect_reader_copy_converted_infrared_data
/// (out:buffer, min:number, max:number, col:number)
var _out = argument0, _min = argument1, _max = argument2, _col = argument3;
var b = kinect_struct_buf;
buffer_seek(b, buffer_seek_start, 0);
buffer_write(b, buffer_f64, _min);
buffer_write(b, buffer_f64, _max);
buffer_write(b, buffer_u32, _col);
return kinect_reader_copy_converted_infrared_data_(buffer_get_address(_out), buffer_get_size(_out), buffer_get_address(b));
