class CreateIndicadorsetupdetalhes < ActiveRecord::Migration
  def change
    create_table :indicadorsetupdetalhes do |t|
      t.references :indicador, index: true, foreign_key: true
      t.string :descricao
      t.string :valordefault

      t.timestamps null: false
    end
  end
end
