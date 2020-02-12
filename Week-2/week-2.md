# ST3009: Statistical Methods for Computer Science
## Week 2 Assignment - Senán d'Art - 17329580

**Question 1**  
**(a)**  
The *sample space* is the set of all possible outcomes. Each roll has 6 possible outcomes:

$$
6*6*6 = 6^3 = 216
$$
<br>  

**(b)**  
Possibilities:  
One 2, the 2 can be in any of 3 rolls, the remaining two rolls can have 5 values:  
$$
\binom{3}{1} * 5^2 = 75
$$
Two 2s, 2 in two of 3 rolls, remaining roll can have 5 values:
$$
\binom{3}{2} * 5 = 15
$$
Three 2s:
$$
\binom{3}{3} = 1
$$

$Total = 91$

$$
\frac{91}{216} = 0.4212962963
$$
<br>  

**(c)**   
Methodology:  
Roll a 6-sided die 3 times.  
Repeat 10,000 times.  
Count number of times at least one 2 was rolled in each set.  
Return probability of rolling at least one 2.
```matlab
S = 6; %6-sided die
R = 3; %roll 3 times
N = 1; %1 die
T = 10000; %run 10,000 times
Out = randi([1 S],[R N T]);
twoCount = 0;
for n = 1:T
    if any(Out(:,:,n)==2)
        twoCount = twoCount + 1;
    end
end

twoCount/T
```


**(d)**  
To get 17, combination must be 6, 6, 5 (in any order).  
To get the number of orderings, consider the location of the 5. There are 3.
$$
Probability = \frac{3}{216} = 0.01388889
$$
<br>  

**(e)**  
First roll is a 1 so we only consider the two remaining rolls.  
Total rolls:  
$$
\binom{6}{1} * \binom{6}{1} = 6*6 = 6^2 = 36
$$
Since the remaining two rolls must sum to 11, the two numbers rolled must be [5, 6].  
There are two possible orderings: [5, 6], [6, 5] 
$$
\frac{2}{36} = 0.055555556
$$
<br><br>  

**Question 2**  
**(a)**  
Two parts:  
Probability of rolling a 1 *and* rolling a 5 on a 6-sided die:
$$
\frac{1}{6} * \frac{1}{6} = \frac{1}{36}
$$
Probability of not rolling a 1 *and* rolling a 5 on a 20-sided die: 
$$
\frac{5}{6} * \frac{1}{20} = \frac{5}{120}
$$
Total:
$$
\frac{1}{36} * \frac{5}{120} = 0.069444444
$$
<br>  

**(b)**  
Only 1 die can roll a 15 so we must roll anything *but* 1 on the first die:
$$
\frac{5}{6} * \frac{1}{20} = 0.041666667
$$
<br><br>

**Question 3**  
$P(Guilt) = 0.6$  
$P(Characteristic) = 0.2$  
$$
P(Guilt | Characteristic) = \frac{P(Characteristic|Guilt)P(Guilt)}{P(Characteristic)}
$$
This becomes:
$$
P(Guilt | Characteristic) = \frac{P(Characteristic|Guilt)P(Guilt)}{P(Characteristic|Guilt)P(Guilt)+P(Characteristic|Guilt^C)P(Guilt^C)}
$$
Which when we include the required values becomes:
$$
\frac{1 * 0.6}{(1 * 0.6) + (0.2 * 0.4)} = 0.8823
$$
<br><br>

**Question 4**  
Methodology similar to Q3 but with a matrix.  
Known values: 
$P(Location)$,
$P(Observing|Location)$  
Based of these we can get: 
$P(Location^C)$,
$P(Observing|Location^C)$  
These let us calculate: $P(Location|Observing)$, using:
$$
P(Location|Observing) = \frac{P(Observing|Location)P(Location)}{P(Observing|Location)P(Location) + P(Observing|Location^C)P(Location^C)}
$$
For example, the cell highlighted in the question:  
$P(Location) = 0.05$  
$P(Location^C) = 0.95$  
$P(Observing|Location) = 0.75$  
$P(Observing|Location^C) = 0.25$  
$$
P(Location|Observing) = \frac{0.75*0.05}{(0.75*0.05)+(0.25*0.95)} = 0.1363
$$
This is the implementation in Matlab:  
Define the matrix of $Prior Belief of Location = PriorBelief$  
Define the matrix of $P(Oberserve Two Bars of signal|Location) = ProbabilityOfBars$  
Instantiate a zero-filled matrix of size 4 * 4 $\rightarrow PostBelief$  
For each location in $PostBelief$, perform the operation defined above where the inputs are the matching locations from the other two matrices.  
Print the result.
```matlab
PriorBelief = [0.05 0.1 0.05 0.05;
               0.05 0.1 0.05 0.05; 
               0.05 0.05 0.1 0.05; 
               0.05 0.05 0.1 0.05];
ProbabilityOfBars = [0.75 0.95 0.75 0.05; 
                     0.05 0.75 0.95 0.75; 
                     0.01 0.05 0.75 0.95; 
                     0.01 0.01 0.05 0.75];
size = 4
PostBelief = zeros(size, size);
for n = 1:size
    for m = 1:size
        PostBelief(n,m) = (ProbabilityOfBars(n,m)*PriorBelief(n,m))/((ProbabilityOfBars(n,m)*PriorBelief(n,m))+((1 - ProbabilityOfBars(n,m))*(1-PriorBelief(n,m))));
    end
end

PostBelief

```
Result:
$$
\begin{array}{cc}
    0.1364  &  0.6786  &  0.1364  &  0.0028\\
    0.0028  &  0.2500  &  0.5000  &  0.1364\\
    0.0005  &  0.0028  &  0.2500  &  0.5000\\
    0.0005  &  0.0005  &  0.0058  &  0.1364
\end{array}
$$
