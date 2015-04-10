# How to set colors using built in colors

library(ggplot2)

# init plot
r <- ggplot(data=df.china_co2, aes(x=year, y=co2_emission_per_cap_qt))

# ------------------
# Basic line chart
# -----------------

r + geom_line(size=2) + geom_point(size=4)

# --------------
# Add color
# - boleh guna built-in color or hex code
# - refer cheat sheet for built in colors
# -------------

r + geom_line(color="deepskyblue4", size=2) + geom_point(color="khaki4", size=4)

