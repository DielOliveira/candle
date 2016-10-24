class CreatePregaos < ActiveRecord::Migration
  def change
    create_table :pregaos do |t|
      t.date :data
      t.boolean :flagativo

      t.timestamps null: false
    end
  end
end
