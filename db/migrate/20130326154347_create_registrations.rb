class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.date :registe_date
      t.string :name
      t.string :school

      t.timestamps
    end
  end
end
