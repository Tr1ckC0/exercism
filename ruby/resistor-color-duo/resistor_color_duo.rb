class ResistorColorDuo
    @@all_colors = %w[black brown red orange yellow green blue violet grey white]


    def self.value(colors)
        sum = 0
        colors[0..1].each do |color|
            value = @@all_colors.index(color)
            sum = sum * 10 + value
        end

        sum
    end

end

puts ResistorColorDuo.value(['black', 'brown'])