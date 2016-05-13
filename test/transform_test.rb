require_relative 'test_helper'

class TransformTest < MiniTest::Test
  def setup
  end

  def test_uppercase
    assert_equal 'abc', transform('ABC')
  end

  def test_lowercase
    assert_match /[aeiou]/, transform('a')
    assert_match /[bcdfghjklmnpqrstvwxyz]/, transform('b')
  end

  def test_digit
    assert_match /[0123456789]{2}/, transform('##')
  end

  def test_letter_list
    assert_match /[abc][def]/, transform('[abc][def]')
  end

  def test_word_list
    assert_match /(cat|dog)/, transform('(cat dog)')
  end

  def test_optional
    assert_match /^a{0,7}$/, transform('A?A?A?A?A?A?A?')
  end

  def test_all
    v = "[aeiou]"
    c = "[bcdfghjklmnpqrstvwxyz]"
    n = "[0123456789]"
    expected = /i#{v}[abc]#{n}(one|two)x?y?z[def]#{n}(three|four)#{v}o/
    actual   = transform 'Ii[abc]#(one two)X?Y?Z[def]#(three four)oO'
    assert_match expected, actual
  end

end
