# Comparative assessment of co-folding models for molecular glue ternary structure prediction

[![bioRxiv](https://img.shields.io/badge/paper-bioRxiv-B31B1B.svg)](https://www.biorxiv.org/content/10.1101/2025.05.25.655997v1)

![TOC](https://github.com/yiyanliao/MGBench/blob/main/img/TOC.jpg)

This is the official repository of preprint [**Comparative assessment of co-folding models for molecular glue ternary structure prediction**](https://www.biorxiv.org/content/10.1101/2025.05.25.655997v1).

## Introduction

**Molecular glues (MGs)** are a novel therapeutic modality that create or stabilize protein-protein interactions. To benchmark computational prediction of these systems, we present **MG-PDB** & **MGBench**, comprehensive datasets of MG ternary complex structures. This work evaluates several state-of-the-art co-folding methods: [AlphaFold 3](https://github.com/google-deepmind/alphafold3), [Boltz-1](https://github.com/jwohlwend/boltz), [Chai-1](https://github.com/chaidiscovery/chai-lab), [Protenix](https://github.com/bytedance/Protenix), and [RoseTTAFold All-Atom](https://github.com/baker-laboratory/RoseTTAFold-All-Atom).

## Data

We provide the dataset and evaluation results in the [`data`](https://github.com/yiyanliao/MGBench/tree/main/data) directory, which includes:

- [`1_MG_ternary_benchmark_with_release.xlsx`](https://github.com/yiyanliao/MGBench/blob/main/data/MGPDB.xlsx): Full MG-PDB dataset with structural and metadata information.  
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
@article {Liao2025.05.25.655997,
	author = {Liao, Yiyan and Zhu, Jintao and Xie, Juan and Lai, Luhua and Pei, Jianfeng},
	title = {Comparative assessment of co-folding methods for molecular glue ternary structure prediction},
	elocation-id = {2025.05.25.655997},
	year = {2025},
	doi = {10.1101/2025.05.25.655997},
	publisher = {Cold Spring Harbor Laboratory},
	eprint = {https://www.biorxiv.org/content/early/2025/05/28/2025.05.25.655997.full.pdf},
	journal = {bioRxiv}
}
```

