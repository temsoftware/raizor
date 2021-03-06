class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.column :mensage, :string

      t.column :user_id,   :integer
      t.column :debtor_id, :integer
      t.timestamps
    end
#Chaves Estrangeiras
      execute "ALTER TABLE posts ADD CONSTRAINT fk_posts_users FOREIGN KEY (user_id) REFERENCES users(id)"
      execute "ALTER TABLE posts ADD CONSTRAINT fk_posts_debtors FOREIGN KEY (debtor_id) REFERENCES debtors(id)"
  end

  def self.down
    drop_table :posts
  end
end
