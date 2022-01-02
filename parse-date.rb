# @param {String} date
# @return {String}
require 'date'

def reformat_date(date)
  year = Date.parse(date).strftime('%Y')
  month = Date.parse(date).strftime('%m')
  day = Date.parse(date).strftime('%d')
  "#{year}-#{month}-#{day}"
end
