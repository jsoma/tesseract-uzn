# tesseract-uzn: Easy uzn files with tesseract

Simplify the process of feeding zone files (`.uzn` files) to tesseract for region-based OCR. It will create a text file for ever image you're dealing with.

## Usage

```bash
tesseract-uzn uznfile.uzn imagefile.png
```

### Use on multiple files

We now support **wildcards!** Hooray.

```bash
tesseract-uzn uznfile.uzn *.png
```

## Installation

Download as a zip file using the button on the top right, then unzip it. After that, `cd` into that folder move it to `/usr/local/bin` with the following command

```bash
mv tesseract-uzn /usr/local/bin
```

That way no matter where you are when you type `tesseract-uzn` it'll be available.

## Backstory

If you want to only have tesseract pay attention to certain areas of your image, you use a [uzn file](https://github.com/OpenGreekAndLatin/greek-dev/wiki/uzn-format). They look like this:

```
  395   368  1633    78 Text/Latin
 2030   368  1634    78 Text/Greek
  388   478  1633  2275 Text/Greek
 2031   478  1634  2275 Text/Latin
  396  2852  1633  1002 Text/Greek
 2018  2852  1634  1002 Text/Latin
  471  3960  1565    75 Text/Latin
 1639  4141   685    62 AppCrit
  394  4293  3249  1482 AppCrit
 4078   462     5   606 AppCrit
```

When you're using a zone file, though, the `.uzn` needs to be the *same name as the image file*. That seems complicated, so I made this tool to make things a little more simple.

## Installation

Put this in your PATH if you'd like, and run it as above! You'll need to have installed [tesseract](https://github.com/tesseract-ocr/tesseract) first.

You can use [Kull](https://jsoma.github.io/kull/) to make UZN files if you'd like.

## TODO

* [X] non-stdout input
* [ ] Windows support
* [X] Accept wildcards
* [ ] Tests
