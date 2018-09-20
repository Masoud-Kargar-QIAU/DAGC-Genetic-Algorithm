function   [Adj,Ids]=NewShowFileIndexCount(GraphDependency, AllFileNames,chromozone ,SpeceficCluster)


indexes=find(chromozone==SpeceficCluster);
[~,CountFile]=size(indexes);

Adj=zeros(CountFile,CountFile);

Newindexes=indexes(1,:) ;

Adj=GraphDependency(Newindexes,Newindexes);
Ids=AllFileNames(Newindexes);
end


