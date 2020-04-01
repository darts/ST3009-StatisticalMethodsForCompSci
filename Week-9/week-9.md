define model/hypothesis

for n features:   
$$
y = sign(\theta_0 + \theta_1x_1 + \theta_2x_2 + ... + + \theta_nx_n)
$$
ie. the weighted sum of the components/features of the vector  
Weighted sum of features -> linear model  

Assumption that data is linearly seperable ie can draw a clear divide between data

Feature vector:
$$
x = \begin{bmatrix}
    x_0\\
    x_1\\
    x_2\\
    ...\\
    x_n\\
\end{bmatrix}
$$ 


## Q2
(a)  
Positive review => 1, negative review => -1  
Each review can be written as a vector:  

$$
pred = sign(\theta_0 + \theta_1x_1 + \theta_2x_2 + ... + + \theta_nx_n)
$$

Where $\theta_n$ is the weight applied to each element.  
$x_n$ is the number of times a word appears in the review.  

To calculate $\theta_n$ we need to apply a cost function and iterate through possible values to find the values which are most accurate (train the model).

(b)
Assumptions:  
The relationship is linear ie there are not multiple minimums in our cost function which could result in a different result.  

(c)  
Take subsets of the training data (with replacement).  
Train model using this data.  
Log the parameter values ($\theta$).  
Repeat many times.  

This should allow us to get a confidence interval for each of the words in the review. By comparing the confidence of each of the words in a review and their weights, we can predict a certain level of confidence for that review.
