#calculate the mean of the Sepal.Length of the virginica species in the iris dataset of R 

libray(datasets)
data(iris)

round(mean(iris$Sepal.Length[iris$species="virginica"]))

#pick the correct expression to calculate the mean of all of the columns from 1 to 4 using apply()

apply(iris[ , 1:4], 2 , mean)   #the 2 indicates the collapsing of the rows in only 1 results thus a unique mean for each column --> apply(X, MARGIN, FUN, …) 
                                                                                                                                   #MARGIN  a vector giving the subscripts which the function will be applied over. 
                                                                                                                                   #E.g., for a matrix 1 indicates rows, 2 indicates columns, c(1, 2) indicates rows and columns. 
                                                                                                                                   #Where X has named dimnames, it can be a character vector selecting dimension names.

                                                                                                                                    
#calculate the average miles per gallons in the mtcars dataset subsetting for each type of cylinders
#e.g mpg of 4 cyls, mpg of 6 cyls, mpg of 8 cyls in one row

libray(datasets)
data(mtcars)


sapply(split(mtcars$mpg,mtcars$cyl), mean)

tapply(mtcars$mpg, mtcars$cyl, mean)

with(mtcars, tapply(mpg, cyl, mean))


##what is the absolute difference between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars?

average8 <- mean(mtcars$hp[mtcars$cyl=="8"])    

average4 <- mean(mtcars$hp[mtcars$cyl=="4"])

round(abs(average8-average4))

#If you run

debug(ls)

what happens when you next call the 'ls' function?

#execution of 'ls' will suspend at the beginning of the function and you will be in the browser




