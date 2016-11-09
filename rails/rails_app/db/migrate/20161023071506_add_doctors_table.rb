class AddDoctorsTable < ActiveRecord::Migration
  def change
    create_table :physicians do |t|
      t.string  :name
    end

    create_table  :patients do |t|
      t.string  :name
    end

    create_table  :appointments do |t|
      t.integer :physician_id
      t.integer :patient_id

      t.timestamps null: false
    end

  end
end
