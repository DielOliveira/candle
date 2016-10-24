class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.references :usuariopregao, index: true, foreign_key: true
      t.datetime :horatrade
      t.decimal :volume
      t.string :operacao
      t.decimal :pontos

      t.timestamps null: false
    end
  end
end
