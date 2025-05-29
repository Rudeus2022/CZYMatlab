% date : 2024/12/03
% author : czy
% description : 将当前所有图窗的大小统一(单位为cm)，输入为坐标轴的宽高，
% OuterPosition的大小设为定值，使得嵌入到文档中的子图上下坐标轴对齐

function CZYUniSize(targetWidth,targetHeight)
% 定义目标坐标轴尺寸（单位：厘米）
% targetWidth = 8.3; % 坐标轴宽度 
% targetHeight = 5.1; % 坐标轴高度 

% 调整图片大小并确保边距一致，大小需要根据情况做调整
leftMargin = 1.5; % 左侧边距 
rightMargin = 0.5; % 右侧边距 
topMargin = 0.5; % 上侧边距 
bottomMargin = 1; % 下侧边距 

% 计算总图片尺寸
figureWidth = targetWidth + leftMargin + rightMargin; % 总宽度 
figureHeight = targetHeight + topMargin + bottomMargin; % 总高度 

%设置坐标区总大小
figs = findobj('Type', 'figure');
for i = 1:length(figs)
    fig = figure(figs(i));
    ax = gca;
    % 调整axes位置
    ax.Units = 'centimeters';
    ax.Position = [leftMargin, bottomMargin, targetWidth, targetHeight];
    % 调整figure的尺寸
    fig.Units = 'centimeters';
    fig.Position = [10, 10, figureWidth, figureHeight];
end

end

