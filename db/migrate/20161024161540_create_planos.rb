class CreatePlanos < ActiveRecord::Migration
  def change
    create_table :planos do |t|
      t.string :descricao
      t.integer :diasvalidos
      t.decimal :valor

      t.timestamps null: false
    end
  end
end
