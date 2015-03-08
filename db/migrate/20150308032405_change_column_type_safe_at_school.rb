class ChangeColumnTypeSafeAtSchool < ActiveRecord::Migration
  def change
	change_column :reviews, :safe_at_school, :string
  end
end
