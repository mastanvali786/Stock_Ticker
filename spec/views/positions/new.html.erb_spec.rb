require 'rails_helper'

RSpec.describe "positions/new", :type => :view do
  before(:each) do
    assign(:position, Position.new(
      :account_id => 1,
      :quantity => 1,
      :ticker => "MyString",
      :name => "MyString"
    ))
  end

  it "renders new position form" do
    render

    assert_select "form[action=?][method=?]", positions_path, "post" do

      assert_select "input#position_account_id[name=?]", "position[account_id]"

      assert_select "input#position_quantity[name=?]", "position[quantity]"

      assert_select "input#position_ticker[name=?]", "position[ticker]"

      assert_select "input#position_name[name=?]", "position[name]"
    end
  end
end
