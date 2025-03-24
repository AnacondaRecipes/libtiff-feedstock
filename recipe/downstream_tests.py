import numpy as np
image_name = 'tst_image.tif'

from PIL import Image
im = Image.open(image_name)
im.load()
PIL_arr = np.array(im)

try:
    # OpenCV isn't installable on all platforms yet
    import cv2
    # opencv uses BGR instead of RGB
    arr = cv2.imread(image_name)[..., ::-1]

    np.testing.assert_array_equal(arr, PIL_arr)
    print("Tested the cv2 image reading.")
except ImportError:
    pass

try:
    # Tifffile isn't installable on all platforms yet
    import tifffile
    # tifffile.imread() requires imagecodecs
    arr = tifffile.imread(image_name)
    np.testing.assert_array_equal(arr, PIL_arr)
    print("Tested the tifffile image reading.")
except ImportError:
    pass
