## VLSI optimization project 
Optimization project on the VLSI problem.

#### Hei Muhammad! These are the changes I made to your model

1) I used a powerful global constraint called DIFFN to ensure non-overlap
2) I changed a bit the data structures, Instead of a single [Cx2] array I opted for two single dimension arrays [C][C]. 
3) I found the upper/lower bound limits to be inconsistent, so I changed to different ones.
4) I developed a small visualizing program, its useful and It helped understanding some critical behaviour. Its not fully automated but I changed the output from minizinc, so to be easly copied and pasted in the python program.
5) I did some statistical comparison between baseline and diffn that we can include in the project report. I included some graphics. Results are as expected, the global constraint is a big improovement. 
6) I made this repo, if you like github we can work here 

#### what is still undone?
1) symmetry breaking 

#### content table
| file | content |
| --- | --- |
| baseline | simplest baseline model |
| diffn | global constraint model improovement  |
| data | contains test data  |
| display_data | python tool for visualizing results |
| optimization_results | contains optimization statistics |

#### visualization example 
![sample2](https://user-images.githubusercontent.com/32902835/124945560-904c1000-e00e-11eb-94c4-bf74cc81de0f.png)

#### baseline search visualized 
![baseline](https://user-images.githubusercontent.com/32902835/124945649-a528a380-e00e-11eb-92b9-a4bee08b1234.png)

#### dffn search visualized 
![dffn](https://user-images.githubusercontent.com/32902835/124945687-ac4fb180-e00e-11eb-946b-bb391fe92cb4.png)
