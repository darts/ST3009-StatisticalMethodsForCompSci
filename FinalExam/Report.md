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
arr = zeros(1,11);
idx = [0:10];

for n = 1:11
    arr(n) = exactNone(n-1)+exactOne(n-1);
end
bar(idx, arr)
title("Probability of failing exam when studying n questions (3 questions on paper)")
xlabel("n")
ylabel("P(failure)")

%returns probability that none of the studied topics appear
function X = exactNone (n)
    if n<=7
        X = nchoosek(10-n,3)/nchoosek(10,3);
    else
        X = 0;
    end
end

%returns probability that exactly one of the studied topics appears
function X = exactOne (n)
    if n <= 8 & n >=1
        X = (nchoosek(n,1)*nchoosek(10-n,2))/nchoosek(10,3);
    else
        X = 0;
    end
end
```
 
<br>

**Section 2:** Code used to generate the plot in Q1 (d).
```matlab
arr = zeros(1,11);
idx = [0:10];

for n = 1:11
    arr(n) = exactNone(n-1)+exactOne(n-1);
end
bar(idx, arr)
title("Probability of failing exam when studying n questions (4 questions on paper)")
xlabel("n")
ylabel("P(failure)")

%returns probability that none of the studied topics appear
function X = exactNone (n)
    if n<=6
        X = nchoosek(10-n,4)/nchoosek(10,4);
    else
        X = 0;
    end
end

%returns probability that exactly one of the studied topics appears
function X = exactOne (n)
    if n <= 7 & n >=1
        X = (nchoosek(n,1)*nchoosek(10-n,3))/nchoosek(10,4);
    else
        X = 0;
    end
end
```

<br>

**Section 3:** Code for Q1 (e).
```matlab
function X = stoSim3 (n)
    choice = randperm(10); %get elements in random order
    choice = choice(1:3); %select 3 questions for exam
    studied = randperm(10); %random order of studied qs
    studied = studied(1:n); %n number of studied qs
    overlap = setdiff(choice, studied); %studied vs exam
    if numel(overlap) < 2 %if at least 2 studied appear
        X = 1;
    else
        X = 0;
    end
end
```

<br>

**Section 4:** Code for Q1 (f).
```matlab
function X = stoSim3 (n)
    choice = randperm(10); %get elements in random order
    choice = choice(1:3); %select 3 questions for exam
    studied = randperm(10); %random order of studied qs
    studied = studied(1:n); %n number of studied qs
    overlap = setdiff(choice, studied); %studied vs exam
    if numel(overlap) < 2 %if at least 2 studied appear
        X = 1;
    else
        X = 0;
    end
end

function Y = extSim(N)
    generated = randi(11,[1,N])-1;
    Y = 0;
    for i = 1:numel(generated)
        Y = Y + stoSim3(generated(i));
    end
    Y = Y/N;
end
```
