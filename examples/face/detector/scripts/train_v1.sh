#!/bin/sh
if ! test -f ../prototxt/modelfull/face_train_v1.prototxt ;then
	echo "error: ../prototxt/modelfull/face_train_v1.prototxt does not exit."
	echo "please generate your own model prototxt primarily."
        exit 1
fi
if ! test -f ../prototxt/modelfull/face_test_v1.prototxt ;then
	echo "error: ../prototxt/modelfull/face_test_v1.prototxt does not exit."
	echo "please generate your own model prototxt primarily."
        exit 1
fi

../../../../build/tools/caffe train --solver=../solver/solver_train_v1.prototxt -gpu 0 \
#--snapshot=../../snapshot/face_v1_iter_12241.solverstate

