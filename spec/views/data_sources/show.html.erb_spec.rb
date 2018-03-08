require 'rails_helper'

RSpec.describe "data_sources/show", type: :view do
  before(:each) do
    @data_source = assign(:data_source, DataSource.create!(
      :username => "Username",
      :password => "Password",
      :db_server_name => "Db Server Name",
      :db_name => "Db Name",
      :table_name => "Table Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/Db Server Name/)
    expect(rendered).to match(/Db Name/)
    expect(rendered).to match(/Table Name/)
  end
end
