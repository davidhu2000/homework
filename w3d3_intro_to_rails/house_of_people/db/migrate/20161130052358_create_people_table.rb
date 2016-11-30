class CreatePeopleTable < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.text :name
      t.integer :hose_id
      t.timestamps
    end
  end
end
