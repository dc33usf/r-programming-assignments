library(tidyverse)

mtcars
mydata <- mtcars %>%
  mutate(Vehicle = rownames(mtcars)) %>%
  select(Vehicle, cyl, hp, mpg)

head(mydata)
str(mydata)

print(mydata$mpg)
summary(mydata)
plot(mydata)


# S3 Class
s3_car <- list(
  vehicle = mydata$Vehicle[1],
  cylinder = mydata$cyl[1],
  horsepower = mydata$hp[1],
  milespergallon = mydata$mpg[1]
)

class(s3_car) <- "car_s3"

s3_car
class(s3_car)
isS4(s3_car)

s3_car$vehicle
s3_car$milespergallon

# S3 Print Method
print.car_s3 <- function(x, ...) {
  cat("Vehicle:", x$vehicle, "\n")
  cat("Cylinders:", x$cylinder, "\n")
  cat("Horsepower:", x$horsepower, "\n")
  cat("MPG:", x$milespergallon, "\n")
}

print(s3_car)


# S4 Class
setClass("s4_class",
         slots = list(vehicle = "character",
                      cylinders = "numeric",
                      horsepower = "numeric",
                      milespergallon = "numeric")
)

s4_car <- new("s4_class",
              vehicle = "Hyundai Elantra SEL",
              cylinders = 4,
              horsepower = 110,
              milespergallon = 38
)

s4_car@vehicle

# S4 Show Method
setMethod("show", "s4_class",
          function(object) {
            cat("Vehicle:", object@vehicle, "\n")
            cat("Cylinders:", object@cylinders, "\n")
            cat("Horsepower:", object@horsepower, "\n")
            cat("MPG:", object@milespergallon, "\n")
          }
)

show(s4_car)



