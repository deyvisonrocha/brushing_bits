class Brushing
  attr_reader :total, :error_msg

  def initialize
    @total = 0
  end

  def extract(number_a, number_b)
    if number_b <= number_a
      @error_msg = "The B number must be greater than the A number"
    end

    [*number_a..number_b].each do |f|
      letter = f.to_s(2).scan /\w/
      letter.each do |l|
        if l.to_i === 1
          @total += 1
        end
      end
    end
  end
end
