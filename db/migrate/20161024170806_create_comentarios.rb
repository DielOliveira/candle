class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.references :usuariopregao, index: true, foreign_key: true
      t.string :descricao
      t.datetime :horacomentario

      t.timestamps null: false
    end
  end
end
