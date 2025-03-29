module StringCalculator
  def add
    return 0 if empty?
    return to_i unless include?(",")
    numbers = split(",").map(&:to_i)
    numbers.reduce(0, :+)
  end
end