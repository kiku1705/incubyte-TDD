class Calculator
  def self.add(numbers)
    return 0 if numbers.empty? || numbers.nil?
    delimeter = ","
    if numbers.lines.first.match(/^\/\/\[(.+)\]/)
      delimeter = $1
    end
    posi, neg = numbers.gsub("\n", delimeter).split(delimeter).map(&:to_i).partition {|n| n >= 0 }

    raise "negatives not allowed - #{neg.join(",")}" unless neg.empty?
    posi.sum { |n| n <= 1000 ? n : 0 }
  end
end