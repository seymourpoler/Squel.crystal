require "minitest/autorun"

require "../../src/squel/condition_sentence_builder.cr"

class ConditionSentenceBuilderTest < Minitest::Test

    def test_expression_with_and
        builder = SQUEL::ConditionSentenceBuilder.new

        result = builder.and("id = 'aqswde'").and("age > 24").to_string

        assert_equal "id = 'aqswde' AND age > 24", result
    end

    def test_expression_with_or
        builder = SQUEL::ConditionSentenceBuilder.new

        result = builder.and("id = 'aqswde'").or("age > 24").to_string

        assert_equal "id = 'aqswde' OR age > 24", result
    end

    def test_expression_with_combination_of_or_conditions
        builder = SQUEL::ConditionSentenceBuilder.new

        result = builder.and("name <> 'Fred'").or_begin().or("id = 5").or("id = 6").end().to_string

        assert_equal "name <> 'Fred' AND (id = 5 OR id = 6)", result
    end
end