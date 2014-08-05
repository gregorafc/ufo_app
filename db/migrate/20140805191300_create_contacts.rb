class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.date :date_contact
      t.integer :object_number
      t.integer :city_id

      t.timestamps
    end
  end
end
