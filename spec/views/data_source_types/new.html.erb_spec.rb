require 'rails_helper'

RSpec.describe "data_source_types/new", type: :view do
  before(:each) do
    assign(:data_source_type, DataSourceType.new(
      :type_name => "MyString"
    ))
  end

  it "renders new data_source_type form" do
    render

    assert_select "form[action=?][method=?]", data_source_types_path, "post" do

      assert_select "input[name=?]", "data_source_type[type_name]"
    end
  end
end
