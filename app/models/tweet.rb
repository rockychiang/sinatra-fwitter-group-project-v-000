class Tweet < ActiveRecord::Base
  belongs_to :user
<<<<<<< HEAD
  validates :content, presence: true
=======
>>>>>>> 5bd35b730cf58c5ccf23ab67a13c021017f1773c
end
