require 'rails_helper'

RSpec.describe "data_source_types/show", type: :view do
  before(:each) do
    @data_source_type = assign(:data_source_type, DataSourceType.create!(
      :type_name => "Type Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type Name/)
  end
end
