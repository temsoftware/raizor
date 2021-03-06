class CreateModalities < ActiveRecord::Migration
  def self.up
    create_table :modalities, :primary_key => :id do |t|
      t.column :id, :integer
      t.column :description, :string, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :modalities
  end
end
