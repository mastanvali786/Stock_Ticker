require 'rails_helper'

RSpec.describe "positions/index", :type => :view do
  before(:each) do
    assign(:positions, [
      Position.create!(
        :account_id => 1,
        :quantity => 2,
        :ticker => "Ticker",
        :name => "Name"
      ),
      Position.create!(
        :account_id => 1,
        :quantity => 2,
        :ticker => "Ticker",
        :name => "Name"
      )
    ])
  end

  it "renders a list of positions" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Ticker".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
