module days 

data days = mon | tues | weds | thurs | fri | sat | sun

nextDay: days -> days 
nextDay mon = tues
nextDay tues = weds
nextDay weds = thurs
nextDay thurs = fri
nextDay fri = sat
nextDay sat = sun
nextDay sun = mon


nextWeekday: days -> days
nextWeekday fri = mon
nextWeekday sat = mon
nextWeekday x = nextDay x

