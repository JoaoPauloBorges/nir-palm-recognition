/*
 * SurfDetect.cu
 *
 * Code generation for function 'SurfDetect'
 *
 */

/* Include files */
#include "MWCudaDimUtility.h"
#include "MWLaunchParametersUtilities.h"
#include "rt_nonfinite.h"
#include "SurfDetect.h"

/* Type Definitions */
#ifndef typedef_c_SurfDetect_kernel99_StackData
#define typedef_c_SurfDetect_kernel99_StackData

typedef struct {
  real_T resX_1[109];
  real_T resY_2[109];
  real_T Ang_3[109];
} c_SurfDetect_kernel99_StackData;

#endif                                 /*typedef_c_SurfDetect_kernel99_StackData*/

/* Function Declarations */
static __global__ void SurfDetect_kernel1(const uint8_T *inputImage, real32_T
  *grayImage);
static __global__ void SurfDetect_kernel10(real_T *inverse_area, real32_T
  *intImage, int32_T *filter, real_T *bor, real_T *l, int32_T *step, int8_T
  *lapMatrix, real32_T *respMatrix);
static __global__ void SurfDetect_kernel11(struct_T *responseMap);
static __global__ void SurfDetect_kernel12(struct_T *responseMap, int32_T *step);
static __global__ void SurfDetect_kernel13(int8_T *lapMatrix, real32_T
  *respMatrix, struct_T *responseMap);
static __global__ void SurfDetect_kernel14(struct_T *responseMap, real_T
  *inverse_area, real_T *l, real_T *bor);
static __global__ void SurfDetect_kernel15(real_T *inverse_area, real32_T
  *intImage, int32_T *filter, real_T *bor, real_T *l, int32_T *step, int8_T
  *lapMatrix, real32_T *respMatrix);
static __global__ void SurfDetect_kernel16(struct_T *responseMap);
static __global__ void SurfDetect_kernel17(struct_T *responseMap, int32_T *step);
static __global__ void SurfDetect_kernel18(int8_T *lapMatrix, real32_T
  *respMatrix, struct_T *responseMap);
static __global__ void SurfDetect_kernel19(struct_T *responseMap, real_T
  *inverse_area, real_T *l, real_T *bor);
static __global__ void SurfDetect_kernel2(real32_T *grayImage, real32_T
  *intImage);
static __global__ void SurfDetect_kernel20(real_T *inverse_area, real32_T
  *intImage, int32_T *filter, real_T *bor, real_T *l, int32_T *step, int8_T
  *lapMatrix, real32_T *respMatrix);
static __global__ void SurfDetect_kernel21(struct_T *responseMap);
static __global__ void SurfDetect_kernel22(int8_T *lapMatrix, real32_T
  *respMatrix, struct_T *responseMap);
static __global__ void SurfDetect_kernel23(struct_T *responseMap, int32_T *step);
static __global__ void SurfDetect_kernel24(struct_T *responseMap, real_T
  *inverse_area, real_T *l, real_T *bor);
static __global__ void SurfDetect_kernel25(real_T *inverse_area, real32_T
  *intImage, int32_T *filter, real_T *bor, real_T *l, int32_T *step, int8_T
  *lapMatrix, real32_T *respMatrix);
static __global__ void SurfDetect_kernel26(struct_T *responseMap);
static __global__ void SurfDetect_kernel27(struct_T *responseMap, int32_T *step);
static __global__ void SurfDetect_kernel28(int8_T *lapMatrix, real32_T
  *respMatrix, struct_T *responseMap);
static __global__ void SurfDetect_kernel29(struct_T *responseMap, real_T
  *inverse_area, real_T *l, real_T *bor);
static __global__ void SurfDetect_kernel3(real32_T *intImage);
static __global__ void SurfDetect_kernel30(real_T *inverse_area, real32_T
  *intImage, int32_T *filter, real_T *bor, real_T *l, int32_T *step, int8_T
  *lapMatrix, real32_T *respMatrix);
static __global__ void SurfDetect_kernel31(struct_T *responseMap);
static __global__ void SurfDetect_kernel32(int8_T *lapMatrix, real32_T
  *respMatrix, struct_T *responseMap);
static __global__ void SurfDetect_kernel33(struct_T *responseMap, int32_T *step);
static __global__ void SurfDetect_kernel34(struct_T *responseMap, real_T
  *inverse_area, real_T *l, real_T *bor);
static __global__ void SurfDetect_kernel35(real_T *inverse_area, real32_T
  *intImage, int32_T *filter, real_T *bor, real_T *l, int32_T *step, int8_T
  *lapMatrix, real32_T *respMatrix);
static __global__ void SurfDetect_kernel36(struct_T *responseMap);
static __global__ void SurfDetect_kernel37(struct_T *responseMap, int32_T *step);
static __global__ void SurfDetect_kernel38(int8_T *lapMatrix, real32_T
  *respMatrix, struct_T *responseMap);
static __global__ void SurfDetect_kernel39(struct_T *responseMap, real_T
  *inverse_area, real_T *l, real_T *bor);
static __global__ void SurfDetect_kernel4(struct_T *responseMap, real_T
  *inverse_area, real_T *l, real_T *bor);
static __global__ void SurfDetect_kernel40(real_T *inverse_area, real32_T
  *intImage, int32_T *filter, real_T *bor, real_T *l, int32_T *step, int8_T
  *lapMatrix, real32_T *respMatrix);
static __global__ void SurfDetect_kernel41(struct_T *responseMap);
static __global__ void SurfDetect_kernel42(int8_T *lapMatrix, real32_T
  *respMatrix, struct_T *responseMap);
static __global__ void SurfDetect_kernel43(struct_T *responseMap, int32_T *step);
static __global__ void SurfDetect_kernel44(struct_T *responseMap, real_T
  *inverse_area, real_T *l, real_T *bor);
static __global__ void SurfDetect_kernel45(real_T *inverse_area, real32_T
  *intImage, int32_T *filter, real_T *bor, real_T *l, int32_T *step, int8_T
  *lapMatrix, real32_T *respMatrix);
static __global__ void SurfDetect_kernel46(struct_T *responseMap);
static __global__ void SurfDetect_kernel47(struct_T *responseMap, int32_T *step);
static __global__ void SurfDetect_kernel48(int8_T *lapMatrix, real32_T
  *respMatrix, struct_T *responseMap);
static __global__ void SurfDetect_kernel49(struct_T *responseMap, real_T
  *inverse_area, real_T *l, real_T *bor);
static __global__ void SurfDetect_kernel5(real_T *inverse_area, real32_T
  *intImage, real_T *bor, real_T *l, real32_T *respMatrix);
static __global__ void SurfDetect_kernel50(real_T *inverse_area, real32_T
  *intImage, int32_T *filter, real_T *bor, real_T *l, int32_T *step, int8_T
  *lapMatrix, real32_T *respMatrix);
static __global__ void SurfDetect_kernel51(struct_T *responseMap);
static __global__ void SurfDetect_kernel52(int8_T *lapMatrix, real32_T
  *respMatrix, struct_T *responseMap);
static __global__ void SurfDetect_kernel53(struct_T *responseMap, int32_T *step);
static __global__ void SurfDetect_kernel54(struct_T *responseMap, real_T
  *inverse_area, real_T *l, real_T *bor);
static __global__ void SurfDetect_kernel55(real_T *inverse_area, real32_T
  *intImage, int32_T *filter, real_T *bor, real_T *l, int32_T *step, int8_T
  *lapMatrix, real32_T *respMatrix);
static __global__ void SurfDetect_kernel56(struct_T *responseMap);
static __global__ void SurfDetect_kernel57(struct_T *responseMap, int32_T *step);
static __global__ void SurfDetect_kernel58(int8_T *lapMatrix, real32_T
  *respMatrix, struct_T *responseMap);
static __global__ void SurfDetect_kernel59(struct_T *responseMap, real_T
  *inverse_area, real_T *l, real_T *bor);
static __global__ void SurfDetect_kernel6(struct_T *responseMap);
static __global__ void SurfDetect_kernel60(real_T *inverse_area, real32_T
  *intImage, int32_T *filter, real_T *bor, real_T *l, int32_T *step, real32_T
  *respMatrix);
static __global__ void SurfDetect_kernel61(struct_T *responseMap);
static __global__ void SurfDetect_kernel62(real32_T *respMatrix, struct_T
  *responseMap);
static __global__ void SurfDetect_kernel63(const struct0_T r0, struct0_T *s);
static __global__ void SurfDetect_kernel64(int32_T *intPoints_size);
static __global__ void SurfDetect_kernel65(struct0_T *s, struct0_T
  *intPoints_data);
static __global__ void SurfDetect_kernel66(struct_T *responseMap, int32_T
  *filterStep, int32_T *step);
static __global__ void SurfDetect_kernel67(int32_T *step, struct_T *responseMap,
  real32_T *result_xc, real32_T *result_xr, real32_T *grayImage, int8_T
  *keyMatrix);
static __global__ void SurfDetect_kernel68(int32_T *filterStep, real32_T
  *grayImage, struct_T *responseMap, real32_T *result_xr, int32_T *step,
  real32_T *result_xc, int8_T *keyMatrix, struct0_T *intPoints_data, int32_T
  *filter);
static __global__ void SurfDetect_kernel69(struct_T *responseMap, int32_T
  *filterStep, int32_T *step);
static __global__ void SurfDetect_kernel7(struct_T *responseMap, int32_T *step);
static __global__ void SurfDetect_kernel70(int32_T *step, struct_T *responseMap,
  real32_T *result_xc, real32_T *result_xr, real32_T *grayImage, int8_T
  *keyMatrix);
static __global__ void SurfDetect_kernel71(int32_T *filterStep, real32_T
  *grayImage, struct_T *responseMap, real32_T *result_xr, int32_T *step,
  real32_T *result_xc, int8_T *keyMatrix, struct0_T *intPoints_data, int32_T
  *filter);
static __global__ void SurfDetect_kernel72(struct_T *responseMap, int32_T
  *filterStep, int32_T *step);
static __global__ void SurfDetect_kernel73(int32_T *step, struct_T *responseMap,
  real32_T *result_xc, real32_T *result_xr, real32_T *grayImage, int8_T
  *keyMatrix);
static __global__ void SurfDetect_kernel74(int32_T *filterStep, real32_T
  *grayImage, struct_T *responseMap, real32_T *result_xr, int32_T *step,
  real32_T *result_xc, int8_T *keyMatrix, struct0_T *intPoints_data, int32_T
  *filter);
static __global__ void SurfDetect_kernel75(struct_T *responseMap, int32_T
  *filterStep, int32_T *step);
static __global__ void SurfDetect_kernel76(int32_T *step, struct_T *responseMap,
  real32_T *result_xc, real32_T *result_xr, real32_T *grayImage, int8_T
  *keyMatrix);
static __global__ void SurfDetect_kernel77(int32_T *filterStep, real32_T
  *grayImage, struct_T *responseMap, real32_T *result_xr, int32_T *step,
  real32_T *result_xc, int8_T *keyMatrix, struct0_T *intPoints_data, int32_T
  *filter);
static __global__ void SurfDetect_kernel78(struct_T *responseMap, int32_T
  *filterStep, int32_T *step);
static __global__ void SurfDetect_kernel79(int32_T *step, struct_T *responseMap,
  real32_T *result_xc, real32_T *result_xr, real32_T *grayImage, int8_T
  *keyMatrix);
static __global__ void SurfDetect_kernel8(real32_T *respMatrix, struct_T
  *responseMap);
static __global__ void SurfDetect_kernel80(int32_T *filterStep, real32_T
  *grayImage, struct_T *responseMap, real32_T *result_xr, int32_T *step,
  real32_T *result_xc, int8_T *keyMatrix, struct0_T *intPoints_data, int32_T
  *filter);
static __global__ void SurfDetect_kernel81(struct_T *responseMap, int32_T
  *filterStep, int32_T *step);
static __global__ void SurfDetect_kernel82(int32_T *step, struct_T *responseMap,
  real32_T *result_xc, real32_T *result_xr, real32_T *grayImage, int8_T
  *keyMatrix);
static __global__ void SurfDetect_kernel83(int32_T *filterStep, real32_T
  *grayImage, struct_T *responseMap, real32_T *result_xr, int32_T *step,
  real32_T *result_xc, int8_T *keyMatrix, struct0_T *intPoints_data, int32_T
  *filter);
static __global__ void SurfDetect_kernel84(struct_T *responseMap, int32_T
  *filterStep, int32_T *step);
static __global__ void SurfDetect_kernel85(int32_T *step, struct_T *responseMap,
  real32_T *result_xc, real32_T *result_xr, real32_T *grayImage, int8_T
  *keyMatrix);
static __global__ void SurfDetect_kernel86(int32_T *filterStep, real32_T
  *grayImage, struct_T *responseMap, real32_T *result_xr, int32_T *step,
  real32_T *result_xc, int8_T *keyMatrix, struct0_T *intPoints_data, int32_T
  *filter);
static __global__ void SurfDetect_kernel87(struct_T *responseMap, int32_T
  *filterStep, int32_T *step);
static __global__ void SurfDetect_kernel88(int32_T *step, struct_T *responseMap,
  real32_T *result_xc, real32_T *result_xr, real32_T *grayImage, int8_T
  *keyMatrix);
static __global__ void SurfDetect_kernel89(int32_T *filterStep, real32_T
  *grayImage, struct_T *responseMap, real32_T *result_xr, int32_T *step,
  real32_T *result_xc, int8_T *keyMatrix, struct0_T *intPoints_data, int32_T
  *filter);
static __global__ void SurfDetect_kernel9(struct_T *responseMap, real_T
  *inverse_area, real_T *l, real_T *bor);
static __global__ void SurfDetect_kernel90(struct_T *responseMap, int32_T
  *filterStep, int32_T *step);
static __global__ void SurfDetect_kernel91(int32_T *step, struct_T *responseMap,
  real32_T *result_xc, real32_T *result_xr, real32_T *grayImage, int8_T
  *keyMatrix);
static __global__ void SurfDetect_kernel92(int32_T *filterStep, real32_T
  *grayImage, struct_T *responseMap, real32_T *result_xr, int32_T *step,
  real32_T *result_xc, int8_T *keyMatrix, struct0_T *intPoints_data, int32_T
  *filter);
static __global__ void SurfDetect_kernel93(struct_T *responseMap, int32_T
  *filterStep, int32_T *step);
static __global__ void SurfDetect_kernel94(int32_T *step, struct_T *responseMap,
  real32_T *result_xc, real32_T *result_xr, real32_T *grayImage, int8_T
  *keyMatrix);
static __global__ void SurfDetect_kernel95(int32_T *filterStep, real32_T
  *grayImage, struct_T *responseMap, real32_T *result_xr, int32_T *step,
  real32_T *result_xc, int8_T *keyMatrix, struct0_T *intPoints_data, int32_T
  *filter);
static __global__ void SurfDetect_kernel96(struct0_T *intPoints_data, int32_T
  numPoints, struct0_T *b_intPoints_data);
static __global__ void SurfDetect_kernel97(int32_T *intPoints_size, int32_T
  *b_intPoints_size);
static __global__ void SurfDetect_kernel98(struct0_T *intPoints_data, int32_T
  *intPoints_size, struct0_T *b_intPoints_data);
static __global__ void SurfDetect_kernel99(const real_T *gauss25, const int8_T
  *iv0, real32_T *intImage, int32_T numPoints, struct0_T *intPoints_data,
  c_SurfDetect_kernel99_StackData *globalStackData);

