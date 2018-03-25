module SQUEL
    class Sql
        def select
            return SQUEL::Select.new
        end

        def insert
            return SQUEL::Insert.new
        end

        def update
            return SQUEL::Update.new
        end
    end
end