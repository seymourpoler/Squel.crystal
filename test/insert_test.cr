require "minitest/autorun"

require "../src/insert.cr"

class InserTest < Minitest::Test
    def test_insert_with_assignments
        sqlInsert = SQUEL::Insert.new

        result = sqlInsert.into("students").set("name", "Thomas").set("age", 29).set("score", 90.2).set("graduate", true).set("nickname", Nil).to_string

        assert_equal "INSERT INTO students (name, age, score, graduate, nickname) VALUES (Thomas, 29, 90.2, true, NULL)", result
    end
end