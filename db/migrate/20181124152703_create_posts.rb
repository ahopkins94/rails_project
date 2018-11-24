class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :description
      t.string :quality
      t.string :postage_details
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end