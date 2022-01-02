def average_waiting_time(customers)
  avg = 0
  f = 0
  customers.each_with_index do |hash, k|
    s = if k.zero? || hash[0].to_i > f
          hash[0]
        else
          f
        end
    t = hash[1]
    puts f = s + t
    puts w = f - hash[0]
    avg += w
  end
  puts avg = format("%.5f", avg.to_f / customers.count)
end

# customers = [[1, 2],[2, 5],[4, 3]]
customers = [[5, 2], [5, 4], [10, 3], [20, 1]]
average_waiting_time(customers)