require_relative "isbn_check"
require "test/unit"
 
class IsbnCheckSpec < Test::Unit::TestCase
 
  def test_success
    assert_equal("Compelete ISBN: #{9780143007234}", IsbnCheck.new.exec(978014300723) )
  end

  def test_failure
    assert_equal(nil, IsbnCheck.new.exec)
  end
end