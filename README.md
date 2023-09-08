# EGFR-STRING-MSM
Supporting Information for a paper describing the MD simulations, STRING method, and Markov State Model (MSM) for the EGFR dimer.

- [`1_targeted_MD/`](1_targeted_MD): This folder contains input files of targeted MD simulations.
- [`2_rpath_generator/`](2_rpath_generator): This folder contains input files of rpath_generator.
- [`3_string_method/`](3_string_method): This folder contains input files of the STRING method.
- [`4_MSM_sampling/`](4_MSM_sampling): This folder contains input files of MD simulations for MSM.
- ionized_2jit_WT.pdb, psf: protein coordinate and topology files for the EGFR dimer.

For MD simulations, the toppar files of the CHARMM force field are required. The toppar files of the CHARMM force field can be downloaded from http://mackerell.umaryland.edu/charmm_ff.shtml.

The input files are used for the programs of the GENESIS simulation package (https://www.r-ccs.riken.jp/labs/cbrt/). Note that the following commands require the path to the programs of GENESIS.

The input files (*.inp) in 1_targeted_MD, 3_string_method, and 4_MSM_sampling are for MD simulations run with the command "spdyn *.inp".

The input file (trj_analysis.inp) in 2_rpath_generator is used to analyze MD trajectories with the command "trj_analysis trj_analysis.inp".
After trj_analysis, rpath_generator.inp is used to generate path images with the command "rpath_generator rpath_generator.inp".

There is a step4.5_making_target folder in 1_targeted_MD. An example target structure file of TMD is target_path1.pdb in 1_targeted_MD. This file is created by merging the resulting protein structure from step4.5_making_target with the water molecules and ion molecules from ionized_2jit_WT.pdb, because the MD program in GENESIS requires that the initial structure and reference structure match in atomic number. In the input file settings, only the protein structure in target_path1.pdb is used as the TMD reference structure.

The 3_string_method folder contains shell scripts to create folders for stepwise MD simulations of the STRING method. By default, 100 folders are created and used for the STRING method. Since this setup is optimized for the environment used in this calculations, you can re-optimize the number of folders and the number of MD steps in the input files to suit your environment. Similarly, the MD steps of the input files for 4_MSM_sampling can be re-optimized.
