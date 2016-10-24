class CreateTitulos < ActiveRecord::Migration
  def change
    create_table :titulos do |t|
      t.string :codigo
      t.decimal :valortick
      t.boolean :flagativo

      t.timestamps null: false
    end
  end
end
