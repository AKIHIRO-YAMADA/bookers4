class AddFollowsToRelationships < ActiveRecord::Migration[5.0]
  def change
    add_column :relationships, :follows, :integer
  end
end
