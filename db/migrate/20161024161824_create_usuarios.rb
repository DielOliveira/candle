class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :email
      t.string :senha
      t.string :nomecompleto
      t.date :datascimento
      t.datetime :ultimologin
      t.boolean :flagativo

      t.timestamps null: false
    end
  end
end
