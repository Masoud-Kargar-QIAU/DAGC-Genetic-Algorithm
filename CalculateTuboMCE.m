function [ TMCE ] = CalculateTuboMCE(GraphDependency,SubGraphMatrixIndex )
%This function is tested and general--------------

[ InternalLinkSum ,ExtenalLinkSum ] = SumExternaInternallLink(GraphDependency,SubGraphMatrixIndex);
TMCE=0;
if (InternalLinkSum)~=0 && (ExtenalLinkSum)~=0 
TMCE=(2*InternalLinkSum)/(2*InternalLinkSum + ExtenalLinkSum);
end
end

%% test matrix
%p=[0 1  1 0 0 0 0;1 0 0 1 1 0 0;1 0 0 1 0 0 0;0 1 1 0 0 0 0 ;0 1  0 0 0 1 1; 0 0 0 0 0 1 1;0 0 0 0 1 1 0];
%p=[0 0.7  0.8 0 0 0 0;0.7 0 0 0.9  0.7 0 0;0.8 0 0 0.8 0 0 0;0 0.9 0.8 0 0 0 0 ;0 0.7  0 0 0 0.7 0.7; 0 0 0 0 0 0.8 0.8;0 0 0 0 0.8 0.8 0];
