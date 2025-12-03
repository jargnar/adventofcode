puts $<.sum { |l|
  l.chomp.chars.combination(2).map { |a, b| (a + b).to_i }.max
}
