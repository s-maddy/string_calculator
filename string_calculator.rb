module StringCalculator
  def add
    return 0 if empty?
    raise_negative_numbers_error
    numbers.reduce(0, :+)
  end

  def raise_negative_numbers_error
    raise "negatives not allowed: #{negative_numbers.join(', ')}" if negative_numbers.any?
  end

  def negative_numbers
    @negative ||= numbers.select { |n| n < 0 }
  end

  def numbers
    gsub("\n", delimiter).split(delimiter).map(&:to_i)
  end

  def delimiter
    @delimiter ||= start_with?("//") ? self[2] : ','
  end
end