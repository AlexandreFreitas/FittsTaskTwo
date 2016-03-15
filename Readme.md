# FittsTaskTwo Fork

This is a fork of [FittsTaskTwo](http://www.yorku.ca/mack/FittsLawSoftware/doc/FittsTaskTwo.html) by Scott MacKenzie.
The goal of this fork is to support analyzing the data with respect to mouse down/press instead of only mouse release.

I've made the following modifications:

- Adding a Makefile
- Recording the mouse down instant in the `.sd3` file and showing it as a blue dot in the `FittsTaskTwoTrace` app
- Rename files to end like `-sd1.csv` and added a second set of output files based on mouse down ending like `-sd1d.csv`
- Populated the `-sd1d.csv` and `-sd2d.csv` files with data computed based on button down location but still time based on release.
