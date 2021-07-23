class CreateVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :votes do |t|
      t.integer :article_id
      t.integer :user_id
    end
    add_foreign_key :votes, :users, column: :user_id
    add_foreign_key :votes, :articles, column: :article_id
  end
end
