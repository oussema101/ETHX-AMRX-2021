%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 1: paste values for alpha, beta, and ell from   %
%         the answer to the last question              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Wheel 1, the far right wheel
alpha1=0;
beta1=0;
ell1=0.5;

% Wheel 2, the top left wheel
alpha2=(2/3)*pi;
beta2=0;
ell2=0.5;
      
% Wheel 3, the bottom left wheel
alpha3=(4/3)*pi;
beta3=-2*pi;
ell3=0.5;
     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  sin(alpha+beta);-cos(alpha+beta);-l*cos(beta)
% Step 2: derive the matrices J and R                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
J =[0,-1,-0.5;sin((2/3)*pi),-cos((2/3)*pi),-0.5*cos(0);sin(((4/3)*pi)-(2*pi)),-cos(((4/3)*pi)-(2*pi)),-0.5*cos(-2*pi)];
R =[0.1,0,0;0,0.1,0;0,0,0.1]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 3: Compute the forward differential             %
%         kinematics matrix, F                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
F =  inv(J.'*J)*J.'*R;