class User < ActiveRecord::Base
  has_secure_password
  has_many :tweets
<<<<<<< HEAD
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true
=======
>>>>>>> 5bd35b730cf58c5ccf23ab67a13c021017f1773c

  def slug
    self.username.downcase.gsub(" ", "-")
  end

  def self.find_by_slug(slug)
    self.where("username like ?", "%#{slug.gsub("-", " ")}%").first
  end

end
