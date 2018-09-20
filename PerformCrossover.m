% % % % function [newChromozome1, newChromozome2] = PerformCrossover( c1, c2,FileNumber )
% % % %  
% % % % 
% % % %    % l1 = length(c1)/4;
% % % %     l2 = round(length(c2)/4);
% % % % 
% % % %   % i1 = 4*sort( randperm( l1, 2 ) );
% % % %    %i2 = 4*sort( randperm( l2, 2 ) );
% % % %    i3= 4*sort( randperm( l2, 4 ) );
% % % %  
% % % % newChromozome1 = [ c1( 1:i3(1) ) c2( i3(1)+1:i3(2)-1 ) c1(i3(2):i3(3)-1)  c2( i3(3):i3(4)-1)  c1( i3(4):end ) ];
% % % % newChromozome2 = [ c2( 1:i3(1) ) c1( i3(1)+1:i3(2)-1 ) c2(i3(2):i3(3)-1)  c1( i3(3):i3(4)-1)  c2( i3(4):end ) ];
% % % % 
% % % % C3=randperm(FileNumber,FileNumber);
% % % % [A1  A2]=unique(newChromozome1);
% % % % [B1 B2]=unique(newChromozome1);
% % % % C4= setdiff (C3 ,A2);
% % % % C5= setdiff (C3 ,B2);
% % % % newChromozome1 =[transpose(A2) C4];
% % % % newChromozome2 =[transpose(B2) C5];
% % % % %DD=unique(newChromozome1);
% % % % %EE=unique(newChromozome2);
% % % % end 
% % % % 






function [newChromosome1, newChromosome2] = PerformCrossover( c1, c2 ,ClusterNumber)
 
   % l1 = length(c1)/4;
%     l2 = round(length(c2)/ClusterNumber);
   Len=length(c2);
   BreakIndex =randi([1,Len-1],1,ClusterNumber-1);
%   % i1 = 4*sort( randperm( l1, 2 ) );
%    %i2 = 4*sort( randperm( l2, 2 ) );
%    i3= 4*sort( randperm( l2, 8 ) );
[v1,l1]=sort(BreakIndex,'ascend');
BreakIndex=BreakIndex(l1);
BreakIndex=unique(BreakIndex);
BreakIndex=[1 BreakIndex Len+1];

b11=BreakIndex(1);
b12=BreakIndex(2)-1;
newChromosome1 = c1( b11:b12);
newChromosome2 = c2( b11:b12);

for i=2:length(BreakIndex)-1
if rem (i , 2) ~=0
    b11=BreakIndex(i);
    b12=BreakIndex(i+1)-1;
    newChromosome1 = [ newChromosome1  c1( b11:b12) ];
    newChromosome2 = [ newChromosome2  c2( b11:b12) ];

else 
    b11=BreakIndex(i);
    b12=BreakIndex(i+1)-1;
    newChromosome1 = [ newChromosome1  c2( b11:b12) ];
    newChromosome2 = [ newChromosome2  c1( b11:b12) ];

end 
end 