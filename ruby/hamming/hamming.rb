class Hamming

    def self.compute(dna, rna)
        raise ArgumentError if dna.length != rna.length

        distance = 0
        (0...dna.length).each do |i| 
            if dna[i] != rna[i]
                distance += 1
            end
        end
        distance
    end

end
