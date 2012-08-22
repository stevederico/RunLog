class AddUserToRun < ActiveRecord::Migration
  def change
    add_column :runs, :user_id, :int
  end
end
