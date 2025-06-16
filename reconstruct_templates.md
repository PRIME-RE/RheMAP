# Reconstruct original templates from warps      

The following templates are used in the current version of RheMAP: 
1. NMT v1.2 ([source link](https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/nonhuman/macaque_tempatl/template_nmtv1.html))    
2. NMT v1.3 ([source link](https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/nonhuman/macaque_tempatl/template_nmtv1.html))     
3. NMT v2.0 ([source link](https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/nonhuman/macaque_tempatl/template_nmtv2.html))     
4. D99 ([source link](https://afni.nimh.nih.gov/Macaque))
5. INIA19 ([source link](https://www.nitrc.org/projects/inia19/https://www.nitrc.org/projects/inia19/)0
6. MNI ([source link](http://www.bic.mni.mcgill.ca/ServicesAtlases/Macaque))
7. Yerkes19 ([source link](https://github.com/Washington-University/NHPPipelines))

We do not provide copies of the actual templates since licenses often do not allow redistribution. Instead, we suggest you follow the links above and get the templates at the source. We do offer the warp files and warped templates that will be produced by RheMAP. They can be downloaded from Zenodo (DOI:10.5281/zenodo.3668510).    

Based on these warps and warped teamplates you could of course reconstruct the original template using something like:    

On the command line:     
```bash
antsApplyTransforms -i <TEMPLATE1_in_TEMPLATE2_composite.nii.gz> \
                    -r <TEMPLATE2_in_TEMPLATE1.nii.gz> \        
                    -o <RECONSTRUCTED_ORIGINAL_TEMPLATE1.nii.gz> \
                    -t [<TEMPLATE1_to_TEMPLATE2_CompositeWarp>,1] \
                    -n Linear \
                    -d 3
```    

In NiPype:     
```python
import nipype.interfaces.ants as ants    
ants.ApplyTransforms(
            input_image=<TEMPLATE1_in_TEMPLATE2_composite.nii.gz>,
            reference_image=<TEMPLATE2_in_TEMPLATE1.nii.gz>,        
            output_image=<RECONSTRUCTED_ORIGINAL_TEMPLATE1.nii.gz>,
            transforms=<TEMPLATE1_to_TEMPLATE2_CompositeWarp>,
            invert_transform_flags=True,
            interpolation='Linear',
            dimension=3)
 ```
      
