class CreateUsuariopregaos < ActiveRecord::Migration
  def change
    create_table :usuariopregaos do |t|
      t.string :usuario
      t.references :pregoestitulo, index: true, foreign_key: true
      t.references :indicadorsetup, index: true, foreign_key: true
      t.datetime :checkpoint
      t.float :resultado
      t.boolean :flagfinalizado

      t.timestamps null: false
    end
  end
end
