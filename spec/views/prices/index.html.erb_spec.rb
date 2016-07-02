require 'rails_helper'

RSpec.describe "prices/index", :type => :view do
  before(:each) do
    assign(:prices, [
      Price.create!(
        :name => "Name",
        :password => "Password",
        :image => "Image"
      ),
      Price.create!(
        :name => "Name",
        :password => "Password",
        :image => "Image"
      )
    ])
  end

  it "renders a list of prices" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
