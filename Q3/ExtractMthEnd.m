function new = ExtractMthEnd(firmDtd)
load('dtd_mle_2000.mat', 'firmDtd')
%translate into month
dates=firmDtd(:,2);
i=1:length(dates); 
d = dates(i);
dt = datetime(d, 'ConvertFrom', 'yyyymmdd');
M=month(dt);
firmDtd(:,2)=M;

%eliminate data NaN
firmDtd1=firmDtd(1:length(firmDtd(firmDtd(:,2)==1)),:);
firmDtd2=firmDtd(length(firmDtd(firmDtd(:,2)==1))+1:104,:);
firmDtd(length(firmDtd(firmDtd(:,2)==1))+1:104,:)=fillmissing(firmDtd2,'previous');
%find every month data
j=1;new=[];
for ii=2:length(dates)
    if firmDtd(ii-1,2)<firmDtd(ii,2)
        new(j,:)=firmDtd(ii-1,:);
        j=j+1;
    end
end
new(5,:)=firmDtd(104,:);
