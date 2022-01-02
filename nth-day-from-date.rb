# @param {String} date
# @return {Integer}
require 'date'

def day_of_year(date)

  return Date.parse(date).yday

end

# date = "2019-01-09"