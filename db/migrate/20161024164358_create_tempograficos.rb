class CreateTempograficos < ActiveRecord::Migration
  def change
    create_table :tempograficos do |t|
      t.string :tempo

      t.timestamps null: false
    end
  end
end
