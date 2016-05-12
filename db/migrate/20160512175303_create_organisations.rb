class CreateOrganisations < ActiveRecord::Migration
  def change
    create_table :organisations do |t|
      t.string :name
      t.text :address
      t.string :phone

      t.timestamps null: false
    end
  end
end
