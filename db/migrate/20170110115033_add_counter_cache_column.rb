class AddCounterCacheColumn < ActiveRecord::Migration
  def change

    add_column :cities, :contacts_count, :integer, default: 0
    
  end
end
