class AddPaidToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :paid, :boolean
  end
end
