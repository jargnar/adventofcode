p = 50
puts $<.sum { |i|
  r = i[1..].to_i
  d = i[0] == ?R ? 1 : -1
  c = (r + p * d % 100) / 100
  p = (p + d * r) % 100
  c
}
