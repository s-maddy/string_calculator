module StringCalculator
  def add
    return 0 if empty?
    numbers.reduce(0, :+)
  end

  def numbers
    split(",").map(&:to_i)
  end
end