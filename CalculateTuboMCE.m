function [ TMCE ] = CalculateTuboMCE(GraphDependency,SubGraphMatrixIndex )
[ InternalLinkSum ,ExtenalLinkSum ] = SumExternaInternallLink(GraphDependency,SubGraphMatrixIndex);
TMCE=0;
if (InternalLinkSum)~=0 && (ExtenalLinkSum)~=0 
TMCE=(2*InternalLinkSum)/(2*InternalLinkSum + ExtenalLinkSum);
end
end

