# Manipulate transparency
# Fuck yeah belajar pasal map

library(ggplot2)

# init plot
r <- ggplot(data=df.sf_crime, aes(x=latitude, y=longitude))

r + geom_point() # fuck yea, overlapping points!

###################
# ADD TRANSPARENCY
# - manipulate 'alpha' to deal with overplotting
# - can use decimals, fractions (eg. 1/10)
###################

r + geom_point(alpha=.1, size=1)