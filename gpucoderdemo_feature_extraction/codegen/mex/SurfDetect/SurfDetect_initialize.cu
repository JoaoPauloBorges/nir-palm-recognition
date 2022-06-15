/*
 * SurfDetect_initialize.cu
 *
 * Code generation for function 'SurfDetect_initialize'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "SurfDetect.h"
#include "SurfDetect_initialize.h"
#include "_coder_SurfDetect_mex.h"
#include "SurfDetect_data.h"

/* Function Definitions */
void SurfDetect_initialize(void)
{
  mexFunctionCreateRootTLS();
  emlrtClearAllocCountR2012b(emlrtRootTLSGlobal, false, 0U, 0);
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLicenseCheckR2012b(emlrtRootTLSGlobal, "Distrib_Computing_Toolbox", 2);
  emlrtFirstTimeR2012b(emlrtRootTLSGlobal);
}

/* End of code generation (SurfDetect_initialize.cu) */
