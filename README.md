# tesseract-uzn: Easy uzn files with tesseract

If you use a uzn/zone file to select certain text regions with [tesseract](https://github.com/tesseract-ocr/tesseract), the zone file needs to be the same name as the image file. That made me shed a tear, so I made this tool to make things a little more simple.

## Usage

```bash
tesseract-uzn uznfile.uzn imagefile.png
```

## Installation

Put this in your PATH if you'd like, and run it as above! You'll need to have installed [tesseract](https://github.com/tesseract-ocr/tesseract) first.

You can use [Kull](https://jsoma.github.io/kull/) to make UZN files.

## TODO

* [ ] Non-stdout input
* [ ] Windows support
* [ ] Accept wildcards
* [ ] Tests
