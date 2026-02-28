set_directive_top -name matrix_mult "matrix_mult"
set_directive_pipeline -off "matrix_mult/Row"
set_directive_pipeline -off "matrix_mult/Col"
set_directive_pipeline -II 2 "matrix_mult/Product"
set_directive_array_partition -type cyclic -factor 8 -dim 2 "matrix_mult" a
set_directive_array_partition -type cyclic -factor 8 -dim 1 "matrix_mult" b
