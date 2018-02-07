class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Devise takes care of validation for email and password
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :items


end
