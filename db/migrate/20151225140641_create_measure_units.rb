class CreateMeasureUnits < ActiveRecord::Migration
  def change
    create_table :measure_units do |t|
      t.string :name
      t.string :abbrev_singular
      t.string :abbrev_plural

      t.timestamps
    end
  end
end
