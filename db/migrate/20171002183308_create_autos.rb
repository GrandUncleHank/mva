class CreateAutos < ActiveRecord::Migration
  def change
    create_table :autos do |t|
      t.string :title
      t.integer :price
      t.string :description
      t.string :contact

      t.timestamps null: false
    end
  end
end
