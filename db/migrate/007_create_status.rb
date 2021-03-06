class CreateStatus < ActiveRecord::Migration
  def self.up
    create_table :status, :primary_key => :id do |t|
      t.string  :description, :null =>    :false
      t.string  :finale,      :null =>    :false
      t.string  :date,        :default => :null
      t.string  :color,       :default => "#FFFFFF"
      t.integer :priority,    :null =>    :false

      t.references :type_status
      t.references :profile

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
