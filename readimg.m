function z = readimg(nTreino,nPessoas)
z = [];
for j = 1:nPessoas %número de pessoas
    file = strcat('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\imagens','\p');
    filename = strcat(file,int2str(j));
    cd(filename)
    for k = 1:nTreino
        x = imread(strcat(int2str(k),'.jpg'));
        x = histeq(x);
        [featureVector,~] = extractHOGFeatures(x);
        x = edge(x,'canny',0.001);
        x=imresize(x, [size(x,1)*0.75 NaN]); 
        x = reshape(x,1,size(x,1)*size(x,2));
        featureVector = [featureVector,x];
        z = [z , featureVector'];
    end
end
cd ('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais');
end