# string = "xmul(2,4)&mul[3,7]!^don't()_mul(5,5)+mul(32,64](mul(11,8)undo()?mul(8,5))"

string = File.read('3.input.txt')

res = string.gsub("\n", '').gsub(/(?<=don't\(\)).*?(?=do\(\)|$)/, '')

res = res.scan(/mul\((\d+),(\d+)\)/)

res.map { |x, y| x.to_i * y.to_i }.sum