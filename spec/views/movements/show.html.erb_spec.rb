require 'rails_helper'

RSpec.describe "movements/show", :type => :view do
  before(:each) do
    @movement = assign(:movement, Movement.create!(
      :price => 1.5,
      :quantity => 1,
      :position_id => 2,
      :operation => "Operation"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Operation/)
  end
end
