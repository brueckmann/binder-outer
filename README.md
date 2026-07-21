# Example of a Difference-in-differences project

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/brueckmann/did-binder-test/HEAD)

## Usage

In Binder (on [mybinder]((https://mybinder.org/v2/gh/brueckmann/did-binder-test/HEAD))), use the terminal to run `bash run.sh`. This will download the data into `/01_data` and generate outputs (figures, tables) in `/03_output/figures` and `/03_output/tables`. 

Alternatively, if you want to use `RStudio` on [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/brueckmann/did-binder-test/HEAD?urlpath=rstudio), you can run `run.R`.

## Directory Structure
Below is an overview of the repository layout:

```
├── .binder/                  	# Binder configuration files
│   ├── install.R               	# R packages to install
│   ├── postBuild               	# Post-build script
│   └── runtime.txt             	# R version specification
├── 01_data/                  	# All project data 
│   ├── raw/                    	# Original, immutable data (do not modify)
│   ├── processed/              	# Cleaned/transformed data (outputs from scripts)
│   └── README.md               	# Data sources, descriptions, processing steps
├── 02_rscripts/              	# Analysis scripts and utilities
│   ├── 00_get_data.R           	# Data download script (R)
│   ├── 01_data_cleaning.R      	# Data input and preparation script (R)
│   ├── 02_descriptives.R       	# Descriptive results (R)
│   ├── 03_modeling.R           	# Diff-in-diff modeling script (R)
│   ├── 98_write_sessioninfo.R  	# Write R session information
│   ├── install.R               	# install R packages
│   └── README.md               	# Analysis workflow and script purposes
├── 03_output/                	# Output figures, tables and Quarto and HTML outpus
│   ├── figures/                	# To store figures generated from R Code
│   ├── tables/               		# To store tables generated from R Code
│   ├── BasicDiffinDiffs.qmd    	# Basic diff-in-diffs presentation
│   ├── Comparison.qmd          	# Comparison analysis document
│   ├── references.yaml         	# Bibliography references
│   └── README.md               	# Output documentation
├── diff_in_diffs.Rproj         # The RStudio R project
├── github_info.qmd             # Explains the very basics of Git and Github usage
├── run.R                       # R script to run everything
├── run.sh                      # Shell script to run everything
└── session_info.txt          	# Information on the R session
└── README.md                   # Project overview and setup instructions (this file)
```

# Acknowledgements: 

Research Project Template stems from [LMU OSC](https://github.com/lmu-osc/research-project-template). 
