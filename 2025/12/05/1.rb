r, i = $<.read.split /\n\n/
f = r.scan(/(\d+)-(\d+)/).map { |a, b| a.to_i..b.to_i }
p i.lines.map(&:to_i).count { |y| f.any? { _1 === y } }
