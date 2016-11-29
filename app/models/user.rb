class User < ApplicationRecord
  has_many :user_instruments, dependent: :destroy
  has_many :instruments, through: :user_instruments

  has_attachment :photo

  has_many :messages
  has_many :group_users, dependent: :destroy
  has_many :groups, through: :group_users

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
