p $<.read
    .split(/\n\n/)[0]
    .scan(/(\d+)-(\d+)/)
    .map { _1.map(&:to_i) }
    .sort
    .reduce([]) { |m, (a, b)|
      if !m[0] || m[-1][1] < a - 1
        m << [a, b]
      else
        m[-1][1] = [m[-1][1], b].max
        m
      end
    }
    .sum { |a, b| b - a + 1 }
