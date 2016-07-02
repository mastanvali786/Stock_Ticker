require 'rails_helper'

RSpec.describe "stocks/new", :type => :view do
  before(:each) do
    assign(:stock, Stock.new(
      :name => "MyString",
      :price => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new stock form" do
    render

    assert_select "form[action=?][method=?]", stocks_path, "post" do

      assert_select "input#stock_name[name=?]", "stock[name]"

      assert_select "input#stock_price[name=?]", "stock[price]"

      assert_select "input#stock_description[name=?]", "stock[description]"
    end
  end
end
