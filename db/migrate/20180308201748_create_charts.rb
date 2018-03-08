class CreateCharts < ActiveRecord::Migration[5.1]
  def change
    create_table :charts do |t|
      t.decimal :position_x
      t.decimal :position_y
      t.decimal :width
      t.decimal :height
      t.string :title
      t.references :dashboard, foreign_key: true
      t.references :data_source, foreign_key: true

      t.timestamps
    end
  end
end
