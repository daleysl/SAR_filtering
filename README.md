# SAR_filtering
## Abstract
The goal of this paper is to filter Synthetic Aperture Radar (SAR) using two different methods. The first method being Haar Wavelet Transforms, and the second method being Principal Component Analysis (PCA). We consider two different reasons to do so: which is easier as a human to see, and for putting the filtered image into a deep learning model channel for future work on image classification.

## Data
SAR images used were from Sandia National Laboratories (https://www.sandia.gov/radar/complex_data/)
To read in .gff files I followed code outlined in 'Matlab_GFF_viewer.pdf'

## Motivation
The main goal was to learn how I could filter a SAR image a little differently than the current standards such as Taylor Weighting. Although that method works very well, it doesn't hurt to know a few different ways to filter for possible edge cases. I also wanted to use PCA in an attempt to find a new filter to add to a network channel.

## Author
Sara Daley
