### This code is used to generate random samples from a real study of albatross chicks. We use it in class to generate random bootlegged samples of the population,
### and create confedence intervals of the weight loss during incubation. 

### The code can be improved by adding an output pdf or xlsx file with the data instead of imputing it derectly. Also the values are hard coded and changed at the beginning of 
### the code. 

n = 30
beginmean = 3565
incmean = 3107

beginsig = 173
incsig = 215

sigma = sqrt(beginsig**2+incsig**2)
mean = beginmean - incmean

R.samples = rep(0,n)

for (i in 1:30){
  R.sample = rnorm(1,mean,sigma)
  R.samples[i] = as.integer(R.sample)
}
print(R.samples)

hist(R.samples,col="blue")
