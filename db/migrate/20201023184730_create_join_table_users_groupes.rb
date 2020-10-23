class CreateJoinTableUsersGroupes < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :groupes do |t|
      t.index [:user_id, :groupe_id]
      t.index [:groupe_id, :user_id]
    end
  end
end
