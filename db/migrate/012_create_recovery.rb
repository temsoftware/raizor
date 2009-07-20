class CreateRecovery < ActiveRecord::Migration
  def self.up
     create_table :recovery, :primary_key => :status_id do |t|
      t.column :queue_count, :integer, :null => false, :default => 0

      t.timestamps
    end

#Chaves Estrangeiras
      execute "ALTER TABLE recovery ADD CONSTRAINT fk_recovery_status FOREIGN KEY (status_id) REFERENCES status(id)"
  end

  def self.down
    drop_table :recovery
  end
end
