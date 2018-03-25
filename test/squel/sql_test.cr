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

class SqlTest < Minitest::Test

    def test_returns_select_sentence
    sql = SQUEL::Sql.new

    result = sql.select.from("students").to_string

    assert_equal "SELECT * FROM students", result
    end
end