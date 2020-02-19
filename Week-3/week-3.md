# ST3009: Statistical Methods for Computer Science
## Week 3 Assignment - Senán d'Art - 17329580

**Question 1**  
**(a)**  
Probability of rolling an exact number is: $\frac{1}{6}$  
For 6 consecutive rolls:
$$
\frac{1}{6} *\frac{1}{6} *\frac{1}{6} *\frac{1}{6} *\frac{1}{6} *\frac{1}{6}  = 
(\frac{1}{6}) ^ 6 = \frac{1}{42,656} = 0.00002344336084
$$
<br>

**(b)**  
Probability of rolling three 3's: 
$$
(\frac{1}{6})^3
$$
Probability of rolling any number other than 3 twice:
$$
    (\frac{5}{6})^2
$$
Probability of both. However we must take into account the two rolls that do not produce a 3 can be in any 2 of 6 locations:
$$
\binom{6}{2} * (\frac{5}{6})^2 * (\frac{1}{6})^ 4 = 0.00803755144
$$
<br>

**(c)**  
The 1 can be in any of six locations (similar to above):
$$
    \binom{6}{1} * \frac{1}{6} * (\frac{5}{6})^5 = 0.401877572
$$
<br>

**(d)**  
1 - (Probability of not rolling a 1, six times in a row)
$$
1 - (\frac{5}{6})^6 = 0.6651020233
$$
<br><br>

**Question 2**  
Probability of rolling a 1 in the case of the first die: $\frac{1}{6}$  
Probability of rolling a 1 in the case of the second die: $\frac{1}{20}$  
$P(A) = \frac{1}{6}$  
$P(B) = \frac{1}{6} * \frac{1}{20} = \frac{1}{120}$   
Definition of independence: $P(A\bigcap B) = P(A)P(B)$  
$$
    P(A)P(B) = \frac{1}{6} * \frac{1}{120} = \frac{1}{720}
$$
$$
    P(A\bigcap B) = P(A|B)P(B) = 1 * \frac{1}{120}
$$
$P(A\bigcap B) \not = P(A)P(B)$  

The events are **not independent**.  
<br><br>  

**Question 3**  
**(a)**  
Probability of picking the correct password:
$$
P(wrong) * P(wrong) * P(wrong) * ... * P(right)
$$
This becomes:
$$
P(wrong)^{k-1} * P(right)
$$
As we are removing one each time it is incorrect:
$$
(\frac{n-1}{n} * \frac{n-2}{n-1} * \frac{n-3}{n-2} * ... * \frac{n-(k-1)}{n - (k-2)} ) *  \frac{1}{n-(k-1)}
$$
<br>

**(b)**  
When $n=6$ and $k=3$
$$
\frac{6-1}{6} * \frac{6-2}{6-1} * \frac{1}{6 - (3-1)} = 0.1666666667
$$
<br>

**(c)**  
In this case we are not removing passwords when they are tested. Again:
$$
P(wrong) * P(wrong) * P(wrong) * ... * P(right)
$$
As in part (a):
$$
P(wrong)^{k-1} * P(right)
$$
But because they are not being removed we can write it as:
$$
(\frac{n-1}{n})^{k-1} * \frac{1}{n}
$$
<br>

**(d)**  
$$
(\frac{6-1}{6})^{3-1} * \frac{1}{6} = 0.1157407407
$$
<br><br>

**Question 4**  
**(a)**  
1 - (Probability of not getting flagged 3 times)
$$
1 - (0.3)^3 = 0.973
$$
<br>

**(b)**  
1 - (Probability of not being flagged 3 times)  
$$
1 - (0.95)^3 = 0.142625
$$
<br>

**(c)**  
$P(R) = 0.1$, probability that a visitor is a robot  
$P(R^c) = 0.9$, probability that a visitor is not a robot  
$P(F|R) = 0.973$, probability that a visitor is flagged, given they are a robot  
$P(F|R^c) = 0.142625$, probability that a visitor is flagged, given they are not a robot 
$$
P(R|F) = \frac{P(F|R) P(R)}{P(F|R) P(R) + P(F|R^c) P(R^c)}
$$
When we include the values:
$$
P(R|F) = \frac{(0.973)(0.1)}{(0.973)(0.1) + (0.142625)(0.9)} = 0.431174874
$$
