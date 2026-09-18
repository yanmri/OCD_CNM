# OCD_CNM
Extracted peak coordinates and NIfTI-format network maps from the study: “Heterogeneous neuroimaging findings in obsessive-compulsive disorder converge to a common brain network using coordinate network mapping.”

Files:

Table S9. Coordinates (in MNI space) and change directions of significant clusters from gray matter volume studies.

Table S10. Coordinates (in MNI space) and change directions of significant clusters from resting-state activity studies.

overlap degree map_functional.nii: Overlap degree map of the OCD-associated network derived from the functional modality.

overlap degree map_structural.nii: Overlap degree map of the OCD-associated network derived from the structural modality.

overlap degree map_functional_05.nii: OCD-associated network identified from the functional modality using a 50% probability threshold.

overlap degree map_functional_05_mask.nii: Binary mask of the OCD-associated network identified from the functional modality using a 50% probability threshold. Voxels belonging to the network are assigned a value of 1, whereas all other voxels are assigned a value of 0.

overlap degree map_structural_05.nii: OCD-associated network identified from the structural modality using a 50% probability threshold.

overlap degree map_structural_05_mask.nii: Binary mask of the OCD-associated network identified from the structural modality using a 50% probability threshold. Voxels belonging to the network are assigned a value of 1, whereas all other voxels are assigned a value of 0.

Probability_map.m: Code for generating the overlap degree map using the binarized maps derived from all ROIs. The ROIs were defined as 6-mm-radius spheres centered on each extracted peak coordinate. For each ROI, one-sample t-tests were performed on the 1,000 ROI-to-whole-brain functional connectivity (FC) maps using an FWE-corrected threshold of p < 0.05 to identify brain regions showing significant functional connectivity with the ROI. Only positive FC was considered. The resulting t-maps containing significant clusters for each ROI were subsequently binarized. Probability_map.m uses these binarized maps to generate the corresponding overlap degree map, representing the proportion of ROIs for which each voxel showed significant positive functional connectivity.