/* Function Definitions */
static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel1(const
  uint8_T *inputImage, real32_T *grayImage)
{
  uint32_T threadId;
  int32_T ctrVal;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  ctrVal = (int32_T)threadId;
  if (!(ctrVal >= 442368)) {
    /*                    Copyright 2017 The MathWorks, Inc. */
    /*  */
    /*                    FEATURE EXTRACTION USING SURF */
    /*   */
    /*  DESCRIPTION: */
    /*  This code performs feature extraction, which is the first part of the SURF  */
    /*  (Speeded-Up Robust Features) algorithm for object recognition.  */
    /*  */
    /*  INPUT:  The input image provided should be an 8-bit RGB or 8-bit grayscale image.  */
    /*  OUTPUT: The output of this code is an array of extracted interest points. These  */
    /*          interest points are also depicted over the input image in a figure window. */
    /*  */
    /*  REFERENCES: */
    /*  1. SURF: Speeded-Up Robust Features by Herbert Bay, Tinne Tuytelaars and Luc Van Gool */
    /*  2. Notes on the OpenSURF Library by Christopher Evans */
    /*  Convert the input image to 32-bit floating point grayscale image */
    /*    Copyright 2017 The MathWorks, Inc. */
    /*  */
    /*  The 8-bit RGB image provided as an input to this function is converted to */
    /*  a 8-bit grayscale image. This 8-bit grayscale image is then converted to */
    /*  32-bit floating point representation */
    grayImage[ctrVal] = (real32_T)inputImage[ctrVal] / 255.0F;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel10(real_T
  *inverse_area, real32_T *intImage, int32_T *filter, real_T *bor, real_T *l,
  int32_T *step, int8_T *lapMatrix, real32_T *respMatrix)
{
  uint32_T threadId;
  int32_T r;
  int32_T r2;
  int32_T ctrVal;
  int32_T numPoints;
  real_T row;
  real_T col;
  real_T c2;
  real_T r1;
  real_T c1;
  real_T b_r2;
  real32_T A;
  real32_T B;
  real32_T C;
  real32_T sumY;
  real32_T ang2;
  int32_T idx;
  int32_T scale;
  real32_T sumX;
  real32_T result;
  int32_T b_r1;
  real32_T b_result;
  real32_T orient;
  real32_T b_max;
  real32_T c_result;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r2 = (int32_T)(threadId % 288U);
  numPoints = (int32_T)((threadId - (uint32_T)r2) / 288U);
  if ((!(numPoints >= 384)) && (!(r2 >= 288))) {
    /*  get the image coordinates */
    r = r2 * *step;
    ctrVal = numPoints * *step;

    /*  Compute elements of the Hessian Matrix */
    row = ((real_T)r - *l) + 1.0;
    col = (real_T)ctrVal - *bor;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + (real_T)*filter <= 768.0) {
      c2 = (col + (real_T)*filter) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      ang2 = 0.0F;
    } else {
      ang2 = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)ctrVal - *l / 2.0);
    row = ((real_T)r - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (idx <= 768) {
      scale = idx - 1;
    } else {
      scale = 767;
    }

    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if ((real_T)idx + *l <= 768.0) {
      c2 = ((real_T)idx + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (scale >= 0)) {
      A = intImage[(int32_T)(((real_T)scale * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (scale >= 0)) {
      C = intImage[(int32_T)(((real_T)scale * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      sumX = 0.0F;
    } else {
      sumX = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *bor;
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + (real_T)*filter <= 576.0) {
      b_r2 = (row + (real_T)*filter) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      result = 0.0F;
    } else {
      result = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)r - *l / 2.0);
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (idx <= 576) {
      b_r1 = idx - 1;
    } else {
      b_r1 = 575;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if ((real_T)idx + *l <= 576.0) {
      b_r2 = ((real_T)idx + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((b_r1 >= 0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if ((b_r1 >= 0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_result = 0.0F;
    } else {
      b_result = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (ctrVal + 1 <= 768) {
      scale = ctrVal;
    } else {
      scale = 767;
    }

    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (r1 >= 0.0) {
      A = intImage[(int32_T)(((real_T)scale * 576.0 + r1) + 1.0) - 1];
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if (b_r2 >= 0.0) {
      C = intImage[(int32_T)(((real_T)scale * 576.0 + b_r2) + 1.0) - 1];
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      orient = 0.0F;
    } else {
      orient = sumY;
    }

    /* End of BoxIntegral */
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (r + 1 <= 576) {
      b_r1 = r;
    } else {
      b_r1 = 575;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (c1 >= 0.0) {
      A = intImage[(int32_T)((c1 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if (c1 >= 0.0) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_max = 0.0F;
    } else {
      b_max = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      c_result = 0.0F;
    } else {
      c_result = sumY;
    }

    /* End of BoxIntegral */
    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (r + 1 <= 576) {
      b_r1 = r;
    } else {
      b_r1 = 575;
    }

    if (ctrVal + 1 <= 768) {
      scale = ctrVal;
    } else {
      scale = 767;
    }

    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    /*  Compute sum of pixels within the rectangular region */
    sumY = ((intImage[scale * 576 + b_r1] - intImage[(int32_T)((c2 * 576.0 +
               (real_T)b_r1) + 1.0) - 1]) - intImage[(int32_T)(((real_T)scale *
              576.0 + b_r2) + 1.0) - 1]) + intImage[(int32_T)((c2 * 576.0 + b_r2)
      + 1.0) - 1];
    if (0.0F >= sumY) {
      sumY = 0.0F;
    }

    /* End of BoxIntegral */
    /*  Normalize the filter responses with respect to their size */
    ang2 = (ang2 - sumX * 3.0F) * (real32_T)*inverse_area;
    sumX = (result - b_result * 3.0F) * (real32_T)*inverse_area;
    sumY = (((orient + b_max) - c_result) - sumY) * (real32_T)*inverse_area;

    /*  Get the determinant of hessian response & laplacian sign */
    respMatrix[r2 + 288 * numPoints] = ang2 * sumX - 0.81F * sumY * sumY;
    lapMatrix[r2 + 288 * numPoints] = (int8_T)(ang2 + sumX >= 0.0F);
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel11(struct_T
  *responseMap)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    responseMap[1].responses.size[0] = 288;
    responseMap[1].responses.size[1] = 384;
    responseMap[1].laplacian.size[0] = 288;
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel12(struct_T
  *responseMap, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *step = (int32_T)responseMap[2].step;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel13(int8_T
  *lapMatrix, real32_T *respMatrix, struct_T *responseMap)
{
  uint32_T threadId;
  int32_T ctrVal;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  ctrVal = (int32_T)threadId;
  if (!(ctrVal >= 110592)) {
    /*    Copyright 2017 The MathWorks, Inc. */
    responseMap[1].responses.data[ctrVal] = respMatrix[ctrVal];
    responseMap[1].laplacian.data[ctrVal] = (uint8_T)lapMatrix[ctrVal];
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel14(struct_T
  *responseMap, real_T *inverse_area, real_T *l, real_T *bor)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *bor = (responseMap[2].filter - 1.0) / 2.0;

    /*  border size for this filter */
    *l = responseMap[2].filter / 3.0;

    /*  lobe size for this filter  */
    /*  filter size */
    *inverse_area = 1.0 / (responseMap[2].filter * responseMap[2].filter);
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel15(real_T
  *inverse_area, real32_T *intImage, int32_T *filter, real_T *bor, real_T *l,
  int32_T *step, int8_T *lapMatrix, real32_T *respMatrix)
{
  uint32_T threadId;
  int32_T r;
  int32_T r2;
  int32_T ctrVal;
  int32_T numPoints;
  real_T row;
  real_T col;
  real_T c2;
  real_T r1;
  real_T c1;
  real_T b_r2;
  real32_T A;
  real32_T B;
  real32_T C;
  real32_T sumY;
  real32_T ang2;
  int32_T idx;
  int32_T scale;
  real32_T sumX;
  real32_T result;
  int32_T b_r1;
  real32_T b_result;
  real32_T orient;
  real32_T b_max;
  real32_T c_result;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r2 = (int32_T)(threadId % 288U);
  numPoints = (int32_T)((threadId - (uint32_T)r2) / 288U);
  if ((!(numPoints >= 384)) && (!(r2 >= 288))) {
    /*  get the image coordinates */
    r = r2 * *step;
    ctrVal = numPoints * *step;

    /*  Compute elements of the Hessian Matrix */
    row = ((real_T)r - *l) + 1.0;
    col = (real_T)ctrVal - *bor;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + (real_T)*filter <= 768.0) {
      c2 = (col + (real_T)*filter) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      ang2 = 0.0F;
    } else {
      ang2 = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)ctrVal - *l / 2.0);
    row = ((real_T)r - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (idx <= 768) {
      scale = idx - 1;
    } else {
      scale = 767;
    }

    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if ((real_T)idx + *l <= 768.0) {
      c2 = ((real_T)idx + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (scale >= 0)) {
      A = intImage[(int32_T)(((real_T)scale * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (scale >= 0)) {
      C = intImage[(int32_T)(((real_T)scale * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      sumX = 0.0F;
    } else {
      sumX = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *bor;
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + (real_T)*filter <= 576.0) {
      b_r2 = (row + (real_T)*filter) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      result = 0.0F;
    } else {
      result = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)r - *l / 2.0);
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (idx <= 576) {
      b_r1 = idx - 1;
    } else {
      b_r1 = 575;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if ((real_T)idx + *l <= 576.0) {
      b_r2 = ((real_T)idx + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((b_r1 >= 0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if ((b_r1 >= 0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_result = 0.0F;
    } else {
      b_result = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (ctrVal + 1 <= 768) {
      scale = ctrVal;
    } else {
      scale = 767;
    }

    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (r1 >= 0.0) {
      A = intImage[(int32_T)(((real_T)scale * 576.0 + r1) + 1.0) - 1];
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if (b_r2 >= 0.0) {
      C = intImage[(int32_T)(((real_T)scale * 576.0 + b_r2) + 1.0) - 1];
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      orient = 0.0F;
    } else {
      orient = sumY;
    }

    /* End of BoxIntegral */
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (r + 1 <= 576) {
      b_r1 = r;
    } else {
      b_r1 = 575;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (c1 >= 0.0) {
      A = intImage[(int32_T)((c1 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if (c1 >= 0.0) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_max = 0.0F;
    } else {
      b_max = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      c_result = 0.0F;
    } else {
      c_result = sumY;
    }

    /* End of BoxIntegral */
    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (r + 1 <= 576) {
      b_r1 = r;
    } else {
      b_r1 = 575;
    }

    if (ctrVal + 1 <= 768) {
      scale = ctrVal;
    } else {
      scale = 767;
    }

    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    /*  Compute sum of pixels within the rectangular region */
    sumY = ((intImage[scale * 576 + b_r1] - intImage[(int32_T)((c2 * 576.0 +
               (real_T)b_r1) + 1.0) - 1]) - intImage[(int32_T)(((real_T)scale *
              576.0 + b_r2) + 1.0) - 1]) + intImage[(int32_T)((c2 * 576.0 + b_r2)
      + 1.0) - 1];
    if (0.0F >= sumY) {
      sumY = 0.0F;
    }

    /* End of BoxIntegral */
    /*  Normalize the filter responses with respect to their size */
    ang2 = (ang2 - sumX * 3.0F) * (real32_T)*inverse_area;
    sumX = (result - b_result * 3.0F) * (real32_T)*inverse_area;
    sumY = (((orient + b_max) - c_result) - sumY) * (real32_T)*inverse_area;

    /*  Get the determinant of hessian response & laplacian sign */
    respMatrix[r2 + 288 * numPoints] = ang2 * sumX - 0.81F * sumY * sumY;
    lapMatrix[r2 + 288 * numPoints] = (int8_T)(ang2 + sumX >= 0.0F);
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel16(struct_T
  *responseMap)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    responseMap[2].responses.size[0] = 288;
    responseMap[2].responses.size[1] = 384;
    responseMap[2].laplacian.size[0] = 288;
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel17(struct_T
  *responseMap, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *step = (int32_T)responseMap[3].step;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel18(int8_T
  *lapMatrix, real32_T *respMatrix, struct_T *responseMap)
{
  uint32_T threadId;
  int32_T ctrVal;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  ctrVal = (int32_T)threadId;
  if (!(ctrVal >= 110592)) {
    /*    Copyright 2017 The MathWorks, Inc. */
    responseMap[2].responses.data[ctrVal] = respMatrix[ctrVal];
    responseMap[2].laplacian.data[ctrVal] = (uint8_T)lapMatrix[ctrVal];
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel19(struct_T
  *responseMap, real_T *inverse_area, real_T *l, real_T *bor)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *bor = (responseMap[3].filter - 1.0) / 2.0;

    /*  border size for this filter */
    *l = responseMap[3].filter / 3.0;

    /*  lobe size for this filter  */
    /*  filter size */
    *inverse_area = 1.0 / (responseMap[3].filter * responseMap[3].filter);
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel2(real32_T
  *grayImage, real32_T *intImage)
{
  uint32_T threadId;
  real32_T sumY;
  int32_T ctrVal;
  int32_T r2;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r2 = (int32_T)threadId;
  if (!(r2 >= 576)) {
    /*  Calculate the integral image of the grayscale image obtained above */
    /*    Copyright 2017 The MathWorks, Inc. */
    /*  */
    /*  The integral image representation for the 32-bit floating point grayscale */
    /*  image is computed in two steps. First, the integral sum is computed */
    /*  along the rows and next, the integral sum is computed along the columns */
    /*  Calculate integral sum along rows */
    sumY = 0.0F;
    for (ctrVal = 0; ctrVal < 768; ctrVal++) {
      sumY += grayImage[r2 + 576 * ctrVal];
      intImage[r2 + 576 * ctrVal] = sumY;
    }
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel20(real_T
  *inverse_area, real32_T *intImage, int32_T *filter, real_T *bor, real_T *l,
  int32_T *step, int8_T *lapMatrix, real32_T *respMatrix)
{
  uint32_T threadId;
  int32_T r;
  int32_T r2;
  int32_T ctrVal;
  int32_T numPoints;
  real_T row;
  real_T col;
  real_T c2;
  real_T r1;
  real_T c1;
  real_T b_r2;
  real32_T A;
  real32_T B;
  real32_T C;
  real32_T sumY;
  real32_T ang2;
  int32_T idx;
  int32_T scale;
  real32_T sumX;
  real32_T result;
  int32_T b_r1;
  real32_T b_result;
  real32_T orient;
  real32_T b_max;
  real32_T c_result;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r2 = (int32_T)(threadId % 288U);
  numPoints = (int32_T)((threadId - (uint32_T)r2) / 288U);
  if ((!(numPoints >= 384)) && (!(r2 >= 288))) {
    /*  get the image coordinates */
    r = r2 * *step;
    ctrVal = numPoints * *step;

    /*  Compute elements of the Hessian Matrix */
    row = ((real_T)r - *l) + 1.0;
    col = (real_T)ctrVal - *bor;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + (real_T)*filter <= 768.0) {
      c2 = (col + (real_T)*filter) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      ang2 = 0.0F;
    } else {
      ang2 = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)ctrVal - *l / 2.0);
    row = ((real_T)r - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (idx <= 768) {
      scale = idx - 1;
    } else {
      scale = 767;
    }

    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if ((real_T)idx + *l <= 768.0) {
      c2 = ((real_T)idx + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (scale >= 0)) {
      A = intImage[(int32_T)(((real_T)scale * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (scale >= 0)) {
      C = intImage[(int32_T)(((real_T)scale * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      sumX = 0.0F;
    } else {
      sumX = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *bor;
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + (real_T)*filter <= 576.0) {
      b_r2 = (row + (real_T)*filter) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      result = 0.0F;
    } else {
      result = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)r - *l / 2.0);
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (idx <= 576) {
      b_r1 = idx - 1;
    } else {
      b_r1 = 575;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if ((real_T)idx + *l <= 576.0) {
      b_r2 = ((real_T)idx + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((b_r1 >= 0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if ((b_r1 >= 0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_result = 0.0F;
    } else {
      b_result = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (ctrVal + 1 <= 768) {
      scale = ctrVal;
    } else {
      scale = 767;
    }

    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (r1 >= 0.0) {
      A = intImage[(int32_T)(((real_T)scale * 576.0 + r1) + 1.0) - 1];
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if (b_r2 >= 0.0) {
      C = intImage[(int32_T)(((real_T)scale * 576.0 + b_r2) + 1.0) - 1];
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      orient = 0.0F;
    } else {
      orient = sumY;
    }

    /* End of BoxIntegral */
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (r + 1 <= 576) {
      b_r1 = r;
    } else {
      b_r1 = 575;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (c1 >= 0.0) {
      A = intImage[(int32_T)((c1 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if (c1 >= 0.0) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_max = 0.0F;
    } else {
      b_max = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      c_result = 0.0F;
    } else {
      c_result = sumY;
    }

    /* End of BoxIntegral */
    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (r + 1 <= 576) {
      b_r1 = r;
    } else {
      b_r1 = 575;
    }

    if (ctrVal + 1 <= 768) {
      scale = ctrVal;
    } else {
      scale = 767;
    }

    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    /*  Compute sum of pixels within the rectangular region */
    sumY = ((intImage[scale * 576 + b_r1] - intImage[(int32_T)((c2 * 576.0 +
               (real_T)b_r1) + 1.0) - 1]) - intImage[(int32_T)(((real_T)scale *
              576.0 + b_r2) + 1.0) - 1]) + intImage[(int32_T)((c2 * 576.0 + b_r2)
      + 1.0) - 1];
    if (0.0F >= sumY) {
      sumY = 0.0F;
    }

    /* End of BoxIntegral */
    /*  Normalize the filter responses with respect to their size */
    ang2 = (ang2 - sumX * 3.0F) * (real32_T)*inverse_area;
    sumX = (result - b_result * 3.0F) * (real32_T)*inverse_area;
    sumY = (((orient + b_max) - c_result) - sumY) * (real32_T)*inverse_area;

    /*  Get the determinant of hessian response & laplacian sign */
    respMatrix[r2 + 288 * numPoints] = ang2 * sumX - 0.81F * sumY * sumY;
    lapMatrix[r2 + 288 * numPoints] = (int8_T)(ang2 + sumX >= 0.0F);
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel21(struct_T
  *responseMap)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    responseMap[3].responses.size[0] = 288;
    responseMap[3].responses.size[1] = 384;
    responseMap[3].laplacian.size[0] = 288;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel22(int8_T
  *lapMatrix, real32_T *respMatrix, struct_T *responseMap)
{
  uint32_T threadId;
  int32_T ctrVal;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  ctrVal = (int32_T)threadId;
  if (!(ctrVal >= 110592)) {
    responseMap[3].responses.data[ctrVal] = respMatrix[ctrVal];
    responseMap[3].laplacian.data[ctrVal] = (uint8_T)lapMatrix[ctrVal];
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel23(struct_T
  *responseMap, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *step = (int32_T)responseMap[4].step;
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel24(struct_T
  *responseMap, real_T *inverse_area, real_T *l, real_T *bor)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    /*    Copyright 2017 The MathWorks, Inc. */
    *bor = (responseMap[4].filter - 1.0) / 2.0;

    /*  border size for this filter */
    *l = responseMap[4].filter / 3.0;

    /*  lobe size for this filter  */
    /*  filter size */
    *inverse_area = 1.0 / (responseMap[4].filter * responseMap[4].filter);
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel25(real_T
  *inverse_area, real32_T *intImage, int32_T *filter, real_T *bor, real_T *l,
  int32_T *step, int8_T *lapMatrix, real32_T *respMatrix)
{
  uint32_T threadId;
  int32_T r;
  int32_T r2;
  int32_T ctrVal;
  int32_T numPoints;
  real_T row;
  real_T col;
  real_T c2;
  real_T r1;
  real_T c1;
  real_T b_r2;
  real32_T A;
  real32_T B;
  real32_T C;
  real32_T sumY;
  real32_T ang2;
  int32_T idx;
  int32_T scale;
  real32_T sumX;
  real32_T result;
  int32_T b_r1;
  real32_T b_result;
  real32_T orient;
  real32_T b_max;
  real32_T c_result;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r2 = (int32_T)(threadId % 144U);
  numPoints = (int32_T)((threadId - (uint32_T)r2) / 144U);
  if ((!(numPoints >= 192)) && (!(r2 >= 144))) {
    /*  get the image coordinates */
    r = r2 * *step;
    ctrVal = numPoints * *step;

    /*  Compute elements of the Hessian Matrix */
    row = ((real_T)r - *l) + 1.0;
    col = (real_T)ctrVal - *bor;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + (real_T)*filter <= 768.0) {
      c2 = (col + (real_T)*filter) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      ang2 = 0.0F;
    } else {
      ang2 = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)ctrVal - *l / 2.0);
    row = ((real_T)r - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (idx <= 768) {
      scale = idx - 1;
    } else {
      scale = 767;
    }

    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if ((real_T)idx + *l <= 768.0) {
      c2 = ((real_T)idx + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (scale >= 0)) {
      A = intImage[(int32_T)(((real_T)scale * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (scale >= 0)) {
      C = intImage[(int32_T)(((real_T)scale * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      sumX = 0.0F;
    } else {
      sumX = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *bor;
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + (real_T)*filter <= 576.0) {
      b_r2 = (row + (real_T)*filter) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      result = 0.0F;
    } else {
      result = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)r - *l / 2.0);
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (idx <= 576) {
      b_r1 = idx - 1;
    } else {
      b_r1 = 575;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if ((real_T)idx + *l <= 576.0) {
      b_r2 = ((real_T)idx + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((b_r1 >= 0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if ((b_r1 >= 0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_result = 0.0F;
    } else {
      b_result = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (ctrVal + 1 <= 768) {
      scale = ctrVal;
    } else {
      scale = 767;
    }

    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (r1 >= 0.0) {
      A = intImage[(int32_T)(((real_T)scale * 576.0 + r1) + 1.0) - 1];
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if (b_r2 >= 0.0) {
      C = intImage[(int32_T)(((real_T)scale * 576.0 + b_r2) + 1.0) - 1];
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      orient = 0.0F;
    } else {
      orient = sumY;
    }

    /* End of BoxIntegral */
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (r + 1 <= 576) {
      b_r1 = r;
    } else {
      b_r1 = 575;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (c1 >= 0.0) {
      A = intImage[(int32_T)((c1 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if (c1 >= 0.0) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_max = 0.0F;
    } else {
      b_max = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      c_result = 0.0F;
    } else {
      c_result = sumY;
    }

    /* End of BoxIntegral */
    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (r + 1 <= 576) {
      b_r1 = r;
    } else {
      b_r1 = 575;
    }

    if (ctrVal + 1 <= 768) {
      scale = ctrVal;
    } else {
      scale = 767;
    }

    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    /*  Compute sum of pixels within the rectangular region */
    sumY = ((intImage[scale * 576 + b_r1] - intImage[(int32_T)((c2 * 576.0 +
               (real_T)b_r1) + 1.0) - 1]) - intImage[(int32_T)(((real_T)scale *
              576.0 + b_r2) + 1.0) - 1]) + intImage[(int32_T)((c2 * 576.0 + b_r2)
      + 1.0) - 1];
    if (0.0F >= sumY) {
      sumY = 0.0F;
    }

    /* End of BoxIntegral */
    /*  Normalize the filter responses with respect to their size */
    ang2 = (ang2 - sumX * 3.0F) * (real32_T)*inverse_area;
    sumX = (result - b_result * 3.0F) * (real32_T)*inverse_area;
    sumY = (((orient + b_max) - c_result) - sumY) * (real32_T)*inverse_area;

    /*  Get the determinant of hessian response & laplacian sign */
    respMatrix[r2 + 144 * numPoints] = ang2 * sumX - 0.81F * sumY * sumY;
    lapMatrix[r2 + 144 * numPoints] = (int8_T)(ang2 + sumX >= 0.0F);
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel26(struct_T
  *responseMap)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    responseMap[4].responses.size[0] = 144;
    responseMap[4].responses.size[1] = 192;
    responseMap[4].laplacian.size[0] = 144;
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel27(struct_T
  *responseMap, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *step = (int32_T)responseMap[5].step;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel28(int8_T
  *lapMatrix, real32_T *respMatrix, struct_T *responseMap)
{
  uint32_T threadId;
  int32_T ctrVal;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  ctrVal = (int32_T)threadId;
  if (!(ctrVal >= 27648)) {
    /*    Copyright 2017 The MathWorks, Inc. */
    responseMap[4].responses.data[ctrVal] = respMatrix[ctrVal];
    responseMap[4].laplacian.data[ctrVal] = (uint8_T)lapMatrix[ctrVal];
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel29(struct_T
  *responseMap, real_T *inverse_area, real_T *l, real_T *bor)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *bor = (responseMap[5].filter - 1.0) / 2.0;

    /*  border size for this filter */
    *l = responseMap[5].filter / 3.0;

    /*  lobe size for this filter  */
    /*  filter size */
    *inverse_area = 1.0 / (responseMap[5].filter * responseMap[5].filter);
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel3(real32_T
  *intImage)
{
  uint32_T threadId;
  real32_T sumY;
  int32_T ctrVal;
  int32_T r2;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r2 = (int32_T)threadId;
  if (!(r2 >= 768)) {
    /*  Calculate integral sum along cols */
    sumY = 0.0F;
    for (ctrVal = 0; ctrVal < 576; ctrVal++) {
      sumY += intImage[ctrVal + 576 * r2];
      intImage[ctrVal + 576 * r2] = sumY;
    }
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel30(real_T
  *inverse_area, real32_T *intImage, int32_T *filter, real_T *bor, real_T *l,
  int32_T *step, int8_T *lapMatrix, real32_T *respMatrix)
{
  uint32_T threadId;
  int32_T r;
  int32_T r2;
  int32_T ctrVal;
  int32_T numPoints;
  real_T row;
  real_T col;
  real_T c2;
  real_T r1;
  real_T c1;
  real_T b_r2;
  real32_T A;
  real32_T B;
  real32_T C;
  real32_T sumY;
  real32_T ang2;
  int32_T idx;
  int32_T scale;
  real32_T sumX;
  real32_T result;
  int32_T b_r1;
  real32_T b_result;
  real32_T orient;
  real32_T b_max;
  real32_T c_result;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r2 = (int32_T)(threadId % 144U);
  numPoints = (int32_T)((threadId - (uint32_T)r2) / 144U);
  if ((!(numPoints >= 192)) && (!(r2 >= 144))) {
    /*  get the image coordinates */
    r = r2 * *step;
    ctrVal = numPoints * *step;

    /*  Compute elements of the Hessian Matrix */
    row = ((real_T)r - *l) + 1.0;
    col = (real_T)ctrVal - *bor;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + (real_T)*filter <= 768.0) {
      c2 = (col + (real_T)*filter) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      ang2 = 0.0F;
    } else {
      ang2 = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)ctrVal - *l / 2.0);
    row = ((real_T)r - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (idx <= 768) {
      scale = idx - 1;
    } else {
      scale = 767;
    }

    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if ((real_T)idx + *l <= 768.0) {
      c2 = ((real_T)idx + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (scale >= 0)) {
      A = intImage[(int32_T)(((real_T)scale * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (scale >= 0)) {
      C = intImage[(int32_T)(((real_T)scale * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      sumX = 0.0F;
    } else {
      sumX = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *bor;
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + (real_T)*filter <= 576.0) {
      b_r2 = (row + (real_T)*filter) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      result = 0.0F;
    } else {
      result = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)r - *l / 2.0);
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (idx <= 576) {
      b_r1 = idx - 1;
    } else {
      b_r1 = 575;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if ((real_T)idx + *l <= 576.0) {
      b_r2 = ((real_T)idx + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((b_r1 >= 0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if ((b_r1 >= 0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_result = 0.0F;
    } else {
      b_result = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (ctrVal + 1 <= 768) {
      scale = ctrVal;
    } else {
      scale = 767;
    }

    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (r1 >= 0.0) {
      A = intImage[(int32_T)(((real_T)scale * 576.0 + r1) + 1.0) - 1];
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if (b_r2 >= 0.0) {
      C = intImage[(int32_T)(((real_T)scale * 576.0 + b_r2) + 1.0) - 1];
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      orient = 0.0F;
    } else {
      orient = sumY;
    }

    /* End of BoxIntegral */
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (r + 1 <= 576) {
      b_r1 = r;
    } else {
      b_r1 = 575;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (c1 >= 0.0) {
      A = intImage[(int32_T)((c1 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if (c1 >= 0.0) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_max = 0.0F;
    } else {
      b_max = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      c_result = 0.0F;
    } else {
      c_result = sumY;
    }

    /* End of BoxIntegral */
    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (r + 1 <= 576) {
      b_r1 = r;
    } else {
      b_r1 = 575;
    }

    if (ctrVal + 1 <= 768) {
      scale = ctrVal;
    } else {
      scale = 767;
    }

    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    /*  Compute sum of pixels within the rectangular region */
    sumY = ((intImage[scale * 576 + b_r1] - intImage[(int32_T)((c2 * 576.0 +
               (real_T)b_r1) + 1.0) - 1]) - intImage[(int32_T)(((real_T)scale *
              576.0 + b_r2) + 1.0) - 1]) + intImage[(int32_T)((c2 * 576.0 + b_r2)
      + 1.0) - 1];
    if (0.0F >= sumY) {
      sumY = 0.0F;
    }

    /* End of BoxIntegral */
    /*  Normalize the filter responses with respect to their size */
    ang2 = (ang2 - sumX * 3.0F) * (real32_T)*inverse_area;
    sumX = (result - b_result * 3.0F) * (real32_T)*inverse_area;
    sumY = (((orient + b_max) - c_result) - sumY) * (real32_T)*inverse_area;

    /*  Get the determinant of hessian response & laplacian sign */
    respMatrix[r2 + 144 * numPoints] = ang2 * sumX - 0.81F * sumY * sumY;
    lapMatrix[r2 + 144 * numPoints] = (int8_T)(ang2 + sumX >= 0.0F);
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel31(struct_T
  *responseMap)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    responseMap[5].responses.size[0] = 144;
    responseMap[5].responses.size[1] = 192;
    responseMap[5].laplacian.size[0] = 144;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel32(int8_T
  *lapMatrix, real32_T *respMatrix, struct_T *responseMap)
{
  uint32_T threadId;
  int32_T ctrVal;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  ctrVal = (int32_T)threadId;
  if (!(ctrVal >= 27648)) {
    responseMap[5].responses.data[ctrVal] = respMatrix[ctrVal];
    responseMap[5].laplacian.data[ctrVal] = (uint8_T)lapMatrix[ctrVal];
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel33(struct_T
  *responseMap, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *step = (int32_T)responseMap[6].step;
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel34(struct_T
  *responseMap, real_T *inverse_area, real_T *l, real_T *bor)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    /*    Copyright 2017 The MathWorks, Inc. */
    *bor = (responseMap[6].filter - 1.0) / 2.0;

    /*  border size for this filter */
    *l = responseMap[6].filter / 3.0;

    /*  lobe size for this filter  */
    /*  filter size */
    *inverse_area = 1.0 / (responseMap[6].filter * responseMap[6].filter);
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel35(real_T
  *inverse_area, real32_T *intImage, int32_T *filter, real_T *bor, real_T *l,
  int32_T *step, int8_T *lapMatrix, real32_T *respMatrix)
{
  uint32_T threadId;
  int32_T r;
  int32_T r2;
  int32_T ctrVal;
  int32_T numPoints;
  real_T row;
  real_T col;
  real_T c2;
  real_T r1;
  real_T c1;
  real_T b_r2;
  real32_T A;
  real32_T B;
  real32_T C;
  real32_T sumY;
  real32_T ang2;
  int32_T idx;
  int32_T scale;
  real32_T sumX;
  real32_T result;
  int32_T b_r1;
  real32_T b_result;
  real32_T orient;
  real32_T b_max;
  real32_T c_result;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r2 = (int32_T)(threadId % 72U);
  numPoints = (int32_T)((threadId - (uint32_T)r2) / 72U);
  if ((!(numPoints >= 96)) && (!(r2 >= 72))) {
    /*  get the image coordinates */
    r = r2 * *step;
    ctrVal = numPoints * *step;

    /*  Compute elements of the Hessian Matrix */
    row = ((real_T)r - *l) + 1.0;
    col = (real_T)ctrVal - *bor;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + (real_T)*filter <= 768.0) {
      c2 = (col + (real_T)*filter) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      ang2 = 0.0F;
    } else {
      ang2 = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)ctrVal - *l / 2.0);
    row = ((real_T)r - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (idx <= 768) {
      scale = idx - 1;
    } else {
      scale = 767;
    }

    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if ((real_T)idx + *l <= 768.0) {
      c2 = ((real_T)idx + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (scale >= 0)) {
      A = intImage[(int32_T)(((real_T)scale * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (scale >= 0)) {
      C = intImage[(int32_T)(((real_T)scale * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      sumX = 0.0F;
    } else {
      sumX = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *bor;
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + (real_T)*filter <= 576.0) {
      b_r2 = (row + (real_T)*filter) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      result = 0.0F;
    } else {
      result = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)r - *l / 2.0);
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (idx <= 576) {
      b_r1 = idx - 1;
    } else {
      b_r1 = 575;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if ((real_T)idx + *l <= 576.0) {
      b_r2 = ((real_T)idx + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((b_r1 >= 0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if ((b_r1 >= 0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_result = 0.0F;
    } else {
      b_result = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (ctrVal + 1 <= 768) {
      scale = ctrVal;
    } else {
      scale = 767;
    }

    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (r1 >= 0.0) {
      A = intImage[(int32_T)(((real_T)scale * 576.0 + r1) + 1.0) - 1];
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if (b_r2 >= 0.0) {
      C = intImage[(int32_T)(((real_T)scale * 576.0 + b_r2) + 1.0) - 1];
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      orient = 0.0F;
    } else {
      orient = sumY;
    }

    /* End of BoxIntegral */
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (r + 1 <= 576) {
      b_r1 = r;
    } else {
      b_r1 = 575;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (c1 >= 0.0) {
      A = intImage[(int32_T)((c1 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if (c1 >= 0.0) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_max = 0.0F;
    } else {
      b_max = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      c_result = 0.0F;
    } else {
      c_result = sumY;
    }

    /* End of BoxIntegral */
    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (r + 1 <= 576) {
      b_r1 = r;
    } else {
      b_r1 = 575;
    }

    if (ctrVal + 1 <= 768) {
      scale = ctrVal;
    } else {
      scale = 767;
    }

    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    /*  Compute sum of pixels within the rectangular region */
    sumY = ((intImage[scale * 576 + b_r1] - intImage[(int32_T)((c2 * 576.0 +
               (real_T)b_r1) + 1.0) - 1]) - intImage[(int32_T)(((real_T)scale *
              576.0 + b_r2) + 1.0) - 1]) + intImage[(int32_T)((c2 * 576.0 + b_r2)
      + 1.0) - 1];
    if (0.0F >= sumY) {
      sumY = 0.0F;
    }

    /* End of BoxIntegral */
    /*  Normalize the filter responses with respect to their size */
    ang2 = (ang2 - sumX * 3.0F) * (real32_T)*inverse_area;
    sumX = (result - b_result * 3.0F) * (real32_T)*inverse_area;
    sumY = (((orient + b_max) - c_result) - sumY) * (real32_T)*inverse_area;

    /*  Get the determinant of hessian response & laplacian sign */
    respMatrix[r2 + 72 * numPoints] = ang2 * sumX - 0.81F * sumY * sumY;
    lapMatrix[r2 + 72 * numPoints] = (int8_T)(ang2 + sumX >= 0.0F);
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel36(struct_T
  *responseMap)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    responseMap[6].responses.size[0] = 72;
    responseMap[6].responses.size[1] = 96;
    responseMap[6].laplacian.size[0] = 72;
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel37(struct_T
  *responseMap, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *step = (int32_T)responseMap[7].step;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel38(int8_T
  *lapMatrix, real32_T *respMatrix, struct_T *responseMap)
{
  uint32_T threadId;
  int32_T ctrVal;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  ctrVal = (int32_T)threadId;
  if (!(ctrVal >= 6912)) {
    /*    Copyright 2017 The MathWorks, Inc. */
    responseMap[6].responses.data[ctrVal] = respMatrix[ctrVal];
    responseMap[6].laplacian.data[ctrVal] = (uint8_T)lapMatrix[ctrVal];
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel39(struct_T
  *responseMap, real_T *inverse_area, real_T *l, real_T *bor)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *bor = (responseMap[7].filter - 1.0) / 2.0;

    /*  border size for this filter */
    *l = responseMap[7].filter / 3.0;

    /*  lobe size for this filter  */
    /*  filter size */
    *inverse_area = 1.0 / (responseMap[7].filter * responseMap[7].filter);
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel4(struct_T
  *responseMap, real_T *inverse_area, real_T *l, real_T *bor)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    /*  Compute box filter convolution for 12 unique filter sizes */
    /*    Copyright 2017 The MathWorks, Inc. */
    *bor = (responseMap[0].filter - 1.0) / 2.0;

    /*  border size for this filter */
    *l = responseMap[0].filter / 3.0;

    /*  lobe size for this filter  */
    /*  filter size */
    *inverse_area = 1.0 / (responseMap[0].filter * responseMap[0].filter);
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel40(real_T
  *inverse_area, real32_T *intImage, int32_T *filter, real_T *bor, real_T *l,
  int32_T *step, int8_T *lapMatrix, real32_T *respMatrix)
{
  uint32_T threadId;
  int32_T r;
  int32_T r2;
  int32_T ctrVal;
  int32_T numPoints;
  real_T row;
  real_T col;
  real_T c2;
  real_T r1;
  real_T c1;
  real_T b_r2;
  real32_T A;
  real32_T B;
  real32_T C;
  real32_T sumY;
  real32_T ang2;
  int32_T idx;
  int32_T scale;
  real32_T sumX;
  real32_T result;
  int32_T b_r1;
  real32_T b_result;
  real32_T orient;
  real32_T b_max;
  real32_T c_result;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r2 = (int32_T)(threadId % 72U);
  numPoints = (int32_T)((threadId - (uint32_T)r2) / 72U);
  if ((!(numPoints >= 96)) && (!(r2 >= 72))) {
    /*  get the image coordinates */
    r = r2 * *step;
    ctrVal = numPoints * *step;

    /*  Compute elements of the Hessian Matrix */
    row = ((real_T)r - *l) + 1.0;
    col = (real_T)ctrVal - *bor;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + (real_T)*filter <= 768.0) {
      c2 = (col + (real_T)*filter) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      ang2 = 0.0F;
    } else {
      ang2 = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)ctrVal - *l / 2.0);
    row = ((real_T)r - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (idx <= 768) {
      scale = idx - 1;
    } else {
      scale = 767;
    }

    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if ((real_T)idx + *l <= 768.0) {
      c2 = ((real_T)idx + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (scale >= 0)) {
      A = intImage[(int32_T)(((real_T)scale * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (scale >= 0)) {
      C = intImage[(int32_T)(((real_T)scale * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      sumX = 0.0F;
    } else {
      sumX = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *bor;
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + (real_T)*filter <= 576.0) {
      b_r2 = (row + (real_T)*filter) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      result = 0.0F;
    } else {
      result = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)r - *l / 2.0);
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (idx <= 576) {
      b_r1 = idx - 1;
    } else {
      b_r1 = 575;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if ((real_T)idx + *l <= 576.0) {
      b_r2 = ((real_T)idx + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((b_r1 >= 0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if ((b_r1 >= 0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_result = 0.0F;
    } else {
      b_result = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (ctrVal + 1 <= 768) {
      scale = ctrVal;
    } else {
      scale = 767;
    }

    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (r1 >= 0.0) {
      A = intImage[(int32_T)(((real_T)scale * 576.0 + r1) + 1.0) - 1];
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if (b_r2 >= 0.0) {
      C = intImage[(int32_T)(((real_T)scale * 576.0 + b_r2) + 1.0) - 1];
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      orient = 0.0F;
    } else {
      orient = sumY;
    }

    /* End of BoxIntegral */
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (r + 1 <= 576) {
      b_r1 = r;
    } else {
      b_r1 = 575;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (c1 >= 0.0) {
      A = intImage[(int32_T)((c1 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if (c1 >= 0.0) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_max = 0.0F;
    } else {
      b_max = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      c_result = 0.0F;
    } else {
      c_result = sumY;
    }

    /* End of BoxIntegral */
    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (r + 1 <= 576) {
      b_r1 = r;
    } else {
      b_r1 = 575;
    }

    if (ctrVal + 1 <= 768) {
      scale = ctrVal;
    } else {
      scale = 767;
    }

    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    /*  Compute sum of pixels within the rectangular region */
    sumY = ((intImage[scale * 576 + b_r1] - intImage[(int32_T)((c2 * 576.0 +
               (real_T)b_r1) + 1.0) - 1]) - intImage[(int32_T)(((real_T)scale *
              576.0 + b_r2) + 1.0) - 1]) + intImage[(int32_T)((c2 * 576.0 + b_r2)
      + 1.0) - 1];
    if (0.0F >= sumY) {
      sumY = 0.0F;
    }

    /* End of BoxIntegral */
    /*  Normalize the filter responses with respect to their size */
    ang2 = (ang2 - sumX * 3.0F) * (real32_T)*inverse_area;
    sumX = (result - b_result * 3.0F) * (real32_T)*inverse_area;
    sumY = (((orient + b_max) - c_result) - sumY) * (real32_T)*inverse_area;

    /*  Get the determinant of hessian response & laplacian sign */
    respMatrix[r2 + 72 * numPoints] = ang2 * sumX - 0.81F * sumY * sumY;
    lapMatrix[r2 + 72 * numPoints] = (int8_T)(ang2 + sumX >= 0.0F);
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel41(struct_T
  *responseMap)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    responseMap[7].responses.size[0] = 72;
    responseMap[7].responses.size[1] = 96;
    responseMap[7].laplacian.size[0] = 72;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel42(int8_T
  *lapMatrix, real32_T *respMatrix, struct_T *responseMap)
{
  uint32_T threadId;
  int32_T ctrVal;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  ctrVal = (int32_T)threadId;
  if (!(ctrVal >= 6912)) {
    responseMap[7].responses.data[ctrVal] = respMatrix[ctrVal];
    responseMap[7].laplacian.data[ctrVal] = (uint8_T)lapMatrix[ctrVal];
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel43(struct_T
  *responseMap, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *step = (int32_T)responseMap[8].step;
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel44(struct_T
  *responseMap, real_T *inverse_area, real_T *l, real_T *bor)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    /*    Copyright 2017 The MathWorks, Inc. */
    *bor = (responseMap[8].filter - 1.0) / 2.0;

    /*  border size for this filter */
    *l = responseMap[8].filter / 3.0;

    /*  lobe size for this filter  */
    /*  filter size */
    *inverse_area = 1.0 / (responseMap[8].filter * responseMap[8].filter);
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel45(real_T
  *inverse_area, real32_T *intImage, int32_T *filter, real_T *bor, real_T *l,
  int32_T *step, int8_T *lapMatrix, real32_T *respMatrix)
{
  uint32_T threadId;
  int32_T r;
  int32_T r2;
  int32_T ctrVal;
  int32_T numPoints;
  real_T row;
  real_T col;
  real_T c2;
  real_T r1;
  real_T c1;
  real_T b_r2;
  real32_T A;
  real32_T B;
  real32_T C;
  real32_T sumY;
  real32_T ang2;
  int32_T idx;
  int32_T scale;
  real32_T sumX;
  real32_T result;
  int32_T b_r1;
  real32_T b_result;
  real32_T orient;
  real32_T b_max;
  real32_T c_result;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r2 = (int32_T)(threadId % 36U);
  numPoints = (int32_T)((threadId - (uint32_T)r2) / 36U);
  if ((!(numPoints >= 48)) && (!(r2 >= 36))) {
    /*  get the image coordinates */
    r = r2 * *step;
    ctrVal = numPoints * *step;

    /*  Compute elements of the Hessian Matrix */
    row = ((real_T)r - *l) + 1.0;
    col = (real_T)ctrVal - *bor;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + (real_T)*filter <= 768.0) {
      c2 = (col + (real_T)*filter) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      ang2 = 0.0F;
    } else {
      ang2 = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)ctrVal - *l / 2.0);
    row = ((real_T)r - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (idx <= 768) {
      scale = idx - 1;
    } else {
      scale = 767;
    }

    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if ((real_T)idx + *l <= 768.0) {
      c2 = ((real_T)idx + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (scale >= 0)) {
      A = intImage[(int32_T)(((real_T)scale * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (scale >= 0)) {
      C = intImage[(int32_T)(((real_T)scale * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      sumX = 0.0F;
    } else {
      sumX = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *bor;
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + (real_T)*filter <= 576.0) {
      b_r2 = (row + (real_T)*filter) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      result = 0.0F;
    } else {
      result = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)r - *l / 2.0);
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (idx <= 576) {
      b_r1 = idx - 1;
    } else {
      b_r1 = 575;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if ((real_T)idx + *l <= 576.0) {
      b_r2 = ((real_T)idx + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((b_r1 >= 0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if ((b_r1 >= 0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_result = 0.0F;
    } else {
      b_result = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (ctrVal + 1 <= 768) {
      scale = ctrVal;
    } else {
      scale = 767;
    }

    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (r1 >= 0.0) {
      A = intImage[(int32_T)(((real_T)scale * 576.0 + r1) + 1.0) - 1];
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if (b_r2 >= 0.0) {
      C = intImage[(int32_T)(((real_T)scale * 576.0 + b_r2) + 1.0) - 1];
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      orient = 0.0F;
    } else {
      orient = sumY;
    }

    /* End of BoxIntegral */
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (r + 1 <= 576) {
      b_r1 = r;
    } else {
      b_r1 = 575;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (c1 >= 0.0) {
      A = intImage[(int32_T)((c1 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if (c1 >= 0.0) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_max = 0.0F;
    } else {
      b_max = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      c_result = 0.0F;
    } else {
      c_result = sumY;
    }

    /* End of BoxIntegral */
    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (r + 1 <= 576) {
      b_r1 = r;
    } else {
      b_r1 = 575;
    }

    if (ctrVal + 1 <= 768) {
      scale = ctrVal;
    } else {
      scale = 767;
    }

    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    /*  Compute sum of pixels within the rectangular region */
    sumY = ((intImage[scale * 576 + b_r1] - intImage[(int32_T)((c2 * 576.0 +
               (real_T)b_r1) + 1.0) - 1]) - intImage[(int32_T)(((real_T)scale *
              576.0 + b_r2) + 1.0) - 1]) + intImage[(int32_T)((c2 * 576.0 + b_r2)
      + 1.0) - 1];
    if (0.0F >= sumY) {
      sumY = 0.0F;
    }

    /* End of BoxIntegral */
    /*  Normalize the filter responses with respect to their size */
    ang2 = (ang2 - sumX * 3.0F) * (real32_T)*inverse_area;
    sumX = (result - b_result * 3.0F) * (real32_T)*inverse_area;
    sumY = (((orient + b_max) - c_result) - sumY) * (real32_T)*inverse_area;

    /*  Get the determinant of hessian response & laplacian sign */
    respMatrix[r2 + 36 * numPoints] = ang2 * sumX - 0.81F * sumY * sumY;
    lapMatrix[r2 + 36 * numPoints] = (int8_T)(ang2 + sumX >= 0.0F);
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel46(struct_T
  *responseMap)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    responseMap[8].responses.size[0] = 36;
    responseMap[8].responses.size[1] = 48;
    responseMap[8].laplacian.size[0] = 36;
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel47(struct_T
  *responseMap, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *step = (int32_T)responseMap[9].step;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel48(int8_T
  *lapMatrix, real32_T *respMatrix, struct_T *responseMap)
{
  uint32_T threadId;
  int32_T ctrVal;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  ctrVal = (int32_T)threadId;
  if (!(ctrVal >= 1728)) {
    /*    Copyright 2017 The MathWorks, Inc. */
    responseMap[8].responses.data[ctrVal] = respMatrix[ctrVal];
    responseMap[8].laplacian.data[ctrVal] = (uint8_T)lapMatrix[ctrVal];
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel49(struct_T
  *responseMap, real_T *inverse_area, real_T *l, real_T *bor)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *bor = (responseMap[9].filter - 1.0) / 2.0;

    /*  border size for this filter */
    *l = responseMap[9].filter / 3.0;

    /*  lobe size for this filter  */
    /*  filter size */
    *inverse_area = 1.0 / (responseMap[9].filter * responseMap[9].filter);
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel5(real_T
  *inverse_area, real32_T *intImage, real_T *bor, real_T *l, real32_T
  *respMatrix)
{
  uint32_T threadId;
  int32_T r;
  int32_T r2;
  int32_T ctrVal;
  int32_T numPoints;
  real_T row;
  real_T col;
  real_T c2;
  real_T b_r2;
  real32_T A;
  real32_T B;
  real32_T C;
  real32_T sumY;
  real32_T ang2;
  int32_T idx;
  int32_T scale;
  real32_T sumX;
  real32_T result;
  int32_T r1;
  real32_T b_result;
  real32_T orient;
  real32_T b_max;
  real32_T c_result;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r2 = (int32_T)(threadId % 288U);
  numPoints = (int32_T)((threadId - (uint32_T)r2) / 288U);
  if ((!(numPoints >= 384)) && (!(r2 >= 288))) {
    /*  get the image coordinates */
    r = r2 * 2;
    ctrVal = numPoints * 2;

    /*  Compute elements of the Hessian Matrix */
    row = ((real_T)r - *l) + 1.0;
    col = (real_T)ctrVal - *bor;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + 9.0 <= 768.0) {
      c2 = (col + 9.0) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((row - 1.0 >= 0.0) && (col - 1.0 >= 0.0)) {
      A = intImage[(int32_T)(((col - 1.0) * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((row - 1.0 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (col - 1.0 >= 0.0)) {
      C = intImage[(int32_T)(((col - 1.0) * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      ang2 = 0.0F;
    } else {
      ang2 = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)ctrVal - *l / 2.0);
    row = ((real_T)r - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    scale = idx - 1;
    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if ((real_T)idx + *l <= 768.0) {
      c2 = ((real_T)idx + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((row - 1.0 >= 0.0) && (scale >= 0)) {
      A = intImage[(int32_T)(((real_T)scale * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((row - 1.0 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (scale >= 0)) {
      C = intImage[(int32_T)(((real_T)scale * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      sumX = 0.0F;
    } else {
      sumX = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *bor;
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row + 9.0 <= 576.0) {
      b_r2 = (row + 9.0) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((row - 1.0 >= 0.0) && (col - 1.0 >= 0.0)) {
      A = intImage[(int32_T)(((col - 1.0) * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((row - 1.0 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (col - 1.0 >= 0.0)) {
      C = intImage[(int32_T)(((col - 1.0) * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      result = 0.0F;
    } else {
      result = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)r - *l / 2.0);
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    r1 = idx - 1;
    if ((real_T)idx + *l <= 576.0) {
      b_r2 = ((real_T)idx + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0) && (col - 1.0 >= 0.0)) {
      A = intImage[(int32_T)(((col - 1.0) * 576.0 + (real_T)r1) + 1.0) - 1];
    }

    if ((r1 >= 0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (col - 1.0 >= 0.0)) {
      C = intImage[(int32_T)(((col - 1.0) * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_result = 0.0F;
    } else {
      b_result = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (row - 1.0 >= 0.0) {
      A = intImage[(int32_T)(((real_T)ctrVal * 576.0 + (row - 1.0)) + 1.0) - 1];
      B = intImage[(int32_T)((c2 * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if (b_r2 >= 0.0) {
      C = intImage[(int32_T)(((real_T)ctrVal * 576.0 + b_r2) + 1.0) - 1];
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      orient = 0.0F;
    } else {
      orient = sumY;
    }

    /* End of BoxIntegral */
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (col - 1.0 >= 0.0) {
      A = intImage[(int32_T)(((col - 1.0) * 576.0 + (real_T)r) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)r) + 1.0) - 1];
    }

    if (col - 1.0 >= 0.0) {
      C = intImage[(int32_T)(((col - 1.0) * 576.0 + b_r2) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_max = 0.0F;
    } else {
      b_max = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((row - 1.0 >= 0.0) && (col - 1.0 >= 0.0)) {
      A = intImage[(int32_T)(((col - 1.0) * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((row - 1.0 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (col - 1.0 >= 0.0)) {
      C = intImage[(int32_T)(((col - 1.0) * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      c_result = 0.0F;
    } else {
      c_result = sumY;
    }

    /* End of BoxIntegral */
    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    /*  Compute sum of pixels within the rectangular region */
    sumY = ((intImage[ctrVal * 576 + r] - intImage[(int32_T)((c2 * 576.0 +
               (real_T)r) + 1.0) - 1]) - intImage[(int32_T)(((real_T)ctrVal *
              576.0 + b_r2) + 1.0) - 1]) + intImage[(int32_T)((c2 * 576.0 + b_r2)
      + 1.0) - 1];
    if (0.0F >= sumY) {
      sumY = 0.0F;
    }

    /* End of BoxIntegral */
    /*  Normalize the filter responses with respect to their size */
    sumY = (((orient + b_max) - c_result) - sumY) * (real32_T)*inverse_area;

    /*  Get the determinant of hessian response & laplacian sign */
    respMatrix[r2 + 288 * numPoints] = (ang2 - sumX * 3.0F) * (real32_T)
      *inverse_area * ((result - b_result * 3.0F) * (real32_T)*inverse_area) -
      0.81F * sumY * sumY;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel50(real_T
  *inverse_area, real32_T *intImage, int32_T *filter, real_T *bor, real_T *l,
  int32_T *step, int8_T *lapMatrix, real32_T *respMatrix)
{
  uint32_T threadId;
  int32_T r;
  int32_T r2;
  int32_T ctrVal;
  int32_T numPoints;
  real_T row;
  real_T col;
  real_T c2;
  real_T r1;
  real_T c1;
  real_T b_r2;
  real32_T A;
  real32_T B;
  real32_T C;
  real32_T sumY;
  real32_T ang2;
  int32_T idx;
  int32_T scale;
  real32_T sumX;
  real32_T result;
  int32_T b_r1;
  real32_T b_result;
  real32_T orient;
  real32_T b_max;
  real32_T c_result;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r2 = (int32_T)(threadId % 36U);
  numPoints = (int32_T)((threadId - (uint32_T)r2) / 36U);
  if ((!(numPoints >= 48)) && (!(r2 >= 36))) {
    /*  get the image coordinates */
    r = r2 * *step;
    ctrVal = numPoints * *step;

    /*  Compute elements of the Hessian Matrix */
    row = ((real_T)r - *l) + 1.0;
    col = (real_T)ctrVal - *bor;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + (real_T)*filter <= 768.0) {
      c2 = (col + (real_T)*filter) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      ang2 = 0.0F;
    } else {
      ang2 = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)ctrVal - *l / 2.0);
    row = ((real_T)r - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (idx <= 768) {
      scale = idx - 1;
    } else {
      scale = 767;
    }

    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if ((real_T)idx + *l <= 768.0) {
      c2 = ((real_T)idx + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (scale >= 0)) {
      A = intImage[(int32_T)(((real_T)scale * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (scale >= 0)) {
      C = intImage[(int32_T)(((real_T)scale * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      sumX = 0.0F;
    } else {
      sumX = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *bor;
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + (real_T)*filter <= 576.0) {
      b_r2 = (row + (real_T)*filter) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      result = 0.0F;
    } else {
      result = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)r - *l / 2.0);
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (idx <= 576) {
      b_r1 = idx - 1;
    } else {
      b_r1 = 575;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if ((real_T)idx + *l <= 576.0) {
      b_r2 = ((real_T)idx + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((b_r1 >= 0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if ((b_r1 >= 0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_result = 0.0F;
    } else {
      b_result = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (ctrVal + 1 <= 768) {
      scale = ctrVal;
    } else {
      scale = 767;
    }

    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (r1 >= 0.0) {
      A = intImage[(int32_T)(((real_T)scale * 576.0 + r1) + 1.0) - 1];
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if (b_r2 >= 0.0) {
      C = intImage[(int32_T)(((real_T)scale * 576.0 + b_r2) + 1.0) - 1];
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      orient = 0.0F;
    } else {
      orient = sumY;
    }

    /* End of BoxIntegral */
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (r + 1 <= 576) {
      b_r1 = r;
    } else {
      b_r1 = 575;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (c1 >= 0.0) {
      A = intImage[(int32_T)((c1 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)b_r1) + 1.0) - 1];
    }

    if (c1 >= 0.0) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_max = 0.0F;
    } else {
      b_max = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row <= 576.0) {
      r1 = row - 1.0;
    } else {
      r1 = 575.0;
    }

    if (col <= 768.0) {
      c1 = col - 1.0;
    } else {
      c1 = 767.0;
    }

    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((r1 >= 0.0) && (c1 >= 0.0)) {
      A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
    }

    if ((r1 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
      C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      c_result = 0.0F;
    } else {
      c_result = sumY;
    }

    /* End of BoxIntegral */
    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (r + 1 <= 576) {
      b_r1 = r;
    } else {
      b_r1 = 575;
    }

    if (ctrVal + 1 <= 768) {
      scale = ctrVal;
    } else {
      scale = 767;
    }

    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    /*  Compute sum of pixels within the rectangular region */
    sumY = ((intImage[scale * 576 + b_r1] - intImage[(int32_T)((c2 * 576.0 +
               (real_T)b_r1) + 1.0) - 1]) - intImage[(int32_T)(((real_T)scale *
              576.0 + b_r2) + 1.0) - 1]) + intImage[(int32_T)((c2 * 576.0 + b_r2)
      + 1.0) - 1];
    if (0.0F >= sumY) {
      sumY = 0.0F;
    }

    /* End of BoxIntegral */
    /*  Normalize the filter responses with respect to their size */
    ang2 = (ang2 - sumX * 3.0F) * (real32_T)*inverse_area;
    sumX = (result - b_result * 3.0F) * (real32_T)*inverse_area;
    sumY = (((orient + b_max) - c_result) - sumY) * (real32_T)*inverse_area;

    /*  Get the determinant of hessian response & laplacian sign */
    respMatrix[r2 + 36 * numPoints] = ang2 * sumX - 0.81F * sumY * sumY;
    lapMatrix[r2 + 36 * numPoints] = (int8_T)(ang2 + sumX >= 0.0F);
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel51(struct_T
  *responseMap)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    responseMap[9].responses.size[0] = 36;
    responseMap[9].responses.size[1] = 48;
    responseMap[9].laplacian.size[0] = 36;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel52(int8_T
  *lapMatrix, real32_T *respMatrix, struct_T *responseMap)
{
  uint32_T threadId;
  int32_T ctrVal;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  ctrVal = (int32_T)threadId;
  if (!(ctrVal >= 1728)) {
    responseMap[9].responses.data[ctrVal] = respMatrix[ctrVal];
    responseMap[9].laplacian.data[ctrVal] = (uint8_T)lapMatrix[ctrVal];
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel53(struct_T
  *responseMap, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *step = (int32_T)responseMap[10].step;
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel54(struct_T
  *responseMap, real_T *inverse_area, real_T *l, real_T *bor)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    /*    Copyright 2017 The MathWorks, Inc. */
    *bor = (responseMap[10].filter - 1.0) / 2.0;

    /*  border size for this filter */
    *l = responseMap[10].filter / 3.0;

    /*  lobe size for this filter  */
    /*  filter size */
    *inverse_area = 1.0 / (responseMap[10].filter * responseMap[10].filter);
  }
}

static __global__ __launch_bounds__(448, 1) void SurfDetect_kernel55(real_T
  *inverse_area, real32_T *intImage, int32_T *filter, real_T *bor, real_T *l,
  int32_T *step, int8_T *lapMatrix, real32_T *respMatrix)
{
  uint32_T threadId;
  int32_T r;
  int32_T r2;
  int32_T ctrVal;
  int32_T numPoints;
  real_T row;
  real_T col;
  real_T c2;
  real_T b_r2;
  real32_T A;
  real32_T B;
  real32_T C;
  real32_T sumY;
  real32_T ang2;
  int32_T idx;
  real32_T sumX;
  real32_T result;
  real32_T b_result;
  real32_T orient;
  real32_T b_max;
  real32_T c_result;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r2 = (int32_T)(threadId % 18U);
  numPoints = (int32_T)((threadId - (uint32_T)r2) / 18U);
  if ((!(numPoints >= 24)) && (!(r2 >= 18))) {
    /*  get the image coordinates */
    r = r2 * *step;
    ctrVal = numPoints * *step;

    /*  Compute elements of the Hessian Matrix */
    row = ((real_T)r - *l) + 1.0;
    col = (real_T)ctrVal - *bor;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + (real_T)*filter <= 768.0) {
      c2 = (col + (real_T)*filter) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((row - 1.0 >= 0.0) && (col - 1.0 >= 0.0)) {
      A = intImage[(int32_T)(((col - 1.0) * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((row - 1.0 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (col - 1.0 >= 0.0)) {
      C = intImage[(int32_T)(((col - 1.0) * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      ang2 = 0.0F;
    } else {
      ang2 = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)ctrVal - *l / 2.0);
    row = ((real_T)r - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if ((real_T)idx + *l <= 768.0) {
      c2 = ((real_T)idx + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((row - 1.0 >= 0.0) && (idx - 1 >= 0)) {
      A = intImage[(int32_T)((((real_T)idx - 1.0) * 576.0 + (row - 1.0)) + 1.0)
        - 1];
    }

    if ((row - 1.0 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (idx - 1 >= 0)) {
      C = intImage[(int32_T)((((real_T)idx - 1.0) * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      sumX = 0.0F;
    } else {
      sumX = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *bor;
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row + (real_T)*filter <= 576.0) {
      b_r2 = (row + (real_T)*filter) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((row - 1.0 >= 0.0) && (col - 1.0 >= 0.0)) {
      A = intImage[(int32_T)(((col - 1.0) * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((row - 1.0 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (col - 1.0 >= 0.0)) {
      C = intImage[(int32_T)(((col - 1.0) * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      result = 0.0F;
    } else {
      result = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)r - *l / 2.0);
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if ((real_T)idx + *l <= 576.0) {
      b_r2 = ((real_T)idx + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((idx - 1 >= 0) && (col - 1.0 >= 0.0)) {
      A = intImage[(int32_T)(((col - 1.0) * 576.0 + ((real_T)idx - 1.0)) + 1.0)
        - 1];
    }

    if ((idx - 1 >= 0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + ((real_T)idx - 1.0)) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (col - 1.0 >= 0.0)) {
      C = intImage[(int32_T)(((col - 1.0) * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_result = 0.0F;
    } else {
      b_result = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (row - 1.0 >= 0.0) {
      A = intImage[(int32_T)(((real_T)ctrVal * 576.0 + (row - 1.0)) + 1.0) - 1];
      B = intImage[(int32_T)((c2 * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if (b_r2 >= 0.0) {
      C = intImage[(int32_T)(((real_T)ctrVal * 576.0 + b_r2) + 1.0) - 1];
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      orient = 0.0F;
    } else {
      orient = sumY;
    }

    /* End of BoxIntegral */
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (col - 1.0 >= 0.0) {
      A = intImage[(int32_T)(((col - 1.0) * 576.0 + (real_T)r) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)r) + 1.0) - 1];
    }

    if (col - 1.0 >= 0.0) {
      C = intImage[(int32_T)(((col - 1.0) * 576.0 + b_r2) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_max = 0.0F;
    } else {
      b_max = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((row - 1.0 >= 0.0) && (col - 1.0 >= 0.0)) {
      A = intImage[(int32_T)(((col - 1.0) * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((row - 1.0 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (col - 1.0 >= 0.0)) {
      C = intImage[(int32_T)(((col - 1.0) * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      c_result = 0.0F;
    } else {
      c_result = sumY;
    }

    /* End of BoxIntegral */
    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    /*  Compute sum of pixels within the rectangular region */
    sumY = ((intImage[ctrVal * 576 + r] - intImage[(int32_T)((c2 * 576.0 +
               (real_T)r) + 1.0) - 1]) - intImage[(int32_T)(((real_T)ctrVal *
              576.0 + b_r2) + 1.0) - 1]) + intImage[(int32_T)((c2 * 576.0 + b_r2)
      + 1.0) - 1];
    if (0.0F >= sumY) {
      sumY = 0.0F;
    }

    /* End of BoxIntegral */
    /*  Normalize the filter responses with respect to their size */
    ang2 = (ang2 - sumX * 3.0F) * (real32_T)*inverse_area;
    sumX = (result - b_result * 3.0F) * (real32_T)*inverse_area;
    sumY = (((orient + b_max) - c_result) - sumY) * (real32_T)*inverse_area;

    /*  Get the determinant of hessian response & laplacian sign */
    respMatrix[r2 + 18 * numPoints] = ang2 * sumX - 0.81F * sumY * sumY;
    lapMatrix[r2 + 18 * numPoints] = (int8_T)(ang2 + sumX >= 0.0F);
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel56(struct_T
  *responseMap)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    responseMap[10].responses.size[0] = 18;
    responseMap[10].responses.size[1] = 24;
    responseMap[10].laplacian.size[0] = 18;
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel57(struct_T
  *responseMap, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *step = (int32_T)responseMap[11].step;
  }
}

static __global__ __launch_bounds__(448, 1) void SurfDetect_kernel58(int8_T
  *lapMatrix, real32_T *respMatrix, struct_T *responseMap)
{
  uint32_T threadId;
  int32_T ctrVal;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  ctrVal = (int32_T)threadId;
  if (!(ctrVal >= 432)) {
    /*    Copyright 2017 The MathWorks, Inc. */
    responseMap[10].responses.data[ctrVal] = respMatrix[ctrVal];
    responseMap[10].laplacian.data[ctrVal] = (uint8_T)lapMatrix[ctrVal];
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel59(struct_T
  *responseMap, real_T *inverse_area, real_T *l, real_T *bor)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *bor = (responseMap[11].filter - 1.0) / 2.0;

    /*  border size for this filter */
    *l = responseMap[11].filter / 3.0;

    /*  lobe size for this filter  */
    /*  filter size */
    *inverse_area = 1.0 / (responseMap[11].filter * responseMap[11].filter);
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel6(struct_T
  *responseMap)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    responseMap[0].responses.size[0] = 288;
    responseMap[0].responses.size[1] = 384;
  }
}

static __global__ __launch_bounds__(448, 1) void SurfDetect_kernel60(real_T
  *inverse_area, real32_T *intImage, int32_T *filter, real_T *bor, real_T *l,
  int32_T *step, real32_T *respMatrix)
{
  uint32_T threadId;
  int32_T r;
  int32_T r2;
  int32_T ctrVal;
  int32_T numPoints;
  real_T row;
  real_T col;
  real_T c2;
  real_T b_r2;
  real32_T A;
  real32_T B;
  real32_T C;
  real32_T sumY;
  real32_T ang2;
  int32_T idx;
  real32_T sumX;
  real32_T result;
  real32_T b_result;
  real32_T orient;
  real32_T b_max;
  real32_T c_result;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r2 = (int32_T)(threadId % 18U);
  numPoints = (int32_T)((threadId - (uint32_T)r2) / 18U);
  if ((!(numPoints >= 24)) && (!(r2 >= 18))) {
    /*  get the image coordinates */
    r = r2 * *step;
    ctrVal = numPoints * *step;

    /*  Compute elements of the Hessian Matrix */
    row = ((real_T)r - *l) + 1.0;
    col = (real_T)ctrVal - *bor;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + (real_T)*filter <= 768.0) {
      c2 = (col + (real_T)*filter) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((row - 1.0 >= 0.0) && (col - 1.0 >= 0.0)) {
      A = intImage[(int32_T)(((col - 1.0) * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((row - 1.0 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (col - 1.0 >= 0.0)) {
      C = intImage[(int32_T)(((col - 1.0) * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      ang2 = 0.0F;
    } else {
      ang2 = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)ctrVal - *l / 2.0);
    row = ((real_T)r - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row + c2 <= 576.0) {
      b_r2 = (row + c2) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if ((real_T)idx + *l <= 768.0) {
      c2 = ((real_T)idx + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((row - 1.0 >= 0.0) && (idx - 1 >= 0)) {
      A = intImage[(int32_T)((((real_T)idx - 1.0) * 576.0 + (row - 1.0)) + 1.0)
        - 1];
    }

    if ((row - 1.0 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (idx - 1 >= 0)) {
      C = intImage[(int32_T)((((real_T)idx - 1.0) * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      sumX = 0.0F;
    } else {
      sumX = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *bor;
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row + (real_T)*filter <= 576.0) {
      b_r2 = (row + (real_T)*filter) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((row - 1.0 >= 0.0) && (col - 1.0 >= 0.0)) {
      A = intImage[(int32_T)(((col - 1.0) * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((row - 1.0 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (col - 1.0 >= 0.0)) {
      C = intImage[(int32_T)(((col - 1.0) * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      result = 0.0F;
    } else {
      result = sumY;
    }

    /* End of BoxIntegral */
    idx = (int32_T)ceil((real_T)r - *l / 2.0);
    col = ((real_T)ctrVal - *l) + 1.0;
    c2 = 2.0 * *l - 1.0;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if ((real_T)idx + *l <= 576.0) {
      b_r2 = ((real_T)idx + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + c2 <= 768.0) {
      c2 = (col + c2) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((idx - 1 >= 0) && (col - 1.0 >= 0.0)) {
      A = intImage[(int32_T)(((col - 1.0) * 576.0 + ((real_T)idx - 1.0)) + 1.0)
        - 1];
    }

    if ((idx - 1 >= 0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + ((real_T)idx - 1.0)) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (col - 1.0 >= 0.0)) {
      C = intImage[(int32_T)(((col - 1.0) * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_result = 0.0F;
    } else {
      b_result = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (row - 1.0 >= 0.0) {
      A = intImage[(int32_T)(((real_T)ctrVal * 576.0 + (row - 1.0)) + 1.0) - 1];
      B = intImage[(int32_T)((c2 * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if (b_r2 >= 0.0) {
      C = intImage[(int32_T)(((real_T)ctrVal * 576.0 + b_r2) + 1.0) - 1];
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      orient = 0.0F;
    } else {
      orient = sumY;
    }

    /* End of BoxIntegral */
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if (col - 1.0 >= 0.0) {
      A = intImage[(int32_T)(((col - 1.0) * 576.0 + (real_T)r) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      B = intImage[(int32_T)((c2 * 576.0 + (real_T)r) + 1.0) - 1];
    }

    if (col - 1.0 >= 0.0) {
      C = intImage[(int32_T)(((col - 1.0) * 576.0 + b_r2) + 1.0) - 1];
    }

    if (c2 >= 0.0) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      b_max = 0.0F;
    } else {
      b_max = sumY;
    }

    /* End of BoxIntegral */
    row = (real_T)r - *l;
    col = (real_T)ctrVal - *l;

    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (row + *l <= 576.0) {
      b_r2 = (row + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (col + *l <= 768.0) {
      c2 = (col + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    A = 0.0F;
    B = 0.0F;
    C = 0.0F;
    sumY = 0.0F;
    if ((row - 1.0 >= 0.0) && (col - 1.0 >= 0.0)) {
      A = intImage[(int32_T)(((col - 1.0) * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((row - 1.0 >= 0.0) && (c2 >= 0.0)) {
      B = intImage[(int32_T)((c2 * 576.0 + (row - 1.0)) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (col - 1.0 >= 0.0)) {
      C = intImage[(int32_T)(((col - 1.0) * 576.0 + b_r2) + 1.0) - 1];
    }

    if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
      sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
    }

    /*  Compute sum of pixels within the rectangular region */
    sumY += (A - B) - C;
    if (0.0F >= sumY) {
      c_result = 0.0F;
    } else {
      c_result = sumY;
    }

    /* End of BoxIntegral */
    /*    Copyright 2017 The MathWorks, Inc. */
    /*  Image dimensions */
    /*  Handle border cases for integral sum calculation */
    if (((real_T)r + 1.0) + *l <= 576.0) {
      b_r2 = (((real_T)r + 1.0) + *l) - 1.0;
    } else {
      b_r2 = 575.0;
    }

    if (((real_T)ctrVal + 1.0) + *l <= 768.0) {
      c2 = (((real_T)ctrVal + 1.0) + *l) - 1.0;
    } else {
      c2 = 767.0;
    }

    /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
    /*  Compute sum of pixels within the rectangular region */
    sumY = ((intImage[ctrVal * 576 + r] - intImage[(int32_T)((c2 * 576.0 +
               (real_T)r) + 1.0) - 1]) - intImage[(int32_T)(((real_T)ctrVal *
              576.0 + b_r2) + 1.0) - 1]) + intImage[(int32_T)((c2 * 576.0 + b_r2)
      + 1.0) - 1];
    if (0.0F >= sumY) {
      sumY = 0.0F;
    }

    /* End of BoxIntegral */
    /*  Normalize the filter responses with respect to their size */
    sumY = (((orient + b_max) - c_result) - sumY) * (real32_T)*inverse_area;

    /*  Get the determinant of hessian response & laplacian sign */
    respMatrix[r2 + 18 * numPoints] = (ang2 - sumX * 3.0F) * (real32_T)
      *inverse_area * ((result - b_result * 3.0F) * (real32_T)*inverse_area) -
      0.81F * sumY * sumY;
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel61(struct_T
  *responseMap)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    responseMap[11].responses.size[0] = 18;
    responseMap[11].responses.size[1] = 24;
  }
}

static __global__ __launch_bounds__(448, 1) void SurfDetect_kernel62(real32_T
  *respMatrix, struct_T *responseMap)
{
  uint32_T threadId;
  int32_T ctrVal;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  ctrVal = (int32_T)threadId;
  if (!(ctrVal >= 432)) {
    responseMap[11].responses.data[ctrVal] = respMatrix[ctrVal];
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel63(const
  struct0_T r0, struct0_T *s)
{
  uint32_T threadId;
  int32_T ctrVal;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  ctrVal = (int32_T)threadId;
  if (!(ctrVal >= 2000)) {
    /*  Process upto 2000 interest points and set the maximum bound of 'intPoints' to 2000 */
    /*  Perform non-maximal suppression to filter out useful and strongest interest points */
    /*    Copyright 2017 The MathWorks, Inc. */
    /*  */
    /*  This function performs non-maximal suppression to filter out the useful */
    /*  interest points in the image. For each octave, we examine a set of 3 */
    /*  layers (bottom, middle, top). A threshold is applied to the response of  */
    /*  each pixel and it is subsequently compared to its neighboring pixels in a  */
    /*  3x3x3 neighborhood. If an interest point is detected, interpolation is  */
    /*  performed to determine its exact location in scale-space. The output of  */
    /*  this step is an array of interest points */
    /*  Mapping responses to octaves based on filter sizes used for each octave */
    /*  Image dimensions */
    s[ctrVal] = r0;
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel64(int32_T
  *intPoints_size)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    intPoints_size[0] = 1;
    intPoints_size[1] = 2000;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel65(struct0_T
  *s, struct0_T *intPoints_data)
{
  uint32_T threadId;
  int32_T ctrVal;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  ctrVal = (int32_T)threadId;
  if (!(ctrVal >= 2000)) {
    intPoints_data[ctrVal] = s[ctrVal];
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel66(struct_T
  *responseMap, int32_T *filterStep, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    /*  Iterate over a set of 3 layers within each octave */
    *step = (int32_T)responseMap[2].step;
    *filterStep = (int32_T)((real32_T)responseMap[1].filter - (real32_T)
      responseMap[0].filter);
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel67(int32_T
  *step, struct_T *responseMap, real32_T *result_xc, real32_T *result_xr,
  real32_T *grayImage, int8_T *keyMatrix)
{
  uint32_T threadId;
  int32_T i0;
  real32_T b_max;
  real32_T ang2;
  real32_T sumX;
  int32_T idx;
  int32_T r1;
  int32_T r2;
  int32_T ctrVal;
  int32_T scale;
  int16_T b_size_t[2];
  int16_T size_b[2];
  int16_T size_m[2];
  int32_T r;
  int32_T numPoints;
  int32_T b_scale;
  real32_T sumY;
  real32_T dD[3];
  int32_T c_scale;
  int32_T d_scale;
  int32_T e_scale;
  int32_T f_scale;
  real32_T H[9];
  real32_T xres[3];
  boolean_T guard1 = false;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r = (int32_T)(threadId % 576U);
  numPoints = (int32_T)((threadId - (uint32_T)r) / 576U);
  if ((!(numPoints >= 768)) && (!(r >= 576))) {
    i0 = 1;
    b_max = 0.0F;
    ang2 = 0.0F;
    sumX = 0.0F;
    idx = (int32_T)floor((responseMap[2].filter + 1.0) / (2.0 * (real_T)*step));
    r1 = responseMap[0].responses.size[1];
    r2 = responseMap[1].responses.size[1];
    for (ctrVal = 0; ctrVal < 2; ctrVal++) {
      size_b[ctrVal] = (int16_T)responseMap[0].responses.size[ctrVal];
      size_m[ctrVal] = (int16_T)responseMap[1].responses.size[ctrVal];
      b_size_t[ctrVal] = (int16_T)responseMap[2].responses.size[ctrVal];
    }

    scale = (int32_T)b_size_t[1];

    /*  Eliminate border pixels */
    if ((r <= idx) || (r >= (int32_T)b_size_t[0] - idx) || (numPoints <= idx) ||
        (numPoints >= (int32_T)b_size_t[1] - idx)) {
      i0 = 0;
    } else {
      /*  Threshold the pixel response */
      b_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      sumY = responseMap[1].responses.data[b_scale * r + responseMap[1].
        responses.size[0] * (b_scale * numPoints)];
      if (responseMap[1].responses.data[b_scale * r + responseMap[1].
          responses.size[0] * (b_scale * numPoints)] < 0.0004F) {
        i0 = 0;
      } else {
        /*  Compare pixel responses within 3x3x3 neighborhood */
        for (ctrVal = 0; ctrVal < 3; ctrVal++) {
          for (idx = 0; idx < 3; idx++) {
            guard1 = false;
            if (responseMap[2].responses.data[((r + ctrVal) + responseMap[2].
                 responses.size[0] * ((numPoints + idx) - 1)) - 1] >= sumY) {
              i0 = 0;
            } else if ((ctrVal - 1 != 0) || (idx - 1 != 0)) {
              b_scale = (int32_T)floor((real_T)r2 / (real_T)scale);
              if (responseMap[1].responses.data[b_scale * ((r + ctrVal) - 1) +
                  responseMap[1].responses.size[0] * (b_scale * ((numPoints +
                     idx) - 1))] >= sumY) {
                i0 = 0;
              } else {
                guard1 = true;
              }
            } else {
              guard1 = true;
            }

            if (guard1) {
              b_scale = (int32_T)floor((real_T)r1 / (real_T)scale);
              if (responseMap[0].responses.data[b_scale * ((r + ctrVal) - 1) +
                  responseMap[0].responses.size[0] * (b_scale * ((numPoints +
                     idx) - 1))] >= sumY) {
                i0 = 0;
              }
            }
          }
        }
      }
    }

    /*  Perform interpolation to determine exact location of the interest point */
    if (i0 != 0) {
      i0 = 0;
      scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      r2 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ctrVal = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      idx = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      dD[0] = (responseMap[1].responses.data[scale * r + responseMap[1].
               responses.size[0] * (scale * (numPoints + 1))] - responseMap[1].
               responses.data[r2 * r + responseMap[1].responses.size[0] * (r2 *
                (numPoints - 1))]) / 2.0F;
      dD[1] = (responseMap[1].responses.data[ctrVal * (r + 1) + responseMap[1].
               responses.size[0] * (ctrVal * numPoints)] - responseMap[1].
               responses.data[idx * (r - 1) + responseMap[1].responses.size[0] *
               (idx * numPoints)]) / 2.0F;
      dD[2] = (responseMap[2].responses.data[r + responseMap[2].responses.size[0]
               * numPoints] - responseMap[0].responses.data[b_scale * r +
               responseMap[0].responses.size[0] * (b_scale * numPoints)]) / 2.0F;
      c_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      d_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      e_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      f_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      r1 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      r2 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ctrVal = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      idx = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ang2 = (((responseMap[1].responses.data[r2 * (r + 1) + responseMap[1].
                responses.size[0] * (r2 * (numPoints + 1))] - responseMap[1].
                responses.data[ctrVal * (r + 1) + responseMap[1].responses.size
                [0] * (ctrVal * (numPoints - 1))]) - responseMap[1].
               responses.data[idx * (r - 1) + responseMap[1].responses.size[0] *
               (idx * (numPoints + 1))]) + responseMap[1].responses.data[b_scale
              * (r - 1) + responseMap[1].responses.size[0] * (b_scale *
               (numPoints - 1))]) / 4.0F;
      idx = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_max = (((responseMap[2].responses.data[r + responseMap[2]
                 .responses.size[0] * (numPoints + 1)] - responseMap[2].
                 responses.data[r + responseMap[2].responses.size[0] *
                 (numPoints - 1)]) - responseMap[0].responses.data[idx * r +
                responseMap[0].responses.size[0] * (idx * (numPoints + 1))]) +
               responseMap[0].responses.data[b_scale * r + responseMap[0].
               responses.size[0] * (b_scale * (numPoints - 1))]) / 4.0F;
      idx = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      sumY = (((responseMap[2].responses.data[(r + responseMap[2]
                 .responses.size[0] * numPoints) + 1] - responseMap[2].
                responses.data[(r + responseMap[2].responses.size[0] * numPoints)
                - 1]) - responseMap[0].responses.data[idx * (r + 1) +
               responseMap[0].responses.size[0] * (idx * numPoints)]) +
              responseMap[0].responses.data[b_scale * (r - 1) + responseMap[0].
              responses.size[0] * (b_scale * numPoints)]) / 4.0F;
      H[0] = (responseMap[1].responses.data[d_scale * r + responseMap[1].
              responses.size[0] * (d_scale * (numPoints + 1))] + responseMap[1].
              responses.data[e_scale * r + responseMap[1].responses.size[0] *
              (e_scale * (numPoints - 1))]) - 2.0F * responseMap[1].
        responses.data[c_scale * r + responseMap[1].responses.size[0] * (c_scale
        * numPoints)];
      H[3] = ang2;
      H[6] = b_max;
      H[1] = ang2;
      H[4] = (responseMap[1].responses.data[f_scale * (r + 1) + responseMap[1].
              responses.size[0] * (f_scale * numPoints)] + responseMap[1].
              responses.data[r1 * (r - 1) + responseMap[1].responses.size[0] *
              (r1 * numPoints)]) - 2.0F * responseMap[1].responses.data[c_scale *
        r + responseMap[1].responses.size[0] * (c_scale * numPoints)];
      H[7] = sumY;
      H[2] = b_max;
      H[5] = sumY;
      H[8] = (responseMap[2].responses.data[r + responseMap[2].responses.size[0]
              * numPoints] + responseMap[0].responses.data[scale * r +
              responseMap[0].responses.size[0] * (scale * numPoints)]) - 2.0F *
        responseMap[1].responses.data[c_scale * r + responseMap[1].
        responses.size[0] * (c_scale * numPoints)];
      r1 = 1;
      r2 = 2;
      ctrVal = 3;
      sumX = fabsf(H[0]);
      sumY = fabsf(ang2);
      if (sumY > sumX) {
        sumX = sumY;
        r1 = 2;
        r2 = 1;
      }

      if (fabsf(b_max) > sumX) {
        r1 = 3;
        r2 = 2;
        ctrVal = 1;
      }

      H[r2 - 1] /= H[r1 - 1];
      H[ctrVal - 1] /= H[r1 - 1];
      H[r2 + 2] -= H[r2 - 1] * H[r1 + 2];
      H[ctrVal + 2] -= H[ctrVal - 1] * H[r1 + 2];
      H[r2 + 5] -= H[r2 - 1] * H[r1 + 5];
      H[ctrVal + 5] -= H[ctrVal - 1] * H[r1 + 5];
      if (fabsf(H[ctrVal + 2]) > fabsf(H[r2 + 2])) {
        idx = r2;
        r2 = ctrVal;
        ctrVal = idx;
      }

      H[ctrVal + 2] /= H[r2 + 2];
      H[ctrVal + 5] -= H[ctrVal + 2] * H[r2 + 5];
      xres[1] = dD[r2 - 1] - dD[r1 - 1] * H[r2 - 1];
      xres[2] = (dD[ctrVal - 1] - dD[r1 - 1] * H[ctrVal - 1]) - xres[1] *
        H[ctrVal + 2];
      xres[2] /= H[ctrVal + 5];
      xres[0] = dD[r1 - 1] - xres[2] * H[r1 + 5];
      xres[1] -= xres[2] * H[r2 + 5];
      xres[1] /= H[r2 + 2];
      xres[0] -= xres[1] * H[r1 + 2];
      xres[0] /= H[r1 - 1];
      for (ctrVal = 0; ctrVal < 3; ctrVal++) {
        xres[ctrVal] = -xres[ctrVal];
      }

      b_max = xres[2];
      ang2 = xres[1];
      sumX = xres[0];
      if ((fabsf(xres[2]) < 0.5F) && (fabsf(xres[1]) < 0.5F) && (fabsf(xres[0]) <
           0.5F)) {
        i0 = 1;
      }
    }

    keyMatrix[r + 576 * numPoints] = (int8_T)i0;
    grayImage[r + 576 * numPoints] = b_max;
    result_xr[r + 576 * numPoints] = ang2;
    result_xc[r + 576 * numPoints] = sumX;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel68(int32_T
  *filterStep, real32_T *grayImage, struct_T *responseMap, real32_T *result_xr,
  int32_T *step, real32_T *result_xc, int8_T *keyMatrix, struct0_T
  *intPoints_data, int32_T *filter)
{
  uint32_T threadId;
  int32_T r;
  int32_T numPoints;
  int32_T ctrVal;
  int32_T scale;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r = (int32_T)(threadId % 576U);
  numPoints = (int32_T)((threadId - (uint32_T)r) / 576U);
  if ((!(numPoints >= 768)) && (!(r >= 576)) && ((int32_T)keyMatrix[r + 576 *
       numPoints] != 0)) {
    ctrVal = atomicAdd(filter, 1);
    if (ctrVal <= 2000) {
      intPoints_data[ctrVal - 1].x = ((real32_T)numPoints + result_xc[r + 576 *
        numPoints]) * (real32_T)*step;
      intPoints_data[ctrVal - 1].y = ((real32_T)r + result_xr[r + 576 *
        numPoints]) * (real32_T)*step;
      intPoints_data[ctrVal - 1].scale = 0.1333F * ((real32_T)responseMap[1].
        filter + grayImage[r + 576 * numPoints] * (real32_T)*filterStep);
      scale = (int32_T)floor(responseMap[1].width / responseMap[2].width);
      intPoints_data[ctrVal - 1].laplacian = (int32_T)responseMap[1].
        laplacian.data[scale * r + responseMap[1].laplacian.size[0] * (scale *
        numPoints)];
      intPoints_data[ctrVal - 1].orientation = 0.0F;
    }
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel69(struct_T
  *responseMap, int32_T *filterStep, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *step = (int32_T)responseMap[3].step;
    *filterStep = (int32_T)((real32_T)responseMap[2].filter - (real32_T)
      responseMap[1].filter);
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel7(struct_T
  *responseMap, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *step = (int32_T)responseMap[1].step;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel70(int32_T
  *step, struct_T *responseMap, real32_T *result_xc, real32_T *result_xr,
  real32_T *grayImage, int8_T *keyMatrix)
{
  uint32_T threadId;
  int32_T i0;
  real32_T b_max;
  real32_T ang2;
  real32_T sumX;
  int32_T idx;
  int32_T r1;
  int32_T r2;
  int32_T ctrVal;
  int32_T scale;
  int16_T b_size_t[2];
  int16_T size_b[2];
  int16_T size_m[2];
  int32_T r;
  int32_T numPoints;
  int32_T b_scale;
  real32_T sumY;
  real32_T dD[3];
  int32_T c_scale;
  int32_T d_scale;
  int32_T e_scale;
  int32_T f_scale;
  real32_T H[9];
  real32_T xres[3];
  boolean_T guard1 = false;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r = (int32_T)(threadId % 576U);
  numPoints = (int32_T)((threadId - (uint32_T)r) / 576U);
  if ((!(numPoints >= 768)) && (!(r >= 576))) {
    i0 = 1;
    b_max = 0.0F;
    ang2 = 0.0F;
    sumX = 0.0F;
    idx = (int32_T)floor((responseMap[3].filter + 1.0) / (2.0 * (real_T)*step));
    r1 = responseMap[1].responses.size[1];
    r2 = responseMap[2].responses.size[1];
    for (ctrVal = 0; ctrVal < 2; ctrVal++) {
      size_b[ctrVal] = (int16_T)responseMap[1].responses.size[ctrVal];
      size_m[ctrVal] = (int16_T)responseMap[2].responses.size[ctrVal];
      b_size_t[ctrVal] = (int16_T)responseMap[3].responses.size[ctrVal];
    }

    scale = (int32_T)b_size_t[1];

    /*  Eliminate border pixels */
    if ((r <= idx) || (r >= (int32_T)b_size_t[0] - idx) || (numPoints <= idx) ||
        (numPoints >= (int32_T)b_size_t[1] - idx)) {
      i0 = 0;
    } else {
      /*  Threshold the pixel response */
      b_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      sumY = responseMap[2].responses.data[b_scale * r + responseMap[2].
        responses.size[0] * (b_scale * numPoints)];
      if (responseMap[2].responses.data[b_scale * r + responseMap[2].
          responses.size[0] * (b_scale * numPoints)] < 0.0004F) {
        i0 = 0;
      } else {
        /*  Compare pixel responses within 3x3x3 neighborhood */
        for (ctrVal = 0; ctrVal < 3; ctrVal++) {
          for (idx = 0; idx < 3; idx++) {
            guard1 = false;
            if (responseMap[3].responses.data[((r + ctrVal) + responseMap[3].
                 responses.size[0] * ((numPoints + idx) - 1)) - 1] >= sumY) {
              i0 = 0;
            } else if ((ctrVal - 1 != 0) || (idx - 1 != 0)) {
              b_scale = (int32_T)floor((real_T)r2 / (real_T)scale);
              if (responseMap[2].responses.data[b_scale * ((r + ctrVal) - 1) +
                  responseMap[2].responses.size[0] * (b_scale * ((numPoints +
                     idx) - 1))] >= sumY) {
                i0 = 0;
              } else {
                guard1 = true;
              }
            } else {
              guard1 = true;
            }

            if (guard1) {
              b_scale = (int32_T)floor((real_T)r1 / (real_T)scale);
              if (responseMap[1].responses.data[b_scale * ((r + ctrVal) - 1) +
                  responseMap[1].responses.size[0] * (b_scale * ((numPoints +
                     idx) - 1))] >= sumY) {
                i0 = 0;
              }
            }
          }
        }
      }
    }

    /*  Perform interpolation to determine exact location of the interest point */
    if (i0 != 0) {
      i0 = 0;
      scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      r2 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ctrVal = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      idx = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      dD[0] = (responseMap[2].responses.data[scale * r + responseMap[2].
               responses.size[0] * (scale * (numPoints + 1))] - responseMap[2].
               responses.data[r2 * r + responseMap[2].responses.size[0] * (r2 *
                (numPoints - 1))]) / 2.0F;
      dD[1] = (responseMap[2].responses.data[ctrVal * (r + 1) + responseMap[2].
               responses.size[0] * (ctrVal * numPoints)] - responseMap[2].
               responses.data[idx * (r - 1) + responseMap[2].responses.size[0] *
               (idx * numPoints)]) / 2.0F;
      dD[2] = (responseMap[3].responses.data[r + responseMap[3].responses.size[0]
               * numPoints] - responseMap[1].responses.data[b_scale * r +
               responseMap[1].responses.size[0] * (b_scale * numPoints)]) / 2.0F;
      c_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      d_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      e_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      f_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      r1 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      r2 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ctrVal = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      idx = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ang2 = (((responseMap[2].responses.data[r2 * (r + 1) + responseMap[2].
                responses.size[0] * (r2 * (numPoints + 1))] - responseMap[2].
                responses.data[ctrVal * (r + 1) + responseMap[2].responses.size
                [0] * (ctrVal * (numPoints - 1))]) - responseMap[2].
               responses.data[idx * (r - 1) + responseMap[2].responses.size[0] *
               (idx * (numPoints + 1))]) + responseMap[2].responses.data[b_scale
              * (r - 1) + responseMap[2].responses.size[0] * (b_scale *
               (numPoints - 1))]) / 4.0F;
      idx = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_max = (((responseMap[3].responses.data[r + responseMap[3]
                 .responses.size[0] * (numPoints + 1)] - responseMap[3].
                 responses.data[r + responseMap[3].responses.size[0] *
                 (numPoints - 1)]) - responseMap[1].responses.data[idx * r +
                responseMap[1].responses.size[0] * (idx * (numPoints + 1))]) +
               responseMap[1].responses.data[b_scale * r + responseMap[1].
               responses.size[0] * (b_scale * (numPoints - 1))]) / 4.0F;
      idx = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      sumY = (((responseMap[3].responses.data[(r + responseMap[3]
                 .responses.size[0] * numPoints) + 1] - responseMap[3].
                responses.data[(r + responseMap[3].responses.size[0] * numPoints)
                - 1]) - responseMap[1].responses.data[idx * (r + 1) +
               responseMap[1].responses.size[0] * (idx * numPoints)]) +
              responseMap[1].responses.data[b_scale * (r - 1) + responseMap[1].
              responses.size[0] * (b_scale * numPoints)]) / 4.0F;
      H[0] = (responseMap[2].responses.data[d_scale * r + responseMap[2].
              responses.size[0] * (d_scale * (numPoints + 1))] + responseMap[2].
              responses.data[e_scale * r + responseMap[2].responses.size[0] *
              (e_scale * (numPoints - 1))]) - 2.0F * responseMap[2].
        responses.data[c_scale * r + responseMap[2].responses.size[0] * (c_scale
        * numPoints)];
      H[3] = ang2;
      H[6] = b_max;
      H[1] = ang2;
      H[4] = (responseMap[2].responses.data[f_scale * (r + 1) + responseMap[2].
              responses.size[0] * (f_scale * numPoints)] + responseMap[2].
              responses.data[r1 * (r - 1) + responseMap[2].responses.size[0] *
              (r1 * numPoints)]) - 2.0F * responseMap[2].responses.data[c_scale *
        r + responseMap[2].responses.size[0] * (c_scale * numPoints)];
      H[7] = sumY;
      H[2] = b_max;
      H[5] = sumY;
      H[8] = (responseMap[3].responses.data[r + responseMap[3].responses.size[0]
              * numPoints] + responseMap[1].responses.data[scale * r +
              responseMap[1].responses.size[0] * (scale * numPoints)]) - 2.0F *
        responseMap[2].responses.data[c_scale * r + responseMap[2].
        responses.size[0] * (c_scale * numPoints)];
      r1 = 1;
      r2 = 2;
      ctrVal = 3;
      sumX = fabsf(H[0]);
      sumY = fabsf(ang2);
      if (sumY > sumX) {
        sumX = sumY;
        r1 = 2;
        r2 = 1;
      }

      if (fabsf(b_max) > sumX) {
        r1 = 3;
        r2 = 2;
        ctrVal = 1;
      }

      H[r2 - 1] /= H[r1 - 1];
      H[ctrVal - 1] /= H[r1 - 1];
      H[r2 + 2] -= H[r2 - 1] * H[r1 + 2];
      H[ctrVal + 2] -= H[ctrVal - 1] * H[r1 + 2];
      H[r2 + 5] -= H[r2 - 1] * H[r1 + 5];
      H[ctrVal + 5] -= H[ctrVal - 1] * H[r1 + 5];
      if (fabsf(H[ctrVal + 2]) > fabsf(H[r2 + 2])) {
        idx = r2;
        r2 = ctrVal;
        ctrVal = idx;
      }

      H[ctrVal + 2] /= H[r2 + 2];
      H[ctrVal + 5] -= H[ctrVal + 2] * H[r2 + 5];
      xres[1] = dD[r2 - 1] - dD[r1 - 1] * H[r2 - 1];
      xres[2] = (dD[ctrVal - 1] - dD[r1 - 1] * H[ctrVal - 1]) - xres[1] *
        H[ctrVal + 2];
      xres[2] /= H[ctrVal + 5];
      xres[0] = dD[r1 - 1] - xres[2] * H[r1 + 5];
      xres[1] -= xres[2] * H[r2 + 5];
      xres[1] /= H[r2 + 2];
      xres[0] -= xres[1] * H[r1 + 2];
      xres[0] /= H[r1 - 1];
      for (ctrVal = 0; ctrVal < 3; ctrVal++) {
        xres[ctrVal] = -xres[ctrVal];
      }

      b_max = xres[2];
      ang2 = xres[1];
      sumX = xres[0];
      if ((fabsf(xres[2]) < 0.5F) && (fabsf(xres[1]) < 0.5F) && (fabsf(xres[0]) <
           0.5F)) {
        i0 = 1;
      }
    }

    keyMatrix[r + 576 * numPoints] = (int8_T)i0;
    grayImage[r + 576 * numPoints] = b_max;
    result_xr[r + 576 * numPoints] = ang2;
    result_xc[r + 576 * numPoints] = sumX;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel71(int32_T
  *filterStep, real32_T *grayImage, struct_T *responseMap, real32_T *result_xr,
  int32_T *step, real32_T *result_xc, int8_T *keyMatrix, struct0_T
  *intPoints_data, int32_T *filter)
{
  uint32_T threadId;
  int32_T r;
  int32_T numPoints;
  int32_T ctrVal;
  int32_T scale;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r = (int32_T)(threadId % 576U);
  numPoints = (int32_T)((threadId - (uint32_T)r) / 576U);
  if ((!(numPoints >= 768)) && (!(r >= 576)) && ((int32_T)keyMatrix[r + 576 *
       numPoints] != 0)) {
    ctrVal = atomicAdd(filter, 1);
    if (ctrVal <= 2000) {
      intPoints_data[ctrVal - 1].x = ((real32_T)numPoints + result_xc[r + 576 *
        numPoints]) * (real32_T)*step;
      intPoints_data[ctrVal - 1].y = ((real32_T)r + result_xr[r + 576 *
        numPoints]) * (real32_T)*step;
      intPoints_data[ctrVal - 1].scale = 0.1333F * ((real32_T)responseMap[2].
        filter + grayImage[r + 576 * numPoints] * (real32_T)*filterStep);
      scale = (int32_T)floor(responseMap[2].width / responseMap[3].width);
      intPoints_data[ctrVal - 1].laplacian = (int32_T)responseMap[2].
        laplacian.data[scale * r + responseMap[2].laplacian.size[0] * (scale *
        numPoints)];
      intPoints_data[ctrVal - 1].orientation = 0.0F;
    }
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel72(struct_T
  *responseMap, int32_T *filterStep, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *step = (int32_T)responseMap[4].step;
    *filterStep = (int32_T)((real32_T)responseMap[3].filter - (real32_T)
      responseMap[1].filter);
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel73(int32_T
  *step, struct_T *responseMap, real32_T *result_xc, real32_T *result_xr,
  real32_T *grayImage, int8_T *keyMatrix)
{
  uint32_T threadId;
  int32_T i0;
  real32_T b_max;
  real32_T ang2;
  real32_T sumX;
  int32_T idx;
  int32_T r1;
  int32_T r2;
  int32_T ctrVal;
  int32_T scale;
  int16_T b_size_t[2];
  int16_T size_b[2];
  int16_T size_m[2];
  int32_T r;
  int32_T numPoints;
  int32_T b_scale;
  real32_T sumY;
  real32_T dD[3];
  int32_T c_scale;
  int32_T d_scale;
  int32_T e_scale;
  int32_T f_scale;
  real32_T H[9];
  real32_T xres[3];
  boolean_T guard1 = false;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r = (int32_T)(threadId % 576U);
  numPoints = (int32_T)((threadId - (uint32_T)r) / 576U);
  if ((!(numPoints >= 768)) && (!(r >= 576))) {
    i0 = 1;
    b_max = 0.0F;
    ang2 = 0.0F;
    sumX = 0.0F;
    idx = (int32_T)floor((responseMap[4].filter + 1.0) / (2.0 * (real_T)*step));
    r1 = responseMap[1].responses.size[1];
    r2 = responseMap[3].responses.size[1];
    for (ctrVal = 0; ctrVal < 2; ctrVal++) {
      size_b[ctrVal] = (int16_T)responseMap[1].responses.size[ctrVal];
      size_m[ctrVal] = (int16_T)responseMap[3].responses.size[ctrVal];
      b_size_t[ctrVal] = (int16_T)responseMap[4].responses.size[ctrVal];
    }

    scale = (int32_T)b_size_t[1];

    /*  Eliminate border pixels */
    if ((r <= idx) || (r >= (int32_T)b_size_t[0] - idx) || (numPoints <= idx) ||
        (numPoints >= (int32_T)b_size_t[1] - idx)) {
      i0 = 0;
    } else {
      /*  Threshold the pixel response */
      b_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      sumY = responseMap[3].responses.data[b_scale * r + responseMap[3].
        responses.size[0] * (b_scale * numPoints)];
      if (responseMap[3].responses.data[b_scale * r + responseMap[3].
          responses.size[0] * (b_scale * numPoints)] < 0.0004F) {
        i0 = 0;
      } else {
        /*  Compare pixel responses within 3x3x3 neighborhood */
        for (ctrVal = 0; ctrVal < 3; ctrVal++) {
          for (idx = 0; idx < 3; idx++) {
            guard1 = false;
            if (responseMap[4].responses.data[((r + ctrVal) + responseMap[4].
                 responses.size[0] * ((numPoints + idx) - 1)) - 1] >= sumY) {
              i0 = 0;
            } else if ((ctrVal - 1 != 0) || (idx - 1 != 0)) {
              b_scale = (int32_T)floor((real_T)r2 / (real_T)scale);
              if (responseMap[3].responses.data[b_scale * ((r + ctrVal) - 1) +
                  responseMap[3].responses.size[0] * (b_scale * ((numPoints +
                     idx) - 1))] >= sumY) {
                i0 = 0;
              } else {
                guard1 = true;
              }
            } else {
              guard1 = true;
            }

            if (guard1) {
              b_scale = (int32_T)floor((real_T)r1 / (real_T)scale);
              if (responseMap[1].responses.data[b_scale * ((r + ctrVal) - 1) +
                  responseMap[1].responses.size[0] * (b_scale * ((numPoints +
                     idx) - 1))] >= sumY) {
                i0 = 0;
              }
            }
          }
        }
      }
    }

    /*  Perform interpolation to determine exact location of the interest point */
    if (i0 != 0) {
      i0 = 0;
      scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      r2 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ctrVal = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      idx = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      dD[0] = (responseMap[3].responses.data[scale * r + responseMap[3].
               responses.size[0] * (scale * (numPoints + 1))] - responseMap[3].
               responses.data[r2 * r + responseMap[3].responses.size[0] * (r2 *
                (numPoints - 1))]) / 2.0F;
      dD[1] = (responseMap[3].responses.data[ctrVal * (r + 1) + responseMap[3].
               responses.size[0] * (ctrVal * numPoints)] - responseMap[3].
               responses.data[idx * (r - 1) + responseMap[3].responses.size[0] *
               (idx * numPoints)]) / 2.0F;
      dD[2] = (responseMap[4].responses.data[r + responseMap[4].responses.size[0]
               * numPoints] - responseMap[1].responses.data[b_scale * r +
               responseMap[1].responses.size[0] * (b_scale * numPoints)]) / 2.0F;
      c_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      d_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      e_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      f_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      r1 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      r2 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ctrVal = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      idx = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ang2 = (((responseMap[3].responses.data[r2 * (r + 1) + responseMap[3].
                responses.size[0] * (r2 * (numPoints + 1))] - responseMap[3].
                responses.data[ctrVal * (r + 1) + responseMap[3].responses.size
                [0] * (ctrVal * (numPoints - 1))]) - responseMap[3].
               responses.data[idx * (r - 1) + responseMap[3].responses.size[0] *
               (idx * (numPoints + 1))]) + responseMap[3].responses.data[b_scale
              * (r - 1) + responseMap[3].responses.size[0] * (b_scale *
               (numPoints - 1))]) / 4.0F;
      idx = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_max = (((responseMap[4].responses.data[r + responseMap[4]
                 .responses.size[0] * (numPoints + 1)] - responseMap[4].
                 responses.data[r + responseMap[4].responses.size[0] *
                 (numPoints - 1)]) - responseMap[1].responses.data[idx * r +
                responseMap[1].responses.size[0] * (idx * (numPoints + 1))]) +
               responseMap[1].responses.data[b_scale * r + responseMap[1].
               responses.size[0] * (b_scale * (numPoints - 1))]) / 4.0F;
      idx = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      sumY = (((responseMap[4].responses.data[(r + responseMap[4]
                 .responses.size[0] * numPoints) + 1] - responseMap[4].
                responses.data[(r + responseMap[4].responses.size[0] * numPoints)
                - 1]) - responseMap[1].responses.data[idx * (r + 1) +
               responseMap[1].responses.size[0] * (idx * numPoints)]) +
              responseMap[1].responses.data[b_scale * (r - 1) + responseMap[1].
              responses.size[0] * (b_scale * numPoints)]) / 4.0F;
      H[0] = (responseMap[3].responses.data[d_scale * r + responseMap[3].
              responses.size[0] * (d_scale * (numPoints + 1))] + responseMap[3].
              responses.data[e_scale * r + responseMap[3].responses.size[0] *
              (e_scale * (numPoints - 1))]) - 2.0F * responseMap[3].
        responses.data[c_scale * r + responseMap[3].responses.size[0] * (c_scale
        * numPoints)];
      H[3] = ang2;
      H[6] = b_max;
      H[1] = ang2;
      H[4] = (responseMap[3].responses.data[f_scale * (r + 1) + responseMap[3].
              responses.size[0] * (f_scale * numPoints)] + responseMap[3].
              responses.data[r1 * (r - 1) + responseMap[3].responses.size[0] *
              (r1 * numPoints)]) - 2.0F * responseMap[3].responses.data[c_scale *
        r + responseMap[3].responses.size[0] * (c_scale * numPoints)];
      H[7] = sumY;
      H[2] = b_max;
      H[5] = sumY;
      H[8] = (responseMap[4].responses.data[r + responseMap[4].responses.size[0]
              * numPoints] + responseMap[1].responses.data[scale * r +
              responseMap[1].responses.size[0] * (scale * numPoints)]) - 2.0F *
        responseMap[3].responses.data[c_scale * r + responseMap[3].
        responses.size[0] * (c_scale * numPoints)];
      r1 = 1;
      r2 = 2;
      ctrVal = 3;
      sumX = fabsf(H[0]);
      sumY = fabsf(ang2);
      if (sumY > sumX) {
        sumX = sumY;
        r1 = 2;
        r2 = 1;
      }

      if (fabsf(b_max) > sumX) {
        r1 = 3;
        r2 = 2;
        ctrVal = 1;
      }

      H[r2 - 1] /= H[r1 - 1];
      H[ctrVal - 1] /= H[r1 - 1];
      H[r2 + 2] -= H[r2 - 1] * H[r1 + 2];
      H[ctrVal + 2] -= H[ctrVal - 1] * H[r1 + 2];
      H[r2 + 5] -= H[r2 - 1] * H[r1 + 5];
      H[ctrVal + 5] -= H[ctrVal - 1] * H[r1 + 5];
      if (fabsf(H[ctrVal + 2]) > fabsf(H[r2 + 2])) {
        idx = r2;
        r2 = ctrVal;
        ctrVal = idx;
      }

      H[ctrVal + 2] /= H[r2 + 2];
      H[ctrVal + 5] -= H[ctrVal + 2] * H[r2 + 5];
      xres[1] = dD[r2 - 1] - dD[r1 - 1] * H[r2 - 1];
      xres[2] = (dD[ctrVal - 1] - dD[r1 - 1] * H[ctrVal - 1]) - xres[1] *
        H[ctrVal + 2];
      xres[2] /= H[ctrVal + 5];
      xres[0] = dD[r1 - 1] - xres[2] * H[r1 + 5];
      xres[1] -= xres[2] * H[r2 + 5];
      xres[1] /= H[r2 + 2];
      xres[0] -= xres[1] * H[r1 + 2];
      xres[0] /= H[r1 - 1];
      for (ctrVal = 0; ctrVal < 3; ctrVal++) {
        xres[ctrVal] = -xres[ctrVal];
      }

      b_max = xres[2];
      ang2 = xres[1];
      sumX = xres[0];
      if ((fabsf(xres[2]) < 0.5F) && (fabsf(xres[1]) < 0.5F) && (fabsf(xres[0]) <
           0.5F)) {
        i0 = 1;
      }
    }

    keyMatrix[r + 576 * numPoints] = (int8_T)i0;
    grayImage[r + 576 * numPoints] = b_max;
    result_xr[r + 576 * numPoints] = ang2;
    result_xc[r + 576 * numPoints] = sumX;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel74(int32_T
  *filterStep, real32_T *grayImage, struct_T *responseMap, real32_T *result_xr,
  int32_T *step, real32_T *result_xc, int8_T *keyMatrix, struct0_T
  *intPoints_data, int32_T *filter)
{
  uint32_T threadId;
  int32_T r;
  int32_T numPoints;
  int32_T ctrVal;
  int32_T scale;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r = (int32_T)(threadId % 576U);
  numPoints = (int32_T)((threadId - (uint32_T)r) / 576U);
  if ((!(numPoints >= 768)) && (!(r >= 576)) && ((int32_T)keyMatrix[r + 576 *
       numPoints] != 0)) {
    ctrVal = atomicAdd(filter, 1);
    if (ctrVal <= 2000) {
      intPoints_data[ctrVal - 1].x = ((real32_T)numPoints + result_xc[r + 576 *
        numPoints]) * (real32_T)*step;
      intPoints_data[ctrVal - 1].y = ((real32_T)r + result_xr[r + 576 *
        numPoints]) * (real32_T)*step;
      intPoints_data[ctrVal - 1].scale = 0.1333F * ((real32_T)responseMap[3].
        filter + grayImage[r + 576 * numPoints] * (real32_T)*filterStep);
      scale = (int32_T)floor(responseMap[3].width / responseMap[4].width);
      intPoints_data[ctrVal - 1].laplacian = (int32_T)responseMap[3].
        laplacian.data[scale * r + responseMap[3].laplacian.size[0] * (scale *
        numPoints)];
      intPoints_data[ctrVal - 1].orientation = 0.0F;
    }
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel75(struct_T
  *responseMap, int32_T *filterStep, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *step = (int32_T)responseMap[5].step;
    *filterStep = (int32_T)((real32_T)responseMap[4].filter - (real32_T)
      responseMap[3].filter);
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel76(int32_T
  *step, struct_T *responseMap, real32_T *result_xc, real32_T *result_xr,
  real32_T *grayImage, int8_T *keyMatrix)
{
  uint32_T threadId;
  int32_T i0;
  real32_T b_max;
  real32_T ang2;
  real32_T sumX;
  int32_T idx;
  int32_T r1;
  int32_T r2;
  int32_T ctrVal;
  int32_T scale;
  int16_T b_size_t[2];
  int16_T size_b[2];
  int16_T size_m[2];
  int32_T r;
  int32_T numPoints;
  int32_T b_scale;
  real32_T sumY;
  real32_T dD[3];
  int32_T c_scale;
  int32_T d_scale;
  int32_T e_scale;
  int32_T f_scale;
  real32_T H[9];
  real32_T xres[3];
  boolean_T guard1 = false;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r = (int32_T)(threadId % 576U);
  numPoints = (int32_T)((threadId - (uint32_T)r) / 576U);
  if ((!(numPoints >= 768)) && (!(r >= 576))) {
    i0 = 1;
    b_max = 0.0F;
    ang2 = 0.0F;
    sumX = 0.0F;
    idx = (int32_T)floor((responseMap[5].filter + 1.0) / (2.0 * (real_T)*step));
    r1 = responseMap[3].responses.size[1];
    r2 = responseMap[4].responses.size[1];
    for (ctrVal = 0; ctrVal < 2; ctrVal++) {
      size_b[ctrVal] = (int16_T)responseMap[3].responses.size[ctrVal];
      size_m[ctrVal] = (int16_T)responseMap[4].responses.size[ctrVal];
      b_size_t[ctrVal] = (int16_T)responseMap[5].responses.size[ctrVal];
    }

    scale = (int32_T)b_size_t[1];

    /*  Eliminate border pixels */
    if ((r <= idx) || (r >= (int32_T)b_size_t[0] - idx) || (numPoints <= idx) ||
        (numPoints >= (int32_T)b_size_t[1] - idx)) {
      i0 = 0;
    } else {
      /*  Threshold the pixel response */
      b_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      sumY = responseMap[4].responses.data[b_scale * r + responseMap[4].
        responses.size[0] * (b_scale * numPoints)];
      if (responseMap[4].responses.data[b_scale * r + responseMap[4].
          responses.size[0] * (b_scale * numPoints)] < 0.0004F) {
        i0 = 0;
      } else {
        /*  Compare pixel responses within 3x3x3 neighborhood */
        for (ctrVal = 0; ctrVal < 3; ctrVal++) {
          for (idx = 0; idx < 3; idx++) {
            guard1 = false;
            if (responseMap[5].responses.data[((r + ctrVal) + responseMap[5].
                 responses.size[0] * ((numPoints + idx) - 1)) - 1] >= sumY) {
              i0 = 0;
            } else if ((ctrVal - 1 != 0) || (idx - 1 != 0)) {
              b_scale = (int32_T)floor((real_T)r2 / (real_T)scale);
              if (responseMap[4].responses.data[b_scale * ((r + ctrVal) - 1) +
                  responseMap[4].responses.size[0] * (b_scale * ((numPoints +
                     idx) - 1))] >= sumY) {
                i0 = 0;
              } else {
                guard1 = true;
              }
            } else {
              guard1 = true;
            }

            if (guard1) {
              b_scale = (int32_T)floor((real_T)r1 / (real_T)scale);
              if (responseMap[3].responses.data[b_scale * ((r + ctrVal) - 1) +
                  responseMap[3].responses.size[0] * (b_scale * ((numPoints +
                     idx) - 1))] >= sumY) {
                i0 = 0;
              }
            }
          }
        }
      }
    }

    /*  Perform interpolation to determine exact location of the interest point */
    if (i0 != 0) {
      i0 = 0;
      scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      r2 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ctrVal = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      idx = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      dD[0] = (responseMap[4].responses.data[scale * r + responseMap[4].
               responses.size[0] * (scale * (numPoints + 1))] - responseMap[4].
               responses.data[r2 * r + responseMap[4].responses.size[0] * (r2 *
                (numPoints - 1))]) / 2.0F;
      dD[1] = (responseMap[4].responses.data[ctrVal * (r + 1) + responseMap[4].
               responses.size[0] * (ctrVal * numPoints)] - responseMap[4].
               responses.data[idx * (r - 1) + responseMap[4].responses.size[0] *
               (idx * numPoints)]) / 2.0F;
      dD[2] = (responseMap[5].responses.data[r + responseMap[5].responses.size[0]
               * numPoints] - responseMap[3].responses.data[b_scale * r +
               responseMap[3].responses.size[0] * (b_scale * numPoints)]) / 2.0F;
      c_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      d_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      e_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      f_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      r1 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      r2 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ctrVal = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      idx = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ang2 = (((responseMap[4].responses.data[r2 * (r + 1) + responseMap[4].
                responses.size[0] * (r2 * (numPoints + 1))] - responseMap[4].
                responses.data[ctrVal * (r + 1) + responseMap[4].responses.size
                [0] * (ctrVal * (numPoints - 1))]) - responseMap[4].
               responses.data[idx * (r - 1) + responseMap[4].responses.size[0] *
               (idx * (numPoints + 1))]) + responseMap[4].responses.data[b_scale
              * (r - 1) + responseMap[4].responses.size[0] * (b_scale *
               (numPoints - 1))]) / 4.0F;
      idx = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_max = (((responseMap[5].responses.data[r + responseMap[5]
                 .responses.size[0] * (numPoints + 1)] - responseMap[5].
                 responses.data[r + responseMap[5].responses.size[0] *
                 (numPoints - 1)]) - responseMap[3].responses.data[idx * r +
                responseMap[3].responses.size[0] * (idx * (numPoints + 1))]) +
               responseMap[3].responses.data[b_scale * r + responseMap[3].
               responses.size[0] * (b_scale * (numPoints - 1))]) / 4.0F;
      idx = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      sumY = (((responseMap[5].responses.data[(r + responseMap[5]
                 .responses.size[0] * numPoints) + 1] - responseMap[5].
                responses.data[(r + responseMap[5].responses.size[0] * numPoints)
                - 1]) - responseMap[3].responses.data[idx * (r + 1) +
               responseMap[3].responses.size[0] * (idx * numPoints)]) +
              responseMap[3].responses.data[b_scale * (r - 1) + responseMap[3].
              responses.size[0] * (b_scale * numPoints)]) / 4.0F;
      H[0] = (responseMap[4].responses.data[d_scale * r + responseMap[4].
              responses.size[0] * (d_scale * (numPoints + 1))] + responseMap[4].
              responses.data[e_scale * r + responseMap[4].responses.size[0] *
              (e_scale * (numPoints - 1))]) - 2.0F * responseMap[4].
        responses.data[c_scale * r + responseMap[4].responses.size[0] * (c_scale
        * numPoints)];
      H[3] = ang2;
      H[6] = b_max;
      H[1] = ang2;
      H[4] = (responseMap[4].responses.data[f_scale * (r + 1) + responseMap[4].
              responses.size[0] * (f_scale * numPoints)] + responseMap[4].
              responses.data[r1 * (r - 1) + responseMap[4].responses.size[0] *
              (r1 * numPoints)]) - 2.0F * responseMap[4].responses.data[c_scale *
        r + responseMap[4].responses.size[0] * (c_scale * numPoints)];
      H[7] = sumY;
      H[2] = b_max;
      H[5] = sumY;
      H[8] = (responseMap[5].responses.data[r + responseMap[5].responses.size[0]
              * numPoints] + responseMap[3].responses.data[scale * r +
              responseMap[3].responses.size[0] * (scale * numPoints)]) - 2.0F *
        responseMap[4].responses.data[c_scale * r + responseMap[4].
        responses.size[0] * (c_scale * numPoints)];
      r1 = 1;
      r2 = 2;
      ctrVal = 3;
      sumX = fabsf(H[0]);
      sumY = fabsf(ang2);
      if (sumY > sumX) {
        sumX = sumY;
        r1 = 2;
        r2 = 1;
      }

      if (fabsf(b_max) > sumX) {
        r1 = 3;
        r2 = 2;
        ctrVal = 1;
      }

      H[r2 - 1] /= H[r1 - 1];
      H[ctrVal - 1] /= H[r1 - 1];
      H[r2 + 2] -= H[r2 - 1] * H[r1 + 2];
      H[ctrVal + 2] -= H[ctrVal - 1] * H[r1 + 2];
      H[r2 + 5] -= H[r2 - 1] * H[r1 + 5];
      H[ctrVal + 5] -= H[ctrVal - 1] * H[r1 + 5];
      if (fabsf(H[ctrVal + 2]) > fabsf(H[r2 + 2])) {
        idx = r2;
        r2 = ctrVal;
        ctrVal = idx;
      }

      H[ctrVal + 2] /= H[r2 + 2];
      H[ctrVal + 5] -= H[ctrVal + 2] * H[r2 + 5];
      xres[1] = dD[r2 - 1] - dD[r1 - 1] * H[r2 - 1];
      xres[2] = (dD[ctrVal - 1] - dD[r1 - 1] * H[ctrVal - 1]) - xres[1] *
        H[ctrVal + 2];
      xres[2] /= H[ctrVal + 5];
      xres[0] = dD[r1 - 1] - xres[2] * H[r1 + 5];
      xres[1] -= xres[2] * H[r2 + 5];
      xres[1] /= H[r2 + 2];
      xres[0] -= xres[1] * H[r1 + 2];
      xres[0] /= H[r1 - 1];
      for (ctrVal = 0; ctrVal < 3; ctrVal++) {
        xres[ctrVal] = -xres[ctrVal];
      }

      b_max = xres[2];
      ang2 = xres[1];
      sumX = xres[0];
      if ((fabsf(xres[2]) < 0.5F) && (fabsf(xres[1]) < 0.5F) && (fabsf(xres[0]) <
           0.5F)) {
        i0 = 1;
      }
    }

    keyMatrix[r + 576 * numPoints] = (int8_T)i0;
    grayImage[r + 576 * numPoints] = b_max;
    result_xr[r + 576 * numPoints] = ang2;
    result_xc[r + 576 * numPoints] = sumX;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel77(int32_T
  *filterStep, real32_T *grayImage, struct_T *responseMap, real32_T *result_xr,
  int32_T *step, real32_T *result_xc, int8_T *keyMatrix, struct0_T
  *intPoints_data, int32_T *filter)
{
  uint32_T threadId;
  int32_T r;
  int32_T numPoints;
  int32_T ctrVal;
  int32_T scale;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r = (int32_T)(threadId % 576U);
  numPoints = (int32_T)((threadId - (uint32_T)r) / 576U);
  if ((!(numPoints >= 768)) && (!(r >= 576)) && ((int32_T)keyMatrix[r + 576 *
       numPoints] != 0)) {
    ctrVal = atomicAdd(filter, 1);
    if (ctrVal <= 2000) {
      intPoints_data[ctrVal - 1].x = ((real32_T)numPoints + result_xc[r + 576 *
        numPoints]) * (real32_T)*step;
      intPoints_data[ctrVal - 1].y = ((real32_T)r + result_xr[r + 576 *
        numPoints]) * (real32_T)*step;
      intPoints_data[ctrVal - 1].scale = 0.1333F * ((real32_T)responseMap[4].
        filter + grayImage[r + 576 * numPoints] * (real32_T)*filterStep);
      scale = (int32_T)floor(responseMap[4].width / responseMap[5].width);
      intPoints_data[ctrVal - 1].laplacian = (int32_T)responseMap[4].
        laplacian.data[scale * r + responseMap[4].laplacian.size[0] * (scale *
        numPoints)];
      intPoints_data[ctrVal - 1].orientation = 0.0F;
    }
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel78(struct_T
  *responseMap, int32_T *filterStep, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *step = (int32_T)responseMap[6].step;
    *filterStep = (int32_T)((real32_T)responseMap[5].filter - (real32_T)
      responseMap[3].filter);
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel79(int32_T
  *step, struct_T *responseMap, real32_T *result_xc, real32_T *result_xr,
  real32_T *grayImage, int8_T *keyMatrix)
{
  uint32_T threadId;
  int32_T i0;
  real32_T b_max;
  real32_T ang2;
  real32_T sumX;
  int32_T idx;
  int32_T r1;
  int32_T r2;
  int32_T ctrVal;
  int32_T scale;
  int16_T b_size_t[2];
  int16_T size_b[2];
  int16_T size_m[2];
  int32_T r;
  int32_T numPoints;
  int32_T b_scale;
  real32_T sumY;
  real32_T dD[3];
  int32_T c_scale;
  int32_T d_scale;
  int32_T e_scale;
  int32_T f_scale;
  real32_T H[9];
  real32_T xres[3];
  boolean_T guard1 = false;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r = (int32_T)(threadId % 576U);
  numPoints = (int32_T)((threadId - (uint32_T)r) / 576U);
  if ((!(numPoints >= 768)) && (!(r >= 576))) {
    i0 = 1;
    b_max = 0.0F;
    ang2 = 0.0F;
    sumX = 0.0F;
    idx = (int32_T)floor((responseMap[6].filter + 1.0) / (2.0 * (real_T)*step));
    r1 = responseMap[3].responses.size[1];
    r2 = responseMap[5].responses.size[1];
    for (ctrVal = 0; ctrVal < 2; ctrVal++) {
      size_b[ctrVal] = (int16_T)responseMap[3].responses.size[ctrVal];
      size_m[ctrVal] = (int16_T)responseMap[5].responses.size[ctrVal];
      b_size_t[ctrVal] = (int16_T)responseMap[6].responses.size[ctrVal];
    }

    scale = (int32_T)b_size_t[1];

    /*  Eliminate border pixels */
    if ((r <= idx) || (r >= (int32_T)b_size_t[0] - idx) || (numPoints <= idx) ||
        (numPoints >= (int32_T)b_size_t[1] - idx)) {
      i0 = 0;
    } else {
      /*  Threshold the pixel response */
      b_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      sumY = responseMap[5].responses.data[b_scale * r + responseMap[5].
        responses.size[0] * (b_scale * numPoints)];
      if (responseMap[5].responses.data[b_scale * r + responseMap[5].
          responses.size[0] * (b_scale * numPoints)] < 0.0004F) {
        i0 = 0;
      } else {
        /*  Compare pixel responses within 3x3x3 neighborhood */
        for (ctrVal = 0; ctrVal < 3; ctrVal++) {
          for (idx = 0; idx < 3; idx++) {
            guard1 = false;
            if (responseMap[6].responses.data[((r + ctrVal) + responseMap[6].
                 responses.size[0] * ((numPoints + idx) - 1)) - 1] >= sumY) {
              i0 = 0;
            } else if ((ctrVal - 1 != 0) || (idx - 1 != 0)) {
              b_scale = (int32_T)floor((real_T)r2 / (real_T)scale);
              if (responseMap[5].responses.data[b_scale * ((r + ctrVal) - 1) +
                  responseMap[5].responses.size[0] * (b_scale * ((numPoints +
                     idx) - 1))] >= sumY) {
                i0 = 0;
              } else {
                guard1 = true;
              }
            } else {
              guard1 = true;
            }

            if (guard1) {
              b_scale = (int32_T)floor((real_T)r1 / (real_T)scale);
              if (responseMap[3].responses.data[b_scale * ((r + ctrVal) - 1) +
                  responseMap[3].responses.size[0] * (b_scale * ((numPoints +
                     idx) - 1))] >= sumY) {
                i0 = 0;
              }
            }
          }
        }
      }
    }

    /*  Perform interpolation to determine exact location of the interest point */
    if (i0 != 0) {
      i0 = 0;
      scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      r2 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ctrVal = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      idx = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      dD[0] = (responseMap[5].responses.data[scale * r + responseMap[5].
               responses.size[0] * (scale * (numPoints + 1))] - responseMap[5].
               responses.data[r2 * r + responseMap[5].responses.size[0] * (r2 *
                (numPoints - 1))]) / 2.0F;
      dD[1] = (responseMap[5].responses.data[ctrVal * (r + 1) + responseMap[5].
               responses.size[0] * (ctrVal * numPoints)] - responseMap[5].
               responses.data[idx * (r - 1) + responseMap[5].responses.size[0] *
               (idx * numPoints)]) / 2.0F;
      dD[2] = (responseMap[6].responses.data[r + responseMap[6].responses.size[0]
               * numPoints] - responseMap[3].responses.data[b_scale * r +
               responseMap[3].responses.size[0] * (b_scale * numPoints)]) / 2.0F;
      c_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      d_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      e_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      f_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      r1 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      r2 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ctrVal = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      idx = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ang2 = (((responseMap[5].responses.data[r2 * (r + 1) + responseMap[5].
                responses.size[0] * (r2 * (numPoints + 1))] - responseMap[5].
                responses.data[ctrVal * (r + 1) + responseMap[5].responses.size
                [0] * (ctrVal * (numPoints - 1))]) - responseMap[5].
               responses.data[idx * (r - 1) + responseMap[5].responses.size[0] *
               (idx * (numPoints + 1))]) + responseMap[5].responses.data[b_scale
              * (r - 1) + responseMap[5].responses.size[0] * (b_scale *
               (numPoints - 1))]) / 4.0F;
      idx = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_max = (((responseMap[6].responses.data[r + responseMap[6]
                 .responses.size[0] * (numPoints + 1)] - responseMap[6].
                 responses.data[r + responseMap[6].responses.size[0] *
                 (numPoints - 1)]) - responseMap[3].responses.data[idx * r +
                responseMap[3].responses.size[0] * (idx * (numPoints + 1))]) +
               responseMap[3].responses.data[b_scale * r + responseMap[3].
               responses.size[0] * (b_scale * (numPoints - 1))]) / 4.0F;
      idx = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      sumY = (((responseMap[6].responses.data[(r + responseMap[6]
                 .responses.size[0] * numPoints) + 1] - responseMap[6].
                responses.data[(r + responseMap[6].responses.size[0] * numPoints)
                - 1]) - responseMap[3].responses.data[idx * (r + 1) +
               responseMap[3].responses.size[0] * (idx * numPoints)]) +
              responseMap[3].responses.data[b_scale * (r - 1) + responseMap[3].
              responses.size[0] * (b_scale * numPoints)]) / 4.0F;
      H[0] = (responseMap[5].responses.data[d_scale * r + responseMap[5].
              responses.size[0] * (d_scale * (numPoints + 1))] + responseMap[5].
              responses.data[e_scale * r + responseMap[5].responses.size[0] *
              (e_scale * (numPoints - 1))]) - 2.0F * responseMap[5].
        responses.data[c_scale * r + responseMap[5].responses.size[0] * (c_scale
        * numPoints)];
      H[3] = ang2;
      H[6] = b_max;
      H[1] = ang2;
      H[4] = (responseMap[5].responses.data[f_scale * (r + 1) + responseMap[5].
              responses.size[0] * (f_scale * numPoints)] + responseMap[5].
              responses.data[r1 * (r - 1) + responseMap[5].responses.size[0] *
              (r1 * numPoints)]) - 2.0F * responseMap[5].responses.data[c_scale *
        r + responseMap[5].responses.size[0] * (c_scale * numPoints)];
      H[7] = sumY;
      H[2] = b_max;
      H[5] = sumY;
      H[8] = (responseMap[6].responses.data[r + responseMap[6].responses.size[0]
              * numPoints] + responseMap[3].responses.data[scale * r +
              responseMap[3].responses.size[0] * (scale * numPoints)]) - 2.0F *
        responseMap[5].responses.data[c_scale * r + responseMap[5].
        responses.size[0] * (c_scale * numPoints)];
      r1 = 1;
      r2 = 2;
      ctrVal = 3;
      sumX = fabsf(H[0]);
      sumY = fabsf(ang2);
      if (sumY > sumX) {
        sumX = sumY;
        r1 = 2;
        r2 = 1;
      }

      if (fabsf(b_max) > sumX) {
        r1 = 3;
        r2 = 2;
        ctrVal = 1;
      }

      H[r2 - 1] /= H[r1 - 1];
      H[ctrVal - 1] /= H[r1 - 1];
      H[r2 + 2] -= H[r2 - 1] * H[r1 + 2];
      H[ctrVal + 2] -= H[ctrVal - 1] * H[r1 + 2];
      H[r2 + 5] -= H[r2 - 1] * H[r1 + 5];
      H[ctrVal + 5] -= H[ctrVal - 1] * H[r1 + 5];
      if (fabsf(H[ctrVal + 2]) > fabsf(H[r2 + 2])) {
        idx = r2;
        r2 = ctrVal;
        ctrVal = idx;
      }

      H[ctrVal + 2] /= H[r2 + 2];
      H[ctrVal + 5] -= H[ctrVal + 2] * H[r2 + 5];
      xres[1] = dD[r2 - 1] - dD[r1 - 1] * H[r2 - 1];
      xres[2] = (dD[ctrVal - 1] - dD[r1 - 1] * H[ctrVal - 1]) - xres[1] *
        H[ctrVal + 2];
      xres[2] /= H[ctrVal + 5];
      xres[0] = dD[r1 - 1] - xres[2] * H[r1 + 5];
      xres[1] -= xres[2] * H[r2 + 5];
      xres[1] /= H[r2 + 2];
      xres[0] -= xres[1] * H[r1 + 2];
      xres[0] /= H[r1 - 1];
      for (ctrVal = 0; ctrVal < 3; ctrVal++) {
        xres[ctrVal] = -xres[ctrVal];
      }

      b_max = xres[2];
      ang2 = xres[1];
      sumX = xres[0];
      if ((fabsf(xres[2]) < 0.5F) && (fabsf(xres[1]) < 0.5F) && (fabsf(xres[0]) <
           0.5F)) {
        i0 = 1;
      }
    }

    keyMatrix[r + 576 * numPoints] = (int8_T)i0;
    grayImage[r + 576 * numPoints] = b_max;
    result_xr[r + 576 * numPoints] = ang2;
    result_xc[r + 576 * numPoints] = sumX;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel8(real32_T
  *respMatrix, struct_T *responseMap)
{
  uint32_T threadId;
  int32_T ctrVal;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  ctrVal = (int32_T)threadId;
  if (!(ctrVal >= 110592)) {
    /*    Copyright 2017 The MathWorks, Inc. */
    responseMap[0].responses.data[ctrVal] = respMatrix[ctrVal];
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel80(int32_T
  *filterStep, real32_T *grayImage, struct_T *responseMap, real32_T *result_xr,
  int32_T *step, real32_T *result_xc, int8_T *keyMatrix, struct0_T
  *intPoints_data, int32_T *filter)
{
  uint32_T threadId;
  int32_T r;
  int32_T numPoints;
  int32_T ctrVal;
  int32_T scale;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r = (int32_T)(threadId % 576U);
  numPoints = (int32_T)((threadId - (uint32_T)r) / 576U);
  if ((!(numPoints >= 768)) && (!(r >= 576)) && ((int32_T)keyMatrix[r + 576 *
       numPoints] != 0)) {
    ctrVal = atomicAdd(filter, 1);
    if (ctrVal <= 2000) {
      intPoints_data[ctrVal - 1].x = ((real32_T)numPoints + result_xc[r + 576 *
        numPoints]) * (real32_T)*step;
      intPoints_data[ctrVal - 1].y = ((real32_T)r + result_xr[r + 576 *
        numPoints]) * (real32_T)*step;
      intPoints_data[ctrVal - 1].scale = 0.1333F * ((real32_T)responseMap[5].
        filter + grayImage[r + 576 * numPoints] * (real32_T)*filterStep);
      scale = (int32_T)floor(responseMap[5].width / responseMap[6].width);
      intPoints_data[ctrVal - 1].laplacian = (int32_T)responseMap[5].
        laplacian.data[scale * r + responseMap[5].laplacian.size[0] * (scale *
        numPoints)];
      intPoints_data[ctrVal - 1].orientation = 0.0F;
    }
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel81(struct_T
  *responseMap, int32_T *filterStep, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *step = (int32_T)responseMap[7].step;
    *filterStep = (int32_T)((real32_T)responseMap[6].filter - (real32_T)
      responseMap[5].filter);
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel82(int32_T
  *step, struct_T *responseMap, real32_T *result_xc, real32_T *result_xr,
  real32_T *grayImage, int8_T *keyMatrix)
{
  uint32_T threadId;
  int32_T i0;
  real32_T b_max;
  real32_T ang2;
  real32_T sumX;
  int32_T idx;
  int32_T r1;
  int32_T r2;
  int32_T ctrVal;
  int32_T scale;
  int16_T b_size_t[2];
  int16_T size_b[2];
  int16_T size_m[2];
  int32_T r;
  int32_T numPoints;
  int32_T b_scale;
  real32_T sumY;
  real32_T dD[3];
  int32_T c_scale;
  int32_T d_scale;
  int32_T e_scale;
  int32_T f_scale;
  real32_T H[9];
  real32_T xres[3];
  boolean_T guard1 = false;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r = (int32_T)(threadId % 576U);
  numPoints = (int32_T)((threadId - (uint32_T)r) / 576U);
  if ((!(numPoints >= 768)) && (!(r >= 576))) {
    i0 = 1;
    b_max = 0.0F;
    ang2 = 0.0F;
    sumX = 0.0F;
    idx = (int32_T)floor((responseMap[7].filter + 1.0) / (2.0 * (real_T)*step));
    r1 = responseMap[5].responses.size[1];
    r2 = responseMap[6].responses.size[1];
    for (ctrVal = 0; ctrVal < 2; ctrVal++) {
      size_b[ctrVal] = (int16_T)responseMap[5].responses.size[ctrVal];
      size_m[ctrVal] = (int16_T)responseMap[6].responses.size[ctrVal];
      b_size_t[ctrVal] = (int16_T)responseMap[7].responses.size[ctrVal];
    }

    scale = (int32_T)b_size_t[1];

    /*  Eliminate border pixels */
    if ((r <= idx) || (r >= (int32_T)b_size_t[0] - idx) || (numPoints <= idx) ||
        (numPoints >= (int32_T)b_size_t[1] - idx)) {
      i0 = 0;
    } else {
      /*  Threshold the pixel response */
      b_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      sumY = responseMap[6].responses.data[b_scale * r + responseMap[6].
        responses.size[0] * (b_scale * numPoints)];
      if (responseMap[6].responses.data[b_scale * r + responseMap[6].
          responses.size[0] * (b_scale * numPoints)] < 0.0004F) {
        i0 = 0;
      } else {
        /*  Compare pixel responses within 3x3x3 neighborhood */
        for (ctrVal = 0; ctrVal < 3; ctrVal++) {
          for (idx = 0; idx < 3; idx++) {
            guard1 = false;
            if (responseMap[7].responses.data[((r + ctrVal) + responseMap[7].
                 responses.size[0] * ((numPoints + idx) - 1)) - 1] >= sumY) {
              i0 = 0;
            } else if ((ctrVal - 1 != 0) || (idx - 1 != 0)) {
              b_scale = (int32_T)floor((real_T)r2 / (real_T)scale);
              if (responseMap[6].responses.data[b_scale * ((r + ctrVal) - 1) +
                  responseMap[6].responses.size[0] * (b_scale * ((numPoints +
                     idx) - 1))] >= sumY) {
                i0 = 0;
              } else {
                guard1 = true;
              }
            } else {
              guard1 = true;
            }

            if (guard1) {
              b_scale = (int32_T)floor((real_T)r1 / (real_T)scale);
              if (responseMap[5].responses.data[b_scale * ((r + ctrVal) - 1) +
                  responseMap[5].responses.size[0] * (b_scale * ((numPoints +
                     idx) - 1))] >= sumY) {
                i0 = 0;
              }
            }
          }
        }
      }
    }

    /*  Perform interpolation to determine exact location of the interest point */
    if (i0 != 0) {
      i0 = 0;
      scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      r2 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ctrVal = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      idx = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      dD[0] = (responseMap[6].responses.data[scale * r + responseMap[6].
               responses.size[0] * (scale * (numPoints + 1))] - responseMap[6].
               responses.data[r2 * r + responseMap[6].responses.size[0] * (r2 *
                (numPoints - 1))]) / 2.0F;
      dD[1] = (responseMap[6].responses.data[ctrVal * (r + 1) + responseMap[6].
               responses.size[0] * (ctrVal * numPoints)] - responseMap[6].
               responses.data[idx * (r - 1) + responseMap[6].responses.size[0] *
               (idx * numPoints)]) / 2.0F;
      dD[2] = (responseMap[7].responses.data[r + responseMap[7].responses.size[0]
               * numPoints] - responseMap[5].responses.data[b_scale * r +
               responseMap[5].responses.size[0] * (b_scale * numPoints)]) / 2.0F;
      c_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      d_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      e_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      f_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      r1 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      r2 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ctrVal = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      idx = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ang2 = (((responseMap[6].responses.data[r2 * (r + 1) + responseMap[6].
                responses.size[0] * (r2 * (numPoints + 1))] - responseMap[6].
                responses.data[ctrVal * (r + 1) + responseMap[6].responses.size
                [0] * (ctrVal * (numPoints - 1))]) - responseMap[6].
               responses.data[idx * (r - 1) + responseMap[6].responses.size[0] *
               (idx * (numPoints + 1))]) + responseMap[6].responses.data[b_scale
              * (r - 1) + responseMap[6].responses.size[0] * (b_scale *
               (numPoints - 1))]) / 4.0F;
      idx = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_max = (((responseMap[7].responses.data[r + responseMap[7]
                 .responses.size[0] * (numPoints + 1)] - responseMap[7].
                 responses.data[r + responseMap[7].responses.size[0] *
                 (numPoints - 1)]) - responseMap[5].responses.data[idx * r +
                responseMap[5].responses.size[0] * (idx * (numPoints + 1))]) +
               responseMap[5].responses.data[b_scale * r + responseMap[5].
               responses.size[0] * (b_scale * (numPoints - 1))]) / 4.0F;
      idx = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      sumY = (((responseMap[7].responses.data[(r + responseMap[7]
                 .responses.size[0] * numPoints) + 1] - responseMap[7].
                responses.data[(r + responseMap[7].responses.size[0] * numPoints)
                - 1]) - responseMap[5].responses.data[idx * (r + 1) +
               responseMap[5].responses.size[0] * (idx * numPoints)]) +
              responseMap[5].responses.data[b_scale * (r - 1) + responseMap[5].
              responses.size[0] * (b_scale * numPoints)]) / 4.0F;
      H[0] = (responseMap[6].responses.data[d_scale * r + responseMap[6].
              responses.size[0] * (d_scale * (numPoints + 1))] + responseMap[6].
              responses.data[e_scale * r + responseMap[6].responses.size[0] *
              (e_scale * (numPoints - 1))]) - 2.0F * responseMap[6].
        responses.data[c_scale * r + responseMap[6].responses.size[0] * (c_scale
        * numPoints)];
      H[3] = ang2;
      H[6] = b_max;
      H[1] = ang2;
      H[4] = (responseMap[6].responses.data[f_scale * (r + 1) + responseMap[6].
              responses.size[0] * (f_scale * numPoints)] + responseMap[6].
              responses.data[r1 * (r - 1) + responseMap[6].responses.size[0] *
              (r1 * numPoints)]) - 2.0F * responseMap[6].responses.data[c_scale *
        r + responseMap[6].responses.size[0] * (c_scale * numPoints)];
      H[7] = sumY;
      H[2] = b_max;
      H[5] = sumY;
      H[8] = (responseMap[7].responses.data[r + responseMap[7].responses.size[0]
              * numPoints] + responseMap[5].responses.data[scale * r +
              responseMap[5].responses.size[0] * (scale * numPoints)]) - 2.0F *
        responseMap[6].responses.data[c_scale * r + responseMap[6].
        responses.size[0] * (c_scale * numPoints)];
      r1 = 1;
      r2 = 2;
      ctrVal = 3;
      sumX = fabsf(H[0]);
      sumY = fabsf(ang2);
      if (sumY > sumX) {
        sumX = sumY;
        r1 = 2;
        r2 = 1;
      }

      if (fabsf(b_max) > sumX) {
        r1 = 3;
        r2 = 2;
        ctrVal = 1;
      }

      H[r2 - 1] /= H[r1 - 1];
      H[ctrVal - 1] /= H[r1 - 1];
      H[r2 + 2] -= H[r2 - 1] * H[r1 + 2];
      H[ctrVal + 2] -= H[ctrVal - 1] * H[r1 + 2];
      H[r2 + 5] -= H[r2 - 1] * H[r1 + 5];
      H[ctrVal + 5] -= H[ctrVal - 1] * H[r1 + 5];
      if (fabsf(H[ctrVal + 2]) > fabsf(H[r2 + 2])) {
        idx = r2;
        r2 = ctrVal;
        ctrVal = idx;
      }

      H[ctrVal + 2] /= H[r2 + 2];
      H[ctrVal + 5] -= H[ctrVal + 2] * H[r2 + 5];
      xres[1] = dD[r2 - 1] - dD[r1 - 1] * H[r2 - 1];
      xres[2] = (dD[ctrVal - 1] - dD[r1 - 1] * H[ctrVal - 1]) - xres[1] *
        H[ctrVal + 2];
      xres[2] /= H[ctrVal + 5];
      xres[0] = dD[r1 - 1] - xres[2] * H[r1 + 5];
      xres[1] -= xres[2] * H[r2 + 5];
      xres[1] /= H[r2 + 2];
      xres[0] -= xres[1] * H[r1 + 2];
      xres[0] /= H[r1 - 1];
      for (ctrVal = 0; ctrVal < 3; ctrVal++) {
        xres[ctrVal] = -xres[ctrVal];
      }

      b_max = xres[2];
      ang2 = xres[1];
      sumX = xres[0];
      if ((fabsf(xres[2]) < 0.5F) && (fabsf(xres[1]) < 0.5F) && (fabsf(xres[0]) <
           0.5F)) {
        i0 = 1;
      }
    }

    keyMatrix[r + 576 * numPoints] = (int8_T)i0;
    grayImage[r + 576 * numPoints] = b_max;
    result_xr[r + 576 * numPoints] = ang2;
    result_xc[r + 576 * numPoints] = sumX;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel83(int32_T
  *filterStep, real32_T *grayImage, struct_T *responseMap, real32_T *result_xr,
  int32_T *step, real32_T *result_xc, int8_T *keyMatrix, struct0_T
  *intPoints_data, int32_T *filter)
{
  uint32_T threadId;
  int32_T r;
  int32_T numPoints;
  int32_T ctrVal;
  int32_T scale;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r = (int32_T)(threadId % 576U);
  numPoints = (int32_T)((threadId - (uint32_T)r) / 576U);
  if ((!(numPoints >= 768)) && (!(r >= 576)) && ((int32_T)keyMatrix[r + 576 *
       numPoints] != 0)) {
    ctrVal = atomicAdd(filter, 1);
    if (ctrVal <= 2000) {
      intPoints_data[ctrVal - 1].x = ((real32_T)numPoints + result_xc[r + 576 *
        numPoints]) * (real32_T)*step;
      intPoints_data[ctrVal - 1].y = ((real32_T)r + result_xr[r + 576 *
        numPoints]) * (real32_T)*step;
      intPoints_data[ctrVal - 1].scale = 0.1333F * ((real32_T)responseMap[6].
        filter + grayImage[r + 576 * numPoints] * (real32_T)*filterStep);
      scale = (int32_T)floor(responseMap[6].width / responseMap[7].width);
      intPoints_data[ctrVal - 1].laplacian = (int32_T)responseMap[6].
        laplacian.data[scale * r + responseMap[6].laplacian.size[0] * (scale *
        numPoints)];
      intPoints_data[ctrVal - 1].orientation = 0.0F;
    }
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel84(struct_T
  *responseMap, int32_T *filterStep, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *step = (int32_T)responseMap[8].step;
    *filterStep = (int32_T)((real32_T)responseMap[7].filter - (real32_T)
      responseMap[5].filter);
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel85(int32_T
  *step, struct_T *responseMap, real32_T *result_xc, real32_T *result_xr,
  real32_T *grayImage, int8_T *keyMatrix)
{
  uint32_T threadId;
  int32_T i0;
  real32_T b_max;
  real32_T ang2;
  real32_T sumX;
  int32_T idx;
  int32_T r1;
  int32_T r2;
  int32_T ctrVal;
  int32_T scale;
  int16_T b_size_t[2];
  int16_T size_b[2];
  int16_T size_m[2];
  int32_T r;
  int32_T numPoints;
  int32_T b_scale;
  real32_T sumY;
  real32_T dD[3];
  int32_T c_scale;
  int32_T d_scale;
  int32_T e_scale;
  int32_T f_scale;
  real32_T H[9];
  real32_T xres[3];
  boolean_T guard1 = false;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r = (int32_T)(threadId % 576U);
  numPoints = (int32_T)((threadId - (uint32_T)r) / 576U);
  if ((!(numPoints >= 768)) && (!(r >= 576))) {
    i0 = 1;
    b_max = 0.0F;
    ang2 = 0.0F;
    sumX = 0.0F;
    idx = (int32_T)floor((responseMap[8].filter + 1.0) / (2.0 * (real_T)*step));
    r1 = responseMap[5].responses.size[1];
    r2 = responseMap[7].responses.size[1];
    for (ctrVal = 0; ctrVal < 2; ctrVal++) {
      size_b[ctrVal] = (int16_T)responseMap[5].responses.size[ctrVal];
      size_m[ctrVal] = (int16_T)responseMap[7].responses.size[ctrVal];
      b_size_t[ctrVal] = (int16_T)responseMap[8].responses.size[ctrVal];
    }

    scale = (int32_T)b_size_t[1];

    /*  Eliminate border pixels */
    if ((r <= idx) || (r >= (int32_T)b_size_t[0] - idx) || (numPoints <= idx) ||
        (numPoints >= (int32_T)b_size_t[1] - idx)) {
      i0 = 0;
    } else {
      /*  Threshold the pixel response */
      b_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      sumY = responseMap[7].responses.data[b_scale * r + responseMap[7].
        responses.size[0] * (b_scale * numPoints)];
      if (responseMap[7].responses.data[b_scale * r + responseMap[7].
          responses.size[0] * (b_scale * numPoints)] < 0.0004F) {
        i0 = 0;
      } else {
        /*  Compare pixel responses within 3x3x3 neighborhood */
        for (ctrVal = 0; ctrVal < 3; ctrVal++) {
          for (idx = 0; idx < 3; idx++) {
            guard1 = false;
            if (responseMap[8].responses.data[((r + ctrVal) + responseMap[8].
                 responses.size[0] * ((numPoints + idx) - 1)) - 1] >= sumY) {
              i0 = 0;
            } else if ((ctrVal - 1 != 0) || (idx - 1 != 0)) {
              b_scale = (int32_T)floor((real_T)r2 / (real_T)scale);
              if (responseMap[7].responses.data[b_scale * ((r + ctrVal) - 1) +
                  responseMap[7].responses.size[0] * (b_scale * ((numPoints +
                     idx) - 1))] >= sumY) {
                i0 = 0;
              } else {
                guard1 = true;
              }
            } else {
              guard1 = true;
            }

            if (guard1) {
              b_scale = (int32_T)floor((real_T)r1 / (real_T)scale);
              if (responseMap[5].responses.data[b_scale * ((r + ctrVal) - 1) +
                  responseMap[5].responses.size[0] * (b_scale * ((numPoints +
                     idx) - 1))] >= sumY) {
                i0 = 0;
              }
            }
          }
        }
      }
    }

    /*  Perform interpolation to determine exact location of the interest point */
    if (i0 != 0) {
      i0 = 0;
      scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      r2 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ctrVal = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      idx = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      dD[0] = (responseMap[7].responses.data[scale * r + responseMap[7].
               responses.size[0] * (scale * (numPoints + 1))] - responseMap[7].
               responses.data[r2 * r + responseMap[7].responses.size[0] * (r2 *
                (numPoints - 1))]) / 2.0F;
      dD[1] = (responseMap[7].responses.data[ctrVal * (r + 1) + responseMap[7].
               responses.size[0] * (ctrVal * numPoints)] - responseMap[7].
               responses.data[idx * (r - 1) + responseMap[7].responses.size[0] *
               (idx * numPoints)]) / 2.0F;
      dD[2] = (responseMap[8].responses.data[r + responseMap[8].responses.size[0]
               * numPoints] - responseMap[5].responses.data[b_scale * r +
               responseMap[5].responses.size[0] * (b_scale * numPoints)]) / 2.0F;
      c_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      d_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      e_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      f_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      r1 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      r2 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ctrVal = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      idx = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ang2 = (((responseMap[7].responses.data[r2 * (r + 1) + responseMap[7].
                responses.size[0] * (r2 * (numPoints + 1))] - responseMap[7].
                responses.data[ctrVal * (r + 1) + responseMap[7].responses.size
                [0] * (ctrVal * (numPoints - 1))]) - responseMap[7].
               responses.data[idx * (r - 1) + responseMap[7].responses.size[0] *
               (idx * (numPoints + 1))]) + responseMap[7].responses.data[b_scale
              * (r - 1) + responseMap[7].responses.size[0] * (b_scale *
               (numPoints - 1))]) / 4.0F;
      idx = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_max = (((responseMap[8].responses.data[r + responseMap[8]
                 .responses.size[0] * (numPoints + 1)] - responseMap[8].
                 responses.data[r + responseMap[8].responses.size[0] *
                 (numPoints - 1)]) - responseMap[5].responses.data[idx * r +
                responseMap[5].responses.size[0] * (idx * (numPoints + 1))]) +
               responseMap[5].responses.data[b_scale * r + responseMap[5].
               responses.size[0] * (b_scale * (numPoints - 1))]) / 4.0F;
      idx = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      sumY = (((responseMap[8].responses.data[(r + responseMap[8]
                 .responses.size[0] * numPoints) + 1] - responseMap[8].
                responses.data[(r + responseMap[8].responses.size[0] * numPoints)
                - 1]) - responseMap[5].responses.data[idx * (r + 1) +
               responseMap[5].responses.size[0] * (idx * numPoints)]) +
              responseMap[5].responses.data[b_scale * (r - 1) + responseMap[5].
              responses.size[0] * (b_scale * numPoints)]) / 4.0F;
      H[0] = (responseMap[7].responses.data[d_scale * r + responseMap[7].
              responses.size[0] * (d_scale * (numPoints + 1))] + responseMap[7].
              responses.data[e_scale * r + responseMap[7].responses.size[0] *
              (e_scale * (numPoints - 1))]) - 2.0F * responseMap[7].
        responses.data[c_scale * r + responseMap[7].responses.size[0] * (c_scale
        * numPoints)];
      H[3] = ang2;
      H[6] = b_max;
      H[1] = ang2;
      H[4] = (responseMap[7].responses.data[f_scale * (r + 1) + responseMap[7].
              responses.size[0] * (f_scale * numPoints)] + responseMap[7].
              responses.data[r1 * (r - 1) + responseMap[7].responses.size[0] *
              (r1 * numPoints)]) - 2.0F * responseMap[7].responses.data[c_scale *
        r + responseMap[7].responses.size[0] * (c_scale * numPoints)];
      H[7] = sumY;
      H[2] = b_max;
      H[5] = sumY;
      H[8] = (responseMap[8].responses.data[r + responseMap[8].responses.size[0]
              * numPoints] + responseMap[5].responses.data[scale * r +
              responseMap[5].responses.size[0] * (scale * numPoints)]) - 2.0F *
        responseMap[7].responses.data[c_scale * r + responseMap[7].
        responses.size[0] * (c_scale * numPoints)];
      r1 = 1;
      r2 = 2;
      ctrVal = 3;
      sumX = fabsf(H[0]);
      sumY = fabsf(ang2);
      if (sumY > sumX) {
        sumX = sumY;
        r1 = 2;
        r2 = 1;
      }

      if (fabsf(b_max) > sumX) {
        r1 = 3;
        r2 = 2;
        ctrVal = 1;
      }

      H[r2 - 1] /= H[r1 - 1];
      H[ctrVal - 1] /= H[r1 - 1];
      H[r2 + 2] -= H[r2 - 1] * H[r1 + 2];
      H[ctrVal + 2] -= H[ctrVal - 1] * H[r1 + 2];
      H[r2 + 5] -= H[r2 - 1] * H[r1 + 5];
      H[ctrVal + 5] -= H[ctrVal - 1] * H[r1 + 5];
      if (fabsf(H[ctrVal + 2]) > fabsf(H[r2 + 2])) {
        idx = r2;
        r2 = ctrVal;
        ctrVal = idx;
      }

      H[ctrVal + 2] /= H[r2 + 2];
      H[ctrVal + 5] -= H[ctrVal + 2] * H[r2 + 5];
      xres[1] = dD[r2 - 1] - dD[r1 - 1] * H[r2 - 1];
      xres[2] = (dD[ctrVal - 1] - dD[r1 - 1] * H[ctrVal - 1]) - xres[1] *
        H[ctrVal + 2];
      xres[2] /= H[ctrVal + 5];
      xres[0] = dD[r1 - 1] - xres[2] * H[r1 + 5];
      xres[1] -= xres[2] * H[r2 + 5];
      xres[1] /= H[r2 + 2];
      xres[0] -= xres[1] * H[r1 + 2];
      xres[0] /= H[r1 - 1];
      for (ctrVal = 0; ctrVal < 3; ctrVal++) {
        xres[ctrVal] = -xres[ctrVal];
      }

      b_max = xres[2];
      ang2 = xres[1];
      sumX = xres[0];
      if ((fabsf(xres[2]) < 0.5F) && (fabsf(xres[1]) < 0.5F) && (fabsf(xres[0]) <
           0.5F)) {
        i0 = 1;
      }
    }

    keyMatrix[r + 576 * numPoints] = (int8_T)i0;
    grayImage[r + 576 * numPoints] = b_max;
    result_xr[r + 576 * numPoints] = ang2;
    result_xc[r + 576 * numPoints] = sumX;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel86(int32_T
  *filterStep, real32_T *grayImage, struct_T *responseMap, real32_T *result_xr,
  int32_T *step, real32_T *result_xc, int8_T *keyMatrix, struct0_T
  *intPoints_data, int32_T *filter)
{
  uint32_T threadId;
  int32_T r;
  int32_T numPoints;
  int32_T ctrVal;
  int32_T scale;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r = (int32_T)(threadId % 576U);
  numPoints = (int32_T)((threadId - (uint32_T)r) / 576U);
  if ((!(numPoints >= 768)) && (!(r >= 576)) && ((int32_T)keyMatrix[r + 576 *
       numPoints] != 0)) {
    ctrVal = atomicAdd(filter, 1);
    if (ctrVal <= 2000) {
      intPoints_data[ctrVal - 1].x = ((real32_T)numPoints + result_xc[r + 576 *
        numPoints]) * (real32_T)*step;
      intPoints_data[ctrVal - 1].y = ((real32_T)r + result_xr[r + 576 *
        numPoints]) * (real32_T)*step;
      intPoints_data[ctrVal - 1].scale = 0.1333F * ((real32_T)responseMap[7].
        filter + grayImage[r + 576 * numPoints] * (real32_T)*filterStep);
      scale = (int32_T)floor(responseMap[7].width / responseMap[8].width);
      intPoints_data[ctrVal - 1].laplacian = (int32_T)responseMap[7].
        laplacian.data[scale * r + responseMap[7].laplacian.size[0] * (scale *
        numPoints)];
      intPoints_data[ctrVal - 1].orientation = 0.0F;
    }
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel87(struct_T
  *responseMap, int32_T *filterStep, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *step = (int32_T)responseMap[9].step;
    *filterStep = (int32_T)((real32_T)responseMap[8].filter - (real32_T)
      responseMap[7].filter);
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel88(int32_T
  *step, struct_T *responseMap, real32_T *result_xc, real32_T *result_xr,
  real32_T *grayImage, int8_T *keyMatrix)
{
  uint32_T threadId;
  int32_T i0;
  real32_T b_max;
  real32_T ang2;
  real32_T sumX;
  int32_T idx;
  int32_T r1;
  int32_T r2;
  int32_T ctrVal;
  int32_T scale;
  int16_T b_size_t[2];
  int16_T size_b[2];
  int16_T size_m[2];
  int32_T r;
  int32_T numPoints;
  int32_T b_scale;
  real32_T sumY;
  real32_T dD[3];
  int32_T c_scale;
  int32_T d_scale;
  int32_T e_scale;
  int32_T f_scale;
  real32_T H[9];
  real32_T xres[3];
  boolean_T guard1 = false;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r = (int32_T)(threadId % 576U);
  numPoints = (int32_T)((threadId - (uint32_T)r) / 576U);
  if ((!(numPoints >= 768)) && (!(r >= 576))) {
    i0 = 1;
    b_max = 0.0F;
    ang2 = 0.0F;
    sumX = 0.0F;
    idx = (int32_T)floor((responseMap[9].filter + 1.0) / (2.0 * (real_T)*step));
    r1 = responseMap[7].responses.size[1];
    r2 = responseMap[8].responses.size[1];
    for (ctrVal = 0; ctrVal < 2; ctrVal++) {
      size_b[ctrVal] = (int16_T)responseMap[7].responses.size[ctrVal];
      size_m[ctrVal] = (int16_T)responseMap[8].responses.size[ctrVal];
      b_size_t[ctrVal] = (int16_T)responseMap[9].responses.size[ctrVal];
    }

    scale = (int32_T)b_size_t[1];

    /*  Eliminate border pixels */
    if ((r <= idx) || (r >= (int32_T)b_size_t[0] - idx) || (numPoints <= idx) ||
        (numPoints >= (int32_T)b_size_t[1] - idx)) {
      i0 = 0;
    } else {
      /*  Threshold the pixel response */
      b_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      sumY = responseMap[8].responses.data[b_scale * r + responseMap[8].
        responses.size[0] * (b_scale * numPoints)];
      if (responseMap[8].responses.data[b_scale * r + responseMap[8].
          responses.size[0] * (b_scale * numPoints)] < 0.0004F) {
        i0 = 0;
      } else {
        /*  Compare pixel responses within 3x3x3 neighborhood */
        for (ctrVal = 0; ctrVal < 3; ctrVal++) {
          for (idx = 0; idx < 3; idx++) {
            guard1 = false;
            if (responseMap[9].responses.data[((r + ctrVal) + responseMap[9].
                 responses.size[0] * ((numPoints + idx) - 1)) - 1] >= sumY) {
              i0 = 0;
            } else if ((ctrVal - 1 != 0) || (idx - 1 != 0)) {
              b_scale = (int32_T)floor((real_T)r2 / (real_T)scale);
              if (responseMap[8].responses.data[b_scale * ((r + ctrVal) - 1) +
                  responseMap[8].responses.size[0] * (b_scale * ((numPoints +
                     idx) - 1))] >= sumY) {
                i0 = 0;
              } else {
                guard1 = true;
              }
            } else {
              guard1 = true;
            }

            if (guard1) {
              b_scale = (int32_T)floor((real_T)r1 / (real_T)scale);
              if (responseMap[7].responses.data[b_scale * ((r + ctrVal) - 1) +
                  responseMap[7].responses.size[0] * (b_scale * ((numPoints +
                     idx) - 1))] >= sumY) {
                i0 = 0;
              }
            }
          }
        }
      }
    }

    /*  Perform interpolation to determine exact location of the interest point */
    if (i0 != 0) {
      i0 = 0;
      scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      r2 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ctrVal = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      idx = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      dD[0] = (responseMap[8].responses.data[scale * r + responseMap[8].
               responses.size[0] * (scale * (numPoints + 1))] - responseMap[8].
               responses.data[r2 * r + responseMap[8].responses.size[0] * (r2 *
                (numPoints - 1))]) / 2.0F;
      dD[1] = (responseMap[8].responses.data[ctrVal * (r + 1) + responseMap[8].
               responses.size[0] * (ctrVal * numPoints)] - responseMap[8].
               responses.data[idx * (r - 1) + responseMap[8].responses.size[0] *
               (idx * numPoints)]) / 2.0F;
      dD[2] = (responseMap[9].responses.data[r + responseMap[9].responses.size[0]
               * numPoints] - responseMap[7].responses.data[b_scale * r +
               responseMap[7].responses.size[0] * (b_scale * numPoints)]) / 2.0F;
      c_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      d_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      e_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      f_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      r1 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      r2 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ctrVal = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      idx = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ang2 = (((responseMap[8].responses.data[r2 * (r + 1) + responseMap[8].
                responses.size[0] * (r2 * (numPoints + 1))] - responseMap[8].
                responses.data[ctrVal * (r + 1) + responseMap[8].responses.size
                [0] * (ctrVal * (numPoints - 1))]) - responseMap[8].
               responses.data[idx * (r - 1) + responseMap[8].responses.size[0] *
               (idx * (numPoints + 1))]) + responseMap[8].responses.data[b_scale
              * (r - 1) + responseMap[8].responses.size[0] * (b_scale *
               (numPoints - 1))]) / 4.0F;
      idx = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_max = (((responseMap[9].responses.data[r + responseMap[9]
                 .responses.size[0] * (numPoints + 1)] - responseMap[9].
                 responses.data[r + responseMap[9].responses.size[0] *
                 (numPoints - 1)]) - responseMap[7].responses.data[idx * r +
                responseMap[7].responses.size[0] * (idx * (numPoints + 1))]) +
               responseMap[7].responses.data[b_scale * r + responseMap[7].
               responses.size[0] * (b_scale * (numPoints - 1))]) / 4.0F;
      idx = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      sumY = (((responseMap[9].responses.data[(r + responseMap[9]
                 .responses.size[0] * numPoints) + 1] - responseMap[9].
                responses.data[(r + responseMap[9].responses.size[0] * numPoints)
                - 1]) - responseMap[7].responses.data[idx * (r + 1) +
               responseMap[7].responses.size[0] * (idx * numPoints)]) +
              responseMap[7].responses.data[b_scale * (r - 1) + responseMap[7].
              responses.size[0] * (b_scale * numPoints)]) / 4.0F;
      H[0] = (responseMap[8].responses.data[d_scale * r + responseMap[8].
              responses.size[0] * (d_scale * (numPoints + 1))] + responseMap[8].
              responses.data[e_scale * r + responseMap[8].responses.size[0] *
              (e_scale * (numPoints - 1))]) - 2.0F * responseMap[8].
        responses.data[c_scale * r + responseMap[8].responses.size[0] * (c_scale
        * numPoints)];
      H[3] = ang2;
      H[6] = b_max;
      H[1] = ang2;
      H[4] = (responseMap[8].responses.data[f_scale * (r + 1) + responseMap[8].
              responses.size[0] * (f_scale * numPoints)] + responseMap[8].
              responses.data[r1 * (r - 1) + responseMap[8].responses.size[0] *
              (r1 * numPoints)]) - 2.0F * responseMap[8].responses.data[c_scale *
        r + responseMap[8].responses.size[0] * (c_scale * numPoints)];
      H[7] = sumY;
      H[2] = b_max;
      H[5] = sumY;
      H[8] = (responseMap[9].responses.data[r + responseMap[9].responses.size[0]
              * numPoints] + responseMap[7].responses.data[scale * r +
              responseMap[7].responses.size[0] * (scale * numPoints)]) - 2.0F *
        responseMap[8].responses.data[c_scale * r + responseMap[8].
        responses.size[0] * (c_scale * numPoints)];
      r1 = 1;
      r2 = 2;
      ctrVal = 3;
      sumX = fabsf(H[0]);
      sumY = fabsf(ang2);
      if (sumY > sumX) {
        sumX = sumY;
        r1 = 2;
        r2 = 1;
      }

      if (fabsf(b_max) > sumX) {
        r1 = 3;
        r2 = 2;
        ctrVal = 1;
      }

      H[r2 - 1] /= H[r1 - 1];
      H[ctrVal - 1] /= H[r1 - 1];
      H[r2 + 2] -= H[r2 - 1] * H[r1 + 2];
      H[ctrVal + 2] -= H[ctrVal - 1] * H[r1 + 2];
      H[r2 + 5] -= H[r2 - 1] * H[r1 + 5];
      H[ctrVal + 5] -= H[ctrVal - 1] * H[r1 + 5];
      if (fabsf(H[ctrVal + 2]) > fabsf(H[r2 + 2])) {
        idx = r2;
        r2 = ctrVal;
        ctrVal = idx;
      }

      H[ctrVal + 2] /= H[r2 + 2];
      H[ctrVal + 5] -= H[ctrVal + 2] * H[r2 + 5];
      xres[1] = dD[r2 - 1] - dD[r1 - 1] * H[r2 - 1];
      xres[2] = (dD[ctrVal - 1] - dD[r1 - 1] * H[ctrVal - 1]) - xres[1] *
        H[ctrVal + 2];
      xres[2] /= H[ctrVal + 5];
      xres[0] = dD[r1 - 1] - xres[2] * H[r1 + 5];
      xres[1] -= xres[2] * H[r2 + 5];
      xres[1] /= H[r2 + 2];
      xres[0] -= xres[1] * H[r1 + 2];
      xres[0] /= H[r1 - 1];
      for (ctrVal = 0; ctrVal < 3; ctrVal++) {
        xres[ctrVal] = -xres[ctrVal];
      }

      b_max = xres[2];
      ang2 = xres[1];
      sumX = xres[0];
      if ((fabsf(xres[2]) < 0.5F) && (fabsf(xres[1]) < 0.5F) && (fabsf(xres[0]) <
           0.5F)) {
        i0 = 1;
      }
    }

    keyMatrix[r + 576 * numPoints] = (int8_T)i0;
    grayImage[r + 576 * numPoints] = b_max;
    result_xr[r + 576 * numPoints] = ang2;
    result_xc[r + 576 * numPoints] = sumX;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel89(int32_T
  *filterStep, real32_T *grayImage, struct_T *responseMap, real32_T *result_xr,
  int32_T *step, real32_T *result_xc, int8_T *keyMatrix, struct0_T
  *intPoints_data, int32_T *filter)
{
  uint32_T threadId;
  int32_T r;
  int32_T numPoints;
  int32_T ctrVal;
  int32_T scale;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r = (int32_T)(threadId % 576U);
  numPoints = (int32_T)((threadId - (uint32_T)r) / 576U);
  if ((!(numPoints >= 768)) && (!(r >= 576)) && ((int32_T)keyMatrix[r + 576 *
       numPoints] != 0)) {
    ctrVal = atomicAdd(filter, 1);
    if (ctrVal <= 2000) {
      intPoints_data[ctrVal - 1].x = ((real32_T)numPoints + result_xc[r + 576 *
        numPoints]) * (real32_T)*step;
      intPoints_data[ctrVal - 1].y = ((real32_T)r + result_xr[r + 576 *
        numPoints]) * (real32_T)*step;
      intPoints_data[ctrVal - 1].scale = 0.1333F * ((real32_T)responseMap[8].
        filter + grayImage[r + 576 * numPoints] * (real32_T)*filterStep);
      scale = (int32_T)floor(responseMap[8].width / responseMap[9].width);
      intPoints_data[ctrVal - 1].laplacian = (int32_T)responseMap[8].
        laplacian.data[scale * r + responseMap[8].laplacian.size[0] * (scale *
        numPoints)];
      intPoints_data[ctrVal - 1].orientation = 0.0F;
    }
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel9(struct_T
  *responseMap, real_T *inverse_area, real_T *l, real_T *bor)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *bor = (responseMap[1].filter - 1.0) / 2.0;

    /*  border size for this filter */
    *l = responseMap[1].filter / 3.0;

    /*  lobe size for this filter  */
    /*  filter size */
    *inverse_area = 1.0 / (responseMap[1].filter * responseMap[1].filter);
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel90(struct_T
  *responseMap, int32_T *filterStep, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *step = (int32_T)responseMap[10].step;
    *filterStep = (int32_T)((real32_T)responseMap[9].filter - (real32_T)
      responseMap[7].filter);
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel91(int32_T
  *step, struct_T *responseMap, real32_T *result_xc, real32_T *result_xr,
  real32_T *grayImage, int8_T *keyMatrix)
{
  uint32_T threadId;
  int32_T i0;
  real32_T b_max;
  real32_T ang2;
  real32_T sumX;
  int32_T idx;
  int32_T r1;
  int32_T r2;
  int32_T ctrVal;
  int32_T scale;
  int16_T b_size_t[2];
  int16_T size_b[2];
  int16_T size_m[2];
  int32_T r;
  int32_T numPoints;
  int32_T b_scale;
  real32_T sumY;
  real32_T dD[3];
  int32_T c_scale;
  int32_T d_scale;
  int32_T e_scale;
  int32_T f_scale;
  real32_T H[9];
  real32_T xres[3];
  boolean_T guard1 = false;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r = (int32_T)(threadId % 576U);
  numPoints = (int32_T)((threadId - (uint32_T)r) / 576U);
  if ((!(numPoints >= 768)) && (!(r >= 576))) {
    i0 = 1;
    b_max = 0.0F;
    ang2 = 0.0F;
    sumX = 0.0F;
    idx = (int32_T)floor((responseMap[10].filter + 1.0) / (2.0 * (real_T)*step));
    r1 = responseMap[7].responses.size[1];
    r2 = responseMap[9].responses.size[1];
    for (ctrVal = 0; ctrVal < 2; ctrVal++) {
      size_b[ctrVal] = (int16_T)responseMap[7].responses.size[ctrVal];
      size_m[ctrVal] = (int16_T)responseMap[9].responses.size[ctrVal];
      b_size_t[ctrVal] = (int16_T)responseMap[10].responses.size[ctrVal];
    }

    scale = (int32_T)b_size_t[1];

    /*  Eliminate border pixels */
    if ((r <= idx) || (r >= (int32_T)b_size_t[0] - idx) || (numPoints <= idx) ||
        (numPoints >= (int32_T)b_size_t[1] - idx)) {
      i0 = 0;
    } else {
      /*  Threshold the pixel response */
      b_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      sumY = responseMap[9].responses.data[b_scale * r + responseMap[9].
        responses.size[0] * (b_scale * numPoints)];
      if (responseMap[9].responses.data[b_scale * r + responseMap[9].
          responses.size[0] * (b_scale * numPoints)] < 0.0004F) {
        i0 = 0;
      } else {
        /*  Compare pixel responses within 3x3x3 neighborhood */
        for (ctrVal = 0; ctrVal < 3; ctrVal++) {
          for (idx = 0; idx < 3; idx++) {
            guard1 = false;
            if (responseMap[10].responses.data[((r + ctrVal) + responseMap[10].
                 responses.size[0] * ((numPoints + idx) - 1)) - 1] >= sumY) {
              i0 = 0;
            } else if ((ctrVal - 1 != 0) || (idx - 1 != 0)) {
              b_scale = (int32_T)floor((real_T)r2 / (real_T)scale);
              if (responseMap[9].responses.data[b_scale * ((r + ctrVal) - 1) +
                  responseMap[9].responses.size[0] * (b_scale * ((numPoints +
                     idx) - 1))] >= sumY) {
                i0 = 0;
              } else {
                guard1 = true;
              }
            } else {
              guard1 = true;
            }

            if (guard1) {
              b_scale = (int32_T)floor((real_T)r1 / (real_T)scale);
              if (responseMap[7].responses.data[b_scale * ((r + ctrVal) - 1) +
                  responseMap[7].responses.size[0] * (b_scale * ((numPoints +
                     idx) - 1))] >= sumY) {
                i0 = 0;
              }
            }
          }
        }
      }
    }

    /*  Perform interpolation to determine exact location of the interest point */
    if (i0 != 0) {
      i0 = 0;
      scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      r2 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ctrVal = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      idx = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      dD[0] = (responseMap[9].responses.data[scale * r + responseMap[9].
               responses.size[0] * (scale * (numPoints + 1))] - responseMap[9].
               responses.data[r2 * r + responseMap[9].responses.size[0] * (r2 *
                (numPoints - 1))]) / 2.0F;
      dD[1] = (responseMap[9].responses.data[ctrVal * (r + 1) + responseMap[9].
               responses.size[0] * (ctrVal * numPoints)] - responseMap[9].
               responses.data[idx * (r - 1) + responseMap[9].responses.size[0] *
               (idx * numPoints)]) / 2.0F;
      dD[2] = (responseMap[10].responses.data[r + responseMap[10]
               .responses.size[0] * numPoints] - responseMap[7]
               .responses.data[b_scale * r + responseMap[7].responses.size[0] *
               (b_scale * numPoints)]) / 2.0F;
      c_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      d_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      e_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      f_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      r1 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      r2 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ctrVal = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      idx = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ang2 = (((responseMap[9].responses.data[r2 * (r + 1) + responseMap[9].
                responses.size[0] * (r2 * (numPoints + 1))] - responseMap[9].
                responses.data[ctrVal * (r + 1) + responseMap[9].responses.size
                [0] * (ctrVal * (numPoints - 1))]) - responseMap[9].
               responses.data[idx * (r - 1) + responseMap[9].responses.size[0] *
               (idx * (numPoints + 1))]) + responseMap[9].responses.data[b_scale
              * (r - 1) + responseMap[9].responses.size[0] * (b_scale *
               (numPoints - 1))]) / 4.0F;
      idx = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_max = (((responseMap[10].responses.data[r + responseMap[10].
                 responses.size[0] * (numPoints + 1)] - responseMap[10].
                 responses.data[r + responseMap[10].responses.size[0] *
                 (numPoints - 1)]) - responseMap[7].responses.data[idx * r +
                responseMap[7].responses.size[0] * (idx * (numPoints + 1))]) +
               responseMap[7].responses.data[b_scale * r + responseMap[7].
               responses.size[0] * (b_scale * (numPoints - 1))]) / 4.0F;
      idx = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      sumY = (((responseMap[10].responses.data[(r + responseMap[10].
                 responses.size[0] * numPoints) + 1] - responseMap[10].
                responses.data[(r + responseMap[10].responses.size[0] *
                 numPoints) - 1]) - responseMap[7].responses.data[idx * (r + 1)
               + responseMap[7].responses.size[0] * (idx * numPoints)]) +
              responseMap[7].responses.data[b_scale * (r - 1) + responseMap[7].
              responses.size[0] * (b_scale * numPoints)]) / 4.0F;
      H[0] = (responseMap[9].responses.data[d_scale * r + responseMap[9].
              responses.size[0] * (d_scale * (numPoints + 1))] + responseMap[9].
              responses.data[e_scale * r + responseMap[9].responses.size[0] *
              (e_scale * (numPoints - 1))]) - 2.0F * responseMap[9].
        responses.data[c_scale * r + responseMap[9].responses.size[0] * (c_scale
        * numPoints)];
      H[3] = ang2;
      H[6] = b_max;
      H[1] = ang2;
      H[4] = (responseMap[9].responses.data[f_scale * (r + 1) + responseMap[9].
              responses.size[0] * (f_scale * numPoints)] + responseMap[9].
              responses.data[r1 * (r - 1) + responseMap[9].responses.size[0] *
              (r1 * numPoints)]) - 2.0F * responseMap[9].responses.data[c_scale *
        r + responseMap[9].responses.size[0] * (c_scale * numPoints)];
      H[7] = sumY;
      H[2] = b_max;
      H[5] = sumY;
      H[8] = (responseMap[10].responses.data[r + responseMap[10].responses.size
              [0] * numPoints] + responseMap[7].responses.data[scale * r +
              responseMap[7].responses.size[0] * (scale * numPoints)]) - 2.0F *
        responseMap[9].responses.data[c_scale * r + responseMap[9].
        responses.size[0] * (c_scale * numPoints)];
      r1 = 1;
      r2 = 2;
      ctrVal = 3;
      sumX = fabsf(H[0]);
      sumY = fabsf(ang2);
      if (sumY > sumX) {
        sumX = sumY;
        r1 = 2;
        r2 = 1;
      }

      if (fabsf(b_max) > sumX) {
        r1 = 3;
        r2 = 2;
        ctrVal = 1;
      }

      H[r2 - 1] /= H[r1 - 1];
      H[ctrVal - 1] /= H[r1 - 1];
      H[r2 + 2] -= H[r2 - 1] * H[r1 + 2];
      H[ctrVal + 2] -= H[ctrVal - 1] * H[r1 + 2];
      H[r2 + 5] -= H[r2 - 1] * H[r1 + 5];
      H[ctrVal + 5] -= H[ctrVal - 1] * H[r1 + 5];
      if (fabsf(H[ctrVal + 2]) > fabsf(H[r2 + 2])) {
        idx = r2;
        r2 = ctrVal;
        ctrVal = idx;
      }

      H[ctrVal + 2] /= H[r2 + 2];
      H[ctrVal + 5] -= H[ctrVal + 2] * H[r2 + 5];
      xres[1] = dD[r2 - 1] - dD[r1 - 1] * H[r2 - 1];
      xres[2] = (dD[ctrVal - 1] - dD[r1 - 1] * H[ctrVal - 1]) - xres[1] *
        H[ctrVal + 2];
      xres[2] /= H[ctrVal + 5];
      xres[0] = dD[r1 - 1] - xres[2] * H[r1 + 5];
      xres[1] -= xres[2] * H[r2 + 5];
      xres[1] /= H[r2 + 2];
      xres[0] -= xres[1] * H[r1 + 2];
      xres[0] /= H[r1 - 1];
      for (ctrVal = 0; ctrVal < 3; ctrVal++) {
        xres[ctrVal] = -xres[ctrVal];
      }

      b_max = xres[2];
      ang2 = xres[1];
      sumX = xres[0];
      if ((fabsf(xres[2]) < 0.5F) && (fabsf(xres[1]) < 0.5F) && (fabsf(xres[0]) <
           0.5F)) {
        i0 = 1;
      }
    }

    keyMatrix[r + 576 * numPoints] = (int8_T)i0;
    grayImage[r + 576 * numPoints] = b_max;
    result_xr[r + 576 * numPoints] = ang2;
    result_xc[r + 576 * numPoints] = sumX;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel92(int32_T
  *filterStep, real32_T *grayImage, struct_T *responseMap, real32_T *result_xr,
  int32_T *step, real32_T *result_xc, int8_T *keyMatrix, struct0_T
  *intPoints_data, int32_T *filter)
{
  uint32_T threadId;
  int32_T r;
  int32_T numPoints;
  int32_T ctrVal;
  int32_T scale;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r = (int32_T)(threadId % 576U);
  numPoints = (int32_T)((threadId - (uint32_T)r) / 576U);
  if ((!(numPoints >= 768)) && (!(r >= 576)) && ((int32_T)keyMatrix[r + 576 *
       numPoints] != 0)) {
    ctrVal = atomicAdd(filter, 1);
    if (ctrVal <= 2000) {
      intPoints_data[ctrVal - 1].x = ((real32_T)numPoints + result_xc[r + 576 *
        numPoints]) * (real32_T)*step;
      intPoints_data[ctrVal - 1].y = ((real32_T)r + result_xr[r + 576 *
        numPoints]) * (real32_T)*step;
      intPoints_data[ctrVal - 1].scale = 0.1333F * ((real32_T)responseMap[9].
        filter + grayImage[r + 576 * numPoints] * (real32_T)*filterStep);
      scale = (int32_T)floor(responseMap[9].width / responseMap[10].width);
      intPoints_data[ctrVal - 1].laplacian = (int32_T)responseMap[9].
        laplacian.data[scale * r + responseMap[9].laplacian.size[0] * (scale *
        numPoints)];
      intPoints_data[ctrVal - 1].orientation = 0.0F;
    }
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel93(struct_T
  *responseMap, int32_T *filterStep, int32_T *step)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    *step = (int32_T)responseMap[11].step;
    *filterStep = (int32_T)((real32_T)responseMap[10].filter - (real32_T)
      responseMap[9].filter);
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel94(int32_T
  *step, struct_T *responseMap, real32_T *result_xc, real32_T *result_xr,
  real32_T *grayImage, int8_T *keyMatrix)
{
  uint32_T threadId;
  int32_T i0;
  real32_T b_max;
  real32_T ang2;
  real32_T sumX;
  int32_T idx;
  int32_T r1;
  int32_T r2;
  int32_T ctrVal;
  int32_T scale;
  int16_T b_size_t[2];
  int16_T size_b[2];
  int16_T size_m[2];
  int32_T r;
  int32_T numPoints;
  int32_T b_scale;
  real32_T sumY;
  real32_T dD[3];
  int32_T c_scale;
  int32_T d_scale;
  int32_T e_scale;
  int32_T f_scale;
  real32_T H[9];
  real32_T xres[3];
  boolean_T guard1 = false;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r = (int32_T)(threadId % 576U);
  numPoints = (int32_T)((threadId - (uint32_T)r) / 576U);
  if ((!(numPoints >= 768)) && (!(r >= 576))) {
    i0 = 1;
    b_max = 0.0F;
    ang2 = 0.0F;
    sumX = 0.0F;
    idx = (int32_T)floor((responseMap[11].filter + 1.0) / (2.0 * (real_T)*step));
    r1 = responseMap[9].responses.size[1];
    r2 = responseMap[10].responses.size[1];
    for (ctrVal = 0; ctrVal < 2; ctrVal++) {
      size_b[ctrVal] = (int16_T)responseMap[9].responses.size[ctrVal];
      size_m[ctrVal] = (int16_T)responseMap[10].responses.size[ctrVal];
      b_size_t[ctrVal] = (int16_T)responseMap[11].responses.size[ctrVal];
    }

    scale = (int32_T)b_size_t[1];

    /*  Eliminate border pixels */
    if ((r <= idx) || (r >= (int32_T)b_size_t[0] - idx) || (numPoints <= idx) ||
        (numPoints >= (int32_T)b_size_t[1] - idx)) {
      i0 = 0;
    } else {
      /*  Threshold the pixel response */
      b_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      sumY = responseMap[10].responses.data[b_scale * r + responseMap[10].
        responses.size[0] * (b_scale * numPoints)];
      if (responseMap[10].responses.data[b_scale * r + responseMap[10].
          responses.size[0] * (b_scale * numPoints)] < 0.0004F) {
        i0 = 0;
      } else {
        /*  Compare pixel responses within 3x3x3 neighborhood */
        for (ctrVal = 0; ctrVal < 3; ctrVal++) {
          for (idx = 0; idx < 3; idx++) {
            guard1 = false;
            if (responseMap[11].responses.data[((r + ctrVal) + responseMap[11].
                 responses.size[0] * ((numPoints + idx) - 1)) - 1] >= sumY) {
              i0 = 0;
            } else if ((ctrVal - 1 != 0) || (idx - 1 != 0)) {
              b_scale = (int32_T)floor((real_T)r2 / (real_T)scale);
              if (responseMap[10].responses.data[b_scale * ((r + ctrVal) - 1) +
                  responseMap[10].responses.size[0] * (b_scale * ((numPoints +
                     idx) - 1))] >= sumY) {
                i0 = 0;
              } else {
                guard1 = true;
              }
            } else {
              guard1 = true;
            }

            if (guard1) {
              b_scale = (int32_T)floor((real_T)r1 / (real_T)scale);
              if (responseMap[9].responses.data[b_scale * ((r + ctrVal) - 1) +
                  responseMap[9].responses.size[0] * (b_scale * ((numPoints +
                     idx) - 1))] >= sumY) {
                i0 = 0;
              }
            }
          }
        }
      }
    }

    /*  Perform interpolation to determine exact location of the interest point */
    if (i0 != 0) {
      i0 = 0;
      scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      r2 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ctrVal = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      idx = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      dD[0] = (responseMap[10].responses.data[scale * r + responseMap[10].
               responses.size[0] * (scale * (numPoints + 1))] - responseMap[10].
               responses.data[r2 * r + responseMap[10].responses.size[0] * (r2 *
                (numPoints - 1))]) / 2.0F;
      dD[1] = (responseMap[10].responses.data[ctrVal * (r + 1) + responseMap[10]
               .responses.size[0] * (ctrVal * numPoints)] - responseMap[10].
               responses.data[idx * (r - 1) + responseMap[10].responses.size[0] *
               (idx * numPoints)]) / 2.0F;
      dD[2] = (responseMap[11].responses.data[r + responseMap[11]
               .responses.size[0] * numPoints] - responseMap[9]
               .responses.data[b_scale * r + responseMap[9].responses.size[0] *
               (b_scale * numPoints)]) / 2.0F;
      c_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      d_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      e_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      f_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      r1 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      r2 = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ctrVal = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      idx = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_m[1] / (real_T)b_size_t[1]);
      ang2 = (((responseMap[10].responses.data[r2 * (r + 1) + responseMap[10].
                responses.size[0] * (r2 * (numPoints + 1))] - responseMap[10].
                responses.data[ctrVal * (r + 1) + responseMap[10]
                .responses.size[0] * (ctrVal * (numPoints - 1))]) - responseMap
               [10].responses.data[idx * (r - 1) + responseMap[10].
               responses.size[0] * (idx * (numPoints + 1))]) + responseMap[10].
              responses.data[b_scale * (r - 1) + responseMap[10].responses.size
              [0] * (b_scale * (numPoints - 1))]) / 4.0F;
      idx = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_max = (((responseMap[11].responses.data[r + responseMap[11].
                 responses.size[0] * (numPoints + 1)] - responseMap[11].
                 responses.data[r + responseMap[11].responses.size[0] *
                 (numPoints - 1)]) - responseMap[9].responses.data[idx * r +
                responseMap[9].responses.size[0] * (idx * (numPoints + 1))]) +
               responseMap[9].responses.data[b_scale * r + responseMap[9].
               responses.size[0] * (b_scale * (numPoints - 1))]) / 4.0F;
      idx = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      b_scale = (int32_T)floor((real_T)size_b[1] / (real_T)b_size_t[1]);
      sumY = (((responseMap[11].responses.data[(r + responseMap[11].
                 responses.size[0] * numPoints) + 1] - responseMap[11].
                responses.data[(r + responseMap[11].responses.size[0] *
                 numPoints) - 1]) - responseMap[9].responses.data[idx * (r + 1)
               + responseMap[9].responses.size[0] * (idx * numPoints)]) +
              responseMap[9].responses.data[b_scale * (r - 1) + responseMap[9].
              responses.size[0] * (b_scale * numPoints)]) / 4.0F;
      H[0] = (responseMap[10].responses.data[d_scale * r + responseMap[10].
              responses.size[0] * (d_scale * (numPoints + 1))] + responseMap[10]
              .responses.data[e_scale * r + responseMap[10].responses.size[0] *
              (e_scale * (numPoints - 1))]) - 2.0F * responseMap[10].
        responses.data[c_scale * r + responseMap[10].responses.size[0] *
        (c_scale * numPoints)];
      H[3] = ang2;
      H[6] = b_max;
      H[1] = ang2;
      H[4] = (responseMap[10].responses.data[f_scale * (r + 1) + responseMap[10]
              .responses.size[0] * (f_scale * numPoints)] + responseMap[10].
              responses.data[r1 * (r - 1) + responseMap[10].responses.size[0] *
              (r1 * numPoints)]) - 2.0F * responseMap[10].responses.data[c_scale
        * r + responseMap[10].responses.size[0] * (c_scale * numPoints)];
      H[7] = sumY;
      H[2] = b_max;
      H[5] = sumY;
      H[8] = (responseMap[11].responses.data[r + responseMap[11].responses.size
              [0] * numPoints] + responseMap[9].responses.data[scale * r +
              responseMap[9].responses.size[0] * (scale * numPoints)]) - 2.0F *
        responseMap[10].responses.data[c_scale * r + responseMap[10].
        responses.size[0] * (c_scale * numPoints)];
      r1 = 1;
      r2 = 2;
      ctrVal = 3;
      sumX = fabsf(H[0]);
      sumY = fabsf(ang2);
      if (sumY > sumX) {
        sumX = sumY;
        r1 = 2;
        r2 = 1;
      }

      if (fabsf(b_max) > sumX) {
        r1 = 3;
        r2 = 2;
        ctrVal = 1;
      }

      H[r2 - 1] /= H[r1 - 1];
      H[ctrVal - 1] /= H[r1 - 1];
      H[r2 + 2] -= H[r2 - 1] * H[r1 + 2];
      H[ctrVal + 2] -= H[ctrVal - 1] * H[r1 + 2];
      H[r2 + 5] -= H[r2 - 1] * H[r1 + 5];
      H[ctrVal + 5] -= H[ctrVal - 1] * H[r1 + 5];
      if (fabsf(H[ctrVal + 2]) > fabsf(H[r2 + 2])) {
        idx = r2;
        r2 = ctrVal;
        ctrVal = idx;
      }

      H[ctrVal + 2] /= H[r2 + 2];
      H[ctrVal + 5] -= H[ctrVal + 2] * H[r2 + 5];
      xres[1] = dD[r2 - 1] - dD[r1 - 1] * H[r2 - 1];
      xres[2] = (dD[ctrVal - 1] - dD[r1 - 1] * H[ctrVal - 1]) - xres[1] *
        H[ctrVal + 2];
      xres[2] /= H[ctrVal + 5];
      xres[0] = dD[r1 - 1] - xres[2] * H[r1 + 5];
      xres[1] -= xres[2] * H[r2 + 5];
      xres[1] /= H[r2 + 2];
      xres[0] -= xres[1] * H[r1 + 2];
      xres[0] /= H[r1 - 1];
      for (ctrVal = 0; ctrVal < 3; ctrVal++) {
        xres[ctrVal] = -xres[ctrVal];
      }

      b_max = xres[2];
      ang2 = xres[1];
      sumX = xres[0];
      if ((fabsf(xres[2]) < 0.5F) && (fabsf(xres[1]) < 0.5F) && (fabsf(xres[0]) <
           0.5F)) {
        i0 = 1;
      }
    }

    keyMatrix[r + 576 * numPoints] = (int8_T)i0;
    grayImage[r + 576 * numPoints] = b_max;
    result_xr[r + 576 * numPoints] = ang2;
    result_xc[r + 576 * numPoints] = sumX;
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel95(int32_T
  *filterStep, real32_T *grayImage, struct_T *responseMap, real32_T *result_xr,
  int32_T *step, real32_T *result_xc, int8_T *keyMatrix, struct0_T
  *intPoints_data, int32_T *filter)
{
  uint32_T threadId;
  int32_T r;
  int32_T numPoints;
  int32_T ctrVal;
  int32_T scale;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  r = (int32_T)(threadId % 576U);
  numPoints = (int32_T)((threadId - (uint32_T)r) / 576U);
  if ((!(numPoints >= 768)) && (!(r >= 576)) && ((int32_T)keyMatrix[r + 576 *
       numPoints] != 0)) {
    ctrVal = atomicAdd(filter, 1);
    if (ctrVal <= 2000) {
      intPoints_data[ctrVal - 1].x = ((real32_T)numPoints + result_xc[r + 576 *
        numPoints]) * (real32_T)*step;
      intPoints_data[ctrVal - 1].y = ((real32_T)r + result_xr[r + 576 *
        numPoints]) * (real32_T)*step;
      intPoints_data[ctrVal - 1].scale = 0.1333F * ((real32_T)responseMap[10].
        filter + grayImage[r + 576 * numPoints] * (real32_T)*filterStep);
      scale = (int32_T)floor(responseMap[10].width / responseMap[11].width);
      intPoints_data[ctrVal - 1].laplacian = (int32_T)responseMap[10].
        laplacian.data[scale * r + responseMap[10].laplacian.size[0] * (scale *
        numPoints)];
      intPoints_data[ctrVal - 1].orientation = 0.0F;
    }
  }
}

static __global__ __launch_bounds__(1024, 1) void SurfDetect_kernel96(struct0_T *
  intPoints_data, int32_T numPoints, struct0_T *b_intPoints_data)
{
  uint32_T threadId;
  uint32_T threadStride;
  uint32_T idx;
  int32_T ctrVal;
  int64_T loopEnd;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  threadStride = (uint32_T)mwGetTotalThreadsLaunched();
  loopEnd = (int64_T)(numPoints - 1);
  for (idx = threadId; threadStride < 0U ? idx >= (uint32_T)loopEnd : idx <=
       (uint32_T)loopEnd; idx += threadStride) {
    ctrVal = (int32_T)idx;
    b_intPoints_data[ctrVal] = intPoints_data[ctrVal];
  }
}

static __global__ __launch_bounds__(32, 1) void SurfDetect_kernel97(int32_T
  *intPoints_size, int32_T *b_intPoints_size)
{
  uint32_T threadId;
  int32_T tmpIdx;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  tmpIdx = (int32_T)threadId;
  if (!(tmpIdx >= 1)) {
    b_intPoints_size[0] = 1;
    b_intPoints_size[1] = intPoints_size[1];
  }
}

static __global__ __launch_bounds__(1024, 1) void SurfDetect_kernel98(struct0_T *
  intPoints_data, int32_T *intPoints_size, struct0_T *b_intPoints_data)
{
  uint32_T threadId;
  uint32_T threadStride;
  uint32_T idx;
  int32_T ctrVal;
  int64_T loopEnd;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  threadStride = (uint32_T)mwGetTotalThreadsLaunched();
  loopEnd = (int64_T)(intPoints_size[1] - 1);
  for (idx = threadId; threadStride < 0U ? idx >= (uint32_T)loopEnd : idx <=
       (uint32_T)loopEnd; idx += threadStride) {
    ctrVal = (int32_T)idx;
    b_intPoints_data[ctrVal] = intPoints_data[ctrVal];
  }
}

static __global__ __launch_bounds__(512, 1) void SurfDetect_kernel99(const
  real_T *gauss25, const int8_T *iv0, real32_T *intImage, int32_T numPoints,
  struct0_T *intPoints_data, c_SurfDetect_kernel99_StackData *globalStackData)
{
  uint32_T threadId;
  int32_T r2;
  real32_T orient;
  real32_T b_max;
  real32_T ang2;
  real32_T sumX;
  int32_T idx;
  int32_T ctrVal;
  int32_T scale;
  real32_T C;
  real_T col;
  real_T column;
  real_T s;
  real_T c2;
  real32_T sumY;
  real_T row;
  real_T r1;
  real_T c1;
  real_T b_r2;
  real32_T A;
  real32_T B;
  real32_T result;
  c_SurfDetect_kernel99_StackData *mallocPtr;
  threadId = (uint32_T)mwGetGlobalThreadIndex();
  mallocPtr = globalStackData + threadId;
  r2 = (int32_T)threadId;
  if ((!(r2 >= 2000)) && (r2 <= numPoints)) {
    /*  Calculate orientation for a given interest point */
    orient = 0.0F;
    b_max = floorf(intPoints_data[r2].scale + 0.5F);
    ang2 = floorf(intPoints_data[r2].y + 0.5F);
    sumX = floorf(intPoints_data[r2].x + 0.5F);
    idx = 0;
    for (ctrVal = 0; ctrVal < 109; ctrVal++) {
      mallocPtr->resX_1[ctrVal] = 0.0;
      mallocPtr->resY_2[ctrVal] = 0.0;
      mallocPtr->Ang_3[ctrVal] = 0.0;
    }

    /*  calculate haar wavelet responses for points within radius of 6*scale */
    for (scale = 0; scale < 13; scale++) {
      for (ctrVal = 0; ctrVal < 13; ctrVal++) {
        if ((scale - 6) * (scale - 6) + (ctrVal - 6) * (ctrVal - 6) < 36) {
          col = (real_T)ang2 + (-6.0 + (real_T)ctrVal) * (real_T)b_max;
          column = (real_T)sumX + (-6.0 + (real_T)scale) * (real_T)b_max;
          s = 4.0 * (real_T)b_max;
          c2 = s / 2.0;
          row = col - s / 2.0;

          /*    Copyright 2017 The MathWorks, Inc. */
          /*  Image dimensions */
          /*  Handle border cases for integral sum calculation */
          if (row <= 576.0) {
            r1 = row - 1.0;
          } else {
            r1 = 575.0;
          }

          if (column <= 768.0) {
            c1 = column - 1.0;
          } else {
            c1 = 767.0;
          }

          if (row + s <= 576.0) {
            b_r2 = (row + s) - 1.0;
          } else {
            b_r2 = 575.0;
          }

          if (column + c2 <= 768.0) {
            c2 = (column + c2) - 1.0;
          } else {
            c2 = 767.0;
          }

          /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
          A = 0.0F;
          B = 0.0F;
          C = 0.0F;
          sumY = 0.0F;
          if ((r1 >= 0.0) && (c1 >= 0.0)) {
            A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
          }

          if ((r1 >= 0.0) && (c2 >= 0.0)) {
            B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
          }

          if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
            C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
          }

          if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
            sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
          }

          /*  Compute sum of pixels within the rectangular region */
          sumY += (A - B) - C;
          if (0.0F >= sumY) {
            result = 0.0F;
          } else {
            result = sumY;
          }

          /* End of BoxIntegral */
          c2 = s / 2.0;
          row = col - s / 2.0;
          col = column - s / 2.0;

          /*    Copyright 2017 The MathWorks, Inc. */
          /*  Image dimensions */
          /*  Handle border cases for integral sum calculation */
          if (row <= 576.0) {
            r1 = row - 1.0;
          } else {
            r1 = 575.0;
          }

          if (col <= 768.0) {
            c1 = col - 1.0;
          } else {
            c1 = 767.0;
          }

          if (row + s <= 576.0) {
            b_r2 = (row + s) - 1.0;
          } else {
            b_r2 = 575.0;
          }

          if (col + c2 <= 768.0) {
            c2 = (col + c2) - 1.0;
          } else {
            c2 = 767.0;
          }

          /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
          A = 0.0F;
          B = 0.0F;
          C = 0.0F;
          sumY = 0.0F;
          if ((r1 >= 0.0) && (c1 >= 0.0)) {
            A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
          }

          if ((r1 >= 0.0) && (c2 >= 0.0)) {
            B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
          }

          if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
            C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
          }

          if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
            sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
          }

          /*  Compute sum of pixels within the rectangular region */
          sumY += (A - B) - C;
          if (0.0F >= sumY) {
            sumY = 0.0F;
          }

          /* End of BoxIntegral */
          mallocPtr->resX_1[idx] = (real_T)((real32_T)gauss25[(int32_T)iv0[scale]
            + 7 * (int32_T)iv0[ctrVal]] * (result - sumY));
          row = (real_T)ang2 + (-6.0 + (real_T)ctrVal) * (real_T)b_max;
          column = (real_T)sumX + (-6.0 + (real_T)scale) * (real_T)b_max;
          s = 4.0 * (real_T)b_max;
          c2 = s / 2.0;
          col = column - s / 2.0;

          /*    Copyright 2017 The MathWorks, Inc. */
          /*  Image dimensions */
          /*  Handle border cases for integral sum calculation */
          if (row <= 576.0) {
            r1 = row - 1.0;
          } else {
            r1 = 575.0;
          }

          if (col <= 768.0) {
            c1 = col - 1.0;
          } else {
            c1 = 767.0;
          }

          if (row + c2 <= 576.0) {
            b_r2 = (row + c2) - 1.0;
          } else {
            b_r2 = 575.0;
          }

          if (col + s <= 768.0) {
            c2 = (col + s) - 1.0;
          } else {
            c2 = 767.0;
          }

          /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
          A = 0.0F;
          B = 0.0F;
          C = 0.0F;
          sumY = 0.0F;
          if ((r1 >= 0.0) && (c1 >= 0.0)) {
            A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
          }

          if ((r1 >= 0.0) && (c2 >= 0.0)) {
            B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
          }

          if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
            C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
          }

          if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
            sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
          }

          /*  Compute sum of pixels within the rectangular region */
          sumY += (A - B) - C;
          if (0.0F >= sumY) {
            result = 0.0F;
          } else {
            result = sumY;
          }

          /* End of BoxIntegral */
          c2 = s / 2.0;
          row -= s / 2.0;
          col = column - s / 2.0;

          /*    Copyright 2017 The MathWorks, Inc. */
          /*  Image dimensions */
          /*  Handle border cases for integral sum calculation */
          if (row <= 576.0) {
            r1 = row - 1.0;
          } else {
            r1 = 575.0;
          }

          if (col <= 768.0) {
            c1 = col - 1.0;
          } else {
            c1 = 767.0;
          }

          if (row + c2 <= 576.0) {
            b_r2 = (row + c2) - 1.0;
          } else {
            b_r2 = 575.0;
          }

          if (col + s <= 768.0) {
            c2 = (col + s) - 1.0;
          } else {
            c2 = 767.0;
          }

          /*  Compute A, B, C, D (corner coordinates of the rectangular region) */
          A = 0.0F;
          B = 0.0F;
          C = 0.0F;
          sumY = 0.0F;
          if ((r1 >= 0.0) && (c1 >= 0.0)) {
            A = intImage[(int32_T)((c1 * 576.0 + r1) + 1.0) - 1];
          }

          if ((r1 >= 0.0) && (c2 >= 0.0)) {
            B = intImage[(int32_T)((c2 * 576.0 + r1) + 1.0) - 1];
          }

          if ((b_r2 >= 0.0) && (c1 >= 0.0)) {
            C = intImage[(int32_T)((c1 * 576.0 + b_r2) + 1.0) - 1];
          }

          if ((b_r2 >= 0.0) && (c2 >= 0.0)) {
            sumY = intImage[(int32_T)((c2 * 576.0 + b_r2) + 1.0) - 1];
          }

          /*  Compute sum of pixels within the rectangular region */
          sumY += (A - B) - C;
          if (0.0F >= sumY) {
            sumY = 0.0F;
          }

          /* End of BoxIntegral */
          mallocPtr->resY_2[idx] = (real_T)((real32_T)gauss25[(int32_T)iv0[scale]
            + 7 * (int32_T)iv0[ctrVal]] * (result - sumY));
          if ((mallocPtr->resX_1[idx] > 0.0) && (mallocPtr->resY_2[idx] >= 0.0))
          {
            sumY = (real32_T)atan(mallocPtr->resY_2[idx] / mallocPtr->resX_1[idx]);
          } else if ((mallocPtr->resX_1[idx] < 0.0) && (mallocPtr->resY_2[idx] >=
                      0.0)) {
            sumY = (real32_T)(3.1415926535897931 - atan(-mallocPtr->resY_2[idx] /
              mallocPtr->resX_1[idx]));
          } else if ((mallocPtr->resX_1[idx] < 0.0) && (mallocPtr->resY_2[idx] <
                      0.0)) {
            sumY = (real32_T)(3.1415926535897931 + atan(mallocPtr->resY_2[idx] /
              mallocPtr->resX_1[idx]));
          } else if ((mallocPtr->resX_1[idx] > 0.0) && (mallocPtr->resY_2[idx] <
                      0.0)) {
            sumY = (real32_T)(6.2831853071795862 - atan(-mallocPtr->resY_2[idx] /
              mallocPtr->resX_1[idx]));
          } else {
            sumY = 0.0F;
          }

          mallocPtr->Ang_3[idx] = (real_T)sumY;
          idx++;
        }
      }
    }

    /*  Calculate the dominant direction by rotating a pi/3 sector window around interest point */
    C = 0.0F;
    b_max = 0.0F;
    while ((real_T)C < 6.2831853071795862) {
      if ((real_T)(C + 1.04719758F) > 6.2831853071795862) {
        ang2 = C - 5.23598814F;
      } else {
        ang2 = C + 1.04719758F;
      }

      sumX = 0.0F;
      sumY = 0.0F;
      for (ctrVal = 0; ctrVal < 109; ctrVal++) {
        /*   get angle of the interest point */
        /*  determine whether the point is within the window */
        if ((C < ang2) && ((real_T)C < mallocPtr->Ang_3[ctrVal]) &&
            (mallocPtr->Ang_3[ctrVal] < (real_T)ang2)) {
          sumX += (real32_T)mallocPtr->resX_1[ctrVal];
          sumY += (real32_T)mallocPtr->resY_2[ctrVal];
        } else {
          if ((ang2 < C) && (((mallocPtr->Ang_3[ctrVal] > 0.0) &&
                              (mallocPtr->Ang_3[ctrVal] < (real_T)ang2)) ||
                             ((mallocPtr->Ang_3[ctrVal] > (real_T)C) &&
                              (mallocPtr->Ang_3[ctrVal] < 6.2831853071795862))))
          {
            sumX += (real32_T)mallocPtr->resX_1[ctrVal];
            sumY += (real32_T)mallocPtr->resY_2[ctrVal];
          }
        }
      }

      /*  if the vector produced from this window is longer than all previous vectors then this forms the new dominant direction */
      if (sumX * sumX + sumY * sumY > b_max) {
        /*  store largest orientation */
        b_max = sumX * sumX + sumY * sumY;
        if ((sumX > 0.0F) && (sumY >= 0.0F)) {
          orient = atanf(sumY / sumX);
        } else if ((sumX < 0.0F) && (sumY >= 0.0F)) {
          orient = 3.14159274F - atanf(-sumY / sumX);
        } else if ((sumX < 0.0F) && (sumY < 0.0F)) {
          orient = 3.14159274F + atanf(sumY / sumX);
        } else if ((sumX > 0.0F) && (sumY < 0.0F)) {
          orient = 6.28318548F - atanf(-sumY / sumX);
        } else {
          orient = 0.0F;
        }
      }

      C += 0.15F;
    }

    intPoints_data[r2].orientation = orient;
  }
}

void SurfDetect(SurfDetectStackData *SD, const uint8_T inputImage[442368],
                struct0_T intPoints_data[], int32_T intPoints_size[2])
{
  int32_T numPoints;
  int32_T filter;
  static const struct0_T r0 = { 0.0F,  /* x */
    0.0F,                              /* y */
    0.0F,                              /* scale */
    0.0F,                              /* orientation */
    0                                  /* laplacian */
  };

  int32_T b_intPoints_size[2];
  static const real_T gauss25[49] = { 0.02546481, 0.02350698, 0.01849125,
    0.01239505, 0.00708017, 0.00344629, 0.00142946, 0.02350698, 0.02169968,
    0.01706957, 0.01144208, 0.00653582, 0.00318132, 0.00131956, 0.01849125,
    0.01706957, 0.0134274, 0.00900066, 0.00514126, 0.00250252, 0.001038,
    0.01239505, 0.01144208, 0.00900066, 0.00603332, 0.00344629, 0.00167749,
    0.00069579, 0.00708017, 0.00653582, 0.00514126, 0.00344629, 0.00196855,
    0.0009582, 0.00039744, 0.00344629, 0.00318132, 0.00250252, 0.00167749,
    0.0009582, 0.0004664, 0.00019346, 0.00142946, 0.00131956, 0.001038,
    0.00069579, 0.00039744, 0.00019346, 8.024E-5 };

  static const int8_T iv0[13] = { 6, 5, 4, 3, 2, 1, 0, 1, 2, 3, 4, 5, 6 };

  uint8_T *gpu_inputImage;
  real32_T *gpu_grayImage;
  real32_T *gpu_intImage;
  struct_T *gpu_responseMap;
  real_T *gpu_inverse_area;
  real_T *gpu_l;
  real_T *gpu_bor;
  real32_T *gpu_respMatrix;
  int32_T *gpu_step;
  int32_T *gpu_filter;
  int8_T *gpu_lapMatrix;
  int8_T *b_gpu_lapMatrix;
  real32_T *b_gpu_respMatrix;
  int8_T *c_gpu_lapMatrix;
  real32_T *c_gpu_respMatrix;
  int8_T *d_gpu_lapMatrix;
  real32_T *d_gpu_respMatrix;
  int8_T *e_gpu_lapMatrix;
  real32_T *e_gpu_respMatrix;
  struct0_T *gpu_s;
  int32_T *gpu_intPoints_size;
  struct0_T *gpu_intPoints_data;
  int32_T *gpu_filterStep;
  real32_T *gpu_result_xc;
  real32_T *gpu_result_xr;
  int8_T *gpu_keyMatrix;
  dim3 grid;
  dim3 block;
  boolean_T validLaunchParams;
  struct0_T *b_gpu_intPoints_data;
  int32_T *b_gpu_intPoints_size;
  dim3 b_grid;
  dim3 b_block;
  boolean_T b_validLaunchParams;
  real_T *gpu_gauss25;
  int8_T *gpu_iv0;
  boolean_T intPoints_size_dirtyOnGpu;
  c_SurfDetect_kernel99_StackData *SurfDetect_kernel99_StackData;
  cudaMalloc(&gpu_iv0, 13ULL);
  cudaMalloc(&gpu_gauss25, 392ULL);
  cudaMalloc(&b_gpu_intPoints_data, 2000U * sizeof(struct0_T));
  cudaMalloc(&b_gpu_intPoints_size, 8ULL);
  cudaMalloc(&gpu_keyMatrix, 442368ULL);
  cudaMalloc(&gpu_result_xr, 1769472ULL);
  cudaMalloc(&gpu_result_xc, 1769472ULL);
  cudaMalloc(&gpu_filterStep, 4ULL);
  cudaMalloc(&gpu_intPoints_data, 2000U * sizeof(struct0_T));
  cudaMalloc(&gpu_s, 40000ULL);
  cudaMalloc(&gpu_intPoints_size, 8ULL);
  cudaMalloc(&e_gpu_respMatrix, 1728ULL);
  cudaMalloc(&e_gpu_lapMatrix, 432ULL);
  cudaMalloc(&d_gpu_respMatrix, 6912ULL);
  cudaMalloc(&d_gpu_lapMatrix, 1728ULL);
  cudaMalloc(&c_gpu_respMatrix, 27648ULL);
  cudaMalloc(&c_gpu_lapMatrix, 6912ULL);
  cudaMalloc(&b_gpu_respMatrix, 110592ULL);
  cudaMalloc(&b_gpu_lapMatrix, 27648ULL);
  cudaMalloc(&gpu_lapMatrix, 110592ULL);
  cudaMalloc(&gpu_filter, 4ULL);
  cudaMalloc(&gpu_step, 4ULL);
  cudaMalloc(&gpu_respMatrix, 442368ULL);
  cudaMalloc(&gpu_bor, 8ULL);
  cudaMalloc(&gpu_l, 8ULL);
  cudaMalloc(&gpu_inverse_area, 8ULL);
  cudaMalloc(&gpu_responseMap, 6636096ULL);
  cudaMalloc(&gpu_intImage, 1769472ULL);
  cudaMalloc(&gpu_grayImage, 1769472ULL);
  cudaMalloc(&gpu_inputImage, 442368ULL);

  /*                    Copyright 2017 The MathWorks, Inc. */
  /*  */
  /*                    FEATURE EXTRACTION USING SURF */
  /*   */
  /*  DESCRIPTION: */
  /*  This code performs feature extraction, which is the first part of the SURF  */
  /*  (Speeded-Up Robust Features) algorithm for object recognition.  */
  /*  */
  /*  INPUT:  The input image provided should be an 8-bit RGB or 8-bit grayscale image.  */
  /*  OUTPUT: The output of this code is an array of extracted interest points. These  */
  /*          interest points are also depicted over the input image in a figure window. */
  /*  */
  /*  REFERENCES: */
  /*  1. SURF: Speeded-Up Robust Features by Herbert Bay, Tinne Tuytelaars and Luc Van Gool */
  /*  2. Notes on the OpenSURF Library by Christopher Evans */
  /*  Convert the input image to 32-bit floating point grayscale image */
  /*    Copyright 2017 The MathWorks, Inc. */
  /*  */
  /*  The 8-bit RGB image provided as an input to this function is converted to */
  /*  a 8-bit grayscale image. This 8-bit grayscale image is then converted to */
  /*  32-bit floating point representation */
  cudaMemcpy((void *)gpu_inputImage, (void *)&inputImage[0], 442368ULL,
             cudaMemcpyHostToDevice);
  SurfDetect_kernel1<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_inputImage,
    gpu_grayImage);

  /*  Calculate the integral image of the grayscale image obtained above */
  /*    Copyright 2017 The MathWorks, Inc. */
  /*  */
  /*  The integral image representation for the 32-bit floating point grayscale */
  /*  image is computed in two steps. First, the integral sum is computed */
  /*  along the rows and next, the integral sum is computed along the columns */
  /*  Calculate integral sum along rows */
  SurfDetect_kernel2<<<dim3(2U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_grayImage,
    gpu_intImage);

  /*  Calculate integral sum along cols */
  SurfDetect_kernel3<<<dim3(2U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_intImage);

  /*  Perform convolution with box filters of various sizes and capture responses */
  /*    Copyright 2017 The MathWorks, Inc. */
  /*  */
  /*  This function constructs the scale-space by convolving the integral */
  /*  image with box filter approximations of various sizes. The following */
  /*  constants are used: */
  /*  */
  /*  Number of Octaves: 5 */
  /*  Number of Intervals: 4 */
  /*  Initial Step Size: 2 */
  /*  Threshold: 0.0004 */
  /*  Filter Sizes: Octave 1 -  9,  15,  21,  27 */
  /*                Octave 2 - 15,  27,  39,  51 */
  /*                Octave 3 - 27,  51,  75,  99 */
  /*                Octave 4 - 51,  99, 147, 195 */
  /*                Octave 5 - 99, 195, 291, 387 */
  /*  Image dimensions */
  /*  Initialize response map for various octaves and intervals */
  SD->f0.responseMap[0].filter = 9.0;
  SD->f0.responseMap[1].width = 384.0;
  SD->f0.responseMap[1].step = 2.0;
  SD->f0.responseMap[1].filter = 15.0;
  SD->f0.responseMap[2].width = 384.0;
  SD->f0.responseMap[2].step = 2.0;
  SD->f0.responseMap[2].filter = 21.0;
  SD->f0.responseMap[3].width = 384.0;
  SD->f0.responseMap[3].step = 2.0;
  SD->f0.responseMap[3].filter = 27.0;
  SD->f0.responseMap[4].width = 192.0;
  SD->f0.responseMap[4].step = 4.0;
  SD->f0.responseMap[4].filter = 39.0;
  SD->f0.responseMap[5].width = 192.0;
  SD->f0.responseMap[5].step = 4.0;
  SD->f0.responseMap[5].filter = 51.0;
  SD->f0.responseMap[6].width = 96.0;
  SD->f0.responseMap[6].step = 8.0;
  SD->f0.responseMap[6].filter = 75.0;
  SD->f0.responseMap[7].width = 96.0;
  SD->f0.responseMap[7].step = 8.0;
  SD->f0.responseMap[7].filter = 99.0;
  SD->f0.responseMap[8].width = 48.0;
  SD->f0.responseMap[8].step = 16.0;
  SD->f0.responseMap[8].filter = 147.0;
  SD->f0.responseMap[9].width = 48.0;
  SD->f0.responseMap[9].step = 16.0;
  SD->f0.responseMap[9].filter = 195.0;
  SD->f0.responseMap[10].width = 24.0;
  SD->f0.responseMap[10].step = 32.0;
  SD->f0.responseMap[10].filter = 291.0;
  SD->f0.responseMap[11].width = 24.0;
  SD->f0.responseMap[11].step = 32.0;
  SD->f0.responseMap[11].filter = 387.0;

  /*  Compute box filter convolution for 12 unique filter sizes */
  /*    Copyright 2017 The MathWorks, Inc. */
  cudaMemcpy((void *)gpu_responseMap, (void *)&SD->f0.responseMap[0], 6636096ULL,
             cudaMemcpyHostToDevice);
  SurfDetect_kernel4<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_inverse_area, gpu_l, gpu_bor);

  /*  normalization factor */
  SurfDetect_kernel5<<<dim3(216U, 1U, 1U), dim3(512U, 1U, 1U)>>>
    (gpu_inverse_area, gpu_intImage, gpu_bor, gpu_l, gpu_respMatrix);
  SurfDetect_kernel6<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap);
  cudaMemcpy((void *)&SD->f0.responseMap[0], (void *)gpu_responseMap, 6636096ULL,
             cudaMemcpyDeviceToHost);
  filter = (int32_T)SD->f0.responseMap[1].filter;
  SurfDetect_kernel7<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_step);

  /*    Copyright 2017 The MathWorks, Inc. */
  SurfDetect_kernel8<<<dim3(216U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_respMatrix,
    gpu_responseMap);
  SurfDetect_kernel9<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_inverse_area, gpu_l, gpu_bor);

  /*  normalization factor */
  cudaMemcpy((void *)gpu_filter, (void *)&filter, 4ULL, cudaMemcpyHostToDevice);
  SurfDetect_kernel10<<<dim3(216U, 1U, 1U), dim3(512U, 1U, 1U)>>>
    (gpu_inverse_area, gpu_intImage, gpu_filter, gpu_bor, gpu_l, gpu_step,
     gpu_lapMatrix, gpu_respMatrix);
  SurfDetect_kernel11<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap);
  cudaMemcpy((void *)&SD->f0.responseMap[0], (void *)gpu_responseMap, 6636096ULL,
             cudaMemcpyDeviceToHost);
  filter = (int32_T)SD->f0.responseMap[2].filter;
  SurfDetect_kernel12<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_step);

  /*    Copyright 2017 The MathWorks, Inc. */
  SurfDetect_kernel13<<<dim3(216U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_lapMatrix,
    gpu_respMatrix, gpu_responseMap);
  SurfDetect_kernel14<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_inverse_area, gpu_l, gpu_bor);

  /*  normalization factor */
  cudaMemcpy((void *)gpu_filter, (void *)&filter, 4ULL, cudaMemcpyHostToDevice);
  SurfDetect_kernel15<<<dim3(216U, 1U, 1U), dim3(512U, 1U, 1U)>>>
    (gpu_inverse_area, gpu_intImage, gpu_filter, gpu_bor, gpu_l, gpu_step,
     gpu_lapMatrix, gpu_respMatrix);
  SurfDetect_kernel16<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap);
  cudaMemcpy((void *)&SD->f0.responseMap[0], (void *)gpu_responseMap, 6636096ULL,
             cudaMemcpyDeviceToHost);
  filter = (int32_T)SD->f0.responseMap[3].filter;
  SurfDetect_kernel17<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_step);

  /*    Copyright 2017 The MathWorks, Inc. */
  SurfDetect_kernel18<<<dim3(216U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_lapMatrix,
    gpu_respMatrix, gpu_responseMap);
  SurfDetect_kernel19<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_inverse_area, gpu_l, gpu_bor);

  /*  normalization factor */
  cudaMemcpy((void *)gpu_filter, (void *)&filter, 4ULL, cudaMemcpyHostToDevice);
  SurfDetect_kernel20<<<dim3(216U, 1U, 1U), dim3(512U, 1U, 1U)>>>
    (gpu_inverse_area, gpu_intImage, gpu_filter, gpu_bor, gpu_l, gpu_step,
     gpu_lapMatrix, gpu_respMatrix);
  SurfDetect_kernel21<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap);
  SurfDetect_kernel22<<<dim3(216U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_lapMatrix,
    gpu_respMatrix, gpu_responseMap);
  cudaMemcpy((void *)&SD->f0.responseMap[0], (void *)gpu_responseMap, 6636096ULL,
             cudaMemcpyDeviceToHost);
  filter = (int32_T)SD->f0.responseMap[4].filter;
  SurfDetect_kernel23<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_step);

  /*    Copyright 2017 The MathWorks, Inc. */
  SurfDetect_kernel24<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_inverse_area, gpu_l, gpu_bor);

  /*  normalization factor */
  cudaMemcpy((void *)gpu_filter, (void *)&filter, 4ULL, cudaMemcpyHostToDevice);
  SurfDetect_kernel25<<<dim3(54U, 1U, 1U), dim3(512U, 1U, 1U)>>>
    (gpu_inverse_area, gpu_intImage, gpu_filter, gpu_bor, gpu_l, gpu_step,
     b_gpu_lapMatrix, b_gpu_respMatrix);
  SurfDetect_kernel26<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap);
  cudaMemcpy((void *)&SD->f0.responseMap[0], (void *)gpu_responseMap, 6636096ULL,
             cudaMemcpyDeviceToHost);
  filter = (int32_T)SD->f0.responseMap[5].filter;
  SurfDetect_kernel27<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_step);

  /*    Copyright 2017 The MathWorks, Inc. */
  SurfDetect_kernel28<<<dim3(54U, 1U, 1U), dim3(512U, 1U, 1U)>>>(b_gpu_lapMatrix,
    b_gpu_respMatrix, gpu_responseMap);
  SurfDetect_kernel29<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_inverse_area, gpu_l, gpu_bor);

  /*  normalization factor */
  cudaMemcpy((void *)gpu_filter, (void *)&filter, 4ULL, cudaMemcpyHostToDevice);
  SurfDetect_kernel30<<<dim3(54U, 1U, 1U), dim3(512U, 1U, 1U)>>>
    (gpu_inverse_area, gpu_intImage, gpu_filter, gpu_bor, gpu_l, gpu_step,
     b_gpu_lapMatrix, b_gpu_respMatrix);
  SurfDetect_kernel31<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap);
  SurfDetect_kernel32<<<dim3(54U, 1U, 1U), dim3(512U, 1U, 1U)>>>(b_gpu_lapMatrix,
    b_gpu_respMatrix, gpu_responseMap);
  cudaMemcpy((void *)&SD->f0.responseMap[0], (void *)gpu_responseMap, 6636096ULL,
             cudaMemcpyDeviceToHost);
  filter = (int32_T)SD->f0.responseMap[6].filter;
  SurfDetect_kernel33<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_step);

  /*    Copyright 2017 The MathWorks, Inc. */
  SurfDetect_kernel34<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_inverse_area, gpu_l, gpu_bor);

  /*  normalization factor */
  cudaMemcpy((void *)gpu_filter, (void *)&filter, 4ULL, cudaMemcpyHostToDevice);
  SurfDetect_kernel35<<<dim3(14U, 1U, 1U), dim3(512U, 1U, 1U)>>>
    (gpu_inverse_area, gpu_intImage, gpu_filter, gpu_bor, gpu_l, gpu_step,
     c_gpu_lapMatrix, c_gpu_respMatrix);
  SurfDetect_kernel36<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap);
  cudaMemcpy((void *)&SD->f0.responseMap[0], (void *)gpu_responseMap, 6636096ULL,
             cudaMemcpyDeviceToHost);
  filter = (int32_T)SD->f0.responseMap[7].filter;
  SurfDetect_kernel37<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_step);

  /*    Copyright 2017 The MathWorks, Inc. */
  SurfDetect_kernel38<<<dim3(14U, 1U, 1U), dim3(512U, 1U, 1U)>>>(c_gpu_lapMatrix,
    c_gpu_respMatrix, gpu_responseMap);
  SurfDetect_kernel39<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_inverse_area, gpu_l, gpu_bor);

  /*  normalization factor */
  cudaMemcpy((void *)gpu_filter, (void *)&filter, 4ULL, cudaMemcpyHostToDevice);
  SurfDetect_kernel40<<<dim3(14U, 1U, 1U), dim3(512U, 1U, 1U)>>>
    (gpu_inverse_area, gpu_intImage, gpu_filter, gpu_bor, gpu_l, gpu_step,
     c_gpu_lapMatrix, c_gpu_respMatrix);
  SurfDetect_kernel41<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap);
  SurfDetect_kernel42<<<dim3(14U, 1U, 1U), dim3(512U, 1U, 1U)>>>(c_gpu_lapMatrix,
    c_gpu_respMatrix, gpu_responseMap);
  cudaMemcpy((void *)&SD->f0.responseMap[0], (void *)gpu_responseMap, 6636096ULL,
             cudaMemcpyDeviceToHost);
  filter = (int32_T)SD->f0.responseMap[8].filter;
  SurfDetect_kernel43<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_step);

  /*    Copyright 2017 The MathWorks, Inc. */
  SurfDetect_kernel44<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_inverse_area, gpu_l, gpu_bor);

  /*  normalization factor */
  cudaMemcpy((void *)gpu_filter, (void *)&filter, 4ULL, cudaMemcpyHostToDevice);
  SurfDetect_kernel45<<<dim3(4U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_inverse_area,
    gpu_intImage, gpu_filter, gpu_bor, gpu_l, gpu_step, d_gpu_lapMatrix,
    d_gpu_respMatrix);
  SurfDetect_kernel46<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap);
  cudaMemcpy((void *)&SD->f0.responseMap[0], (void *)gpu_responseMap, 6636096ULL,
             cudaMemcpyDeviceToHost);
  filter = (int32_T)SD->f0.responseMap[9].filter;
  SurfDetect_kernel47<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_step);

  /*    Copyright 2017 The MathWorks, Inc. */
  SurfDetect_kernel48<<<dim3(4U, 1U, 1U), dim3(512U, 1U, 1U)>>>(d_gpu_lapMatrix,
    d_gpu_respMatrix, gpu_responseMap);
  SurfDetect_kernel49<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_inverse_area, gpu_l, gpu_bor);

  /*  normalization factor */
  cudaMemcpy((void *)gpu_filter, (void *)&filter, 4ULL, cudaMemcpyHostToDevice);
  SurfDetect_kernel50<<<dim3(4U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_inverse_area,
    gpu_intImage, gpu_filter, gpu_bor, gpu_l, gpu_step, d_gpu_lapMatrix,
    d_gpu_respMatrix);
  SurfDetect_kernel51<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap);
  SurfDetect_kernel52<<<dim3(4U, 1U, 1U), dim3(512U, 1U, 1U)>>>(d_gpu_lapMatrix,
    d_gpu_respMatrix, gpu_responseMap);
  cudaMemcpy((void *)&SD->f0.responseMap[0], (void *)gpu_responseMap, 6636096ULL,
             cudaMemcpyDeviceToHost);
  filter = (int32_T)SD->f0.responseMap[10].filter;
  SurfDetect_kernel53<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_step);

  /*    Copyright 2017 The MathWorks, Inc. */
  SurfDetect_kernel54<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_inverse_area, gpu_l, gpu_bor);

  /*  normalization factor */
  cudaMemcpy((void *)gpu_filter, (void *)&filter, 4ULL, cudaMemcpyHostToDevice);
  SurfDetect_kernel55<<<dim3(1U, 1U, 1U), dim3(448U, 1U, 1U)>>>(gpu_inverse_area,
    gpu_intImage, gpu_filter, gpu_bor, gpu_l, gpu_step, e_gpu_lapMatrix,
    e_gpu_respMatrix);
  SurfDetect_kernel56<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap);
  cudaMemcpy((void *)&SD->f0.responseMap[0], (void *)gpu_responseMap, 6636096ULL,
             cudaMemcpyDeviceToHost);
  filter = (int32_T)SD->f0.responseMap[11].filter;
  SurfDetect_kernel57<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_step);

  /*    Copyright 2017 The MathWorks, Inc. */
  SurfDetect_kernel58<<<dim3(1U, 1U, 1U), dim3(448U, 1U, 1U)>>>(e_gpu_lapMatrix,
    e_gpu_respMatrix, gpu_responseMap);
  SurfDetect_kernel59<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_inverse_area, gpu_l, gpu_bor);

  /*  normalization factor */
  cudaMemcpy((void *)gpu_filter, (void *)&filter, 4ULL, cudaMemcpyHostToDevice);
  SurfDetect_kernel60<<<dim3(1U, 1U, 1U), dim3(448U, 1U, 1U)>>>(gpu_inverse_area,
    gpu_intImage, gpu_filter, gpu_bor, gpu_l, gpu_step, e_gpu_respMatrix);
  SurfDetect_kernel61<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap);
  SurfDetect_kernel62<<<dim3(1U, 1U, 1U), dim3(448U, 1U, 1U)>>>(e_gpu_respMatrix,
    gpu_responseMap);

  /*  Process upto 2000 interest points and set the maximum bound of 'intPoints' to 2000 */
  /*  Perform non-maximal suppression to filter out useful and strongest interest points */
  /*    Copyright 2017 The MathWorks, Inc. */
  /*  */
  /*  This function performs non-maximal suppression to filter out the useful */
  /*  interest points in the image. For each octave, we examine a set of 3 */
  /*  layers (bottom, middle, top). A threshold is applied to the response of  */
  /*  each pixel and it is subsequently compared to its neighboring pixels in a  */
  /*  3x3x3 neighborhood. If an interest point is detected, interpolation is  */
  /*  performed to determine its exact location in scale-space. The output of  */
  /*  this step is an array of interest points */
  /*  Mapping responses to octaves based on filter sizes used for each octave */
  /*  Image dimensions */
  SurfDetect_kernel63<<<dim3(4U, 1U, 1U), dim3(512U, 1U, 1U)>>>(r0, gpu_s);
  SurfDetect_kernel64<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
    (gpu_intPoints_size);
  cudaMemcpy((void *)&intPoints_size[0], (void *)gpu_intPoints_size, 8ULL,
             cudaMemcpyDeviceToHost);
  intPoints_size_dirtyOnGpu = false;
  SurfDetect_kernel65<<<dim3(4U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_s,
    gpu_intPoints_data);
  filter = 1;
  SurfDetect_kernel66<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_filterStep, gpu_step);

  /*  Perform non-maximal suppression */
  /*    Copyright 2017 The MathWorks, Inc. */
  /*  Perform non-maximal suppression */
  SurfDetect_kernel67<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_step,
    gpu_responseMap, gpu_result_xc, gpu_result_xr, gpu_grayImage, gpu_keyMatrix);

  /*  Accumulate interest points */
  cudaMemcpy((void *)gpu_filter, (void *)&filter, 4ULL, cudaMemcpyHostToDevice);
  SurfDetect_kernel68<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_filterStep,
    gpu_grayImage, gpu_responseMap, gpu_result_xr, gpu_step, gpu_result_xc,
    gpu_keyMatrix, gpu_intPoints_data, gpu_filter);
  SurfDetect_kernel69<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_filterStep, gpu_step);

  /*  Perform non-maximal suppression */
  /*    Copyright 2017 The MathWorks, Inc. */
  /*  Perform non-maximal suppression */
  SurfDetect_kernel70<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_step,
    gpu_responseMap, gpu_result_xc, gpu_result_xr, gpu_grayImage, gpu_keyMatrix);

  /*  Accumulate interest points */
  SurfDetect_kernel71<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_filterStep,
    gpu_grayImage, gpu_responseMap, gpu_result_xr, gpu_step, gpu_result_xc,
    gpu_keyMatrix, gpu_intPoints_data, gpu_filter);
  SurfDetect_kernel72<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_filterStep, gpu_step);

  /*  Perform non-maximal suppression */
  /*    Copyright 2017 The MathWorks, Inc. */
  /*  Perform non-maximal suppression */
  SurfDetect_kernel73<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_step,
    gpu_responseMap, gpu_result_xc, gpu_result_xr, gpu_grayImage, gpu_keyMatrix);

  /*  Accumulate interest points */
  SurfDetect_kernel74<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_filterStep,
    gpu_grayImage, gpu_responseMap, gpu_result_xr, gpu_step, gpu_result_xc,
    gpu_keyMatrix, gpu_intPoints_data, gpu_filter);
  SurfDetect_kernel75<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_filterStep, gpu_step);

  /*  Perform non-maximal suppression */
  /*    Copyright 2017 The MathWorks, Inc. */
  /*  Perform non-maximal suppression */
  SurfDetect_kernel76<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_step,
    gpu_responseMap, gpu_result_xc, gpu_result_xr, gpu_grayImage, gpu_keyMatrix);

  /*  Accumulate interest points */
  SurfDetect_kernel77<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_filterStep,
    gpu_grayImage, gpu_responseMap, gpu_result_xr, gpu_step, gpu_result_xc,
    gpu_keyMatrix, gpu_intPoints_data, gpu_filter);
  SurfDetect_kernel78<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_filterStep, gpu_step);

  /*  Perform non-maximal suppression */
  /*    Copyright 2017 The MathWorks, Inc. */
  /*  Perform non-maximal suppression */
  SurfDetect_kernel79<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_step,
    gpu_responseMap, gpu_result_xc, gpu_result_xr, gpu_grayImage, gpu_keyMatrix);

  /*  Accumulate interest points */
  SurfDetect_kernel80<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_filterStep,
    gpu_grayImage, gpu_responseMap, gpu_result_xr, gpu_step, gpu_result_xc,
    gpu_keyMatrix, gpu_intPoints_data, gpu_filter);
  SurfDetect_kernel81<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_filterStep, gpu_step);

  /*  Perform non-maximal suppression */
  /*    Copyright 2017 The MathWorks, Inc. */
  /*  Perform non-maximal suppression */
  SurfDetect_kernel82<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_step,
    gpu_responseMap, gpu_result_xc, gpu_result_xr, gpu_grayImage, gpu_keyMatrix);

  /*  Accumulate interest points */
  SurfDetect_kernel83<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_filterStep,
    gpu_grayImage, gpu_responseMap, gpu_result_xr, gpu_step, gpu_result_xc,
    gpu_keyMatrix, gpu_intPoints_data, gpu_filter);
  SurfDetect_kernel84<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_filterStep, gpu_step);

  /*  Perform non-maximal suppression */
  /*    Copyright 2017 The MathWorks, Inc. */
  /*  Perform non-maximal suppression */
  SurfDetect_kernel85<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_step,
    gpu_responseMap, gpu_result_xc, gpu_result_xr, gpu_grayImage, gpu_keyMatrix);

  /*  Accumulate interest points */
  SurfDetect_kernel86<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_filterStep,
    gpu_grayImage, gpu_responseMap, gpu_result_xr, gpu_step, gpu_result_xc,
    gpu_keyMatrix, gpu_intPoints_data, gpu_filter);
  SurfDetect_kernel87<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_filterStep, gpu_step);

  /*  Perform non-maximal suppression */
  /*    Copyright 2017 The MathWorks, Inc. */
  /*  Perform non-maximal suppression */
  SurfDetect_kernel88<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_step,
    gpu_responseMap, gpu_result_xc, gpu_result_xr, gpu_grayImage, gpu_keyMatrix);

  /*  Accumulate interest points */
  SurfDetect_kernel89<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_filterStep,
    gpu_grayImage, gpu_responseMap, gpu_result_xr, gpu_step, gpu_result_xc,
    gpu_keyMatrix, gpu_intPoints_data, gpu_filter);
  SurfDetect_kernel90<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_filterStep, gpu_step);

  /*  Perform non-maximal suppression */
  /*    Copyright 2017 The MathWorks, Inc. */
  /*  Perform non-maximal suppression */
  SurfDetect_kernel91<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_step,
    gpu_responseMap, gpu_result_xc, gpu_result_xr, gpu_grayImage, gpu_keyMatrix);

  /*  Accumulate interest points */
  SurfDetect_kernel92<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_filterStep,
    gpu_grayImage, gpu_responseMap, gpu_result_xr, gpu_step, gpu_result_xc,
    gpu_keyMatrix, gpu_intPoints_data, gpu_filter);
  SurfDetect_kernel93<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_responseMap,
    gpu_filterStep, gpu_step);

  /*  Perform non-maximal suppression */
  /*    Copyright 2017 The MathWorks, Inc. */
  /*  Perform non-maximal suppression */
  SurfDetect_kernel94<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_step,
    gpu_responseMap, gpu_result_xc, gpu_result_xr, gpu_grayImage, gpu_keyMatrix);

  /*  Accumulate interest points */
  SurfDetect_kernel95<<<dim3(864U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_filterStep,
    gpu_grayImage, gpu_responseMap, gpu_result_xr, gpu_step, gpu_result_xc,
    gpu_keyMatrix, gpu_intPoints_data, gpu_filter);

  /*  Return the first 2000 interest points detected */
  cudaMemcpy((void *)&filter, (void *)gpu_filter, 4ULL, cudaMemcpyDeviceToHost);
  if (filter < 2001) {
    if (filter < -2147483647) {
      numPoints = MIN_int32_T;
    } else {
      numPoints = filter - 1;
    }

    if (1 > numPoints) {
      numPoints = 0;
    }

    b_intPoints_size[0] = 1;
    b_intPoints_size[1] = numPoints;
    validLaunchParams = mwGetLaunchParameters((real_T)(1LL + (numPoints - 1)),
      &grid, &block, 1024U, 65535U);
    if (validLaunchParams) {
      SurfDetect_kernel96<<<grid, block>>>(gpu_intPoints_data, numPoints,
        b_gpu_intPoints_data);
    }

    cudaMemcpy((void *)b_gpu_intPoints_size, (void *)&b_intPoints_size[0], 8ULL,
               cudaMemcpyHostToDevice);
    SurfDetect_kernel97<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
      (b_gpu_intPoints_size, gpu_intPoints_size);
    cudaMemcpy((void *)&intPoints_size[0], (void *)gpu_intPoints_size, 8ULL,
               cudaMemcpyDeviceToHost);
    intPoints_size_dirtyOnGpu = false;
    b_validLaunchParams = mwGetLaunchParameters((real_T)(1LL +
      (b_intPoints_size[1] - 1)), &b_grid, &b_block, 1024U, 65535U);
    if (b_validLaunchParams) {
      SurfDetect_kernel98<<<b_grid, b_block>>>(b_gpu_intPoints_data,
        b_gpu_intPoints_size, gpu_intPoints_data);
    }
  }

  /*  Calculate orientation for each of the extracted interest points */
  /*    Copyright 2017 The MathWorks, Inc. */
  /*  */
  /*  This function computes orientation needed for rotation invariance for */
  /*  each of the extracted interest point. The orientation is computed by */
  /*  convolution with Haar wavelets of size 4s for pixels that are within a */
  /*  radius of 6s where 's' is the scale at which the interest point was detected */
  if (intPoints_size_dirtyOnGpu) {
    cudaMemcpy((void *)&intPoints_size[0], (void *)gpu_intPoints_size, 8ULL,
               cudaMemcpyDeviceToHost);
  }

  numPoints = intPoints_size[1] - 1;
  cudaMemcpy((void *)gpu_gauss25, (void *)&gauss25[0], 392ULL,
             cudaMemcpyHostToDevice);
  cudaMemcpy((void *)gpu_iv0, (void *)&iv0[0], 13ULL, cudaMemcpyHostToDevice);
  cudaMalloc(&SurfDetect_kernel99_StackData, 2048U * sizeof
             (c_SurfDetect_kernel99_StackData));
  SurfDetect_kernel99<<<dim3(4U, 1U, 1U), dim3(512U, 1U, 1U)>>>(gpu_gauss25,
    gpu_iv0, gpu_intImage, numPoints, gpu_intPoints_data,
    SurfDetect_kernel99_StackData);
  cudaFree(SurfDetect_kernel99_StackData);
  cudaMemcpy((void *)&intPoints_data[0], (void *)gpu_intPoints_data,
             intPoints_size[0] * intPoints_size[1] * sizeof(struct0_T),
             cudaMemcpyDeviceToHost);
  cudaFree(gpu_inputImage);
  cudaFree(gpu_grayImage);
  cudaFree(gpu_intImage);
  cudaFree(gpu_responseMap);
  cudaFree(gpu_inverse_area);
  cudaFree(gpu_l);
  cudaFree(gpu_bor);
  cudaFree(gpu_respMatrix);
  cudaFree(gpu_step);
  cudaFree(gpu_filter);
  cudaFree(gpu_lapMatrix);
  cudaFree(b_gpu_lapMatrix);
  cudaFree(b_gpu_respMatrix);
  cudaFree(c_gpu_lapMatrix);
  cudaFree(c_gpu_respMatrix);
  cudaFree(d_gpu_lapMatrix);
  cudaFree(d_gpu_respMatrix);
  cudaFree(e_gpu_lapMatrix);
  cudaFree(e_gpu_respMatrix);
  cudaFree(gpu_intPoints_size);
  cudaFree(gpu_s);
  cudaFree(gpu_intPoints_data);
  cudaFree(gpu_filterStep);
  cudaFree(gpu_result_xc);
  cudaFree(gpu_result_xr);
  cudaFree(gpu_keyMatrix);
  cudaFree(b_gpu_intPoints_size);
  cudaFree(b_gpu_intPoints_data);
  cudaFree(gpu_gauss25);
  cudaFree(gpu_iv0);
}

/* End of code generation (SurfDetect.cu) */
