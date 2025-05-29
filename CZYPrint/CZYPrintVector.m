% date : 2024/11/27
% author : czy
% description : 同时保存为eps、高清png、svg

function CZYPrintVector(hfigure,fileName)
    exportgraphics(hfigure,fileName,'BackgroundColor','none','ContentType','vector');
end

