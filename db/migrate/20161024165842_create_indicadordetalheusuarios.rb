class CreateIndicadordetalheusuarios < ActiveRecord::Migration
  def change
    create_table :indicadordetalheusuarios do |t|
      t.references :indicadorsetupdetalhe, index: true, foreign_key: true
      t.references :indicadorsetup, index: true, foreign_key: true
      t.string :valor

      t.timestamps null: false
    end
  end
end
