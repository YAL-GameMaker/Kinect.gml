# Kinect.gml

A good starting point for working with Microsoft Kinect SDK in GameMaker.

## Features

* Color/depth/infrared frame capture from Kinect camera
* Frame description polling (to figure out width/height/FOV/etc. of the camera)

## Compatibility

The extension is compatible with GameMaker Studio 2.3+, GameMaker Studio 2.2.5, and last few versions of GameMaker: Studio (1.4.1804+).

The extension is primarily made for use with GMS2.3+ - for example, accessing the frame description in earlier versions means doing `desc[kinect_frame_description_width]` instead of just `desc.width`.

Sample projects are included for GMS2.3+ (complete - press digit keys to switch camera modes) and GMS2.2.5 (basic - switch camera mode constant in Create event). GMS1 implementation should be functionally identical to GMS2, but there is no justification for me to spend time making (and subsequently updating) a separate GMS1 sample.

## Setting up

You will reasonably need a Kinect V2 (Asure Kinect not tested) and an adapter cable to connect it to the computer through a USB3.0 port.

Once that is done, install [Kinect V2 SDK](https://www.microsoft.com/en-us/download/details.aspx?id=44561), verify configuration ("Kinect Configuration Verifier" in SDK Browser), and you should be good to go.

## Compiling

Open the included Visual Studio 2019 solution, make sure that Platform is set to x86 in toolbar, and pick menu:Build➜Build Solution (F8).

If you do not have [GmxGen](https://github.com/YAL-GameMaker-Tools/GmxGen) added to PATH, the build will succeed but post-build step will fail, which is okay so long as you are not adding new features to the codebase.

With this, you should get an updated Kinect.dll and be able to run the included sample projects / "Add existing" the GameMaker extension to your project.

**NB!** Only edit the GML files in the 2.3 project - they are automatically copied over to GMS2.2.5/GMS1 projects during the post-build step.

## Meta

**Author:** [YellowAfterlife](https://github.com/YellowAfterlife)  
**License:** GNU LGPL v3.0 https://www.gnu.org/licenses/lgpl-3.0