require 'date'

def bill_for(month, active_subscription, users)
  # your code here!
  users_deactivated = 0
  active_users = 0
  total_usage = 0
  y = Date.parse("%Y")
  m = Date.parse("%m")
  days_in_month = Time.days_in_month(m, y)

  ### pseudocode first:
  if active_subscription is not nil

    # do I assume this is handled by the model?
    # employees = get users by customer_id
    # and test that users is longer than 0

    users.each { |employee|

      active_users += 1         # increment for each user who was active during the billing period
      puts employee[:id]

        # the employee started after the beginning of the month being calculated, get the employee activation date.
        # otherwise use the first day of the month

        start_date = if month.firstday is after employee['activated_on'] ? month.firstday : employee['activated_on']

                       # if the employee was deactivated before the end of the month get the deactivated date
                       # otherwise use the last day of the month
                       end_date =
                         if month.lastday is after employee['deactivated_on'] ? month.lastday : employee['activated_on']

                          if employee['deactivated_on']
                            users_deactivated += 1
                          end
                        end


                      # question - the example implies it iterates performing the calculation per active for each day
                      # but it's more performant to figure out active days for each user and calculate each user once per month
                      # or I misunderstood the task

                      # Multiply the number of active users for the day by the daily rate to calculate the total for the day
                      # the monthly rate for the month being calculated isn't going to change and it doesn't say billing periods overlap month start/end
                      # so if my understanding is right, can calculate my way and it'll be accurate

                                      # optimize later - if start_date is before the first of the month being calculated and end date is after the last day, or nil,
                                      # use the num of days in that month
                                      # otherwise, do math to get number of days active in the month

                                      active_days = end_date - start_date

                                      daily_rate = 4 / days_in_month

                                       employee_usage = active_days * daily_rate

                                      total_usage += employee_usage


                                    end

                                  end
                     end

        # default return 0 if subscriptions is nil or employees is 0
        # cast as a 2 point float

        # ok writing code for real now in my ide c/p when done
        return total_usage

      end

      ####################
      # Helper functions #
      ####################

      # Takes a Date object and returns a Date which is the first day
      # of that month. For example:
      #
      # first_day_of_month(Date.new(2019, 2, 7)) # => Date.new(2019, 2, 1)
      #
      # Input type: Date
      # Output type: Date
      def first_day_of_month(date)
        Date.new(date.year, date.month)
      end

      # Takes a Date object and returns a Date which is the last day
      # of that month. For example:
      #
      # last_day_of_month(Date.new(2019, 2, 7)) # => Date.new(2019, 2, 28)
      #
      # Input type: Date
      # Output type: Date
      def last_day_of_month(date)
        Date.new(date.year, date.month, -1)
      end

      # Takes a Date object and returns a Date which is the next day.
      # For example:
      #
      # next_day(Date.new(2019, 2, 7))  # => Date.new(2019, 2, 8)
      # next_day(Date.new(2019, 2, 28)) # => Date.new(2019, 3, 1)
      #
      # Input type: Date
      # Output type: Date
      def next_day(date)
        date.next_day
      end