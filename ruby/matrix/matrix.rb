class Matrix
    attr_accessor :key, :rows, :columns

    def initialize(key)
        self.key = key
        self.rows = self.class.create_mat(key)
        self.columns = self.class.create_columns(self.rows)
    end

    def self.create_mat(key)
        matrix = key.split("\n").map do |row| 
            row.split(' ').map { |num| num.to_i }
        end
    end

    def self.create_columns(mat)
        columns = []
        i = 0
        while i < mat[0].length
            j = 0
            column = []
            while j < mat.length
                column << mat[j][i]
                j += 1
            end
            columns << column
            i += 1
        end
        columns
    end

end

mat = Matrix.new("1 2\n10 20")
print mat.key
print mat.columns
print mat.rows