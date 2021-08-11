require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    assert_equal 'Ruby', 'ruby'.upcase
  end
end