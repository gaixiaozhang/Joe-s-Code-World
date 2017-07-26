x=['shuju']; 
y=[]   
[m,n]=size(x);  
for i=1:n   
    y(:,i)=x(:,i)/sum([x(:,i)]) % 原始矩阵归一化 
end
for i=1:n       
    w(i)=max(y(:,i));%最大指标     
    b(i)=min(y(:,i));%最小指标     
end
D1=zeros(m,1); 
D2=zeros(m,1); 
for i=1:m     
    for j=1:n          
        ma(i,j)=(y(i,j)-w(j))^2;%计算到最优值距离         
        mi(i,j)=(y(i,j)-b(j))^2;%计算到最劣值距离         
        D1(i,1)=D1(i,1)+ma(i,j);         
        D2(i,1)=D2(i,1)+mi(i,j);     
    end
    D1(i,1)=sqrt(D1(i,1));%求D+     
    D2(i,1)=sqrt(D2(i,1));%求D- 
end
for i=1:m      
    c(i)=D2(i,1)/(D1(i,1)+D2(i,1));%求C值 
end
[x,y]=sort(c,'descend');%排序。