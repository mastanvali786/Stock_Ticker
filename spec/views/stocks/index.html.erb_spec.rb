require 'rails_helper'

RSpec.describe "stocks/index", :type => :view do
  before(:each) do
    assign(:stocks, [
      Stock.create!(
        :name => "Name",
        :price => "Price",
        :description => "Description"
      ),
      Stock.create!(
        :name => "Name",
        :price => "Price",
        :description => "Description"
      )
    ])
  end

  it "renders a list of stocks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
