class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :sex
      t.integer :insurance_N0

      t.timestamps
    end
  end
end
