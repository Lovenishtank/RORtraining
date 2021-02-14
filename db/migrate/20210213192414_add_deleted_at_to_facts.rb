class AddDeletedAtToFacts < ActiveRecord::Migration[6.1]
  def change
    add_column :facts, :deleted_at, :datetime
    add_index :facts, :deleted_at
  end
end
