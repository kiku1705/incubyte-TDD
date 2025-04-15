class Calculator
  def self.add(numbers)
    return 0 if numbers.empty? || numbers.nil?
    delimeter = ","
    if numbers.lines.first.match(/^\/\/(.+)/)
      delimeter = $1
    end
    numbers.gsub("\n", delimeter).split(delimeter).map(&:to_i).sum
  end
end