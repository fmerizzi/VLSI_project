include "globals.mzn";
include "diffn.mzn";
include "data.dzn";

%width of big rectangle
int: width;
%number of circuits
int: num_circuits;

%Set of sqaures that we would fit 1..n
set of int: CIRCUIT_DIM = 1..num_circuits;
%dimensions of small-circuits that we want to place in big rectangle
array[CIRCUIT_DIM, 1..2] of int: circuits;
array[CIRCUIT_DIM] of int: circuitX;
array[CIRCUIT_DIM] of int: circuitY;

% Lower bound for the height
int: min_height = num_circuits;
% Upper bound for the area
int: max_area   = width * min_height;
% Upper bound for the height
int: max_height = max_area ;
   

% X and Y coordinates that we are interedted in finding making sure their domain is in range [0..width] for X and [0..height] for Y
array [ CIRCUIT_DIM ] of var 0..width : X;
array [ CIRCUIT_DIM ] of var 0..max_height: Y;
    
%Optimal/Minimum height that we are to find
var min_height..max_height: Height;

% Constraints.


%non-overlap constraint 
% one overlap is enough 
% this or condition is very inefficient. 

constraint diffn(X,Y,circuitX,circuitY);

              
%fitted CIRCUIT_DIM must not exceed the width 
%also, at the same moment for each row if we sum the column it should not exceed the height 
constraint
        forall( i in CIRCUIT_DIM ) (
            X[i] + circuits[i,1]  <= width
        )
    /\  cumulative(
            [ X[i] | i in CIRCUIT_DIM  ],
            [ circuits[i,1]  | i in CIRCUIT_DIM ],
            [ circuits[i,2]  | i in CIRCUIT_DIM ],
            Height
        );

%similar constraint on Y-coordinnates 
constraint
        forall( i in CIRCUIT_DIM  ) (
            Y[i] + circuits[i,2] <= Height
        )
    /\  cumulative(
            [ Y[i] | i in CIRCUIT_DIM],
            [ circuits[i,2]  | i in CIRCUIT_DIM ],
            [ circuits[i,1]  | i in CIRCUIT_DIM  ],
            width
        );

% Goal/objective
solve::  
int_search([ Height ]
            ++ [ X[num_circuits] | i in CIRCUIT_DIM ]
            ++ [ Y[num_circuits] | i in CIRCUIT_DIM ],
            input_order, indomain_split, first_fail
            )satisfy;

/*solve::  
int_search([ Height ]
            ++ [ X[n] | i in CIRCUIT_DIM ]
            ++ [ Y[n] | i in CIRCUIT_DIM ],
            input_order, dom_w_deg, indomain_split
            )satisfy;
*/
