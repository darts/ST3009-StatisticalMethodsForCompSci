# ST3009: Statistical Methods for Computer Science

## Week 5 Assignment - Senán d'Art - 17329580

### Question 1

#### (a)

There are 5 marbles of each colour. Therefor if we pick any marble (with probability $1$), the chances of picking another marble of the same colour are $\frac{4}{9}$.  

If the colours are the same we win $1.10, otherwise we lose $1.00.

$$
E[X] = (1.1*\frac{4}{9}) - (1*\frac{5}{9}) = -0.06667
$$
<br>

#### (b)

Variance can be described as:  
$$
Var[X] = E[X^2] - (E[X])^2
$$

Using the results from **(a)**:  
$$
Var[X] = (\frac{4}{9} * 1.1^2) + (\frac{5}{9}*1^2) - (-0.06667)^2 = 1.08889
$$
<br><br>


### Question 2

#### (a)

Again we can use the formulas as above:  
$$
E[X] = (1*0.6) - (0*0.4) = 0.6
$$
$$
Var[X] = (0.6 * 1^2) + (0.4 * 0^2) - 0.6^2 = 0.24
$$
<br>

#### (b)

Assuming $E[X] = E[X_1]+E[X_2]+...+E[X_n]$.  
Yes because of the linearity of expected value:
$$
E[aX + bY] = aE[X] + bE[Y]
$$
<br>


#### (c)

$$
E[Y] = E[X_1]+E[X_2]+...+E[X_n] = n * \mu
$$
$$
E[\frac{1}{n}Y] = \frac{1}{n} * (E[X_1]+E[X_2]+...+E[X_n]) = \mu
$$
<br>

#### (d)

--
<br><br>

### Question 3

#### (a)

Since each time we remove a ball, it is not replaced, it has an influence on the next ball. In this case $1=white$, $0=red$.  
$X_1=0,X_2=0$
$$
\frac{8}{13} * \frac{7}{12} = 0.35897
$$  
<br>

$X_1=0,X_2=1$
$$
\frac{8}{13} * \frac{5}{12} = 0.25641
$$
<br>

$X_1=1,X_2=0$
$$
\frac{5}{13} * \frac{8}{12} = 0.25641
$$
<br>

$X_1=1,X_2=1$
$$
\frac{5}{13} * \frac{4}{12} = 0.12821
$$
<br>

#### (b)

Definition of independence: $P(X)P(Y) = P(X\bigcup Y)$  
Take event: $X1=0$, $X2=0$  
$P(X\bigcup Y)$, can be written as: $P(Y)$ * ($P(X)$ given $Y$)  
$$
\frac{8}{13} * \frac{8}{13} \not = \frac{8}{13}*\frac{7}{13}
$$
They are not independent.
<br>

#### (c)

$E[X_2]$ can be calculated using the values from **(a)** and the fact that if $X_2$ is white, its value is 1. Otherwise 0.  
$$
E[X_2] = (0.25641 * 1) + (0.12821 * 1) + (0.35897 * 0) + (0.25641 * 0) = 0.38462
$$
<br>

#### (d)

--
