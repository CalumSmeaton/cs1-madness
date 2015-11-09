module days
data days = sunday | monday | tuesday | wednesday | thursday | friday | saturday
nextDay: days -> days
nextDay sunday = monday
nextDay monday = tuesday
nextDay tuesday = wednesday
nextDay wednesday = thursday
nextDay thursday = friday
nextDay friday = saturday
nextDay saturday = sunday

nextWeekday: days -> days
nextWeekday sunday = monday
nextWeekday monday = tuesday
nextWeekday tuesday = wednesday
nextWeekday wednesday = thursday
nextWeekday thursday = friday
nextWeekday friday = monday
nextWeekday saturday = monday
