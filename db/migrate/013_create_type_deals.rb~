class CreateTypeDeals < ActiveRecord::Migration
  def self.up
    create_table :type_deals do |t|
      t.column :decription, :string, :null => false
      t.column :color, :string, :null => false, :default => "#000000"
    end
  end

  def self.down
    drop_table :type_deals
  end
end
