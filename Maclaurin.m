format long
sf = 8;
eps = 0.5*10^(2-sf) 
%when the significant figure is specified, the prespecified tolerance
%called 'eps' will be used. In the estimation using Maclaurin
%series, the percent relative error, 'ep', should be less than eps so that
%the iterative process stops. ep<eps is the corresponding stop criterion

ep = 1;
t = 0; %'t' stands for term
x = -5
MS_1 = 0;
MS_2 = 0; %The term next to the previous term


while ep>eps
    for y = 0:t
    MS_1 = MS_1 + (x^y)/(factorial(y));
    MS_2 = MS_1 + (x^(y+1))/(factorial(y+1));
    %The Maclaurin series for f(x) = e^x is simplified
    end
    ep = abs((MS_2-MS_1)/(MS_2)); %the formula of calculating the percent relative error
    t = t + 1;
    MS_3 = MS_2; %save the value of the last MS_2
    MS_1 = 0;
    MS_2 = 0; %reset to zero because the using of for loop to recalculate estimated e
end

fprintf('the final percent relative error is only %.15f  which is smaller than eps\n', ep)
fprintf('the iterative process stops until the %d terms \n', t)
fprintf('the final value of estimated e is %.8f', MS_3) %show 8 significant figure

