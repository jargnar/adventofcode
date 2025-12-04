R = {}
$<.each_with_index do |l, i|
  l.chars.each_with_index do |c, j|
    R[i + j*1i] = true if c == ?@
  end
end

N = [-1-1i, -1+0i, -1+1i, 0-1i,   0+1i,  1-1i, 1+0i, 1+1i]
p R.size.tap { nil while R.reject! { |z, _| N.count { |d| R[z + d] } < 4 }} - R.size
