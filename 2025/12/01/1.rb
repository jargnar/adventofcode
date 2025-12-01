p = 50
puts $<.count { |i|
  p = (p + (i[0] == ?R ? 1 : -1) * i[1..].to_i) % 100
  p.zero?
}
