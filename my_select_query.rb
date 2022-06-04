require'csv'

class MySelectQuery
    def initialize(content)
        @data = CSV.parse(content, headers: true)
    end

    def where(column, criteria)
        result = []
        @data.filter do |row|
            if row[column] == criteria
                result << row.to_hash.values.join(',')
            end
            
        end
        result
    end
end
