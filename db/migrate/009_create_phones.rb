class CreatePhones < ActiveRecord::Migration
  def self.up
    create_table :phones do |t|
      t.column :number,      :string
      t.column :branch_line, :string
      t.column :type,        :string
      t.column :description, :string

      t.column :debtor_id, :integer

      t.timestamps
    end
#Chaves Estrangeiras
      execute "ALTER TABLE phones ADD CONSTRAINT fk_phones_users FOREIGN KEY (debtor_id) REFERENCES debtors(id)"
  end

  def self.down
    drop_table :phones
  end
end
