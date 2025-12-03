puts $<.read.split.sum { |b|
  [].tap { |s|
    x = b.size - 12
    b.each_char { |c|
      s.pop && x -= 1 while x > 0 && s.last&.<(c)
      s << c
    }
  }.take(12).join.to_i
}
