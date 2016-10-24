class CreatePregoestitulos < ActiveRecord::Migration
  def change
    create_table :pregoestitulos do |t|
      t.references :pregao, index: true, foreign_key: true
      t.references :titulo, index: true, foreign_key: true
      t.boolean :flagativo

      t.timestamps null: false
    end
  end
end
