% date : 2024/06/12
% author : czy
% description : 按照厘米保存
%  A4纸张双栏中图片一般为宽度为7cm，高度自定义，一般为4.3
%  单栏一般为宽度14cm，高度8.6cm
%  论文图片大小尺寸要求为半幅(单栏)为8.3cm,全幅(双栏)为17.6cm。
%  一般建议:
%  坐标轴字体大小：比正文小一些，通常为 8pt 至 10pt。
%  图例字体大小：与坐标轴字体一致或略小，通常为 8pt 至 9pt。
function CZYPrintCM(hfigure,file,width_cm,height_cm,content_type)
% set(hfigure,'unit','centimeters','position',[2 2 width_cm height_cm]);
if(strcmp(content_type,'image'))
    exportgraphics(hfigure,file,'Resolution',600,'ContentType',content_type);
elseif (strcmp(content_type,'vector'))
    exportgraphics(hfigure,file,'BackgroundColor','none','ContentType',content_type);
else
    disp('print plot failed! content_type error! either image or vector ' );
end
%     print(hfigure,file,'-dpdf','-r300');
end

