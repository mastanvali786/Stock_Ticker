require 'rails_helper'

RSpec.describe "positions/edit", :type => :view do
  before(:each) do
    @position = assign(:position, Position.create!(
      :account_id => 1,
      :quantity => 1,
      :ticker => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit position form" do
    render

    assert_select "form[action=?][method=?]", position_path(@position), "post" do

      assert_select "input#position_account_id[name=?]", "position[account_id]"

      assert_select "input#position_quantity[name=?]", "position[quantity]"

      assert_select "input#position_ticker[name=?]", "position[ticker]"

      assert_select "input#position_name[name=?]", "position[name]"
    end
  end
end
