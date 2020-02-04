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
As every time we choose a letter it is removed from the pool of available letters.  
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
Restrictions of *E* and *F* being next to each other but in any order means we can treat it as a pool of 9 characters.
$$
9!
$$
But since *E* and *F* can be in the order *EF* or *FE* we need to multiply this by 2.
$$
9! * 2 = 725,760
$$
<br>

**(c)**  
Word 'BANANA' contains 6 letters but *A* is repeated 3 times and *N* 2 times.
