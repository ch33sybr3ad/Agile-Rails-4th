require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', :minimum => 4 
    assert_select 'h1', 'Your Pragmatic Catalog' 
    assert_select 'td', /\$[,\d]+\.\d\d/
  end



end
