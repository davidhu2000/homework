class ChangePeople < ActiveRecord::Migration
  def change
    rename_column :people, :hose_id, :house_id
  end
end
