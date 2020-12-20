class CreateSorties < ActiveRecord::Migration[6.0]
  def change
    create_table :sorties do |t|
      t.references :groupe, null: false, foreign_key: true
      t.datetime :le
      t.string :lieu

      t.timestamps
    end
  end
end
