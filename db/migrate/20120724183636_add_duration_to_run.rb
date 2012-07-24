class AddDurationToRun < ActiveRecord::Migration
  def change
    add_column :runs, :duration, :string
  end
end
