class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.decimal :value
      t.references :measure_unit, index: true
      t.references :measure_name, index: true
      t.references :measurement, index: true

      t.timestamps
    end
  end
end
