# Manipulating size aesthetics
# - use large size for large chart, vice versa
# - it's all about the visual

library(ggplot2)

# init plot 1
r <- ggplot(data=df.china_co2, aes(x=year, y=co2_emission_per_cap_qt))

# Larger size
r + geom_line(size=2) + geom_point(size=5)

#####################
# SCATTER PLOT SIZING
# init plot 2
#####################
t <- ggplot(data=df.car_specs, aes(x=horsepower_bhp, y=top_speed_mph))

t + geom_point(size=1)

#########################
# MAPPING VAR TO SIZE
# - size ikut variable
# - use aesthetic in geom
#########################
t + geom_point(aes(size=torque_per_ton))

##########################
# ADJUST SIZE OF BUBBLES
# - range is the output, size is vary from .5 to 9
# - guide none to disable legend
###########################
t + geom_point(aes(size=torque_per_ton))
  + scale_size(range=c(.5,9), guide="none")