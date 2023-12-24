library(datasets)

#load Data

data(mtcars)

#View first 5 rows

head(mtcars,5)
?mtcars
######################without title
#load ggplot packagr
library(ggplot2)
#create a scatterplot of disp and mgp
ggplot(aes(x=disp, y=mpg,),data=mtcars)+geom_point()

######################with title
#load ggplot packagr
library(ggplot2)
#create a scatterplot of disp and mgp
ggplot(aes(x=disp, y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon")

############with title+ labeling axis
#change axis name

ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon") + labs(x = "Displacement", y = "Miles per Gallon")

#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)

#create boxplot of the distribution for v-shaped and straight Engine

ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()

ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none")

ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.8)
##########################################################
##################################
##############################
########################
#################
#########""
library(datasets)
data(iris)

library(GGally)
ggpairs(iris, mapping=ggplot2::aes(colour = Species))
