puts $<.read.split(',').sum { |r|
  a, b = r.split('-').map(&:to_i)
  (a..b).sum { |n|
    n.to_s =~ /^(.+)\1+$/ ? n : 0
  }
}
