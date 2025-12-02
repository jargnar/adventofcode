puts $<.read.split(',').sum { |r|
  a, b = r.split('-').map(&:to_i)
  (a..b).sum { |n|
    s = n.to_s
    s.size.even? && s[0, s.size/2] * 2 == s ? n : 0
  }
}

