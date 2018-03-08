require 'rails_helper'

RSpec.describe "charts/index", type: :view do
  before(:each) do
    assign(:charts, [
      Chart.create!(
        :position_x => "9.99",
        :position_y => "9.99",
        :width => "9.99",
        :height => "9.99",
        :title => "Title",
        :dashboard => nil,
        :data_source => nil
      ),
      Chart.create!(
        :position_x => "9.99",
        :position_y => "9.99",
        :width => "9.99",
        :height => "9.99",
        :title => "Title",
        :dashboard => nil,
        :data_source => nil
      )
    ])
  end

  it "renders a list of charts" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
