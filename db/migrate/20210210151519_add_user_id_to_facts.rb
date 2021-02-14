class AddUserIdToFacts < ActiveRecord::Migration[6.1]
  def change
    remove_column :facts, :user_id, :integer
    add_reference :facts, :user, foreign_key: true
  end
end
