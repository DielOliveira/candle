class CreateIndicadorsetups < ActiveRecord::Migration
  def change
    create_table :indicadorsetups do |t|
      t.references :indicador, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
