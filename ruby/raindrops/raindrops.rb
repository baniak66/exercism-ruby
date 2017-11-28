class Raindrops
  def self.convert(number)
    factors = (1..number).select { |n| number % n == 0 }
    return number.to_s if factors.none?{ |n| [3,5,7].include?(n) }

    speak = []
    factors.each do |factor|
      case factor
        when 3; speak << "Pling"
        when 5; speak << "Plang"
        when 7; speak << "Plong"
        else;
      end
    end
    speak.join
  end
end
