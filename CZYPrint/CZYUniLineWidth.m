% date : 2024/12/03
% author : czy
% description : 设置当前所有打开的图窗中曲线的宽度
function CZYUniLineWidth(linewidth)
    figs = findobj('Type', 'figure');
    for fig = figs
        lines = findall(fig, 'Type', 'line');
        for j = 1:length(lines)
            lines(j).LineWidth = linewidth;
        end 
    end
end

