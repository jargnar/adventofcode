*d, o = $<.map(&:chomp)
m = d.map(&:size).max
p d.map { _1.ljust(m).chars }
   .transpose
   .reverse
   .map { _1.join.delete(' ') }
   .chunk(&:empty?)
   .filter_map { |e, g| g unless e }
   .zip(o.split.reverse)
   .sum { |n, op| 
     n.map(&:to_i).reduce(op.to_sym) 
   }
