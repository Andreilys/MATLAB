function [ output_args ] = practice_function( input_args )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
mean(input_args)
for i=0:9
    output_args(i+1)=mean(input_args(250*i+1:250*i+250))
end
end