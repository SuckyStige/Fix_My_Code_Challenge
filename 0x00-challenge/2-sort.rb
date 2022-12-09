###
#
#  Sort integer arguments (ascending)
#
###

result = []
ARGV.each do |arg|
  # skip if not integer
  next if arg !~ /^-?[0-9]+$/
  # convert to integer
  x_arg = arg.to_i
  # insert result at the right position
  is_inserted = false
  x = 0
  y = result.size
  while !is_inserted && x < y do
    if result[x] < x_arg
      x += 1
    else
      result.insert(x, x_arg)
      is_inserted = true
      break
    end
  end
  result << x_arg if !is_inserted
end
puts result
