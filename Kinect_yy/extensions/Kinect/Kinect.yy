{
    "id": "e1f1ecaa-5d53-86e3-173d-52e6d8f9bb6c",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "Kinect",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 113497714299118,
    "date": "2019-34-12 01:12:29",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "bac80d6c-a2e2-445c-9d9d-6141adb131a5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "c3d3ce88-f7f9-2cc1-e8c2-2591a960ff2e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "kinect_source_color",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "a4b49e4f-c2a4-d5a4-b04e-e06e21d51fc8",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "kinect_source_infrared",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "e1f1ecaa-808e-5be3-173d-8f3b00acee3c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "kinect_source_infrared_long_exposure",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "648fec35-0865-8fc5-0589-1cf4df1d4e86",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "kinect_source_depth",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "87978acc-5d53-8685-5379-70c4f235558a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "kinect_color_image_format_none",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "cc076453-95b8-bcf2-7c10-7ed8ff190ac2",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "kinect_color_image_format_rgba",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "1fd216c7-4424-2a55-4514-4a2216ab174b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "kinect_color_image_format_yuv",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "ffd6da51-1499-b63a-49d0-84e0aad3cb7c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "kinect_color_image_format_bgra",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "8a23b3ee-9efe-95aa-fc40-e9ef34983fbc",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "kinect_color_image_format_bayer",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "e4e7945d-e252-a371-5bd9-305df369f8b7",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "kinect_color_image_format_yuy2",
                    "hidden": false,
                    "value": "5"
                }
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "Kinect.dll",
            "final": "",
            "functions": [
                {
                    "id": "d2c2df99-f7f9-2cd0-e8c2-3480b2ca449f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "kinect_init_raw",
                    "help": "kinect_init_raw()",
                    "hidden": false,
                    "kind": 1,
                    "name": "kinect_init_raw",
                    "returnType": 2
                },
                {
                    "id": "880b3477-fcdc-53c8-d086-74875a7295f2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "kinect_open",
                    "help": "kinect_open()",
                    "hidden": false,
                    "kind": 1,
                    "name": "kinect_open",
                    "returnType": 2
                },
                {
                    "id": "f590e9e6-57eb-c5a8-2ca1-b277a2c06364",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "kinect_close",
                    "help": "kinect_close()",
                    "hidden": false,
                    "kind": 1,
                    "name": "kinect_close",
                    "returnType": 2
                },
                {
                    "id": "2d3d2066-4c42-972f-dbf1-43f7c93577a0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "kinect_get_frame_description_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "kinect_get_frame_description_raw",
                    "returnType": 2
                },
                {
                    "id": "1b70139f-779a-2567-24cd-8de6a08c5fc2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "kinect_reader_open",
                    "help": "kinect_reader_open(_source_types)",
                    "hidden": false,
                    "kind": 1,
                    "name": "kinect_reader_open",
                    "returnType": 2
                },
                {
                    "id": "a5b5a8ee-3b35-e0a7-173d-70c4fc9f9948",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "kinect_reader_close",
                    "help": "kinect_reader_close()",
                    "hidden": false,
                    "kind": 1,
                    "name": "kinect_reader_close",
                    "returnType": 2
                },
                {
                    "id": "a59efd8e-21fc-bcfd-8d98-9fc74bda3968",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "kinect_reader_acquire_frame",
                    "help": "kinect_reader_acquire_frame()",
                    "hidden": false,
                    "kind": 1,
                    "name": "kinect_reader_acquire_frame",
                    "returnType": 2
                },
                {
                    "id": "5b5ada0b-864a-a2d3-6046-684c91da4a9e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "kinect_reader_release_frame",
                    "help": "kinect_reader_release_frame()",
                    "hidden": false,
                    "kind": 1,
                    "name": "kinect_reader_release_frame",
                    "returnType": 2
                },
                {
                    "id": "e1f1ecaa-2a24-f1e3-240e-16a2988eff2c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "kinect_reader_copy_raw_color_data_",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "kinect_reader_copy_raw_color_data_",
                    "returnType": 2
                },
                {
                    "id": "d0746b1c-bc38-1860-448a-06ddc07d8cc2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "kinect_reader_get_raw_color_data_format",
                    "help": "kinect_reader_get_raw_color_data_format()",
                    "hidden": false,
                    "kind": 1,
                    "name": "kinect_reader_get_raw_color_data_format",
                    "returnType": 2
                },
                {
                    "id": "fe94951e-6048-70b6-7feb-e8de3b5f89f3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "kinect_reader_copy_converted_color_data_",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "kinect_reader_copy_converted_color_data_",
                    "returnType": 2
                },
                {
                    "id": "d2c2df99-919f-4ad0-e8c2-52e6d806885f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "kinect_reader_copy_raw_depth_data_",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "kinect_reader_copy_raw_depth_data_",
                    "returnType": 2
                },
                {
                    "id": "0d1675db-fa47-da9d-8bdc-556b5845c6b5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "kinect_reader_copy_converted_depth_data_",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "kinect_reader_copy_converted_depth_data_",
                    "returnType": 2
                },
                {
                    "id": "5a4a5711-f7f9-2c58-ac86-f84c742466b7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "kinect_reader_copy_raw_infrared_data_",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "kinect_reader_copy_raw_infrared_data_",
                    "returnType": 2
                },
                {
                    "id": "6a610242-ae03-7036-36ab-efc77b00934a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "kinect_reader_copy_converted_infrared_data_",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "kinect_reader_copy_converted_infrared_data_",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\Kinect.dll",
            "uncompress": false
        },
        {
            "id": "7cc73678-e3b5-432b-8372-a1d5779ceb4b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "87978acc-919f-4a85-173d-f84c73e8cc1a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "kinect_struct_ptr",
                    "hidden": true,
                    "value": "buffer_get_address(kinect_struct_buf)"
                }
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "kinect_core.gml",
            "final": "",
            "functions": [
                {
                    "id": "67bcdf17-3c21-da97-2ddc-5fcd54290a1f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "kinect_init",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "kinect_init",
                    "returnType": 2
                },
                {
                    "id": "a40f34e5-62be-6e15-b8c8-8612fb7c9cf2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "kinect_struct_create",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "kinect_struct_create",
                    "returnType": 2
                },
                {
                    "id": "e3f89bbd-b5b8-ade1-4a98-38bbd0390a2c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "kinect_struct_read",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "kinect_struct_read",
                    "returnType": 2
                },
                {
                    "id": "da61028e-6f12-ade6-3032-7b859e0d4e68",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "kinect_get_frame_description",
                    "help": "kinect_get_frame_description(kind)->kinect_frame_description",
                    "hidden": false,
                    "kind": 2,
                    "name": "kinect_get_frame_description",
                    "returnType": 2
                },
                {
                    "id": "b59efddb-068b-9eda-f8ab-ded42cce7d4a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "kinect_reader_copy_raw_color_data",
                    "help": "kinect_reader_copy_raw_color_data(out:buffer)",
                    "hidden": false,
                    "kind": 2,
                    "name": "kinect_reader_copy_raw_color_data",
                    "returnType": 2
                },
                {
                    "id": "64915963-11bd-e1f4-bb78-c191b0f1a045",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "kinect_reader_copy_converted_color_data",
                    "help": "kinect_reader_copy_converted_color_data(out:buffer, format)",
                    "hidden": false,
                    "kind": 2,
                    "name": "kinect_reader_copy_converted_color_data",
                    "returnType": 2
                },
                {
                    "id": "a5b5a8ee-3b35-e0a7-8ea4-e95d6271ee38",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "kinect_reader_copy_converted_depth_data",
                    "help": "kinect_reader_copy_converted_depth_data(out:buffer, min:number, max:number, col:number)",
                    "hidden": false,
                    "kind": 2,
                    "name": "kinect_reader_copy_converted_depth_data",
                    "returnType": 2
                },
                {
                    "id": "aa610271-4b56-165b-eccd-5fc033381b0e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "kinect_reader_copy_converted_infrared_data",
                    "help": "kinect_reader_copy_converted_infrared_data(out:buffer, min:number, max:number, col:number)",
                    "hidden": false,
                    "kind": 2,
                    "name": "kinect_reader_copy_converted_infrared_data",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\gml.gml",
            "uncompress": false
        },
        {
            "id": "4c2bff56-cf82-4236-a8e9-bd06435476ba",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "3c2c3177-e6e8-3d3e-cae0-e95d667133e1",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "kinect_frame_description_width",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "78687533-0806-d37a-dbf1-52e6d7cadd05",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "kinect_frame_description_height",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "9f3457ca-7b56-f8b6-3f10-09a853a2b14a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "kinect_frame_description_horizontalFieldOfView",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "97e18f5e-da63-2a52-9d95-5b9ae9533653",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "kinect_frame_description_verticalFieldOfView",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "776e52de-44e7-d06c-2f82-c39ecc1f0d95",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "kinect_frame_description_diagonalFieldOfView",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "73b08e99-9efe-34bb-ea1e-70bdb1ba1dc0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "kinect_frame_description_lengthInPixels",
                    "hidden": false,
                    "value": "5"
                },
                {
                    "id": "285ce86e-d6b4-b2a5-bbd0-a7e27b24e1d5",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "kinect_frame_description_bytesPerPixel",
                    "hidden": false,
                    "value": "6"
                }
            ],
            "copyToTargets": -1,
            "filename": "kinect_structs.gml",
            "final": "",
            "functions": [
                {
                    "id": "8e81d5f1-8c89-0907-df3b-f83b6bf1a885",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "kinect_init_structs",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "kinect_init_structs",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                "8e81d5f1-8c89-0907-df3b-f83b6bf1a885"
            ],
            "origname": "",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Proprietary",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": 113497714299118,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.0"
}