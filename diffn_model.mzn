include "globals.mzn";
include "diffn.mzn";
include "data.dzn";

%width of big rectangle
int: width;
%number of circuits
int: num_circuits;

%Set of sqaures that we would fit 1..n
set of int: CIRCUIT_DIM = 1..num_circuits;

array[CIRCUIT_DIM] of int: circuitX;
array[CIRCUIT_DIM] of int: circuitY;

% CHANGED BOTH because of inconsistencies 
% Lower bound for the height
int: min_height = num_circuits div width;
% Upper bound for the area
int: max_height   = num_circuits * max(circuitY);


% X and Y coordinates that we are interedted in finding making sure their domain is in range [0..width] for X and [0..height] for Y
array [ CIRCUIT_DIM ] of var 0..width : X;
array [ CIRCUIT_DIM ] of var 0..max_height: Y;
    
%Optimal/Minimum height that we are to find
var min_height..max_height: Height;

% Constraints.


% global non-overlap constraint
constraint diffn(X,Y,circuitX,circuitY);

% all rows width must be lower than max width
constraint
        forall( i in CIRCUIT_DIM ) (
            X[i] + circuitX[i]  <= width
        );
        
constraint cumulative(
            [ X[i] | i in CIRCUIT_DIM  ],
            [ circuitX[i]  | i in CIRCUIT_DIM ],
            [ circuitY[i]  | i in CIRCUIT_DIM ],
            Height
        );


% all coloumns height must be lower than max height
constraint
        forall( i in CIRCUIT_DIM  ) (
            Y[i] + circuitY[i] <= Height
        );

constraint cumulative(
            [ Y[i] | i in CIRCUIT_DIM],
            [ circuitY[i]  | i in CIRCUIT_DIM ],
            [ circuitX[i]  | i in CIRCUIT_DIM  ],
            width
        );

% Goal/objective
solve::  
int_search([ Height ]
            ++ [ X[num_circuits] | i in CIRCUIT_DIM ]
            ++ [ Y[num_circuits] | i in CIRCUIT_DIM ],
            input_order, indomain_split, first_fail
            )satisfy;
            
% output sequence
output["\n--max height = ", show(Height)];
output["\n--width =", show(width)];
output["\n--X coordinates ", show(X)];
output["\n--Y coordinates ", show(Y)];
output["\n--X dimensions ", show(circuitX)];
output["\n--Y dimensions ", show(circuitY)];
