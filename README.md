# TAMMiCol

## Overview

Tool for Analysis of the Morphology of Microbial Colonies (TAMMiCol) is an application for efficiently and automatically analysing images of microbial colonies. The software converts colony images to binary, which separates the colony from the background and any other extraneous features. The data may be analysed by exporting the binary images or by using the in-built statistics.

## Installation

TAMMiCol is written in MATLAB using the App Designer package; however, this software does not require a MATLAB license in order to operate. To install TAMMiCol, open the installation file and follow the prompts. The installation will download and install MATLAB Runtime, which contains necessary shared libraries. While an internet connection is required during the installation, TAMMiCol will run offline following installation.

Separate installation files are provided for systems running macOS and Windows; however, the installation process is similar for both. Users running macOS 10.12 Sierra should see the following subsection for specific steps.

On macOS 10.12 Sierra, Gatekeeper may prevent TAMMiCol from installing correctly. Gatekeeper may be disabled through the Terminal using the command \code{sudo spctl --master-disable}. The installation file will also need to be placed in the installation location.

## Authors

* Hayden Tronnolone
* Jennifer M. Gardner
* Joanna F. Sundstrom
* Vladimir Jiranek
* Stephen G. Oliver
* Benjamin J. Binder

## License

TAMMiCol is provided free under the GNU General Public License v3.0.

## Acknowledgments

The authors would like to thank Trent Mattner for useful discussions on analysing noisy data.
