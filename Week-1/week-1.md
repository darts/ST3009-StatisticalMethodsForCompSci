# ST3009: Statistical Methods for Computer Science
## Week 1 Assignment - Senán d'Art - 17329580

**Question 1**  
**(a)**  
No restrictions so letters can be in any order. To generate all possible results:
$$
\binom{10}{1}
\binom{9}{1}
\binom{8}{1}
\binom{7}{1}
\binom{6}{1}
\binom{5}{1}
\binom{4}{1}
\binom{3}{1}
\binom{2}{1}
\binom{1}{1}
$$
As every time we choose a letter it is removed from the pool of available letters. So for the first letter we can choose 1 of the available 10, for the second there are only 9 letters remaining so we can choose 1 of 9 and so on.   
This becomes:
$$
10*9*8*7*6*5*4*3*2*1
$$
Which is: 
$$
10! = 3,628,800
$$
<br>

**(b)**  
Restrictions of *E* and *F* being next to each other but in any order means we can treat it as a pool of 9 characters. Following the reasoning of part (a) we start at choosing 1 of 9 possible letters followed by 1 of 8 and so forth.
$$
9*8*7*6*5*4*3*2*1 = 9!
$$
But since *E* and *F* can be in the order *EF* or *FE* we need to multiply this by 2.
$$
9! * 2 = 725,760
$$
<br>

**(c)**  
Word 'BANANA' contains 6 letters. Ignoring the fact that *A* and *N* are repeated we have a total number of possibilities of:
$$
6!
$$
But '*A*' *is* repeated 3 times and '*N*' 2 times. Due to this we must discount these duplicates resulting in:
$$
\frac{6!}{(3!)(2!)} = 60
$$
<br>

**(d)**  
There are 5 letters to choose from. We must choose 3.
$$ 
\binom{5}{3} = 10
$$  
<br>  

**Question 2**  
**(a)**  
For each roll of the die there are 6 possible results, 4 rolls:
$$
6 * 6 * 6 * 6 = 6 ^ 4 = 1,296
$$
<br>

**(b)**  
Exactly two *3*s. This means we only need to consider the two that aren't *3*. Each of these can have 1 of 5 values (1,2,4,5,6). They occupy 2 of the 4 rolls meaning that the number of locations is 4 choose 2. 
$$
\binom{4}{2} * \binom{5}{1} * \binom{5}{1} = \binom{4}{2} * 5^2 = 150
$$
<br>

**(c)**  
To get all possible scenarios of at least two *3*s:  
- two *3*s - as above:
$$
\binom{4}{2} * \binom{5}{1} * \binom{5}{1} = \binom{4}{2} * 5^2 = 150
$$
- three *3*s - similar to above but now 3 of 4 locations are *3*s and only one can be 1,2,4,5,6:
$$
\binom{4}{3} * \binom{5}{1} = \binom{4}{3} * 5 = 20
$$
- four *3*s - all *3*s:
$$
\binom{4}{4} = 1
$$
The sum of these options is:
$$
150 + 20 + 1 = 171
$$
<br>


**Question 3**  
**(a)**  
Similar to Q1(c). There are 8 total but each of the 4 distinct cards are repeated twice.  
$$
\frac{8!}{2!*2!*2!*2!} = \frac{8!}{(2!)^4} = 2,520
$$
<br>

**(b)**  
Assuming order is important, the number of possible combinations is gotten by choosing 1 of 4 for the first card and 1 of the remaining 3 for the second. 
$$
\binom{4}{1}*\binom{3}{1}
$$
But since the order is irrelevant this must be divided by 2 to remove duplicates:
$$
\frac{\binom{4}{3}*\binom{3}{1}}{2} = 6
$$
<br>

**(c)**    
Each card can have 2 values:
$$
2^2
$$
But one of these combinations is duplicated: {hearts,diamonds} = {diamonds, hearts}
$$
2^2 -1 = 3
$$
