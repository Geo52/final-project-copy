class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  serialize :registered_courses, coder: JSON

  after_initialize do |r|
    r.registered_courses = [] if r.registered_courses == nil
  end

  #teachers are 1
  def teacher?
    role_id == 1
  end
  
  #students are 0
  def student?
    role_id == 0
  end
end
