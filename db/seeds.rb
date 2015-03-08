Issue.create!([
  {school_id: 1, desc: "Unruly bus driver", reporter_email: "abc@gmail.com", reporter_name: "Abcd", status: "Closed", summary: "Rash driving"},
  {school_id: 1, desc: "Inadequate security", reporter_email: "reg@gg.com", reporter_name: "ffe", status: "Open", summary: nil},
  {school_id: 1, desc: "School bus being driven rashly", reporter_email: "fdf@ge.com", reporter_name: "Abcd", status: "Open", summary: "Rash driving"}
])
Review.create!([
  {school_id: 1, surroundings_good: "Yes", teacher_bg: "Maybe", helpers_bg: "Maybe", security: "Yes", safe_at_school: "Yes", comments: "Unruly bus drivers ", overall_rating: 3, helper_in_bus: nil, aid_student_crossing: nil},
  {school_id: 1, surroundings_good: "Yes", teacher_bg: "Yes", helpers_bg: "Yes", security: "Yes", safe_at_school: "Yes", comments: "Need to provide additional helper/support staff in all school buses", overall_rating: 4, helper_in_bus: nil, aid_student_crossing: nil},
  {school_id: 2, surroundings_good: "Yes", teacher_bg: "Yes", helpers_bg: "Yes", security: "Yes", safe_at_school: "Yes", comments: "Install CCTV cameras on premices", overall_rating: 2, helper_in_bus: "Yes", aid_student_crossing: "Yes"}
])
School.create!([
  {name: "ABCD", locality: "Jayanagar", address: nil},
  {name: "DEFG", locality: "Koramangala", address: nil}
])
Suggestion.create!([
  {desc: "Rigorous background verification"},
  {desc: "Provide value based training to bus drivers and support staff"}
])
