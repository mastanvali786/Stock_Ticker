require 'rails_helper'

RSpec.describe "positions/show", :type => :view do
  before(:each) do
    @position = assign(:position, Position.create!(
      :account_id => 1,
      :quantity => 2,
      :ticker => "Ticker",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Ticker/)
    expect(rendered).to match(/Name/)
  end
end
