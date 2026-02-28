set_directive_top -name matrix_mult "matrix_mult"
set_directive_pipeline "matrix_mult/Row"
set_directive_array_partition -type complete -dim 0 "matrix_mult" a
set_directive_array_partition -type complete -dim 0 "matrix_mult" b
set_directive_array_partition -type complete -dim 0 "matrix_mult" prod
