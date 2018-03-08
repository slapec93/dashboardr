require 'rails_helper'

RSpec.describe "data_sources/new", type: :view do
  before(:each) do
    assign(:data_source, DataSource.new(
      :username => "MyString",
      :password => "MyString",
      :db_server_name => "MyString",
      :db_name => "MyString",
      :table_name => "MyString"
    ))
  end

  it "renders new data_source form" do
    render

    assert_select "form[action=?][method=?]", data_sources_path, "post" do

      assert_select "input[name=?]", "data_source[username]"

      assert_select "input[name=?]", "data_source[password]"

      assert_select "input[name=?]", "data_source[db_server_name]"

      assert_select "input[name=?]", "data_source[db_name]"

      assert_select "input[name=?]", "data_source[table_name]"
    end
  end
end
