# Contributions
# Andrew Storch: File creation, Devise
# Johan McGwire: Validation, Association

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :reservations, dependent: :destroy
  validates :email, presence: true, uniqueness: true, format: {with:/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/, message: "Invalid email format, please use a properly formatted email"}
  validates :fname, presence: true, length: {minimum: 1}
  validates :lname, presence: true, length: {minimum: 1}
  validates :phone, presence: true, format: {with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/, message: "number is invalid, please try again"}
end
