close all
nTreino = 4;
nPessoas = 50;
nFotos = 6;

data = readimg(nTreino,nPessoas);
[P,PC,mn] = GerarPCs(data);

idx = ones(1,nTreino*nPessoas); %cria indice
for i = 1:nPessoas
    idx(1,nTreino*(i-1)+1:nTreino*i) = i;
end

scores = zeros(nPessoas,nFotos);
acerto = 0.0;
featureVector = zeros(1,491652);
for i = 1:nPessoas
    for j = nTreino+1:nFotos %n de fotos
        im = strcat('p',int2str(i),'\',int2str(j),'.jpg'); % Ex: p8\nFotos.jpg
        x = imread(strcat('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\imagens',strcat('\',im)));
        x = histeq(x);
        [featureVector,~] = extractHOGFeatures(x);
        x = edge(x,'canny',0.001);
        x=imresize(x, [size(x,1)*0.75 NaN]);
        x = reshape(x,1,size(x,1)*size(x,2));
        featureVector = [featureVector,x];
        d = Classificar(PC, ProjetarAmostra(featureVector',mn,P));
        h = idx(d);
        if(h == i)
            acerto = acerto+1;
            scores(i,j)=1;
        end
    end
end
acerto = (acerto/((nFotos-nTreino)*nPessoas))*100;
cd('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\Análise de Componentes Principais');



save('Resultado.txt','acerto','scores','-ascii');


m = 1;
while(m)
    im = input('Informe a imagem (entre aspas simples): '); %nome da pasta\imagem. Ex: p8\5.jpg
    if(im == 0)
        break;
    end
    close all
    x = imread(strcat('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\imagens',strcat('\',im)));
    imgx = x;
    x = histeq(x);
    [featureVector,~] = extractHOGFeatures(x);
    x = edge(x,'canny');
    x=imresize(x, [size(x,1)*0.75 NaN]);
    x = reshape(x,1,size(x,1)*size(x,2));
    featureVector = [featureVector,x];
    d = Classificar(PC, ProjetarAmostra(featureVector',mn,P));
    j = -1;
    h = idx(d);
    while( h == idx(d)) %descobre qual a foto da pessoa h
        d = d+1;
        j = j+1;
        if(d>nTreino*nPessoas)
            break;
        end
    end
    
    im = strcat('p',int2str(h),'\',int2str(nTreino-j),'.jpg');
    r = imread(strcat('D:\OneDrive - Sociedade Goiana de Cultura\Computer Science\Visao Computacional\trabalho1\imagens',strcat('\',im)));
    
    figure;
    imshowpair(r,imgx,'montage')
    clear im, clear x, clear d
    
end


