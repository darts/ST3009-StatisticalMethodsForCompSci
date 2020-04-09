# ST3009: Statistical Methods for Computer Science

## Week 10 Assignment - Senán d'Art - 17329580


### Q1

#### (a)  

$0$  
Fx(X) - lim y->X Fx(y) = 0  
Since at that point there is no change

#### (b)

Since $P(x<y) = y$ for $0\leq x \leq 1$  
This is a quarter of the possibilities -> prob = $\frac{1}{4}$ 

#### (c)  

Prob that x < 0 = 0 so we disregard that.  
Prob that x < 0.5 = 0.5

<br><br>

### Q2

#### (a)  

<include graph of pdf>
<include graph of cdf>

$$
CDF(x) = (\frac{x}{2})(\frac{x}{2}) = \frac{x^2}{4}
$$


#### (b)  

Can ignore where x > 2.  
$0.5 \leq x \leq 2$  
$1 - \frac{(0.5^2)}{4} = 0.9375$ 

<br><br>

### Q3  

#### (a)  

$$
F_{XY}(x,y) = \frac{e^{-|x|}}{2} * e^{-2|y|}
$$


#### (b)  

$$
F_{XY}(x,y) = \frac{e^{-|xy|}}{2}
$$

From definition of conditional PDF:
$$
f_{X|Y}(x|y) = \frac{f_{XY}(x,y)}{f_Y(y)}
$$

In our case:

$$
f_{Y|X}(y|x) = \frac{f_{XY}(x,y)}{f_X(x)}
$$
 
Where:
$$
F_{XY}(x,y) = \frac{e^{-|xy|}}{2}
$$
and
$$
F_X(x) = \frac{e^{-|x|}}{2}
$$

We get:
$$
f_{Y|X}(y|x) = \frac{\frac{e^{-|xy|}}{2}}{\frac{e^{-|x|}}{2}} = \frac{e^{-|xy|}}{e^{-|x|}}
$$

#### (c)  

Definition of Bayes Rule for PDF:
$$
f_{Y|X}(y|x) = \frac{f_{X|Y}(x|y)f_Y(y)}{f_X(x)}
$$

In our case this becomes:

$$
f_{X|Y}(x|y) = \frac{f_{Y|X}(y|x)f_X(x)}{f_Y(y)}
$$

Where:

$$
f_{Y|X}(y|x) = \frac{e^{-|xy|}}{e^{-|x|}}
$$
and:
$$
f_Y(y) = e^{-2|y|}
$$
and:
$$
f_X(x) = \frac{e^{-|x|}}{2}
$$

We get:

$$
f_{X|Y}(x|y) = \frac{\frac{e^{-|xy|}}{e^{-|x|}}\frac{e^{-|x|}}{2}}{e^{-2|y|}} = \frac{\frac{e^{-|xy|}}{2}}{e^{-2|y|}} = \frac{e^{-|xy|}}{2e^{-2|y|}}
$$


### Q4

#### (a)  

The joint PDFs are the product of all other PDFs ie:

$$
f_{Z|X} = e^{-2|\theta y^{(1)} - x^{(1)}|} * e^{-2|\theta y^{(2)} - x^{(2)}|} * ... *e^{-2|\theta y^{(m)} - x^{(m)}|}
$$ 

Which becomes:

$$
f_{Z|X} = {\displaystyle \prod_{i=1}^m} e^{-2|\theta y^{(i)} - x^{(i)}|}
$$


#### (b)  

1. Pick a random value for $\theta$.  
2. Test the value of $\theta$ in $f_{Z|X}$.
3. Test a value higher than $\theta$ by some value $x$ and one lower than $\theta$ by $x$. This will allow us to see the slope and where the next estimate of $\theta$ should be.
4. Choose the value of $\theta$ which results in the largest $f_{Z|X}$ and repeat steps 2-4 until a desired accuracy is reached.

The value of $x$ must be carefully chosen as a value too small will take a long time to reach an optimal answer and a value that is too large may miss the optimal answer completely.  
It would be possible that the when $f_{Z|X}$ stops growing and starts shrinking we modify the algorithm. This could be done by taking the previous two values of $\theta$ and testing the midpoint. The mid point then either becomes the upper or lower bound. We repeat this process until a desired accuracy is reached.
