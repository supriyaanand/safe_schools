class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :school, index: true
      t.string :surroundings_good
      t.string :teacher_bg
      t.string :helpers_bg
      t.string :security
      t.boolean :safe_at_school
      t.text :comments
      t.integer :overall_rating

      t.timestamps null: false
    end
    add_foreign_key :reviews, :schools
  end
end
