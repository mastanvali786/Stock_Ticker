require 'rails_helper'

RSpec.describe "movements/index", :type => :view do
  before(:each) do
    assign(:movements, [
      Movement.create!(
        :price => 1.5,
        :quantity => 1,
        :position_id => 2,
        :operation => "Operation"
      ),
      Movement.create!(
        :price => 1.5,
        :quantity => 1,
        :position_id => 2,
        :operation => "Operation"
      )
    ])
  end

  it "renders a list of movements" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Operation".to_s, :count => 2
  end
end
