class CreatePregoestitulosgraficos < ActiveRecord::Migration
  def change
    create_table :pregoestitulosgraficos do |t|
      t.references :pregoestitulo, index: true, foreign_key: true
      t.references :arquivo, index: true, foreign_key: true
      t.references :tempografico, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
