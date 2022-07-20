# How to use pytesseract with uzn files

If you like uzn files and you like Python, maybe you want to use [pytesseract](https://github.com/madmaze/pytesseract) with uzn files. Unfortunately, *it isn't terribly easy!*

If you read [this issue](https://github.com/madmaze/pytesseract/issues/178) you might think you need to pass some sort of config to pytesseract that it can then pass along to tesseract. *But you'd be wrong!* Tesseract doesn't take uzn files as config files, it just does it "automagically" based on filenames.

Instead, we're going to **read in the uzn file manually, then loop through each zone**. In each loop, we'll use PIL to crop the image, and use pytesseract on the cropped image. And then we'll be done!

You can see an actual example in [this notebook](pytesseract.ipynb).