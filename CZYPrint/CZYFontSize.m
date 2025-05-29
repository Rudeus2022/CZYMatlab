% date : 2024/12/01
% author : czy
% description : set font size
function CZYFontSize(hfigure,axis_title_fs,legend_fs)
axes = findobj(hfigure,'Type','Axes');
axes.XLabel.FontSize = axis_title_fs;
axes.YLabel.FontSize = axis_title_fs;
legend = findobj(hfigure,'Type','Legend');
if(legend~=0)
    legend.FontSize = legend_fs;
end
end

