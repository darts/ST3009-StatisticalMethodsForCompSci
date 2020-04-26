# ST3009: Statistical Methods for Computer Science

## Final Assignment - Senán d'Art - 17329580

### Q1  

#### (a)

$\binom{10}{3}=120$ possible combinations. There are 10 possible questions, we choose 3 of those 10.

#### (b)

$\frac{\binom{10-n}{3}}{\binom{10}{3}}$ where $0<=n<=7$. If $n>7$, the the probability of none of the questions studied appearing = 0  

#### (c)  

p(none)+p(exactly 1)  
p(none) = $\frac{\binom{10-n}{3}}{\binom{10}{3}}$ where $0<=n<=7$, outside of this range $P=0$  
p(exactly 1) = $\frac{\binom{n}{1}*\binom{10-n}{2}}{\binom{10}{3}}$, where $1<=n<=8$, outside of this range $P=0$  

![Graph of P(failure) with 3 questions on exam](images/Q1_c.png)

#### (d)  

p(none)+p(exactly 1)
p(none) = $\frac{\binom{10-n}{4}}{\binom{10}{4}}$, where $0<=n<=6$, outside of this range $P=0$
p(exactly 1) = $\frac{\binom{n}{1}*\binom{10-n}{3}}{\binom{10}{4}}$, where $1<=n<=7$, outside of this range $P=0$  

![Graph of P(failure) with 4 questions on exam](images/Q1_d.png)

**COMPARE WITH RESULTS FROM PART (C)**  
The chance of failing is much lower.  
This is due to the additional question on the exam.  
Do some maths on the percentage difference at each point.  
Still need to answer 2 questions to pass but more likely that you will have studied at least 2.  
Far less likely that will have studied none of 4 vs. none of 3.


#### (e)

The code generates 2 lists of numbers 0-10. It selects the first 3 from one and first n from the other. If there is an overlap of more than 1 ie. student passes exam, it returns 1, otherwise 0.

#### (f)

Call function from (e) N times and return the mean

CLT time  
$$\frac{\frac{(X_1+X_2+...+X_n)}{n} - \mu}{\frac{\sigma}{\sqrt{N}}}$$  
$\frac{(X_1+X_2+...+X_n)}{n}=Y=mean$  
$N=N$  
$\sigma=\sqrt{\mu*(1-\mu)}$  
$\mu = mu$  
$\sigma=sigma$  
$var(X_i) = sigma^2$  

$$
(\plusmn 1.96) * (sigma / sqrt(N)) + mu
$$







<br><br><br><br>

### Appendix

**Section 1:** Code used to generate the plot in Q1 (c).
```matlab

```
 
<br>

**Section 2:** Code used to generate the plot in Q1 (d).
```matlab

```

<br>

**Section 3:** Code for Q1 (e).
```matlab

```

<br>

**Section 4:** Code for Q1 (f).
```matlab

```
