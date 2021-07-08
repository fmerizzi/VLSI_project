baseline, simplest model : 

with data 
circuits=[|1,1|2,2|3,3|2,1|4,5|1,2|1,1|2,2|3,3|2,1|4,5|1,2|1,1|2,2|3,3|2,1|4,5|1,2|];
num_circuits = 18;
width=4;

% Generated FlatZinc statistics:
%%%mzn-stat: paths=685
%%%mzn-stat: flatBoolVars=474
%%%mzn-stat: flatIntVars=34
%%%mzn-stat: flatBoolConstraints=153
%%%mzn-stat: flatIntConstraints=536
%%%mzn-stat: evaluatedReifiedConstraints=84
%%%mzn-stat: evaluatedHalfReifiedConstraints=474
%%%mzn-stat: method="satisfy"
%%%mzn-stat: flatTime=0.522785
%%%mzn-stat-end

X = array1d(1..18, [3, 2, 1, 0, 0, 3, 2, 2, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0]);
Y = array1d(1..18, [22, 26, 0, 28, 8, 20, 28, 24, 18, 27, 13, 18, 2, 24, 21, 26, 3, 0]);
Height = 29;
% time elapsed: 1.43 s
----------
%%%mzn-stat: initTime=0.005126
%%%mzn-stat: solveTime=0.887048
%%%mzn-stat: solutions=1
%%%mzn-stat: variables=511
%%%mzn-stat: propagators=647
%%%mzn-stat: propagations=3760837
%%%mzn-stat: nodes=17732
%%%mzn-stat: failures=8848
%%%mzn-stat: restarts=0
%%%mzn-stat: peakDepth=50
%%%mzn-stat-end
Finished in 1s 470msec

-----------------------------------------------------------------
diffn improovement 

% Generated FlatZinc statistics:
%%%mzn-stat: paths=0
%%%mzn-stat: flatIntVars=34
%%%mzn-stat: flatIntConstraints=21
%%%mzn-stat: method="satisfy"
%%%mzn-stat: flatTime=0.120985
%%%mzn-stat-end

X = array1d(1..18, [3, 2, 1, 0, 0, 3, 2, 2, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0]);
Y = array1d(1..18, [22, 27, 0, 28, 13, 20, 26, 24, 21, 27, 8, 18, 2, 24, 18, 26, 3, 0]);
Height = 29;
% time elapsed: 0.34 s
----------
%%%mzn-stat: initTime=0.000619
%%%mzn-stat: solveTime=0.202725
%%%mzn-stat: solutions=1
%%%mzn-stat: variables=37
%%%mzn-stat: propagators=23
%%%mzn-stat: propagations=81142
%%%mzn-stat: nodes=12414
%%%mzn-stat: failures=6190
%%%mzn-stat: restarts=0
%%%mzn-stat: peakDepth=51
%%%mzn-stat-end
Finished in 354msec

