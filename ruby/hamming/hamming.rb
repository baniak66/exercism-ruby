class Hamming
  def self.compute(strand_1, strand_2)
    raise ArgumentError, "Lengths of strands aren't equal."unless strand_1.length == strand_2.length
    strand_1.chars.zip(strand_2.chars).map{ |x,y| x != y }.count(true)
  end
end
