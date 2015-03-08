class AddColumnAidStudentsCrossToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :aid_student_crossing, :string
  end
end
