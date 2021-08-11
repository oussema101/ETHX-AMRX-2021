% parameter
tol      =  0.01;
maxIter  = 50;

% initialize map
Map = zeros(11,9);
Map(1,:) = -1; Map(11,:) = -1; Map(:,1) = -1; Map(:,9)     = -1;
Map(9,2) = -1; Map(10,2) = -1; Map(10,3)= -1; Map(5:6,5:8) = -1;

% initialize search start and goal locations
SearchStart = [3,7];
SearchGoal  = [9,6];

% initialize iterative search
SearchSolution = zeros(size(Map));
SearchSolution(Map==-1)=1;   %set obstacle cells to "1"
SearchSolution(Map==0) =0.5; %set free cells to "0.5"
SearchSolution(SearchGoal(1),SearchGoal(2)) = 0;

% iteratively solve the discrete Laplace Equation with Dirichlet boundary conditions
iter = 0; maxChange = inf;
while maxChange > tol
    iter = iter+1;
   % assert(maxIter > iter, 'maxIter assert triggered. Aborting.');

    NextSearchSolution = SearchSolution;
    for x=1:1:size(Map,1)
        for y=1:1:size(Map,2)
            if and(SearchSolution(x,y)~=0,SearchSolution(x,y)~=1)
                NextSearchSolution(x,y) = 1/4*(SearchSolution(x-1,y) +SearchSolution(x+1,y) +   SearchSolution(x,y-1) +   SearchSolution(x,y+1) ); 
                                               
                                             
                                             
            end
        end
    end
        
    maxChange = max(max(abs(SearchSolution-NextSearchSolution)));
    SearchSolution = NextSearchSolution;
end