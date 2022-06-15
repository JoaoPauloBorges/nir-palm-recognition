/*
 * _coder_SurfDetect_mex.cu
 *
 * Code generation for function '_coder_SurfDetect_mex'
 *
 */

/* Include files */
#include "SurfDetect.h"
#include "_coder_SurfDetect_mex.h"
#include "SurfDetect_terminate.h"
#include "_coder_SurfDetect_api.h"
#include "SurfDetect_initialize.h"
#include "SurfDetect_data.h"

/* Function Declarations */
static void SurfDetect_mexFunction(SurfDetectStackData *SD, int32_T nlhs,
  mxArray *plhs[1], int32_T nrhs, const mxArray *prhs[1]);

/* Function Definitions */
static void SurfDetect_mexFunction(SurfDetectStackData *SD, int32_T nlhs,
  mxArray *plhs[1], int32_T nrhs, const mxArray *prhs[1])
{
  const mxArray *outputs[1];
  int32_T b_nlhs;

  /* Check for proper number of arguments. */
  if (nrhs != 1) {
    emlrtErrMsgIdAndTxt(emlrtRootTLSGlobal, "EMLRT:runTime:WrongNumberOfInputs",
                        5, 12, 1, 4, 10, "SurfDetect");
  }

  if (nlhs > 1) {
    emlrtErrMsgIdAndTxt(emlrtRootTLSGlobal,
                        "EMLRT:runTime:TooManyOutputArguments", 3, 4, 10,
                        "SurfDetect");
  }

  /* Call the function. */
  SurfDetect_api(SD, prhs, nlhs, outputs);

  /* Copy over outputs to the caller. */
  if (nlhs < 1) {
    b_nlhs = 1;
  } else {
    b_nlhs = nlhs;
  }

  emlrtReturnArrays(b_nlhs, plhs, outputs);

  /* Module termination. */
  SurfDetect_terminate();
}

void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs, const mxArray
                 *prhs[])
{
  SurfDetectStackData *SurfDetectStackDataGlobal = NULL;
  SurfDetectStackDataGlobal = (SurfDetectStackData *)emlrtMxCalloc(1, 1U *
    sizeof(SurfDetectStackData));
  mexAtExit(SurfDetect_atexit);

  /* Initialize the memory manager. */
  /* Module initialization. */
  SurfDetect_initialize();

  /* Dispatch the entry-point. */
  SurfDetect_mexFunction(SurfDetectStackDataGlobal, nlhs, plhs, nrhs, prhs);
  emlrtMxFree(SurfDetectStackDataGlobal);
}

emlrtCTX mexFunctionCreateRootTLS(void)
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  return emlrtRootTLSGlobal;
}

/* End of code generation (_coder_SurfDetect_mex.cu) */
