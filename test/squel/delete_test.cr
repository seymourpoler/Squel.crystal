require "minitest/autorun"

require "../../src/squel/delete.cr"

class DeleteTest < Minitest::Test
    def test_delete_from_table
        sqlDelete = SQUEL::Delete.new

        result = sqlDelete.from("students").to_string

        assert_equal "DELETE FROM students", result
    end

    def test_delete_from_table_with_conditions
        sqlDelete = SQUEL::Delete.new

        result = sqlDelete.from("students").where("id > 5").where("id < 102").to_string

        assert_equal "DELETE FROM students WHERE (id > 5) AND (id < 102)", result
    end
end