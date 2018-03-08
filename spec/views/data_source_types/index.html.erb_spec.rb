require 'rails_helper'

RSpec.describe "data_source_types/index", type: :view do
  before(:each) do
    assign(:data_source_types, [
      DataSourceType.create!(
        :type_name => "Type Name"
      ),
      DataSourceType.create!(
        :type_name => "Type Name"
      )
    ])
  end

  it "renders a list of data_source_types" do
    render
    assert_select "tr>td", :text => "Type Name".to_s, :count => 2
  end
end
