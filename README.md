![image](images/ReMAP_logo.png)

# RheMAP
The RheMAP project provides access to a set of pre-calculated non-linear registrations between some of the most commonly used rhesus macaque brain templates (D99, INIA19, MNI macaque, NMT, Yerkes19). This repository contains the code used to calculate the registration warps and example code that demonstrates how to use the resulting warp files to remap data between different template spaces. Non-linear registration warps were generated using [ANTs](http://stnava.github.io/ANTs/) and can directly be downloaded from Zenodo ([DOI:10.5281/zenodo.3668510](https://doi.org/10.5281/zenodo.3668510)).

**Authors**:     
[Nikoloz Sirmpilatze](https://github.com/niksirbi) (German Primate Center)     
[Chris Klink](https://github.com/pcklink) (Netherlands Institute for Neuroscience)

![image](images/RegisterTemplates.png)

# Rationale
For human MRI, the [MNI template](http://www.bic.mni.mcgill.ca/ServicesAtlases/ICBM152NLin2009) serves as the community standard volumetric template. Its integration into most major software packages makes it easy for researchers to register their results to MNI space. This facilitates data-sharing, cross-study comparisons and metanalyses. Most human brain atlases (parcellations) are also provided in MNI space. For surface-based analysis, the [FsAverage](https://surfer.nmr.mgh.harvard.edu/fswiki/FsAverage) (freesurfer average) template serves the same purpose.

For macaque MRI, multiple templates are currently available (see table below for a non-exhaustive list), but there is currently no universally adopted community standard template. With the increasing presence of data sharing initiatives like [PRIME-DE](http://fcon_1000.projects.nitrc.org/indi/indiPRIME.html), it is becoming much more feasible to obtain larger sample sizes on non-human MRI data. The lack of a broadly adopted standard space can however make it necessary to warp different datasets to a common standard space before they can be combined or compared. Since the generation of non-linear registrations between different brains or template spaces is a timely and computationally heavy operation, we have created a set of non-linear registration warps that allow the direct remapping of (f)MRI data across different common template brains.

We include the following templates and used [ANTs](http://stnava.github.io/ANTs/) to compute the non-linear transformation warps between their volumetric spaces.     

| Template | Species | Resolution (mm<sup>3</sup>) | With atlas | Volume format | Surface format | Links |
| --- | --- | --- | --- | --- | --- | --- |
| NMT v1.2/v1.3 | _M. mulatta_ | 0.25 | Saleem Logothetis (D99-SL) | NIFTI | GIFTI | [reference](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5660669/) [download](https://github.com/jms290/NMT) |
| D99 | _M. mulatta_ | 0.25 | D99-SL | NIFTI | GIFTI | [reference](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6075609/) [download](https://afni.nimh.nih.gov/Macaque) |
| INIA19 | _M. mulatta_ | 0.50 | Neuromaps | NIFTI | N/A | [reference](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3515865/) [download](https://www.nitrc.org/projects/inia19/https://www.nitrc.org/projects/inia19/) |
| MNI macaque | _M. fascicularis_ & _M. mulatta_ | 0.25 | Paxinos | MINC & NIFTI | N/A | [reference](https://www.ncbi.nlm.nih.gov/pubmed/21256229) [download](http://www.bic.mni.mcgill.ca/ServicesAtlases/Macaque) |
| Yerkes19 | _M. mulatta_ | 0.50 | F99 | NIFTI & MGZ | GIFTI & MGZ | [reference1](https://www.pnas.org/content/115/22/E5183) [reference2](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3500860/) [download1](https://balsa.wustl.edu/reference/show/976nz) [download2](https://github.com/Washington-University/NHPPipelines) |

Jupyter notebooks are provided here as guides to explain [how macaque template warps were computed](macaque_template_warps.ipynb) and [how the warps can be used](how_to_apply_template_warps.ipynb) to transform data (parcellations, statistical maps etc.) between various template spaces. 
