class Raindrops
    def self.convert(num)
        rain_speak = ""
    
        if num % 3 == 0
            rain_speak += "Pling"
        end
        if num % 5 == 0
            rain_speak += "Plang"
        end
        if num % 7 == 0
            rain_speak += "Plong"
        end
        if rain_speak.empty?
            rain_speak += num.to_s
        end
        rain_speak
    end
end

