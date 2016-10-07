y = [4 4 4 7 11 11 12];
cens = [0 1 0 0 1 0 0];

figure()
ecdf(y,'censoring',cens,'function','survivor');