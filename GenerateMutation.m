% % % % function mutpop=GenerateMutation( pop,npop,nmut,FileNumber)
% % % % 
% % % % field1='chromozone';
% % % % value1=zeros(1,FileNumber);
% % % % field2='chromozonefitness'; 
% % % % value2=zeros(1);
% % % % MutPop=struct(field1,value1,field2,value2);
% % % % 
% % % % mutpop(nmut)=MutPop;
% % % % 
% % % % RandomMut=2;
% % % % 
% % % % for i=1:nmut
% % % %  
% % % %     index=randi([1,npop]);
% % % %     MPop=pop(index);
% % % %    
% % % %     index1=randi([1,FileNumber],1,RandomMut);
% % % %     MPop.chromozone(index1)=randi([1,RandomMut],1,RandomMut);
% % % %   
% % % %     
% % % %      C3=randperm(FileNumber,FileNumber);
% % % %      [index2  value2]=unique(MPop.chromozone);
% % % %      C4= setdiff (C3 ,value2);
% % % %      MPop.chromozone=[transpose(value2) C4];
% % % %      %[index3 value3]=unique(MPop.chromozone);
% % % %     
% % % %     mutpop(i)=MPop;
% % % %    
% % % %     
% % % %     
% % % %     
% % % % end
% % % % 
% % % % end













function mutpop=GenerateMutation( pop,npop,nmut,FileNumber)

field1='chromozone';
value1=zeros(1,FileNumber);
field2='chromozonefitness'; 
value2=zeros(1);
MutPop=struct(field1,value1,field2,value2);

mutpop(nmut)=MutPop;



for i=1:nmut
 
    index=randi([1,npop]);
    MPop=pop(index);
    
    [~,ClusterNumber]=size(unique(MPop.chromozone));
   
    index1=randi([1,FileNumber],1,1);% last 1=ClusterNumber
     MPop.chromozone(index1)=randi([1,ClusterNumber],1,1); %last  1=ClusterNumber
  
    mutpop(i)=MPop;
   mutpop(i).chromozonefitness=0.0;
end
