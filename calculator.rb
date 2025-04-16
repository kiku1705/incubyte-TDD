class Calculator
  def self.add(numbers)
    return 0 if numbers.empty? || numbers.nil?
    
    pattern = extract_delimeters(numbers.lines.first)
    #extract positive and negeatives
    posi, neg = numbers.gsub("\n", ",").split(pattern).map(&:to_i).partition {|n| n >= 0 }
    # raise error if numbers include negatives
    raise "negatives not allowed - #{neg.join(",")}" unless neg.empty?
    posi.sum { |n| n <= 1000 ? n : 0 }
  end

  def self.extract_delimeters(first_line)
    delimeters = first_line.scan(/\[(.*?)\]/).flatten
    delimeters << ","
    pattern = Regexp.union(delimeters)
  end
end