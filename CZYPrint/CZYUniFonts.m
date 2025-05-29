% date : 2024/12/03
% author : czy
% description : 设置当前所有打开的图窗中坐标轴标题字体及大小、坐标轴标签字体及大小、图例字体及大小
% 根据情况做修改
function CZYUniFonts(isShowLegend)

figs = findobj('Type', 'figure');
for fig = figs
    axesHandles = findobj(fig, 'Type', 'axes');
    % 修改所有figure grid on
    for j = 1:length(axesHandles)
        ax = axesHandles(j); % 当前axes句柄
        ax.FontSize = 9;
        ax.FontName = 'Times New Roman';
        grid(ax, 'on');% 设置grid on
    end
    if(isShowLegend)
        legendHandle = legend('show');
        legendHandle.FontName = 'Times New Roman';
        legendHandle.FontSize = 9;
        legendHandle.Location = 'best';
    else
        legend('off');
    end
%     lines = findall(fig, 'Type', 'line');
%     % 设置每个line的宽度为1
%     for j = 1:length(lines)
%         lines(j).LineWidth = 1;
%     end 
end

end

