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
p(exactly 1) = $\frac{\binom{n}{1}*\binom{9-n}{2}}{\binom{10}{3}}$, where $1<=n<=8$, outside of this range $P=0$  

<!-- ![Graph of P(failure) with 3 questions on exam](images/Q1_c.png) -->

#### (d)  

p(none)+p(exactly 1)  
p(none) = $\frac{\binom{10-n}{4}}{\binom{10}{4}}$, where $0<=n<=6$, outside of this range $P=0$  
p(exactly 1) = $\frac{\binom{n}{1}*\binom{10-n}{3}}{\binom{10}{4}}$, where $1<=n<=7$, outside of this range $P=0$  

<!-- ![Graph of P(failure) with 4 questions on exam](images/Q1_d.png) -->

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

Searching for range $[\mu-1.96\sigma, \mu+1.96\sigma]$
$$\frac{\frac{(X_1+X_2+...+X_n)}{N} - \mu}{\frac{\sigma}{\sqrt{N}}}$$  

$$
\frac{Y - (X_i)}{\frac{\sqrt{var(X_i)}}{N}}
$$

$$
E[X_i]\plusmn1.96\frac{var(X_i)}{\sqrt{N}}
$$

Using (c):  
$1-E[X_i]=0.1833, E[X_i]=0.8167$ when $n=7$.  
$var(X_i)=1-E[X_i]=0.1833$.  
$var(X_i)=\sqrt{\mu*(1-\mu)}=\sqrt{0.8167*(0.1833)}=0.38691$


Where $N=1,000$:  
$0.8167\plusmn1.96\sqrt{\frac{0.1833}{1000}}$  
$0.8167\plusmn0.02707$

$0.8167\plusmn1.96\frac{0.38691}{\sqrt{1000}}$  
$0.8167\plusmn0.02398$  
$0.79272, 0.84068$

<br>

$\frac{(X_1+X_2+...+X_n)}{n}=Y=mean$  
$N=N$  
$\sigma=\sqrt{\mu*(1-\mu)}$  
$\mu = mu$  
$\sigma=sigma$  
$var(X_i) = sigma^2$  
$P(fail) = 1-E[X_i]$

$$
(\plusmn 1.96) * (sigma / sqrt(N)) + mu
$$

#### (g)  

Run 1000 times. It results in small error $\frac{1}{\sqrt{n}}$ where $n=1000$ -> $0.03$. Also my computer can't do much more than that, 1000 was already taking ~8 minutes.

#### (h)

Case A - More likely to appear after being on last exam (30->100%):  
When running this sim, plot range of likelihoods ie each q has a chance to appear of 30-100% in intervals of 10%. 30% is the baseline as this is the chance of a question appearing anyway. Use side-by-side bar graph.  
First 3 topics studied will be the ones on the previous exam. After this, random from all remaining. Should heavily increase the likelihood of passing.


Case B - Less likely to appear after being on the last exam (30->0%):  
When running the sim, plot range of likelihoods ie. with the chance of each question appearing in the ranges of 30-0% in intervals of 5%.  
Last 3 topics studied will be the ones on the previous exam. First, randomly from all questions not on previous exam. Should also result in higher chance of passing.

Assuming exam is predictable, it is not but uses strategy anyway.  
(I presume this shouldn't make much of a difference as the chance of any question appearing is then even so the order we study them in should make no difference.)

<br><br>

### Q2  

Dataset:  `# id:0.332:0.5-0.524:2-0.308:2-0`

#### (a)  




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

<br>

**Section 5:** Code for Q1 (g).
```matlab

```
