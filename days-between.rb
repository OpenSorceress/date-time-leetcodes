# @param {String} date1
# @param {String} date2
# @return {Integer}

date1 = "2020-01-15"
date2 = "2019-12-31"

def days_between_dates(date1, date2)
  puts (Date.parse(date2) - Date.parse(date1)).to_i.abs
end

days_between_dates(date1, date2)
