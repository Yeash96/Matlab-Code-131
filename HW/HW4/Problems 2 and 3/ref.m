function newtonmthd()
%a)
f = cos(x + 2^(0.5)) + x*(0.5*x + 2^(0.5));
%b)
%f = exp(6*x) + 3*((log(2))^2)*exp(2*x)-log(8)*exp(4*x)- (log(2))^3;
df = diff(f,x,1);
iter_arr = [];
err_arr = [];
%eval((subs(diff(f,x,1),x,1)) )
x0 = 02;
x1 = x0 - eval((subs(f,x,x0)))/eval(subs(df,x,x0));

figure()
hold on;
iter = 1;
fprintf('Iteration %d p = %d error = %d \n', iter, x1, abs(x0-x1));
iter_arr(1) = 1;
err_arr(1) = abs(x0-x1);
while(abs(x0-x1) > 10^(-6))
    %plot(iter,abs(x0-x1),'-o');
    x0 = x1;
    x1 = x0 - eval((subs(f,x,x0)))/eval(subs(df,x,x0));
    iter = iter + 1;
    iter_arr(iter) = iter;
    err_arr(iter) = log(abs(x0-x1));
    fprintf('Iteration %d p = %d error = %d \n', iter, x1, abs(x0-x1));
end
fprintf('Finished\n')
fprintf('p = %d error = %d \n', x1, abs(x0-x1));
plot(iter_arr,err_arr);
plot(iter_arr, err_arr, '-o')
 title('Secant');
    plot(iter_arr,err_arr,'.r','MarkerSize',20);
    plot(iter_arr,err_arr,'b-.','LineWidth',1); hold off;
labels = cellstr( num2str([1:iter]') );  %' # labels correspond to their order
text(iter_arr, err_arr, labels, 'VerticalAlignment','bottom', ...
                             'HorizontalAlignment','right')

end