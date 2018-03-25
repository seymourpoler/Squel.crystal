module SQUEL
    class Sql
        def select
            return SQUEL::Select.new
        end
    end
end