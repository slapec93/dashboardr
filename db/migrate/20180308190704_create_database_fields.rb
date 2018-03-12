class CreateDatabaseFields < ActiveRecord::Migration[5.1]
  def change
    create_table :database_fields do |t|
      t.string :type
      t.string :db_name
      t.string :alias
      t.references :data_source, foreign_key: true

      t.timestamps
    end
  end
end
