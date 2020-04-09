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
