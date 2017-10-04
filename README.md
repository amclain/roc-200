# ROC-200: Dual Element Reflow Oven Controller

**Status:** Design / Prototyping

The ROC-200 is a hardware controller that converts a consumer toaster oven
into a reflow soldering oven. It supports independent control of two sets of
heating elements (top and bottom) and temperature sensing with two thermocouples.

## Directory Structure

* `/app` - SBC application ([Nerves](http://nerves-project.org/))
* `/cad` - Assembly & part drawings
* `/design` - General design documentation
* `/schematics` - Electrical schematics & PCB drawings ([Eagle](https://www.autodesk.com/products/eagle/free-download))

## Documentation

Working documentation is located in the `/design` and `/schematics` folders.
Since the project is currently being designed and prototyped, files are
currently only available for the editors they were created in. This eliminates
the need to commit derivatives of rapidly changing binary files during this
phase of the project. When the design stabilizes, more compatible formats of
these files, like PDF and JPG, will be added.
