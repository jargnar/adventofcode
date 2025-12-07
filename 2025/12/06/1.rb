*d, ops = $<.to_a
p d.map { _1.split.map(&:to_i) }.transpose.zip(ops.split).sum { |n, o| n.reduce(o.to_sym) }
