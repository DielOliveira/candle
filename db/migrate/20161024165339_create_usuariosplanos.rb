class CreateUsuariosplanos < ActiveRecord::Migration
  def change
    create_table :usuariosplanos do |t|
      t.references :plano, index: true, foreign_key: true
      t.references :usuario, index: true, foreign_key: true
      t.date :datapagamento
      t.string :linhacodigopagamento
      t.string :observacao
      t.datetime :valid_at

      t.timestamps null: false
    end
  end
end
