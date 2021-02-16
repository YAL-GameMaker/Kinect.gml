#define kinect_init_structs
// NB! Much of this file is updated by GmxGen based on structs in C++ code
/// @hint {int} kinect_frame_description:width
/// @hint {int} kinect_frame_description:height
/// @hint {number} kinect_frame_description:horizontalFieldOfView
/// @hint {number} kinect_frame_description:verticalFieldOfView
/// @hint {number} kinect_frame_description:diagonalFieldOfView
/// @hint {int} kinect_frame_description:lengthInPixels
/// @hint {int} kinect_frame_description:bytesPerPixel
// GMS < 2.3:
//#macro kinect_frame_description_width 0
//#macro kinect_frame_description_height 1
//#macro kinect_frame_description_horizontalFieldOfView 2
//#macro kinect_frame_description_verticalFieldOfView 3
//#macro kinect_frame_description_diagonalFieldOfView 4
//#macro kinect_frame_description_lengthInPixels 5
//#macro kinect_frame_description_bytesPerPixel 6
//*/
global.__kinect_frame_description = kinect_struct_create("width", buffer_s32, "height", buffer_s32, "horizontalFieldOfView", buffer_f32, "verticalFieldOfView", buffer_f32, "diagonalFieldOfView", buffer_f32, "lengthInPixels", buffer_u32, "bytesPerPixel", buffer_u32);
