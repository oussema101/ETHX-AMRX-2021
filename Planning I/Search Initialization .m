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
