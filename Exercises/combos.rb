require "csv"
table = CSV.parse(File.read("prices.csv"), headers: true, converters: :numeric)
prices = table.by_col[1]
target_price = 15.05

def subset_sum(numbers, target, partial = [])
  s = partial.inject 0, :+
  # check if the partial sum is equals to target
  if s == target
    puts "#{partial}=#{target}"
  else
    puts "NO COMBOS"
  end

  return if s >= target # if we reach the number why bother to continue

  (0..(numbers.length - 1)).each do |i|
    n = numbers[i]
    remaining = numbers.drop(i + 1)
    subset_sum(remaining, target, partial + [n])
  end
end

subset_sum(prices, target_price)
