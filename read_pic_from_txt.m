%从txt文档中读取图片统一命名并保存；
clc;
clear;
main_path='';
save_path='';
fid=fopen([main_path 'train_pos.txt']);
i=0;
while feof(fid)~=1
    name=fgetl(fid);
    if isempty(name)
        break;
    end;
    image_path=[name]; %[save_path name];
    image=imread(image_path);
    i=i+1;
    img1=imresize(image,[256,256]);
    img2=imrorate(img1,0);
    imwrite(img2,[save_path,sprintf('%05d',i),'.jpg']);
end
    
    
