require 'rails_helper'

RSpec.describe "data_sources/edit", type: :view do
  before(:each) do
    @data_source = assign(:data_source, DataSource.create!(
      :username => "MyString",
      :password => "MyString",
      :db_server_name => "MyString",
      :db_name => "MyString",
      :table_name => "MyString"
    ))
  end

  it "renders the edit data_source form" do
    render

    assert_select "form[action=?][method=?]", data_source_path(@data_source), "post" do

      assert_select "input[name=?]", "data_source[username]"

      assert_select "input[name=?]", "data_source[password]"

      assert_select "input[name=?]", "data_source[db_server_name]"

      assert_select "input[name=?]", "data_source[db_name]"

      assert_select "input[name=?]", "data_source[table_name]"
    end
  end
end
