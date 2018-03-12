json.extract! data_source, :id, :username, :password, :db_server_name, :db_name, :table_name, :created_at, :updated_at
json.url data_source_url(data_source, format: :json)
