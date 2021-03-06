require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  
  test "unique_tag" do
    #quote = Quote.create(:author => 'Brandon McLean', :saying => 'Time to get it in')
    quote = FactoryGirl.create(:quote, :author => "Brandon McLean")
    expected = 'BM#' + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual
  end
  
  
end
