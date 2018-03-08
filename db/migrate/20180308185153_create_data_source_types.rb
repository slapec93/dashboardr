class CreateDataSourceTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :data_source_types do |t|
      t.string :type_name

      t.timestamps
    end
  end
end
