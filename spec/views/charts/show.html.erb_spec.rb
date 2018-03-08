require 'rails_helper'

RSpec.describe "charts/show", type: :view do
  before(:each) do
    @chart = assign(:chart, Chart.create!(
      :position_x => "9.99",
      :position_y => "9.99",
      :width => "9.99",
      :height => "9.99",
      :title => "Title",
      :dashboard => nil,
      :data_source => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
