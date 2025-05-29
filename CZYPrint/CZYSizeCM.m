% date : 2024/11/26
% author : czy
% description : 将hfigure大小设置为指定宽高（cm）
%  A4纸张双栏中图片一般为宽度为7cm，高度自定义，一般为4.3
%  单栏一般为宽度14cm，高度8.6cm
%  论文图片大小尺寸要求为半幅(单栏)为8.3cm,全幅(双栏)为17.6cm。
%  一般建议:
%  坐标轴字体大小：比正文小一些，通常为 8pt 至 10pt。
%  图例字体大小：与坐标轴字体一致或略小，通常为 8pt 至 9pt。
function  CZYSizeCM(hfigure,width_cm,height_cm)
    set(hfigure,'unit','centimeters','position',[2 2 width_cm height_cm]);
end

