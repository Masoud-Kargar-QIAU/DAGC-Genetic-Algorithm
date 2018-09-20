function Fitness=CalculateFitnessPerChromozone(GraphDependency,PopMember)


pp=unique(PopMember.chromozone);
[~,ClusterNumber]=size(pp);

a=zeros(1,ClusterNumber);

for i= 1:ClusterNumber
              ClusterIndex1=find(PopMember.chromozone==pp(i));
              a(i)=CalculateTuboMCE(GraphDependency,  ClusterIndex1 );

end
PopMember.chromozonefitness=mean(a);
Fitness=PopMember.chromozonefitness;

end

