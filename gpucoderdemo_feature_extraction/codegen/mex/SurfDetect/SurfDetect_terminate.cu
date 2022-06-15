/*
 * SurfDetect_terminate.cu
 *
 * Code generation for function 'SurfDetect_terminate'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "SurfDetect.h"
#include "SurfDetect_terminate.h"
#include "_coder_SurfDetect_mex.h"
#include "SurfDetect_data.h"

/* Function Definitions */
void SurfDetect_atexit(void)
{
  mexFunctionCreateRootTLS();
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

void SurfDetect_terminate(void)
{
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (SurfDetect_terminate.cu) */
