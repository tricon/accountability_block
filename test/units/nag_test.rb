require 'test/unit'
require 'accountability_block'

class UserTest < Test::Unit::TestCase
  def test_should_not_symbolize_fixnums
    AccountabilityBlock.define do
      @nag = nag 1, "Fixnum test."
    end

    assert_equal 1, @nag.name
  end
end
