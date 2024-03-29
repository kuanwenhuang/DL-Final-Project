# Data Processing
Documentation for data processing

## Dataset
3D Pokemon objects: https://www.models-resource.com/3ds/pokemonxy/

## Processing procedure
* Download one pokemon model
* Import the `.FBX` object file to Blender
* Scale the pokemon object appropriately
* Rotate the pokemon object to standing upright pose
* Translate the pokemon object downward to roughly centered at origin
* Export to a `.obj` file
* (optional) Save to a blender file `.blend`
* Take multi-view snapshots with the following command at the folder with render_blender.py
  ```
    blender --background --python render_blender.py -- --output_folder path_to_output_folder path_to_model.obj
  ```
* Check the generated 2D images
* (optional) If images not OK, either go back to saved blender file and re-scale/rotate/translate, or modify line #156 in `render_blender.py`: `cam.location = Vector((10, 10, -0.8))`to change the camera location.

 **File Naming:**

 e.g. for Charmander, generate folder named 004, including 004/004.obj and 004/004_0~29.png
