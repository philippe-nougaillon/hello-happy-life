class CreateActivites < ActiveRecord::Migration[6.0]
  def change
    create_table :activités do |t|
      t.string :nom

      t.timestamps
    end
  end
end
