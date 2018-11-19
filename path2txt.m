% 本段代码的作用，读取图片的路径，并保存在txt文档中。
% 
% st包的下载地址：https://pan.baidu.com/s/1atNtiarJ6juuw2B22-VrnA password：cxvh
%
clc;
clear;
main_path='H:/project/resize/train/';
save_path='H:/project/resize/train/';

%直接读取某个文件夹下面的所有图片路径
files=st.allimage(main_path);
list_file=[main_path,'train_pos.txt'];
fid=fopen(list_file,'w+');  %重新写入，不存在自动创建
for imageIdx=1:length(files)
    fprintf(fid,'%s\r\n',[save_path files{imageIdx}]);
end;

%多级目录，用下面代码
folder=st.allfolder(main_path);
list_file=[main_path 'trian_pos.txt'];
fid=fopen(list_file,'w+');             %
for folderIdx=1:length(folder)
    subfolder=st.allfolder([main_path folder{folderIdx}]);
    for subfolderIdx=1:length(subfolder)
        files=st.allimage([main_path folder{folderIdx} '/' subfolder{subfolderIdx}])
            for imageIdx=1:length(files)
                fprintf(fid,'%s\r\n',[save_path folder{folderIdx} '/' subfolder{subfolderIdx} '/' files{imageIdx}]);
            end;
    end;
end;

