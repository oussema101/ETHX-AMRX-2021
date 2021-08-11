% write down the map (-1 for occupied and 0 for free cells)
Map         = zeros(11,9);
Map(1,:) = -1; Map(11,:) = -1; Map(:,1) = -1; Map(:,9)     = -1;
Map(9,2) = -1; Map(10,2) = -1; Map(10,3)= -1; Map(5:6,5:8) = -1;;

% enter start and goal locations
SearchStart = [3,7];
SearchGoal  = [9,6];
        
% visualize the map
% imagesc(Map)
% set(gca,'dataAspectRatio',[1 1 1])