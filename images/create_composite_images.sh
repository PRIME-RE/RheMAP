#!/bin/bash

# Template
convert -append ./templates/*_template.png ./templates/Montage_Template.png

# Linear alignment
convert -append ./linear_reg/Linear_*.png ./linear_reg/Montage_Linear.png

# Nonlinear alignment
convert -append ./nonlinear_reg/Nonlinear_*.png ./nonlinear_reg/Montage_Nonlinear.png

# Composite alignment
convert -append ./all_warp_pairs/Composite_*.png ./all_warp_pairs/Montage_composite.png 

montage ./all_warp_pairs/Composite_*.png -tile 2x -geometry +10+0 -background grey0 ./all_warp_pairs/Montage_composite.png 