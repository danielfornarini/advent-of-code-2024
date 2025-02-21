# string = "xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))"

string = File.read('3.input.txt')

res = string.scan(/mul\((\d+),(\d+)\)/)

res.map { |x, y| x.to_i * y.to_i }.sum