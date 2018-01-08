
function [hist]=freq_count(scra_21)
%
% This function calculates the frequency of appearance of integers 0 to 255 within the input vector. 
% Syntax: [hist]=freq_count(vector_in)
% with <vector_in> the input vector heof data
% and <hist> the returned histogram (of length 256). 
% For example, if vector_in=[1 3 0 0 1 0 4 3 0 1 2 1] the result will be
% hist=[4 4 1 2 1 0 0 ... 0] and it will be 256-elements long
% representing the fact that, in the input vector <vector_in>
% * 0 appears 4 timeshek
% * 1 appears 4 times
% * 2 appears 1 time
% * 3 appears 2 times
% * 4 appears 1 time
% * all numbers above 4 and below 256 do not appear in the vector
% 

hist=zeros(1,256);
for i=0:255
    hist(i+1)=length(find(scra_21==i));
end
