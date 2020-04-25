# ST3009: Statistical Methods for Computer Science

## Final Assignment - Senán d'Art - 17329580

### Q1  

#### (a)

$\binom{10}{3}=120$ possible combinations. There are 10 possible questions, we choose 3 of those 10.

#### (b)

$\frac{\binom{10-n}{3}}{\binom{10}{3}}$ where $0<=n<=7$. If $n>7$, the the probability of none of the questions studied appearing = 0  

#### (c)  

p(none)+p(exactly 1)  
p(none) = $\frac{\binom{10-n}{3}}{\binom{10}{3}}$  
p(exactly 1) = $\frac{\binom{n}{1}*\binom{10-n}{2}}{\binom{10}{3}}$  


**DO A GRAPH**

#### (d)  

p(none)+p(exactly 1)
p(none) = $\frac{\binom{10-n}{4}}{\binom{10}{4}}$ where $0<=n<=7$, outside of this range $P=0$  
p(exactly 1) = $\frac{\binom{10-(n-1)}{3}}{\binom{10}{4}}$ = $\frac{\binom{9-n}{3}}{\binom{10}{4}}$ where $1<=n<=8$, outside of this range $P=0$

**DO A GRAPH**

**COMPARE WITH RESULTS FROM PART (C)**  
The chance of failing here should be a fair bit lower


#### (e)

function takes n as input, returns if student passes or not


#### (f)

Call function from (e) N times and return the mean
