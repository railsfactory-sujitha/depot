class User < ActiveRecord::Base
has_many :order
has_many :line_item
#attr_accessor :name, :email, :password, :password_confirmation, :remember_me,  :address
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true, uniqueness: true
  #has_secure_password
 after_destroy :ensure_an_admin_remains
 private
 def ensure_an_admin_remains
  if User.count.zero?
    raise "Can't delete last user"
  end
 end
end
