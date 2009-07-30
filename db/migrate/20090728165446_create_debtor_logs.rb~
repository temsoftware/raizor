class CreateDebtorLogs < ActiveRecord::Migration
  def self.up
    create_table :debtor_logs do |t|
      t.column :description, :string, :null => false

      t.column :debtor_id, :integer
      t.column :status_id, :integer
      t.column :user_id,   :integer

      t.timestamps
    end
#Chaves Estrangeiras
      execute "ALTER TABLE debtor_logs ADD CONSTRAINT fk_debtor_logs_debtors FOREIGN KEY (debtor_id) REFERENCES debtors(id)"

      execute "ALTER TABLE debtor_logs ADD CONSTRAINT fk_debtor_logs_status FOREIGN KEY (status_id) REFERENCES status(id)"

      execute "ALTER TABLE debtor_logs ADD CONSTRAINT fk_debtor_logs_users FOREIGN KEY (user_id) REFERENCES users(id)"
  end

  def self.down
    drop_table :debtor_logs
  end
end
