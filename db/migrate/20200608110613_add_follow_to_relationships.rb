class AddFollowToRelationships < ActiveRecord::Migration[5.0]
  def change
    add_column :relationships, :follow_id, :integer
  end
end
