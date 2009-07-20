class CreateStatus < ActiveRecord::Migration
  def self.up
    create_table :status, :primary_key => :id do |t|
      t.column :description, :string,  :null => :false
      t.column :finale,      :string,  :null => :false
      t.column :date,        :string,  :default => :null
      t.column :color,       :string,  :default => "#FFFFFF"
      t.column :priority,    :integer, :null => :false

      t.column :type_status_id, :integer
      t.column :profile_id,     :integer

      t.timestamps
    end
#Chaves Estrangeiras
      execute "ALTER TABLE status ADD CONSTRAINT fk_status_type_status FOREIGN KEY (type_status_id) REFERENCES type_status(id)"

      execute "ALTER TABLE status ADD CONSTRAINT fk_status_profiles FOREIGN KEY (profile_id) REFERENCES profiles(id)"
  end

  def self.down
    drop_table :status
  end
end
