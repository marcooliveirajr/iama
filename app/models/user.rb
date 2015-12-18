class User < ActiveRecord::Base
  belongs_to :role
  validates :name, presence: { message: :required_name }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # :registerable,
  devise :database_authenticatable, :recoverable,
  		 :rememberable, :trackable, :validatable

  before_create :set_default_role

  def admin?
    role == Role.find_by_name('admin')
  end

  def moderator?
    role == Role.find_by_name('moderator')
  end

  private

  def set_default_role
    self.role ||= Role.find_by_name('registered')
  end
end
