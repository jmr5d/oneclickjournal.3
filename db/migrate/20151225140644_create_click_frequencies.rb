class CreateClickFrequencies < ActiveRecord::Migration
  def change
    create_table :click_frequencies do |t|
      t.references :user, index: true
      t.integer :click_count

      t.timestamps
    end
  end
end
