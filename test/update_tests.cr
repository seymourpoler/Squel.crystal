require "minitest/autorun"

require "../src/update.cr"

class UpdateTest < Minitest::Test
    def test_update_fields_from_table
        sqlUpdate = SQUEL::Update.new

        result = sqlUpdate.table("students").set("name", "'Fred'").set("age", 29).set("score", 1.2).set("graduate", false).to_string

        assert_equal "UPDATE students SET name = 'Fred', age = 29, score = 1.2, graduate = false", result
    end

    def test_update_fields_from_table_with_acronimus
        sqlUpdate = SQUEL::Update.new

        result = sqlUpdate.table("students", "s").set("name", "'Fred'").to_string

        assert_equal "UPDATE students s SET name = 'Fred'", result
    end

    def test_update_fields_from_table_with_condition
        sqlUpdate = SQUEL::Update.new

        result = sqlUpdate.table("students", "s").set("name", "'Fred'").where("age = 12").to_string

        assert_equal "UPDATE students s SET name = 'Fred' WHERE (age = 12)", result
    end

    def test_update_fields_from_table_with_conditions
        sqlUpdate = SQUEL::Update.new

        result = sqlUpdate.table("students", "s").set("name", "'Fred'").where("age = 12").where("enable = true").to_string

        assert_equal "UPDATE students s SET name = 'Fred' WHERE (age = 12) AND (enable = true)", result
    end
end