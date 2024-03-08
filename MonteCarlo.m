clc
clear
close all

%% information
%%Matlab code for Generating stochastic parameters
%%M. Keshavarz, H. Hosseini-nasab, M.B. Fakhrzad and H. Khademi-Zare. Matlab code for “Impact of resource reconfiguration on the dairy supply chain resilience” (2024). 
%% Genarating Vj and Hr
%%%%%%%%%%%%s=100,j=1,t=12,k=11,p=6
J = 1;
P = 600; %6=P*s=100*j=1
T = 13;
S = 100;

lambda=randi([3  12],1,T);
Vj=zeros(P,T);
hr=zeros(P,T);
K=1100; 
arrivaltime=zeros(K,T);
rng('default');

    for p=1:P
        
       t=1;
       
        while t<T
         
            t=t+round(poissrnd(lambda(1,T))+1);
            disrup=unifrnd(0,1,p,t);
            disrup2=unifrnd(0,1,p,t);
        
       
            Vj(p,t)=disrup(p,t);
            hr(p,t)=disrup2(p,t);
           
       
        end
    end
    
 %% Generating D
 
 
    lambda1=randi([0  0],1,T);
    d1=zeros(K,T);
    d2=zeros(K,T);
    d3=zeros(K,T);
    d4=zeros(K,T);
    d5=zeros(K,T);
    d6=zeros(K,T);
    
 
     for k=1:K
       t=1;
        while t<T      
           
          t=t+round(poissrnd(lambda1(1,T))+1);
            disrup4=unifrnd(0,1,k,t);
            d1(k,t)=round(250+(250*disrup4(k,t)));
            d2(k,t)=round(10+(10*disrup4(k,t)));
            d3(k,t)=round(50+(50*disrup4(k,t)));
            d4(k,t)=round(50+(50*disrup4(k,t)));
            d5(k,t)=round(75+(50*disrup4(k,t)));
            d6(k,t)=round(75+(75*disrup4(k,t)));
             
            
        end
     end
   

       D=[d1(1:100,:);d2(1:100,:);d3(1:100,:);d4(1:100,:);d5(1:100,:);d6(1:100,:);
          d1(101:200,:);d2(101:200,:);d3(101:200,:);d4(101:200,:);d5(101:200,:);d6(101:200,:);
          d1(201:300,:);d2(201:300,:);d3(201:300,:);d4(201:300,:);d5(201:300,:);d6(201:300,:);
          d1(301:400,:);d2(301:400,:);d3(301:400,:);d4(301:400,:);d5(301:400,:);d6(301:400,:);
          d1(401:500,:);d2(401:500,:);d3(401:500,:);d4(401:500,:);d5(401:500,:);d6(401:500,:);
          d1(501:600,:);d2(501:600,:);d3(501:600,:);d4(501:600,:);d5(501:600,:);d6(501:600,:);
          d1(601:700,:);d2(601:700,:);d3(601:700,:);d4(601:700,:);d5(601:700,:);d6(601:700,:);
          d1(701:800,:);d2(701:800,:);d3(701:800,:);d4(701:800,:);d5(701:800,:);d6(701:800,:);
          d1(801:900,:);d2(801:900,:);d3(801:900,:);d4(801:900,:);d5(801:900,:);d6(801:900,:);
          d1(901:1000,:);d2(901:1000,:);d3(901:1000,:);d4(901:1000,:);d5(901:1000,:);d6(901:1000,:);
          d1(1001:1100,:);d2(1001:1100,:);d3(1001:1100,:);d4(1001:1100,:);d5(1001:1100,:);d6(1001:1100,:)];


%% Generating Vi
%i=2,s=100  
I=200;
lambda2=randi([7 8],1,T);
Vi=zeros(I,T);


for i=1:I 
       t=1;
       
        while t<T
           
            t=t+round(poissrnd(lambda2(1,T))+1);
            disrup3=unifrnd(0,1,i,t);
            Vi(i,t)=disrup3(i,t);
       
        end
end
      






