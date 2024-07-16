# How to build GFDL CM4/OM4 Model
[Geophysical Fluid Dynamics Laboratory
(GFDL)](https://www.gfdl.noaa.gov).

The purpose of this forked repo is to help users with building the GFDL version 4 public models.

The layout of this package includes the following directories:

* src  - The publically available source code on github for the CM4/OM4 model
* exec - The build directory with Makefiles, templates and helper scripts for building the model executable
* run  - Sample run scripts

## Cloning Instructions

This repository uses [git
submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) to
point to other repositories.  Thus, care should be taken when cloning,
and updating the source to ensure all source.  To obtain all source,
use the following git command

```
git clone -b codebase_2022.03 --recursive https://github.com/nikizadehgfdl/CM4.git
```

The `--recursive` option to `git clone` instructs git to recursively
clone all submodules.  In the event the repository was not cloned
using the `--recursive` option, the following step must be taken to
obtain all sources:

```
# From within the CM4 parent directory
git submodule update --init --recursive
```

## Source Code

All model source is contained in the [src](src) directory.  GFDL
tracks code using the git version control system.  This package
includes a single version of the publically available GFDL model components on github.

## Building CM4 / OM4

The following build process was tested for CM4 and OM4 with Intel compiler.

### To build CM4
#### Stellar
```
cd exec ; ./linux-build.bash -m stellar -p intel19 -t prod-openmp -f cm4
```

### To build OM4
#### Stellar
```
cd exec ; ./linux-build.bash -m stellar -p intel19 -t prod-openmp -f om4
```
#### ncrc5
```
cd exec ; ./linux-build.bash -m ncrc5  -p intel23cl -t prod-openmp -f om4
```

### Notes

- Try 'cd exec; ./linux-build.bash -h' to see the list of arguments and explanation.

- Users can easily add their own machine/platform/compiler to the process by providing the templates under [exec/templates](exec/templates) directory.

## Running CM4

Users need to obtain the required input data for running the experiments. 
It is not the objective of this fork to provide users with the data.

There are some sample slurm scripts provided under [run](run) directory
to help users start experimenting after obtaining the proper input data.

## Disclaimer

The United States Department of Commerce (DOC) GitHub project code is
provided on an 'as is' basis and the user assumes responsibility for
its use.  DOC has relinquished control of the information and no
longer has responsibility to protect the integrity, confidentiality,
or availability of the information.  Any claims against the Department
of Commerce stemming from the use of its GitHub project will be
governed by all applicable Federal law.  Any reference to specific
commercial products, processes, or services by service mark,
trademark, manufacturer, or otherwise, does not constitute or imply
their endorsement, recommendation or favoring by the Department of
Commerce.  The Department of Commerce seal and logo, or the seal and
logo of a DOC bureau, shall not be used in any manner to imply
endorsement of any commercial product or activity by DOC or the United
States Government.

