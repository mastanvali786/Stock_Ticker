require 'rails_helper'

RSpec.describe "movements/edit", :type => :view do
  before(:each) do
    @movement = assign(:movement, Movement.create!(
      :price => 1.5,
      :quantity => 1,
      :position_id => 1,
      :operation => "MyString"
    ))
  end

  it "renders the edit movement form" do
    render

    assert_select "form[action=?][method=?]", movement_path(@movement), "post" do

      assert_select "input#movement_price[name=?]", "movement[price]"

      assert_select "input#movement_quantity[name=?]", "movement[quantity]"

      assert_select "input#movement_position_id[name=?]", "movement[position_id]"

      assert_select "input#movement_operation[name=?]", "movement[operation]"
    end
  end
end
