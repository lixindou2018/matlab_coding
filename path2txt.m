clc;
clear;
main_path='H:/project/resize/train/';
save_path='H:/project/resize/train/';
folder=st.allfolder(main_path)

list_file=[main_path 'trian_pos.txt'];
fid=fopen(list_file,'a+');
for folderIdx=1:length(folder)
    subfolder=st.allfolder([main_path folder{folderIdx}]);
    for subfolderIdx=1:length(subfolder)
        files=st.allimage([main_path folder{folderIdx} '/' subfolder{subfolderIdx}])
            for imageIdx=1:length(files)
                fprintf(fid,'%s\r\n',[save_path folder{folderIdx} '/' subfolder{subfolderIdx}])
            end;
    end;
end;

