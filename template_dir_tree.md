# Suggested template directory tree

|--- RheMAP   
&emsp; |--- notebooks     
&emsp; |--- templates     
&emsp; &emsp; |--- D99     
&emsp; &emsp; &emsp; |--- D99_atlas_1.2a.nii.gz     
&emsp; &emsp; &emsp; |--- D99_atlas_1.2a_in_MNI.nii.gz     
&emsp; &emsp; &emsp; |--- D99_template.nii.gz      
&emsp; &emsp; |--- INIA   
&emsp; &emsp; &emsp; |--- inia19-t1-brain_truncated.nii.gz      
&emsp; &emsp; |--- MNI     
&emsp; &emsp; &emsp; |--- macaque_25_model-MNI_brain.nii.gz      
&emsp; &emsp; |--- NMT     
&emsp; &emsp; &emsp; |--- NMT_v1.2     
&emsp; &emsp; &emsp; &emsp; |--- NMT_SS.nii.gz      
&emsp; &emsp; &emsp; |--- NMT_v1.3     
&emsp; &emsp; &emsp; &emsp; |--- NMT_SS.nii.gz     
&emsp; &emsp; |--- YRK      
&emsp; &emsp; &emsp; |--- MacaqueYerkes19_T1w_0.5mm_brain.nii.gz    

After downloading the warp files and warped templates from [Zenodo](https://doi.org/10.5281/zenodo.3668510), we suggest you include them like this:      

|--- RheMAP   
&emsp; |--- notebooks     
&emsp; |--- templates     
&emsp; |--- warps       
&emsp; &emsp; |--- final     
&emsp; &emsp; &emsp; |--- D99_to_INIA_CompositeWarp.nii.gz     
&emsp; &emsp; &emsp; |--- D99_to_MNI_CompositeWarp.nii.gz      
&emsp; &emsp; &emsp; |--- etc   
&emsp; &emsp; |--- linear     
&emsp; &emsp; &emsp; |--- D99_to_INIA_affine_0GenericAffine.mat     
&emsp; &emsp; &emsp; |--- D99_to_MNI_affine_0GenericAffine.mat     
&emsp; &emsp; &emsp; |--- etc   
&emsp; &emsp; |--- nonlinear     
&emsp; &emsp; &emsp; |--- D99_to_INIA_1InverseWarp.nii.gz     
&emsp; &emsp; &emsp; |--- D99_to_INIA_1Warp.nii.gz     
&emsp; &emsp; &emsp; |--- D99_to_MNI_1InverseWarp.nii.gz     
&emsp; &emsp; &emsp; |--- D99_to_MNI_1Warp.nii.gz  
&emsp; &emsp; &emsp; |--- etc   
&emsp; |--- warped_templates       
&emsp; &emsp; |--- final     
&emsp; &emsp; &emsp; |--- D99_in_INIA_composite.nii.gz     
&emsp; &emsp; &emsp; |--- D99_in_MNI_composite.nii.gz       
&emsp; &emsp; &emsp; |--- etc   
&emsp; &emsp; |--- linear     
&emsp; &emsp; &emsp; |--- D99_in_INIA_linear.nii.gz    
&emsp; &emsp; &emsp; |--- D99_in_MNI_linear.nii.gz          
&emsp; &emsp; &emsp; |--- etc   
&emsp; &emsp; |--- nonlinear     
&emsp; &emsp; &emsp; |--- D99_in_INIA_linear+SyN.nii.gz     
&emsp; &emsp; &emsp; |--- D99_in_MNI_linear+SyN.nii.gz     
&emsp; &emsp; &emsp; |--- etc  
