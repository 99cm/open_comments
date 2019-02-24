class OpenComments < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_comments do |t|
      t.string :title, limit: 50
      t.text :comment
      t.integer :comment_type_id
      t.references :commentable, polymorphic: true
      t.references :user
      t.timestamps
    end

    add_index :comments, [:commentable_type, :commentable_id]
    add_index :comments, :user_id

    create_table :spree_comments_types do |t|
      t.string :name
      t.string :applies_to
      t.timestamps
    end
  end
end