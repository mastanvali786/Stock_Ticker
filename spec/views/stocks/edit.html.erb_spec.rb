require 'rails_helper'

RSpec.describe "stocks/edit", :type => :view do
  before(:each) do
    @stock = assign(:stock, Stock.create!(
      :name => "MyString",
      :price => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit stock form" do
    render

    assert_select "form[action=?][method=?]", stock_path(@stock), "post" do

      assert_select "input#stock_name[name=?]", "stock[name]"

      assert_select "input#stock_price[name=?]", "stock[price]"

      assert_select "input#stock_description[name=?]", "stock[description]"
    end
  end
end
