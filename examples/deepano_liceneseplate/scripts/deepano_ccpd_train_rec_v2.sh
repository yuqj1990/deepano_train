#!/bin/sh
if ! test -f ../prototxt/deepano_light_ccpt_rec_train_v2.prototxt ;then
	echo "error: ../prototxt/deepano_light_ccpt_rec_train_v2.prototxt does not exit."
	echo "please generate your own model prototxt primarily."
        exit 1
fi
if ! test -f ../prototxt/deepano_light_ccpt_rec_test_v2.prototxt ;then
	echo "error: ../prototxt/deepano_light_ccpt_rec_test_v2.prototxt does not exit."
	echo "please generate your own model prototxt primarily."
        exit 1
fi
../../../build/tools/caffe train --solver=../solver/deepano_solver_rec_train_ccpd_v2.prototxt -gpu 1 \
#--snapshot=../snapshot/deepanoccpd_res_v1_iter_91958.solverstate
