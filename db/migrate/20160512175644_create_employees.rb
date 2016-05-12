class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.text :address
      t.string :phone
      t.references :organisation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
