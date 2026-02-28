set_directive_top -name matrix_mult "matrix_mult"
set_directive_pipeline -off "matrix_mult/Row"
set_directive_pipeline -off "matrix_mult/Col"
set_directive_pipeline "matrix_mult/Product"
