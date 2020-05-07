class CreateFollowships < ActiveRecord::Migration[6.0]
  def change
    create_table :followships do |t|
      t.references :follower
      t.references :following
      t.timestamps
    end
    add_foreign_key :followships, :users, column: :follower_id
    add_foreign_key :followships, :users, column: :following_id
  end
end
