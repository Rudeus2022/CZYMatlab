% date : 2024/12/01
% author : czy
% description : 保存为三种格式
function CZYPrintALL(hfigure,fileName)
    print(hfigure,[fileName,'.svg'],'-dsvg');
    print(hfigure,[fileName,'.png'],'-dpng','-r600');
    exportgraphics(hfigure,[fileName,'.eps'],'BackgroundColor','none','ContentType','vector');
end

