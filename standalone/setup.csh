setenv PREDDIST_DIR ${PWD}/Analysis/PredictedDistribution
setenv PYTHONPATH $PREDDIST_DIR/standalone:${PYTHONPATH}
setenv DYLD_LIBRARY_PATH $PREDDIST_DIR/standalone:${DYLD_LIBRARY_PATH}
setenv LD_LIBRARY_PATH $PREDDIST_DIR/standalone:${LD_LIBRARY_PATH}
setenv SHLIB_PATH $PREDDIST_DIR/standalone:${SHLIB_PATH}
setenv PATH $PREDDIST_DIR/standalone:${PATH}
setenv LIBPATH $PREDDIST_DIR/standalone:${LIBPATH}
