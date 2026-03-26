function func_signal_truncating(Data_ipt,Stride_pos,Filepara)

    %% 
    Data_ipt_new = Data_ipt(Stride_pos(1):Stride_pos(end),:);
    Stride_pos_new = Stride_pos - Stride_pos(1) + 1;
    headers = {'time', 'Avert', 'Amedlat', 'Aantpost', 'ATotal', 'Gvert', 'Gmedlat', 'Gantpost'};
    Pace_Tilt_convert = array2table(Data_ipt_new,'VariableNames',headers);  % 测试数据存储
    
    %% 
    new_data_name = ['signal',Filepara.FileName(end-4:end)];
    new_stride_name = ['step',Filepara.FileName(end-4:end)];
    save ([Filepara.FilePath_new_data,new_data_name],"Pace_Tilt_convert" );
    save ([Filepara.FilePath_new_stride,new_stride_name],"Stride_pos" );
    
end