% Omar Ben Ayed 38628

function y = bubblesort(A) % A function that receives a vector A as input and returns the vector sorted in ascending order.

n = length(A); % We set n as the length of the vector analyzed
    for i = 1:n % Our loop will run from 1 to n
        for j=1:n-1 % Since we will use j+1 in the second for loop we put n-1
            if A(j) > A(j+1) % If the first value is larger then the one that succeeds it, they will swap places inside the vector
            a = A(j);
            A(j) = A(j+1);
            A(j+1) = a;
            end
        end  
    end
display(A) % We display the sorted vector
end

