require 'rails_helper'

RSpec.describe "data_source_types/edit", type: :view do
  before(:each) do
    @data_source_type = assign(:data_source_type, DataSourceType.create!(
      :type_name => "MyString"
    ))
  end

  it "renders the edit data_source_type form" do
    render

    assert_select "form[action=?][method=?]", data_source_type_path(@data_source_type), "post" do

      assert_select "input[name=?]", "data_source_type[type_name]"
    end
  end
end
