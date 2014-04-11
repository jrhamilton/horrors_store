class User < ActiveRecord::Base
  has_secure_password

  validates :name, :presence => true
  validates :email, :presence => true, :uniqueness => true


  def make_admin
    self.update(:admin => true)
  end

  def remove_admin
    self.update(:admin => false)
  end

end
