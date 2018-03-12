class CreateDataSources < ActiveRecord::Migration[5.1]
  def change
    create_table :data_sources do |t|
      t.string :username
      t.string :password
      t.string :db_server_name
      t.string :db_name
      t.string :table_name
      t.references :data_source_type, foreign_key: true

      t.timestamps
    end
  end
end
