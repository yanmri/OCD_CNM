%Code for generating the probability maps

clear; clc;

input_folder = '';
output_file = '';

nii_files = dir(fullfile(input_folder, '*.nii'));
n_files = length(nii_files);

V_ref = spm_vol(fullfile(input_folder, nii_files(1).name));
[ref_data, ~] = spm_read_vols(V_ref);
voxel_sum = zeros(size(ref_data));

for i = 1:n_files
    V = spm_vol(fullfile(input_folder, nii_files(i).name));
    Y = spm_read_vols(V);
    voxel_sum = voxel_sum + (Y > 0);
end

voxel_prob = voxel_sum / n_files;

V_out = V_ref;
V_out.fname = output_file;

spm_write_vol(V_out, voxel_prob);

disp('All finished');
