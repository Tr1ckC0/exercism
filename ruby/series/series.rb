class Series
    def initialize(string)
        @string = string
    end

    def slices(n)
        raise ArgumentError if n > @string.length
        container = []
        
        i = 0
        while i < @string.length - (n - 1) do
            container << @string.slice(i...(n + i))
            
            i += 1
        end
        container
    end

end

https://exercism.io/my/solutions/b7db631d632944f99f705732505624a8