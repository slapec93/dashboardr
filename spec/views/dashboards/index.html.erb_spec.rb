require 'rails_helper'

RSpec.describe "dashboards/index", type: :view do
  before(:each) do
    assign(:dashboards, [
      Dashboard.create!(
        :title => "Title"
      ),
      Dashboard.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of dashboards" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
