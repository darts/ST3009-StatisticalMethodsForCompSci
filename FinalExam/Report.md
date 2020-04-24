# ST3009: Statistical Methods for Computer Science

## Final Assignment - Senán d'Art - 17329580

### Q1  

#### (a)

$10c3=120$ possible combinations. There are 10 possible questions, we choose 3 of those 10.

#### (b)

$\frac{(10-n)c3}{(10c3)}$ where $0<=n<=7$. If $n>7$, the the probability of none of the questions studied appearing = 0  

#### (c)  

1 - prob(2 of the questions studied showing up)  
1 - $\frac{Nc2}{10c3}$ where n is num of questions studied. $2<=N<=10$. If N<2 then prob of failing is 1.

**DO A GRAPH**

#### (d)  

1 - $\frac{Nc2}{10c4}$

**DO A GRAPH**

**COMPARE WITH RESULTS FROM PART (C)**


#### (e)  

function takes n as input, returns if student passes or not


#### (f)

Call function from (e) N times and return the mean
