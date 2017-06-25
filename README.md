# WMI
Weapon of Mass Integration -- Semi-Automated Image Analysis Program for Quantitative STEM

===================================================================

Hello! 

Thank you for your interest in Weapon of Mass Integration (WMI).

===================================================================

Weapon of Mass Integration (WMI) is a MATLAB®-based program for the rapid measurement of size and integrated intensity of supported nanoparticles for quantitative STEM. When applied to properly calibrated HAADF-STEM micrographs, this information can then be used to calculate the elastic electron scattering cross-section of each nanoparticle and thus the number of atoms inside it. The program optimizes the analysis parameters, applying the procedure consistently across the entire dataset, enhancing the meaningfulness of the statistics as well as the reproducibility and transferability of the results. This ability to rapidly analyze statistically robust populations of nanoparticles allows for more representative characterization of batch uniformity/dispersion and is an excellent complementary pair to single-particle atomic-resolution imaging.

This program was written by Stephen D. House (shouse@gmail.com), currently at the University of Pittsburgh.
Details about Stephen (me!) and WMI can be found at www.shouse.me 

WMI is free for academic/non-commercial use. (For commercial use, contact me at shouse@gmail.com.) If you do use it for published work, please include the following citation:

<Manuscript submitted and under review>

A detailed discussion of the software and analysis technique it was written for are described in the above paper.

A user guide can be found at https://github.com/StephenHouse/WMI and www.shouse.me

===================================================================

The current version of WMI is 1.0
A full changelog is available at https://github.com/StephenHouse/WMI and www.shouse.me

I greatly welcome any bugs reports, as well as any suggested improvements. WMI is a continuous work-in-progress, with a whole list of new and improved features in the pipeline.

===================================================================
WMI consists of 6 MATLAB® files, described below. It doesn't matter where they are located as long as they are in the same folder as each other. The filenames below are for the most updated versions (which are included in the download file).

Weapon_of_mass_Integration_01_00.p -- This is the analysis program itself.
WMI_Launcher_01_00.m -- Used to launch the program, this file is where you select the program parameters you wish to use.
Composite_Stitch_01_01.p -- Used to create a composite image by extracting individual nanoparticles from (multiple) images(s), if that option is selected.
fmgaussfit_WMI.m -- Used for fitting each nanoparticle with a rotated 2D Gaussian. The original file was developed by Nathan Orloff, and slightly modified here.
ReadDM3.m -- Used for importing Digital Micrograph® .dm3 files into MATLAB®. Developed by Fred Sigworth.
serReader.m -- Used for importing TIA (FEI) .ser files into MATLAB®. Developed by Peter Ercius.

The current version of WMI requirements are:
MATLAB® (2014b or newer. It might work with some older versions, but I can't promise.)
MATLAB® Toolboxes: Curve Fitting, Image Processing, Signal Processing, Statistics, Symbolic Math
