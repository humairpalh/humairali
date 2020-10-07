% Multivariable Data Model 
clear all

a1 = 0.99;
b1 = 0.8;
b2 = 0.1;
b3 = 0.1;
c1 = 0.1;
c2 = 0.3;
c3 = 0.08;

%          n_matrix = 0.2*xlsread('Protein_radiii_data2');
        n_matrix= 0.2*randn(3,5000);
     n_matrix = n_matrix(1:3,:)
    
matrix1 = [a1, 0, 0; ...
          b3, b1, 0; ...
          0, c2, c1];
       
matrix2 = [0, 0, 0; ...
           0, b2, 0; ...
           c3, 0, 0];
      


y_t_1 = randn(3,1);  % t-1 values [1.5; 1.5; 1.5];
y_t_2 = randn(3,1); % t-2 values[1; 1; 1];


for ii = 1: size(n_matrix,2)
    
    Y(:,ii) = matrix1 * y_t_1 + matrix2 * y_t_2 + + n_matrix(:,ii);
    
    y_t_2 = y_t_1;
    y_t_1 = Y(:,ii);
    
 
end
plot(Y(1,1:5000))
hold on
plot(Y(2,1:5000),'r')
plot(Y(3,1:5000),'k')
% % % % % % % % % 

% plot (Y)
% subplot(3,1,1)
% plot(Y(1,:))
% xlabel('time')
% ylabel('Values for Y1')
% subplot(3,1,2)
% plot(Y(3,:),'r')
% xlabel('time')
% ylabel('Values for Y2')
% subplot(3,1,3)
% plot(Y(3,:),'k')
% xlabel('time')
% ylabel('Values for Y3')
% print('Y_values_plot.jpg','-djpeg')
save('generateddata.mat','Y')

% a1 = 0.99;
% b1 = 0.8;
% b2 = 0.1;
% b3 = 0.1;
% c1 = 0.1;
% c2 = 0.3;
% c3 = 0.08;
% % % % % % % % % % % % % % %
       