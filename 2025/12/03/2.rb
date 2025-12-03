puts $<.read.split.map(&:chars).sum { |bs|
  skip = bs.size - 12
  bs.reduce([]) { |on, b|
    on.pop && skip -= 1 while skip > 0 && on.last&.<(b)
    on << b
  }.first(12).join.to_i
}
