rules = """
47|53
97|13
97|61
97|47
75|29
61|13
75|53
29|13
97|29
53|29
61|53
97|53
61|29
47|13
75|47
97|75
47|61
75|61
47|29
75|13
53|13
""".strip

rules = rules.split("\n").map do |r|
  splitted = r.split("|")
  { before: splitted[0].to_i, after: splitted[1].to_i }
end

inputs = """
75,47,61,53,29
97,61,53,29,13
75,29,13
75,97,47,61,53
61,13,29
97,13,75,29,47
""".strip

inputs = inputs.split("\n").map do |p|
  p.split(",").map(&:to_i)
end

def get_used_rules(pages, rules)
  used_rules = []

  pages.each do |page|
    used_rules << rules.select { |r| r[:before] == page || r[:after] == page }
  end

  used_rules.flatten.uniq
end

inputs.each do |pages|
  puts get_used_rules(pages, rules).inspect
  puts "\n\n"
end

