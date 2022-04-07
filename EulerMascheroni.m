% Omar Ben Ayed - 38628

% QUESTION 1
% We present the column n in vectorial form.
n = [1 10 50 100 1000 10000 100000 1000000];

% We print the first row.
fprintf('%0s \t %8s \t %8s \t %8s\n','n','xharm','xlog','xdiff')

% We preallocate x.
x = 0;

% This presents us with i: the number of rows.
for i = 1:length(n)
   
    for ii = 1:n(i) % This second loop will allow us to move through the number of rows.
        
        % Harmonic result.
        % We did not use the harmonic(x) funciton because it requires much
        % more computing power.
        h = 1 / ii;
        x = h + x;
        
        % Logarithmic result.
        l = log(ii);
        y = l;
        
        % Difference between Harmonic and Logarithmic result.
        diff = x - y;
        z = diff;
    end
    
   % We print a row containing the information computed through the loop.
    fprintf('%.0f \t %.4f \t %.4f \t %.6f \n', n(i),x,y,z)
    
    % X is set to 0 so that we dnt sum up all past xharm(n).
    x = 0;    
end

% QUESTION 2

% We set L=15 for the sake of the exercise.
L = 15;
% We set a starting value of 1, and not 0 becasue we can not divide by 0.
n = 1;
% We preallocate xharm to avoid a problem in the while loop.
xharm = 0;

% As long as xharm is less then L the loop will continue.
while xharm <= L
    
    b = 1/n;
   
    xharm = xharm + b;
    
    % We add by increments of 1, to make the algo go through the values of
    % n one by one.
    n = n + 1;
end 

% The algorithm will stop at the last value that satisfies the while
% condition, therefore we add 1 to obtain the value that satifies: xharm >
% 15.
nhat = n + 1;

% We preallocate xharmhat to avoid a problem in the while loop.
xharmhat = harmonic(nhat);

fprintf(['For L = 15, Xharmhat is equal to %.12f and nhat is equal to %.f.\n'], xharmhat, nhat)

% Question 3

% We use an extremely high numebr to obtain something as close to the EM
% Constant as possible.
EMConstant = harmonic(1e99)-log(1e99);

% We preallocate our usual variables.
L2 = 20;
n = 1;
xharm2 = 0;
 
 while xharm2 <= L2
    
    c = 1/n;
   
    xharm2 = xharm2 + c;
    
    % We add by increments of 1, to make the algo go through the values of
    % n one by one.
    n = n + 1;
 end
 
 nhat2 = n + 1;
 
 % This time we simply add the constant to the logarithm of the obtained nhat2. 
 xharmhat2 = log(nhat2)+EMConstant;
 
 fprintf(['For L = 20, Xharmhat2 is equal to %.12f and nhat2 is equal to %.f.\n'], xharmhat2, nhat2)