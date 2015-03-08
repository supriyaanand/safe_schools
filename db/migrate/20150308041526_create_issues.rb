class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.references :school, index: true
      t.text :desc
      t.string :reporter_email
      t.string :reporter_name

      t.timestamps null: false
    end
    add_foreign_key :issues, :schools
  end
end
