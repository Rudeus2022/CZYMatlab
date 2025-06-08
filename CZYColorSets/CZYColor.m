function rgb_3x1 = CZYColor(set,index)
    load CZYColorSets.mat;
    rgb_3x1 = CZYColorSets_cell{set,1}(:,index);
end

