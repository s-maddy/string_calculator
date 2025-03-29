module StringCalculator
  def add
    return 0 if empty?
    numbers.reduce(0, :+)
  end

  def numbers
    gsub("\n", delimiter).split(delimiter).map(&:to_i)
  end

  def delimiter
    start_with?("//") ? self[2] : ','
  end
end