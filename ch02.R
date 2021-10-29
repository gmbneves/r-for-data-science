# Chapter 1 - Data Visualization with ggplot2 ----

## Introduction ----

# load packages
library(tidyverse)

# Do car with big engines use more fuel than cars with small engines? Use the
# "mpg" data frame to try to answer it.

# example 1 - create a ggplot
ggplot(data = mpg) + # creates a coordinate system
  geom_point(mapping = aes(x = displ, y = hwy)) # adds a layer of points

### Exercises ----

# 1. Run ggplot(data = mpg). What do you see?
ggplot(data = mpg)

# Answer: An empty graph with no coordinates and plots appears.

# 2. How many rows are in mtcars? How many columns?
glimpse(mtcars)

# Answer: mtcars has 32 rows and 11 columns.

# 3. What does the drv variable describe? Read the help for ?mpg to find out.
?mpg
# Answer: According to the help for the mpg, drv describes the type of drive
# train, where f = front-wheel drive, r = rear wheel drive, and 4 = 4wd.

# 4. Make a scatter plot of hwy versus cyl.
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = hwy, y = cyl))

# 5. What happens if you make a scatter plot of class versus drv? Why is the plot
# not useful?
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = class, y = drv))

# Answer: It plots a graphic showing what kind of drive train each car class
# can have. The plot is not useful because class and drv are both qualitative
# variables, so the scatter plot graphic doesn't show much.

## Aesthetic Mappings  ----
