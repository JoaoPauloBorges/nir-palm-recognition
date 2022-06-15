/*
 * SurfDetect_types.h
 *
 * Code generation for function 'SurfDetect'
 *
 */

#ifndef SURFDETECT_TYPES_H
#define SURFDETECT_TYPES_H

/* Include files */
#include "rtwtypes.h"

/* Type Definitions */
#ifndef struct_emxArray_real32_T_288x384
#define struct_emxArray_real32_T_288x384

struct emxArray_real32_T_288x384
{
  real32_T data[110592];
  int32_T size[2];
};

#endif                                 /*struct_emxArray_real32_T_288x384*/

#ifndef typedef_emxArray_real32_T_288x384
#define typedef_emxArray_real32_T_288x384

typedef struct emxArray_real32_T_288x384 emxArray_real32_T_288x384;

#endif                                 /*typedef_emxArray_real32_T_288x384*/

#ifndef struct_emxArray_uint8_T_288x384
#define struct_emxArray_uint8_T_288x384

struct emxArray_uint8_T_288x384
{
  uint8_T data[110592];
  int32_T size[2];
};

#endif                                 /*struct_emxArray_uint8_T_288x384*/

#ifndef typedef_emxArray_uint8_T_288x384
#define typedef_emxArray_uint8_T_288x384

typedef struct emxArray_uint8_T_288x384 emxArray_uint8_T_288x384;

#endif                                 /*typedef_emxArray_uint8_T_288x384*/

#ifndef struct_sGpKMaFtNhUJwJZKOGZZjfC_tag
#define struct_sGpKMaFtNhUJwJZKOGZZjfC_tag

struct sGpKMaFtNhUJwJZKOGZZjfC_tag
{
  real_T width;
  real_T height;
  real_T step;
  real_T filter;
  emxArray_real32_T_288x384 responses;
  emxArray_uint8_T_288x384 laplacian;
};

#endif                                 /*struct_sGpKMaFtNhUJwJZKOGZZjfC_tag*/

#ifndef typedef_struct_T
#define typedef_struct_T

typedef struct sGpKMaFtNhUJwJZKOGZZjfC_tag struct_T;

#endif                                 /*typedef_struct_T*/

#ifndef typedef_SurfDetectStackData
#define typedef_SurfDetectStackData

typedef struct {
  struct {
    struct_T responseMap[12];
  } f0;
} SurfDetectStackData;

#endif                                 /*typedef_SurfDetectStackData*/

#ifndef typedef_struct0_T
#define typedef_struct0_T

typedef struct {
  real32_T x;
  real32_T y;
  real32_T scale;
  real32_T orientation;
  int32_T laplacian;
} struct0_T;

#endif                                 /*typedef_struct0_T*/
#endif

/* End of code generation (SurfDetect_types.h) */
