% First, find 35 companys'name
load('firmSpecific.mat', 'varCol')
load('firmSpecific.mat', 'firmSpecific')
load('firmList.mat')
k=1;
for j=1:35
    for i = 1:365
        name(k)=firmSpecific(i,1,j);
        k=k+1;
    end
end
name1=unique(name);
companyname=name1(1:35);

%distinct financial or nonfinancial company
m2=[];j=1;m1=firmList;
for i = 1:length(m1(:,1))
    if m1(i,2) == 10008
        m2(j,:)= m1(i,:);
        j=j+1;
    end
end


GOAL=[];
for i=1:35

    if  any(m2(:,1) == companyname(i))
        GOAL(i)=1; %is financial company
    else
        GOAL(i)=0;  %is nonfinancial company
    end
end
% find Financial company
j=1;B=(1:35).*GOAL;
for i=1:35
    if B(i)~=0
        c1(j)=B(i);
        j=j+1;
    end
end

r1=firmSpecific(1:365,6,c1);
S = size(r1);
M = reshape(r1,[S(1)*S(2)*S(3),1]);
DTD_median_Fin=nanmedian(M); %find the Median value of all financial company

% find non-Financial company and median
j=1;B1=-(1:35).*(GOAL-1);
for i=1:35
    if B1(i)~=0
        c2(j)=B1(i);
        j=j+1;
    end
end

r2=firmSpecific(1:365,6,c2);
S = size(r2);
M = reshape(r2,[S(1)*S(2)*S(3),1]);
DTD_median_nonFin=nanmedian(M);

for i=c1;
    firmSpecific(:,13,i)=repmat(DTD_median_Fin,365,1);
end
for i=c2;
    firmSpecific(:,14,i)=repmat(DTD_median_nonFin,365,1);
end





