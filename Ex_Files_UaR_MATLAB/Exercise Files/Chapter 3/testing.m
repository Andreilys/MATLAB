% Practice script calculates the rolling mean of stock data
tic
% converts csv to matrix
stocks=csvread('sample_data.csv');
mean(stocks);
for i=0:9
    mean(stocks(250*i+1:250*i+250))
end
toc