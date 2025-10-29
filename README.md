# Comparative assessment of co-folding models for molecular glue ternary structure prediction

[![J. Chem. Inf. Model.](https://img.shields.io/badge/paper-J.%20Chem.%20Inf.%20Model.-B31B1B.svg)](https://doi.org/10.1021/acs.jcim.5c01860)

![TOC](https://github.com/yiyanliao/MGBench/blob/main/img/TOC.jpg)

This is the official repository of article [**Benchmarking Cofolding Methods for Molecular Glue Ternary Structure Prediction**](https://doi.org/10.1021/acs.jcim.5c01860).

## Introduction

**Molecular glues (MGs)** are a novel therapeutic modality that create or stabilize protein-protein interactions. To benchmark computational prediction of these systems, we present **MG-PDB** & **MGBench**, comprehensive datasets of MG ternary complex structures. This work evaluates several state-of-the-art co-folding methods: [AlphaFold 3](https://github.com/google-deepmind/alphafold3), [Boltz-1](https://github.com/jwohlwend/boltz), [Chai-1](https://github.com/chaidiscovery/chai-lab), [Protenix](https://github.com/bytedance/Protenix), and [RoseTTAFold All-Atom](https://github.com/baker-laboratory/RoseTTAFold-All-Atom).

## Data

We provide the dataset and evaluation results in the [`data`](https://github.com/yiyanliao/MGBench/tree/main/data) directory, which includes:

- [`data.xlsx`](https://github.com/yiyanliao/MGBench/blob/main/data/data.xlsx): Full MG-PDB dataset with structural and metadata information.  
- [`all_dockq_final.csv`](https://github.com/yiyanliao/MGBench/blob/main/data/all_dockq_final.csv): Evaluation results of DockQ metric.  
- [`all_lddtpli_final.csv`](https://github.com/yiyanliao/MGBench/blob/main/data/all_lddtpli_final.csv): Evaluation results of LDDT-PLI metric.  
- [`all_lrmsd_final.csv`](https://github.com/yiyanliao/MGBench/blob/main/data/all_lrmsd_final.csv): Evaluation results of Ligand RMSD metric.

## Evaluation

We conducted the evaluation using the official [DockQ](https://github.com/bjornwallner/DockQ) repository and the [OpenStructure](https://openstructure.org/) package:

```bash
pip install DockQ
conda install openstructure

cd src/eval
bash eval.sh
```

## Ploting

The complete source code for generating all statistical plots in the main text—from **Figure 1 to Figure 4** —is available in [`src/plot.ipynb` ](https://github.com/yiyanliao/MGBench/blob/main/src/plot.ipynb).

## Citations

If you find our dataset and benchmark useful, please cite it in your publications:

```bib
@article{Liao2025Benchmarking,
  title = {Benchmarking Cofolding Methods for Molecular Glue Ternary Structure Prediction},
  author = {Liao, Yiyan and Zhu, Jintao and Xie, Juan and Lai, Luhua and Pei, Jianfeng},
  journal = {Journal of Chemical Information and Modeling},
  year = {2025},
  volume = {65},
  number = {20},
  pages = {11136--11148},
  doi = {10.1021/acs.jcim.5c01860},
  publisher = {American Chemical Society},
  issn = {1549-9596},
  url = {https://doi.org/10.1021/acs.jcim.5c01860}
}
```

