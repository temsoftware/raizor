class CreateBranches < ActiveRecord::Migration
  def self.up
    create_table :branches, :primary_key => :id do |t|
      t.column :id,            :integer
      t.column :name,          :string, :null => false
      t.column :phone,         :string
      t.column :fax,           :string
      t.column :manager,       :string
      t.column :manager_email, :string
      
      t.timestamps
    end
  end

  def self.down
    drop_table :branches
  end
end
