t = 0

64.times do |i|
	t += (i + 1)**4
end

puts t


a = 1
b = 0
c = 5

27.times do
	d = a + b + c
  a = b
  b = c
  c = d
end

puts c


s = 0
i = 1

loop do
	s += Rational(1, i)
	i += 1
	if s > 12
		break
	end
end

puts s.to_f
puts i