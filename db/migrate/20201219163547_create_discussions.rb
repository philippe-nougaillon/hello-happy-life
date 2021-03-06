class CreateDiscussions < ActiveRecord::Migration[6.0]
  def change
    create_table :discussions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :groupe, null: false, foreign_key: true
      t.string :message

      t.timestamps
    end
  end
end
