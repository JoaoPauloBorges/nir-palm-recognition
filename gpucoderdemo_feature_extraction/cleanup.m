if ~exist('currentfigures') || isempty(currentFigures), currentFigures = []; end;
close(setdiff(findall(0, 'type', 'figure'), currentFigures))
clear mex
delete *.mexw64
[~,~,~] = rmdir('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\codegen','s');
clear('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\BoxIntegral.m')
delete('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\BoxIntegral.m')
clear('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\Convert32bitFPGray.m')
delete('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\Convert32bitFPGray.m')
clear('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\DrawIpoints.m')
delete('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\DrawIpoints.m')
clear('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\FastHessian.m')
delete('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\FastHessian.m')
clear('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\FastHessianCalc.m')
delete('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\FastHessianCalc.m')
clear('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\MyIntegralImage.m')
delete('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\MyIntegralImage.m')
clear('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\NonMaxCalc.m')
delete('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\NonMaxCalc.m')
clear('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\NonMaxSuppression.m')
delete('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\NonMaxSuppression.m')
clear('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\NonMaxSuppression_gpu.m')
delete('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\NonMaxSuppression_gpu.m')
clear('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\OrientationCalc.m')
delete('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\OrientationCalc.m')
clear('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\SurfDetect.m')
delete('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\SurfDetect.m')
delete('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\peppers.png')
clear
load old_workspace
delete old_workspace.mat
delete('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction\cleanup.m')
cd('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais')
rmdir('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais\gpucoderdemo_feature_extraction','s');
