require "minitest/autorun"

require "../src/sql.cr"
require "../src/select.cr"
require "../src/fields_builder.cr"
require "../src/table_builder.cr"
require "../src/limit_builder.cr"
require "../src/offset_builder.cr"
require "../src/order_builder.cr"
require "../src/group_builder.cr"
require "../src/string_joiner.cr"

require "../src/insert.cr"
require "../src/update.cr"
require "../src/delete.cr"

class SqlTest < Minitest::Test
    def test_returns_select_sentence
    sql = SQUEL::Sql.new

    result = sql.select.from("students").to_string

    assert_equal "SELECT * FROM students", result
    end

    def test_returns_insert_sentence
        sql = SQUEL::Sql.new
    
        result = sql.insert.into("students").set("name", "Thomas").to_string
    
        assert_equal "INSERT INTO students (name) VALUES (Thomas)", result
    end

    def test_returns_update_sentence
        sql = SQUEL::Sql.new
    
        result = sql.update.table("students").set("name", "'Fred'").to_string
    
        assert_equal "UPDATE students SET name = 'Fred'", result
    end

    def test_returns_delete_sentence
        sql = SQUEL::Sql.new
    
        result = sql.delete.from("students").to_string
    
        assert_equal "DELETE FROM students", result
    end
end