module StringCalculator
  def add
    return 0 if empty?
    raise_negative_numbers_error
    numbers.reduce(0, :+)
  end

  def raise_negative_numbers_error
    return if negative_numbers.empty?
    raise "negatives not allowed: #{negative_numbers.join(', ')}"
  end

  def negative_numbers
    numbers.select { |n| n < 0 }
  end

  def numbers
    gsub("\n", delimiter).split(delimiter).map(&:to_i)
  end

  def delimiter
    start_with?("//") ? self[2] : ','
  end
end