require 'rails_helper'

RSpec.describe "charts/new", type: :view do
  before(:each) do
    assign(:chart, Chart.new(
      :position_x => "9.99",
      :position_y => "9.99",
      :width => "9.99",
      :height => "9.99",
      :title => "MyString",
      :dashboard => nil,
      :data_source => nil
    ))
  end

  it "renders new chart form" do
    render

    assert_select "form[action=?][method=?]", charts_path, "post" do

      assert_select "input[name=?]", "chart[position_x]"

      assert_select "input[name=?]", "chart[position_y]"

      assert_select "input[name=?]", "chart[width]"

      assert_select "input[name=?]", "chart[height]"

      assert_select "input[name=?]", "chart[title]"

      assert_select "input[name=?]", "chart[dashboard_id]"

      assert_select "input[name=?]", "chart[data_source_id]"
    end
  end
end
