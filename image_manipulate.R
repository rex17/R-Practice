library(pixmap)
x <- read.pnm("pics/profilepic.ppm")
y <- as(x, "pixmapGrey")
plot(y)

y2 <- y
y2@grey <- 1 - y2@grey # Creates a negative
plot(y2)

y3 <- y
y3@grey <- 0.8 * y3@grey # Makes it darker
plot(y3)

y4 <- y
y4@grey[y4@grey < 0.4] <- 0 # Makes dark areas black
plot(y4)