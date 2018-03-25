require "minitest/autorun"

require "../../src/squel/sql.cr"
require "../../src/squel/select.cr"
require "../../src/squel/fields_builder.cr"
require "../../src/squel/table_builder.cr"
require "../../src/squel/limit_builder.cr"
require "../../src/squel/offset_builder.cr"
require "../../src/squel/order_builder.cr"
require "../../src/squel/group_builder.cr"
require "../../src/squel/string_joiner.cr"

require "../../src/squel/insert.cr"

class SqlTest < Minitest::Test
    def test_returns_select_sentence
    sql = SQUEL::Sql.new

    result = sql.select.from("students").to_string

    assert_equal "SELECT * FROM students", result
    end

    def test_returns_update_sentence
        sql = SQUEL::Sql.new
    
        result = sql.insert.into("students").set("name", "Thomas").to_string
    
        assert_equal "INSERT INTO students (name) VALUES (Thomas)", result
        end
end