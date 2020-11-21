class Acronym
    def self.abbreviate(string)
        string.upcase.split(/\W+/).map {|word| word[0]}.join
    end
end
