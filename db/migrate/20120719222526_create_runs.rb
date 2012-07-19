class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.text :description
      t.float :distance

      t.timestamps
    end
  end
end
