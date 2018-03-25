module SQUEL
    class Sql
        def select
            return SQUEL::Select.new
        end
        def insert
            return SQUEL::Insert.new
        end
    end
end