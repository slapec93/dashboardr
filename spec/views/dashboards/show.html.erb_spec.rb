require 'rails_helper'

RSpec.describe "dashboards/show", type: :view do
  before(:each) do
    @dashboard = assign(:dashboard, Dashboard.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
