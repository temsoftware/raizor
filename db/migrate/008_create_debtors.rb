class CreateDebtors < ActiveRecord::Migration
  def self.up
    create_table :debtors do |t|
      t.column :name,        :string,  :null => false
      t.column :controller,  :string,  :null => false
      t.column :postal,      :boolean, :default => false
      t.column :debtor_type, :string,  :null => false
      t.column :cpf_cnpj,    :string,  :null => false
      t.column :address,     :string,  :default => :null
      t.column :cep,         :string,  :default => :null
      t.column :city,        :string,  :default => :null
      t.column :state,       :string,  :default => :null
      t.column :phone,       :string,  :default => :null
      t.column :spouse,      :string,  :default => :null
      t.column :father,      :string,  :default => :null
      t.column :mother,      :string,  :default => :null

      t.column :user_id,   :integer, :default => 1
      t.column :status_id, :integer, :default => 200
      
      t.timestamps
    end
#Chaves Estrangeiras
      execute "ALTER TABLE debtors ADD CONSTRAINT fk_debtors_users FOREIGN KEY (user_id) REFERENCES users(id)"
      execute "ALTER TABLE debtors ADD CONSTRAINT fk_debtors_status FOREIGN KEY (status_id) REFERENCES status(id)"

  end

  def self.down
    drop_table :debtors
  end
end
