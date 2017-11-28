class User < ActiveRecord::Base
  validates :fname, presence: true, length: { minimum: 2}
  validates :lname, presence: true, length: { maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}

  before_save {self.email = email.downcase }


  validates :password, :presence =>true, :confirmation => true, :length => { :within => 6..40 }, :on => :create
  validates :password, :confirmation => true, :length => { :within => 6..40 }, :on => :update, :unless => lambda{ |user| user.password.blank? }

has_secure_password
has_and_belongs_to_many :roles, dependent: :destroy
has_many :books
accepts_nested_attributes_for :roles

def role_name

end

def role_name=(name)
  if name.present?
   r = Role.find_by(name: name)
   unless r.nil?
    self.roles <<  r unless self.roles.include?(r)
  end
end
end

def delete_role(id)
  r = Role.find(id)
  self.roles.delete(r) if self.roles.include?(r)

end

#helps to remember the users who signed up
def User.new_remember_token
  SecureRandom.urlsafe_base64
end

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def roles_for_form
    collection = roles.where(role_id: id)
    collection.any? ? collection : roles.build
  end

  #verify if the user is an admin
  def is_admin?
    admin=Role.find_by_id(1)
    if
      self.roles.include?(admin)
      true

    else
      false
    end
  end



  private
  def create_remember_token
    self.remember_token = User.digest(User.new_remember_token)
  end


end
