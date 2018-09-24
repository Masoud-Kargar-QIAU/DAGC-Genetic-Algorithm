 
function PopulationResult=CalaulatePopulationFitness(GraphDependency,Population,FileNumber)

PopulationResult=Population;  
Population1=CalculatePopulationCluster(Population,FileNumber);


[~, npop ]=size(Population1);
for i=1:npop
   PopulationResult(i).chromozonefitness=CalculateFitnessPerChromozone(GraphDependency,Population1(i));

  
end

end



         
     











