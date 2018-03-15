% You really need FRND(x,p,a,b,N) if you want to generate random numbers
% following someone known possibility distribution function.
%
% p is the PDF of x at the range of [a,b]
% FRND(x,p,a,b,N) retures N random numbers following distribution of PDF
% x and p should be column vectors with the same length.
%
% x: a column vector
% p: a vector with the same size of x. The p is the possibility at value x.
% a: lower bound of random numbers, a scalar
% b: upper bound of random numbers, a scalar
% N: total count of result you want, a scalar
% result: a column vector with length N, which follows PDF defined by (x,p)
%
% by Shuang Gao 
% please contact sgao@nao.cas.cn if you have any questions.
% 2012_hippoh给定任意一个概率密度函数生成随机数，http://blog.hippoh.org/ hippoh2014@163.com
% Modified by Wang Qiao, 20150212, cjmuqiao@163.com
function xf = frnd(x,p,a,b,N)
    maxp = max(p);
    minp = min(p);
    xf = zeros(N,1);
    for i = 1:N
        xtry = unifrnd(a,b);
        ptry = unifrnd(minp,maxp);
        y = interp1(x,p,xtry); 
        while ptry>y
            xtry = unifrnd(a,b);
            ptry = unifrnd(minp,maxp);
            y = interp1(x,p,xtry);
        end
        xf(i) = xtry;
    end
end