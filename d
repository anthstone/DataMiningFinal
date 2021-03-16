[1mdiff --cc Final_Project_GroupC.Rmd[m
[1mindex 4046846,2498686..0000000[m
[1m--- a/Final_Project_GroupC.Rmd[m
[1m+++ b/Final_Project_GroupC.Rmd[m
[36m@@@ -19,7 -19,6 +19,10 @@@[m [mknitr::opts_chunk$set(echo = TRUE[m
  ```{r, message=FALSE}[m
  library(tidyverse)[m
  library(ggplot2)[m
[32m++<<<<<<< HEAD[m
[32m +library(ggcorrplot)[m
[32m++=======[m
[32m++>>>>>>> Adding files manually to scrub directory[m
  library(ISLR)[m
  library(partykit)[m
  library(caret)[m
[36m@@@ -73,58 -72,10 +76,65 @@@[m [msum(is.na(housing)[m
  [m
  ```{r}[m
  [m
[32m++<<<<<<< HEAD[m
[32m +col.vector = seq(2, 81, by=1) #We do not need the iOrder or PID value[m
[32m +[m
[32m +# for (i in col.vector){[m
[32m +#   [m
[32m +#   plots<-ggplot(data = housing,[m
[32m +#               aes(x=SalePrice,y=housing[[i]]))+[m
[32m +#   geom_line()+[m
[32m +#   geom_point(x=which.max(housing[[i]]),[m
[32m +#               y=max(housing[[i]]),aes(color="red"),[m
[32m +#               show.legend = FALSE)+[m
[32m +#   xlab("# Variables")+[m
[32m +#   ylab("R-squared")+[m
[32m +#   theme_bw()[m
[32m +#   print(plots)[m
[32m +# [m
[32m +# }[m
[32m +[m
[32m +# for (i in col.vector){[m
[32m +#   [m
[32m +#   plots<-ggplot(data = housing,[m
[32m +#               aes(x=housing[[i]],y=SalePrice))+[m
[32m +#   geom_line()+[m
[32m +#   geom_point(x=which.max(housing$SalePrice),[m
[32m +#               y=max(housing$SalePrice),aes(color="red"),[m
[32m +#               show.legend = FALSE)+[m
[32m +#   xlab("# Variables")+[m
[32m +#   ylab("R-squared")+[m
[32m +#   theme_bw()[m
[32m +#   print(plots)[m
[32m +# [m
[32m +# }[m
[32m +[m
[32m +numeric.df <-housing[unlist(lapply(housing, is.numeric)) ][m
[32m +numeric.cols <- numeric.df[,-1:-2][m
[32m +numeric.cols.vec <- seq(1, ncol(numeric.cols), by=1)[m
[32m +for (i in numeric.cols.vec){[m
[32m +  plots<- qplot(data = housing, x = numeric.cols[,i], y = SalePrice,[m
[32m +        xlab = paste(colnames(numeric.cols)[i]) , ylab = "SalePrice") + stat_smooth(method = "lm")[m
[32m +  print(plots)[m
[32m +  [m
[32m +}[m
[32m +[m
[32m +[m
[32m +cor.housing.sales <- cor(numeric.df[,-1:-2])[m
[32m +ggcorrplot(cor.housing.sales)[m
[32m +[m
[32m +```[m
[32m +Once the dataset has been scrubbed, initial exploratory data analysis is conducted. The first analysis is looking at all numeric vectors in the dataset and checking to see if there are any correlations between variables.[m
[32m +Correlations:[m
[32m +Total.Bsmt.SF   ~   X1st.Flr.SF     (0.80)[m
[32m +Gr.Liv.Area     ~   TotRms.AbvGrd   (0.81)[m
[32m +Garage.Cars     ~   Garage.Area     (0.89)[m
[32m++=======[m
[32m+ #Code Here[m
[32m+ [m
[32m+ ```[m
[32m+ [m
[32m++>>>>>>> Adding files manually to scrub directory[m
  [m
  ### 2. Sales Price Prediction Model (Khadija w/ assistance)[m
  > Tip: think about performance metrics other than MSE: MAE, relative error, etc.[m
[36m@@@ -172,15 -123,17 +182,26 @@@[m
  [m
  ```{r}[m
  [m
[32m++<<<<<<< HEAD[m
[32m +#Code Here[m
[32m++=======[m
[32m+ # Code Here[m
[32m++>>>>>>> Adding files manually to scrub directory[m
  [m
  ```[m
  [m
  #### Compare estimated prediction accuracy against actual performance of 2010 data.(Evan)[m
  [m
  ```{r}[m
[32m++<<<<<<< HEAD[m
[32m +[m
[32m +#Code Here[m
[32m++=======[m
[32m+ # Create performance_metrics function[m
[32m+ performance_metrics = function(model_obj, plot = T) {[m
[32m+   # Get predictions from testing data[m
[32m+ }[m
[32m++>>>>>>> Adding files manually to scrub directory[m
  [m
  ```[m
  [m
