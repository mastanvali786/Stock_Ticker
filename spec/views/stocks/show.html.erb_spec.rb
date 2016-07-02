require 'rails_helper'

RSpec.describe "stocks/show", :type => :view do
  before(:each) do
    @stock = assign(:stock, Stock.create!(
      :name => "Name",
      :price => "Price",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Price/)
    expect(rendered).to match(/Description/)
  end
end
