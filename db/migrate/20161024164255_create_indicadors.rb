class CreateIndicadors < ActiveRecord::Migration
  def change
    create_table :indicadors do |t|
      t.string :indicador
      t.string :descricao

      t.timestamps null: false
    end
  end
end
