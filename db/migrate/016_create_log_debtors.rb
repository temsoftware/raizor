class CreateLogDebtors < ActiveRecord::Migration
  def self.up
    create_table :log_debtors do |t|
      t.string :description,   :null => false
      t.date   :date_callback

      t.references :debtor
      t.references :status
      t.references :user

      t.timestamps
    end
#Chaves Estrangeiras
      execute "ALTER TABLE log_debtors ADD CONSTRAINT fk_log_debtors_debtors FOREIGN KEY (debtor_id) REFERENCES debtors(id)"

      execute "ALTER TABLE log_debtors ADD CONSTRAINT fk_log_debtors_status FOREIGN KEY (status_id) REFERENCES status(id)"

      execute "ALTER TABLE log_debtors ADD CONSTRAINT fk_log_debtors_users FOREIGN KEY (user_id) REFERENCES users(id)"
  end

  def self.down
    drop_table :log_debtors
  end
end
