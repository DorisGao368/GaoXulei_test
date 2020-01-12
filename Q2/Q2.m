load('pfInfo.mat', 'pfInfo');

m1=pfInfo.firmList;
result_table=table(m1(:,1));
%创建csv表格
writetable(result_table, 'companylist.csv')
m2=[];j=1;
for i = 1:length(m1(:,7))
    if m1(i,7) == 10008
        m2(j,:)= m1(i,:);
        j=j+1;
    end
end
result_table=table(m2(:,1));
writetable(result_table, 'Companylist_Financial.csv')
m3=[];j=1;
for i = 1:length(m1(:,7))
    if m1(i,7) == 10002
        m3(j,:)= m1(i,:);
        j=j+1;
    end
end
result_table=table(m3(:,1));
writetable(result_table, 'Companylist_Basic_Material.csv')
m4=[];j=1;
for i = 1:length(m1(:,7))
    if m1(i,7) == 10003
        m4(j,:)= m1(i,:);
        j=j+1;
    end
end
result_table=table(m4(:,1));
writetable(result_table, 'Companylist_Communications.csv')
m5=[];j=1;
for i = 1:length(m1(:,7))
    if m1(i,7) == 10004
        m5(j,:)= m1(i,:);
        j=j+1;
    end
end
result_table=table(m5(:,1));
writetable(result_table, 'Companylist_Consumer_cyclical.csv')
m6=[];j=1;
for i = 1:length(m1(:,7))
    if m1(i,7) == 10005
        m6(j,:)= m1(i,:);
        j=j+1;
    end
end
result_table=table(m6(:,1));
writetable(result_table, 'Companylist_noncyclical.csv')

m7=[];j=1;
for i = 1:length(m1(:,7))
    if m1(i,7) == 10006
        m7(j,:)= m1(i,:);
        j=j+1;
    end
end
result_table=table(m7(:,1));
writetable(result_table, 'Companylist_Diversified.csv')

m8=[];j=1;
for i = 1:length(m1(:,7))
    if m1(i,7) == 10007
        m8(j,:)= m1(i,:);
        j=j+1;
    end
end
result_table=table(m8(:,1));
writetable(result_table, 'Companylist_Energy.csv')

m9=[];j=1;
for i = 1:length(m1(:,7))
    if m1(i,7) == 10011
        m9(j,:)= m1(i,:);
        j=j+1;
    end
end
result_table=table(m9(:,1));
writetable(result_table, 'Companylist_Industrial.csv')


m10=[];j=1;
for i = 1:length(m1(:,7))
    if m1(i,7) == 10013
        m10(j,:)= m1(i,:);
        j=j+1;
    end
end
result_table=table(m10(:,1));
writetable(result_table, 'Companylist_Technology.csv')

m11=[];j=1;
for i = 1:length(m1(:,7))
    if m1(i,7) == 10014
        m11(j,:)= m1(i,:);
        j=j+1;
    end
end
result_table=table(m11(:,1));
writetable(result_table, 'Companylist_Utilities.csv')

