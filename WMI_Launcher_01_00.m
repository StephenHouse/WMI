%Adjust the input parameters and analysis options
%Save a version of this file (with the parameters you used) along with each data set analyzed with it.

clear %Let's start with a clean slate, yes?
close all
clc

% ------------------------------------------------------------------------------------------
% -------------------------(Begin User-Defined Parameters)----------------------------------
% ------------------------------------------------------------------------------------------

% =====(Data Input & Preparation)=====
runstitch = 0; 		%Run the program to extract the NP from a folder of images to create a single composite image. 0 = no, 1 = yes.
fillhole = 1; 		%Fill "holes" (i.e. 0 intensity pixels) with lowest non-zero background value? 0 = no, 1 = yes.

numheadrow = 1;     %Number of header rows in the NP-centers file
numheadcol = 1;     %Number of header columns in the NP-centers file

runfilt = 1; 		%Use a Gaussian filter on the image prior to fitting? 0 = no, 1 = yes.
					%(Note: The *raw* unfiltered image is always used for intensity analysis.)
gfsize = 3; 		%Size of Gaussian filter (px)
gfsigma = 1; 		%Sigma of Gaussian filter (px)

% =====(Input Parameters for Analysis)=====
np_size = 27;		%Initial estimate of NP size (diameter, in px)

pxscale = 0.05708; 	%Pixel dimensions/scale, in nm-per-px

runint = 1; 		%Calculate Integrated Intensity for each NP. 0 = no, 1 = yes.
runphys = 1; 		%Calculate the physical radius for each NP. 0 = no, 1 = yes.

icutrad = 3; 		%Initial cut-off radius for integration (in px)
bkgwidth = 2; 		%Width of annulus to use for background value determination (in px)

ficfilt = 3;        %Order of median filter used on the intensity change data for finding cut-off radius
threshlim = 0.1; 	%Threshold of intensity change (fraction, 0-1) to use for final cut-off radius
numincthresh = 3;   %Number of sequential increments (1-3) of intensity change that must fall below the threshold
                    %in order to trigger the cut-off radius 

N = 2; 				%Initial N for FW(1/N)M to use for physical diameter (e.g., N = 2 for FWHM)

% ------------------------------------------------------------------------------------------
% -------------------------(End User-Defined Parameters)------------------------------------
% ------------------------------------------------------------------------------------------

% ==================(Prepare & Analyze Data)====================

run Weapon_of_Mass_Integration_01_00

% ==========================(Cleanup)===========================
clear fillhole runfilt runint runphys runstitch comp_centers comp_image numheadrow numheadcol ficfilt numincthresh cell_size fit_range np_size
