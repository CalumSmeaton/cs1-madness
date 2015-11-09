module lightColor
data lightColor = red | green | amber
changeColor: lightColor -> lightColor
changeColor green = amber
changeColor amber = red
changeColor red = green
