require 'rails_helper'

RSpec.describe "data_sources/index", type: :view do
  before(:each) do
    assign(:data_sources, [
      DataSource.create!(
        :username => "Username",
        :password => "Password",
        :db_server_name => "Db Server Name",
        :db_name => "Db Name",
        :table_name => "Table Name"
      ),
      DataSource.create!(
        :username => "Username",
        :password => "Password",
        :db_server_name => "Db Server Name",
        :db_name => "Db Name",
        :table_name => "Table Name"
      )
    ])
  end

  it "renders a list of data_sources" do
    render
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Db Server Name".to_s, :count => 2
    assert_select "tr>td", :text => "Db Name".to_s, :count => 2
    assert_select "tr>td", :text => "Table Name".to_s, :count => 2
  end
end
