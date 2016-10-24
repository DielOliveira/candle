class CreateArquivos < ActiveRecord::Migration
  def change
    create_table :arquivos do |t|
      t.string :nome
      t.string :caminho

      t.timestamps null: false
    end
  end
end
