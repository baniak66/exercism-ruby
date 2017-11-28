class Complement
  def self.of_dna(strand)
    return "" unless strand.match(/^[GCTA]+$/)
    pattern = { "G" => "C", "C" => "G", "T" => "A", "A" => "U" }
    strand.chars.map{ |i| pattern[i] }.join
  end
end
