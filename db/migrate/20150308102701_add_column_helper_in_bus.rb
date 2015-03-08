class AddColumnHelperInBus < ActiveRecord::Migration
  def change
	add_column :reviews, :helper_in_bus, :string
  end
end
