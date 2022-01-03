require 'date'

json = [
  {
    id: 1,
    name: 'Employee #1',
    customer_id: 1,

    # when this user started
    activated_on: Date.new(2018, 11, 4),

    # last day to bill for user
    # should bill up to and including this date
    # since user had some access on this date
    deactivated_on: Date.new(2019, 1, 10)
  },
  {
    id: 2,
    name: 'Employee #2',
    customer_id: 1,

    # when this user started
    activated_on: Date.new(2018, 12, 4),

    # hasn't been deactivated yet
    deactivated_on: nil
  }
]

def iterator(json)

  json.each { |employee|

    puts employee[:id]

  }

end

iterator(json)
