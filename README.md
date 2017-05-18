ImagePlot
=========

## What is ImagePlot

ImagePlot is a free software tool that visualizes collections of images and video of any size. It is implemented as a macro which works with the open source image processing program ImageJ.

ImagePlot was developed by the Software Studies Initiative with support from the National Endowment for Humanities (NEH), the California Institute for Telecommunications and Information Technology (Calit2), and the Center for Research in Computing and the Arts (CRCA).

#### See your whole image collection in a single visualization.

Existing visualization tools show data as points, lines, and bars. ImagePlot's visualizations shows the actual images in your collection. The images can be scaled to any size and organized in any order - according to their dates, content, visual characteristics, etc. Because digital video is just a set of individual still images, you can also use ImagePlot to explore patterns in films, animations, video games, and any other moving image data.

![Mondrian](http://4.bp.blogspot.com/-JSZee3CkFfQ/TnKEIYp2X7I/AAAAAAAAA1w/xGcwDtksaOI/s400/Mondrian.ready.w300.h300.jpg)

#### Better understand media collections and make new discoveries.

Visualize image collections as timelines and scatter plots which display all images in a collection. Find images that are outliers. Discover clusters - sets of images that are similar in content or visual properties. Visualize multiple sets of images to better understand their similarities and differences. Explore patterns in existing metadata (i.e., dates, names, etc.), added annotations and keywords, or visual features (i.e., brightness, saturation, hue, shapes, etc.)

#### Visualize change.

We include macros which automatically measure various visual properties of every image in collection (or every frame in a video). These measurements can be visualized as line graphs, scatter plots, and image plots. This allows you to see the patterns of change over time in images' visual characteristics. You can also compare multiple image sets in terms of their visual characteristics.

## Visualize image collections of any size.

From a few dozens to millions of images. There is no theoretical limit to the number of images that can be included in a single visualization. A few dozen images can be visualized in a second, a few thousands will take a few minutes. The largest number we tried so far was one million images ( yes, this took a while - but it worked!). If your collection is really big, start the render and just come back when it is finished.

## How does it work?
#### From points to images.

Start with point and line graphs, which allow you to quickly explore your image set. Once you find an interesting pattern, re-render the plot to show the images. Go back and forth between these options as often as you like.

#### Render and save high-res visualizations.

Start with point and line graphs, which allow you to quickly explore your image set. Once you find an interesting pattern, re-render the plot to show the images. Go back and forth between these options as often as you like.

![1 Million Manga](http://4.bp.blogspot.com/-O5qYNlM_8oI/TnKEYN-bVJI/AAAAAAAAA14/7f6QTBa5r9o/s400/Manga.1_million.pages.Xstdev.Yentropy.ready.jpg)

#### Turn any visualization into an animation.

Select the option to save visualization after each new image is added to it. The result is a sequence of files which can be easily turned into video (use QuickTime or any video editing application).

#### Customize everything.

Customize the appearance of data points and lines, background, axis lines, data labels, image labels, the size of images, image transparency, and pretty much everything else you can think of. We wrote ImagePlot to support both quick exploration of image sets and creation of high-res visualizations for publications and exhibitions. So we added options to control every possible aspect of visualization appearance. Visualizations created with ImagePlot have been shown in science centers, art and design museums, and art galleries, including Graphic Design Museum (Breda), Gwangju Design Biennale (Korea), and The San Diego Museum of Contemporary Art.

![Time Magazine](http://4.bp.blogspot.com/-FPdyz_s13hs/TnKG66_cBKI/AAAAAAAAA2I/gvOfKSGGlSc/s400/Time-covers-years.ready.png)

## Will it work with my stuff?
#### Work with images in all popular formats.

Color or grey scale images? JPEG or TIFF? No problem, ImagePlot can handle them all. If you images have different sizes, ImagePlot can also automatically scale them to the same size. If your images are located across multiple directories on your computer, we built in an option to handle this as well.

![Time Magazine Scatter Plot](http://4.bp.blogspot.com/-Zig5WI3RwAk/TnKE40fkLCI/AAAAAAAAA2A/mZL7NTrWayg/s400/Time-covers.w300.h300.jpg)

#### Cross-platform.

Run ImagePlot on Windows, Mac OS or Unix.

#### No coding required.

ImagePlot has a Graphical User Interface, so you don't need to program or script anything.

#### Use data created in other applications.

ImagePlot works with the most common data formats: a set of image files and the data about these images saved in a tab delimited text file (.txt). This makes ImagePlot compatible with lots of other applications for media cataloging, data analysis, and information visualization. You can prepare and edit data using any spreadsheet or word processor application. The data file can contain any number of rows and columns. (For example, our data file for one million manga pages had one million rows and 60 columns.)

#### Download and run ImagePlot in minutes.

ImagePlot is a macro which runs within the cross platform, open source image processing software ImageJ. Together these files take up under 5 MB. The full ~100MB download comes with several large sample data sets, which are helpful for getting started but not required for the software to run.

#### System requirements

Hardware requirements: 2 GB RAM (4GB or more recommended for high resolution visualizations with images).

Software Requirements: To use ImagePlot macro, you will first need to install the ImageJ application. ImageJ will run on Mac, Windows, or Linux. Application files for all three operating systems are included in the ImagePlot.zip download.

## What's New in Version 1.1

Each new visualization is given automatically generated meaningful unique filename. It includes the names of data file and the data columns used for x-axis and y-axis.

Option to automatically save the visualization after it have been rendered (appears in the first application dialog box).

Option to render the visualization using a better resize algorithm (runs slower but generates nicer images; the option appears in the Image Options dialog box).

File open error checking: if ImagePlot can't find a particular image, the filename is printed in the Log window, but rendering continues.

## Directory Structure
-------------------

    |-ImageJ/ ........... ImageJ Application
    |-extras/ ........... Extra image analysis macro script for ImageJ
    |-sample_files/ ........... Sample image set for getting started with ImagePlot
    |-theory/ ........... Papers and theory on cultural analytics and data visualization
    '-ImagePlot.txt ..... ImageJ Macro
    '-README.txt ..... Documentation on how to get started with ImagePlot
    '-README.md ..... release readme
