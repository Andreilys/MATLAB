function sample_corr = computeSampleCorr(datain, corrtype)

sample_corr = zeros(length(datain(1, 2:end)),1);
for i=1:length(datain(1, 2:end))
    t = cell2mat(datain(2:end, i+1));
    tt = cell2mat(datain(2:end, 2:end));
    tt(:, i) = [];
    temp = corr( tt, t, 'type', corrtype);%
%     temp = corr( t,tt, 'type', 'Pearson', 'rows','pairwise');%
    sample_corr(i) = nanmean(temp);
end
