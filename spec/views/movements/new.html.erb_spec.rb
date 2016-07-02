require 'rails_helper'

RSpec.describe "movements/new", :type => :view do
  before(:each) do
    assign(:movement, Movement.new(
      :price => 1.5,
      :quantity => 1,
      :position_id => 1,
      :operation => "MyString"
    ))
  end

  it "renders new movement form" do
    render

    assert_select "form[action=?][method=?]", movements_path, "post" do

      assert_select "input#movement_price[name=?]", "movement[price]"

      assert_select "input#movement_quantity[name=?]", "movement[quantity]"

      assert_select "input#movement_position_id[name=?]", "movement[position_id]"

      assert_select "input#movement_operation[name=?]", "movement[operation]"
    end
  end
end
